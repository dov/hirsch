#!/usr/bin/python

# This file is part of the Hirsch binding to the halcon image
# processing library. It is licensed under GPL3.0 with the
# additional restriction that the code it generates must be
# licensed under LGPL3.
#
# Dov Grobgeld
# dov.grobgeld@gmail.com
# 2013-12-13 Fri

# TBD:
#  Clean up lots of redundancies

import re
import copy
# classes for the parsing and the generation of
# python binding for halcon.

memberIsPointer = ['HRegion',
                   'HImage',
                   'HRegionArray',
                   'HXLDCont',
                   'HXLDContArray',
                   'HTuple',
                   'HDataCode2D',
                   'HBarCode',
                   'HImageArray',
                   'HTemplate',
                   'HXLD',
                   'HXLDArray',
                   'HPixVal'
                   ]

knownClasses = ['HRectangle1',
                'HRectangle2',
                'HPoint2D',
                'HDPoint2D',
                'HRegion',
                'HRegionArray',
                'HImage',
                'HImageArray',
                'HXLDArray',
                'HXLDCont',
                'HXLDContArray',
                'HRootObject',
                'HTuple',
                'HBarCode',
                'HDataCode2D',
                'HPixVal',
                'HTemplate',
                'HLine2D',
                'HLine',
                'HSpatialObject',
                'HCircle',
                'HEllipse',
                'HAffineTrans2D',
                'HXLD',
                ]

fundamentalTypes = ['HCoord',
                    'HDCoord',
                    'HBool',
                    'INT4',
                    'bool',
                    'int',
                    'double',
                    'float',
                    'void',
                    'Hlong',
                    'char',
                    'char*',
                    ]
validTypes = fundamentalTypes + knownClasses

def indent(s, spaces=4):
    return re.compile('^',re.MULTILINE).sub(' '*spaces, s)

def uniq(v):
    return list(set(v))
    
class PyHalconType:
    """Hold a halcon type"""
    def __init__(self,
                 typeName):
        self.typeName = typeName
        self.strippedTypeName = self._prmStrip(typeName)
        self.memberIsPointer = self.strippedTypeName in memberIsPointer
        self.pyObjType = re.sub('^H','PyHirsch',typeName)
        self.memberName = re.sub('^H','',typeName)
  
    def _prmStrip(self, prm):
        """Strip way const and static types from parameters"""
        return re.sub(r'\s*(?:static)?\s*\b(?:const)?\b\s*','',
                      re.sub(r'\s*\&\s*','',
                             re.sub(r' \*','*',
                                    prm.replace('Halcon::',''))))

    def getStrippedTypeName(self):
        return self.strippedTypeName

    def getMemberAccess(self):
        return ['.','->'][self.memberIsPointer]
  
    def getMemberAddressMaybe(self):
        return ['','&'][self.memberIsPointer]
  
    def getDeref(self):
        return ['','*'][self.memberIsPointer]
  
    def getPyGenerator(self, code):
        """Create a pyObject generator of the parameter"""
        typeName = self.strippedTypeName
        if typeName in ['int','Hlong','INT4','HDCoord']:
            return 'PyInt_FromLong(long({code}))'.format(code = code)
        elif typeName in ['HBool','bool']:
            return 'PyBool_FromLong({code})'.format(code = code)
        elif typeName in ['HCoord','double','float']:
            return 'PyFloat_FromDouble({code})'.format(code = code)
        elif typeName in ['char*','char']:
            return 'PyString_FromString({code})'.format(code = code)
        elif re.search('^H[A-Z]', typeName):
            pyObjType = re.sub('^H','PyHirsch',typeName)
            return pyObjType.replace(' ','')+'_From'+ typeName + '(' + code + ')'
        raise Exception("Unhandled " + typeName)
  
    def getParseLetter(self):
        """Get the letter used in parsing the type"""
        typeName = self.strippedTypeName
        if typeName=='Hlong':
            return 'l'
        if typeName=='int':
            return 'i'
        if typeName=='double':
            return 'd'
        if typeName=='char*':
            return 's'
  
        # Assume objects for the rest
        if typeName[0] == 'H':
            return 'O'
        raise Exception('Unhandled type: ' + typeName)

    def getPyType(self,StripPointer=False,OutputParam=False):
        """Return the PyHirsch type of the parameter"""
        typeName = self.strippedTypeName
        if StripPointer:
            typeName = typeName.replace('*','')
        if typeName=='Hlong':
            if OutputParam:
                return 'Hlong',''
            else:
                return 'long',''
        if typeName=='int':
            return 'int',''
        if typeName=='double':
            return 'double',''
        if typeName=='char*':
            return 'char*',''
        if typeName=='char':
            return 'char','[256]';

        # Assume objects for the rest
        if typeName[0] == 'H':
            if OutputParam:
                return 'Halcon::'+typeName,''
            else:
                return 'PyObject*',''
        raise Exception('Unhandled type: ' + typeName)

    def getPyClassName(self):
        return re.sub('^H','PyHirsch', self.strippedTypeName)

    def isOutputParam(self):
        """Return whether a parameter is an output parameter"""
        res = (('*' in self.typeName
#                and not self.strippedTypeName == 'char*'
                and not 'const' in self.typeName
                )
                or ('&' in self.typeName
                    and not 'const' in self.typeName))
#        print 'isOutputParam: typeName res = ', self.typeName, res
        return res

class PyHalconParameter:
    def __init__(self,
                 parameter):
        """Hold a parsed parameter"""
        self.typeName = parameter['type']
        self.type = PyHalconType(self.typeName)
        self.prmName = parameter['name']
  
        # Autogenerated parameter info
        self.strippedTypeName = PyHalconType(self.typeName).getStrippedTypeName()
        typeName = self.strippedTypeName
        self.pyObjType = re.sub('^H','PyHirsch',typeName)
        self.memberName = re.sub('^H','',typeName)
        self.genericType = 'PyObject' if re.match(typeName,'H[A-Z]') else typeName
        self.outputParam = self.type.isOutputParam()

    def __repr__(self):
        return '%s<%s>'%(self.prmName,self.typeName)

    def getTypeName(self):
        return self.typeName

    def getType(self):
        return self.type

    def getName(self):
        return self.prmName
        
    def createPyGenerator(self):
        return self.type.getPyGenerator(self.prmName)
      
    def createCheck(self):
        """Generate a check for testing the above parameter"""
        typeName = self.strippedTypeName.replace('Halcon::','')
        if re.match('H[A-Z]', typeName):
            return ('%s_Check(%s)'%(self.pyObjType,self.prmName))
        return ''
  
    def extractMember(self, cast=True):
        """Extract the member from a PyObject"""
        if not cast:
            return self.prmName + '->' + self.memberName
        
        deref = self.type.getDeref()
        return (deref
                +'(((' + self.pyObjType + '*)'
                + self.prmName
                + ')->'
                + self.memberName +')')

    def getParseLetter(self):
        return self.type.getParseLetter()

    def isOutputParam(self):
        """Return whether a parameter is an output parameter"""
        return self.outputParam

    def getPyDeclaration(self,StripPointer=False,OutputParam=False):
        """Get the py declaration of the variable"""
        typeDecl,suffix = self.type.getPyType(StripPointer=StripPointer,
                                              OutputParam=OutputParam)

        # Special case for halcon types default constructors!
        ConstructorArgs = ''
        if  OutputParam and self.type.getStrippedTypeName() == 'HLine2D':
            ConstructorArgs = '(Halcon::HPoint2D(0,0), Halcon::HPoint2D(0,0))'
        return typeDecl + ' ' + self.prmName + suffix + ConstructorArgs + ';'

    def getVarAccess(self):
        # Check if it is a halcon type
        if re.match('^H[A-Z]',self.strippedTypeName):
            # Add constructor if the type is not a pointer, otherwise
            # a crash occurs.
            varAccess = self.extractMember()
            if not self.strippedTypeName in memberIsPointer:
                return 'Halcon::'+self.strippedTypeName+'('+varAccess+')'
            return varAccess
        else:
            return self.prmName

class PyHalconMethod:
    """Operator for a halcon method"""
    def __init__(self,
                 klass,
                 method,
                 doc,
                 useGenericNames = False):
        """Create a pyhalcon function interface.
    
        Options:
          useGenericNames - Use overloading for the variable names.
        """
        self.useGenericNames = useGenericNames
        self.klass = klass
        self.selfMember = PyHalconParameter({'type':self.klass,
                                             'name':'self'})
        self.lineNumber = method['line_number']
        self.doc = doc
        self.static = method['static']
        self.name = method['name']
        self.rtnType = method['rtnType']
        self.retParam = PyHalconParameter({'type':self.rtnType,
                                           'name':'ret'})
        self.params = [PyHalconParameter(p) for p in
                       method['parameters']]

    def equalSignature(self, otherMethod):
        """Compares with another method if they have the same signature"""
        return (self.getRetParam().getTypeName() == otherMethod.getRetParam().getTypeName()
                and sum([p.getTypeName()!=q.getTypeName()
                         for p,q in zip(self.getParams(), otherMethod.getParams())])==0)
        
    def getDoc(self):
        return doc

    def getRetParam(self):
        return self.retParam

    def getLineNumber(self):
        return self.lineNumber

    def getStatic(self):
        return self.static

    def getName(self):
        return self.name

    def getDoc(self):
        return self.doc

    def getParams(self):
        return self.params
  
    def getInputParams(self):
        """Get parameters that should be retrieved from input"""
        return [p for p in self.params
                if (not p.isOutputParam()
                    and not p.getTypeName() == 'void')]
  
    def getInputParamPyDeclCode(self):
        """Get code declaring the input parameters"""
        return [p.getPyDeclaration()
                for p in self.getInputParams()]

    def getInputParamsParseCode(self):
        """Return parsing of the input parameters"""
        return ('PyArg_ParseTuple(args, "' + self.getParseLetters() + '", '
                +','.join(['&'+p.getName()
                             for p in self.getInputParams()])
                + ')')

    def getOutputParamPyDeclCode(self):
        """Get code declaring the input parameters"""
        return [p.getPyDeclaration(StripPointer=1,
                                   OutputParam=1)
                for p in self.getOutputParams()]

    def getOutputParams(self):
        """Get parameters that should be retrieved from input"""
        return [p for p in self.params
                if p.isOutputParam()
                # why is this needed?
                and not 'void' in p.getTypeName()]
  
    def getParseLetters(self):
        """Return PyTupleParse combo for the halcon method"""
        return ''.join([p.getParseLetter() for p in
                        self.getInputParams()])
  
    def getPyTupleTest(self):
        """Return code that tests if the c-function args match the python function signature"""
        tests = [t for t in [p.createCheck()
                             for p in self.getInputParams()]
                 if len(t)]
        return ' && '.join(tests)

    def getParameterCallList(self):
        """Return a list of the c-code of the parameters"""
        ParamCallList = []
        OutputParams = self.getOutputParams()
        for p in self.getParams():
            if p.getTypeName() == 'void':
                continue
            if p in OutputParams:
                prmName = p.getName()

                # Hack to cast 'char*'
                if p.getTypeName() == 'char *':
                    varAccess = '(char*)'+prmName
                elif '&' in p.getTypeName():
                    varAccess = prmName
                else:
                    varAccess = '&' + prmName
            else:
                varAccess = p.getVarAccess()
            ParamCallList += [varAccess]
        return ParamCallList

    def getFncCallCode(self):
        if self.static:
            return ('Halcon::'+self.klass+'::'
                    + self.name
                    + '(' + ','.join(self.getParameterCallList()) + ')'
                    )
        else:
            return (self.selfMember.extractMember(cast=0)
                    + PyHalconType(self.klass).getMemberAccess() 
                    + self.name
                    + '(' + ','.join(self.getParameterCallList()) + ')'
                    )

    def getFncCallWithReturn(self):
        """call the function and return a proper python code

        This may be either:
           - None
           - A single value.
           - A tuple
        """
        fncCall = self.getFncCallCode()
        rtnType = self.rtnType

        if rtnType == 'void':
            return (fncCall + ';\n'
                    +'Py_INCREF(Py_None);\n'
                    +'return Py_None;')
        elif len(self.getOutputParams())==0:
            return ('return ' + PyHalconType(rtnType).getPyGenerator(fncCall)
                    + ';' )
        else:
            # Build output parameters.
            # TBD: This code is currently wrong! The output generates are wrong.
            return ('PyObject *ret = PyTuple_New({RetTupleLen});\n'.format(RetTupleLen = len(self.getOutputParams())+1)
                    +'PyTuple_SET_ITEM(ret, 0, '+PyHalconType(rtnType).getPyGenerator(fncCall) + ');\n'
                    + '\n'.join([
                    'PyTuple_SET_ITEM(ret, {pos}, '.format(pos=i+1)
                     + PyHalconType(p.getTypeName().replace('*','')).getPyGenerator(p.getName()) + ');'
                    for i,p in enumerate(self.getOutputParams())
                    ]) + '\n\n'
                    + 'return ret;'
                    )

    def getCheckAndCallCode(self):
        """Get code testing the proper type and calling the halcon code.

        Includes declarations of return params, but not of the input
        params code.
        """
        OutputParamsDecl = '\n'.join(self.getOutputParamPyDeclCode())
        if len(OutputParamsDecl):
            OutputParamsDecl += '\n'
        pyTupleTestCode = self.getPyTupleTest()
        if len(pyTupleTestCode):
            return ( 'if (' + pyTupleTestCode + ') {\n'
                     + indent(OutputParamsDecl
                              + self.getFncCallWithReturn()) + '\n'
                     +'}')
        elif len(OutputParamsDecl):
            return ('{\n'
                    + '// with output params\n'
                     + indent(OutputParamsDecl
                              + self.getFncCallWithReturn()) + '\n'
                     +'}')
        else:
            return self.getFncCallWithReturn()

    def getCallCodeNoInputParams(self):
        """Get callcode when there are no input params"""
        OutputParamsDecl = '\n'.join(self.getOutputParamPyDeclCode())
        if len(OutputParamsDecl):
            return (OutputParamsDecl + '\n'
                    + self.getFncCallWithReturn())
        else:
            return self.getFncCallWithReturn()
        
    def getIllegalParamsException(self):
        """Get exception code for illegal parameters"""
        return ('PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to '
                + PyHalconType(self.klass).getStrippedTypeName()
                + '.' + self.getName() + '()'
                +'");\n'
                'return NULL;')

    def htuplePrmRedundant(self,cmpPym):
        """Check if the parameter in cmpPym is equal (in terms of)
        using tuples instead pod variables"""
        prms = self.getInputParams()
        cmpPrms = cmpPym.getInputParams()
        if len(prms) != len(cmpPrms):
            return False

        redundantFlag = False

        # Allow parameter overloading with regards to tuple vs other types
        # thus don't skip based on parameter comparisons.
        cmpPrmsTypeNames = tuple(prm.getType().getStrippedTypeName()
                                 for prm in cmpPrms)
        prmsTypeNames = tuple(prm.getType().getStrippedTypeName()
                              for prm in prms)

        # If all the input parameters are equal then check the
        # output parameter. If it is equal as well, then only
        # choose the HTuple parameter for output
        if cmpPrmsTypeNames == prmsTypeNames:
            prms = self.getOutputParams()
            cmpPrms = cmpPym.getOutputParams()

            for prm,cmpPrm in zip(prms,cmpPrms):
                t = prm.getType().getStrippedTypeName()
                ct = cmpPrm.getType().getStrippedTypeName()
#                print 'Out: ', t,'vs',ct
                if t==ct:
                    redundantFlag = True
                    continue
    
                # Prefer htuple on output!
                if t in fundamentalTypes and ct=='HTuple*':
                    redundantFlag = True
                    continue
    
                redundantFlag = False
                break

        res = redundantFlag
        return res

class PyHalconClass:
    """A container of possibly overloaded functions"""
    def __init__(self,
                 className,
                 headerAsArray):
        self.className = className
        self.pyClassName = PyHalconType(self.className).getPyClassName()
        self.methodsByName = {}
        self.skippedMethodsByName = {}
        self.headerAsArray = headerAsArray
        self.boundMethodsCount = self.allNonConstructMethodsCount = 0

    def getDocForLine(self, LineNum):
        """Extract the documentation for the given line in the header source"""
        DocStartDelta = 1
        while re.search(r'^\s*//', self.headerAsArray[LineNum-DocStartDelta]):
            DocStartDelta+=1
        DocStartDelta-=1
        Doc = ''.join([re.sub(r'^\s*//\s*','',s) for s in self.headerAsArray[LineNum-DocStartDelta:LineNum]])
        # Erase trailing new line
        Doc = re.sub(r'\n$','',Doc)
        return Doc

    def extractMethodDoc(self, method):
        """Get the method doc for the cppHeader method"""
        return self.getDocForLine(method['line_number']-1)
        
    def getFunctionListCode(self, methodName):
        """Get the c code snippet for declaring the method"""

        # Extract the documentation from the first method in the
        # methodlist. Assume they all share the same documentation...
        if len(self.methodsByName[methodName])==0:
            print 'Ooops. No methods left for', methodName
            exit(0)
        method = self.methodsByName[methodName][0]
        inputParamNames = [p.getName()
                           for p in method.getInputParams()]
        
        methodFlags = []
        if method.getStatic():
            methodFlags+= ['METH_STATIC']
        if len(inputParamNames)==0:
            methodFlags += ['METH_NOARGS']
        else:
            methodFlags += ['METH_VARARGS']
        methodType='|'.join(methodFlags)

        methodDoc = (methodName
                      + '(' + ','.join(inputParamNames) + ')\n'
                  + '\n' + method.getDoc()
                  ).replace('\n','\\n').replace('"','\\"')
        
        return ('{{"{name}", '
                '(PyCFunction){pyClassName}_{name}, '
                '{methodType}, "{methodDoc}" }}'
               .format(name=methodName,
                       pyClassName = PyHalconType(self.className).pyObjType,
                       methodType = methodType,
                       methodDoc = methodDoc))
        
    def resolveParamNamesConflicts(self,
                                   methods):
        resolvedMethods = []
        seenParamNames = {}
        for m in methods:
            m = copy.deepcopy(m)
            for p in m.params:
                if p.prmName in seenParamNames:
                    newName = p.prmName + '%d'%(seenParamNames[p.prmName])
                    seenParamNames[p.prmName]+=1
                    p.prmName = newName
                else:
                    seenParamNames[p.prmName]=1
            resolvedMethods.append(m)
        return resolvedMethods
    
    def getFunctionCode(self,
                        methodName):
        """Get c code for parsing all the possible codes of the given method"""
        if not methodName in self.methodsByName:
            raise Exception('No such method %s!'%methodName)

        InputParams = []
        NeedException = False
        callsByInputParamsParseCode = {}
        noParamsMethod = ''

        # Split the methods by their parse code
        methods = self.resolveParamNamesConflicts(self.methodsByName[methodName])
        for method in methods:
            if len(method.getInputParams()) == 0:
                print self.className, method.getName()
                noParamsMethod = method.getCallCodeNoInputParams()
                continue
            InputParams += method.getInputParamPyDeclCode()
            parseCode = method.getInputParamsParseCode()
            NeedException = True
            if not parseCode in callsByInputParamsParseCode:
                callsByInputParamsParseCode[parseCode] = []
            callsByInputParamsParseCode[parseCode] += [method.getCheckAndCallCode()]

        CheckAndCall = []
        for parseCode,methodCalls in callsByInputParamsParseCode.items():
            CheckAndCall += [
                ('if (' + parseCode + ') {\n')
                + indent('\n'.join(methodCalls))+'\n'
                '}\n'
                'PyErr_Clear();' # Always clear error before next parsing attempt
                ]
        
        CheckAndCall += [noParamsMethod]

        if NeedException:
            # This should be made a static mehtod
            CheckAndCall += [methods[0] \
                             .getIllegalParamsException()]
        
        InputParams = uniq(InputParams)
        checkCallAndException = ('try {\n'
                                 + indent('\n'.join(CheckAndCall)) + '\n'
                                 + '}\n'
                                 + 'catch (Halcon::HException &except) {\n'
                                 + '    PyErr_SetString(PyExc_RuntimeError, except.message);\n'
                                 + '    return NULL;\n'
                                 + '}')
                                 
        # Assume that if one method is static, all are
        MaybeSelf = '' if methods[0].getStatic() else 'self'
        MaybeArgs = 'args' if len(InputParams) else ''

        return ('PyObject *\n'
                + self.pyClassName + '_' + methodName
                + '(' + self.pyClassName
                + '*{MaybeSelf}, PyObject *{MaybeArgs})\n{{\n'.format(MaybeSelf=MaybeSelf,
                                                                      MaybeArgs=MaybeArgs)
                + indent(
                    '\n'.join(InputParams) + ('\n\n' if len(InputParams) else '')
                    + checkCallAndException
                    ) + '\n' 
                + '}\n'
                )

    def getMethodNames(self):
        return self.methodsByName.keys()

    def addMethod(self, method, doc = ''):
        """Add a method (a cppheader structure) and filter non-bind methods"""
        methodName = method['name']
        if 'operator' in methodName:
            return

        # Skip constructors
        if methodName == self.className:
            return

        # Skip halcon "revision" types
        if methodName in ['Creation', 'ClassName', 'Revision', 'Version']:
            return

        HasDuplicate = False
        newMethod = PyHalconMethod(self.className,
                                   method,
                                   doc)

        # Look for an exact duplicate method
        if methodName in self.methodsByName:
          for m in self.methodsByName[methodName]:
              if newMethod.equalSignature(m):
                  return

        # This is our counting baseline
        self.allNonConstructMethodsCount+= 1

        # Skip methods with un-supported parameters.
        # Take some hoops in order not to double count skipped methods!
        for typeName in ([method['rtnType']]
                         + [m['type'] for m in method['parameters']]):
            stype = PyHalconType(typeName).getStrippedTypeName()
            if not stype.replace('*','') in validTypes:
                if methodName in self.skippedMethodsByName:
                    for m in self.skippedMethodsByName[methodName]:
                        if newMethod.equalSignature(m):
                            # Don't count this one!
                            self.allNonConstructMethodsCount-= 1
                            break

                if not methodName in self.skippedMethodsByName:
                    self.skippedMethodsByName[methodName] = []
                self.skippedMethodsByName[methodName]+= [newMethod]
                return

        if not methodName in self.methodsByName:
            self.methodsByName[methodName]=[]

        self.methodsByName[methodName] += [newMethod]
        self.boundMethodsCount+= 1

    def getCoverage(self):
        """Get percentage of bound methods"""
        return 100.0*self.boundMethodsCount/self.allNonConstructMethodsCount

    def addPublicMethods(self, publicMethods, classForMethodDoc=None):
        """Add all public methods in the cppHeader method list"""
        if classForMethodDoc is None:
            classForMethodDoc = self

        for pm in publicMethods:
            doc = classForMethodDoc.extractMethodDoc(pm)
            self.addMethod(pm,doc)
        self.pruneRedundantMethods()
    
    def getAllFunctionCode(self):
        return '\n'.join([self.getFunctionCode(methodName)
                          for methodName in self.getMethodNames()])

    def pruneRedundantMethods(self):
        """Get rid of non-needed methods (e.g. HTuple methods)"""
        for methodName,methods in self.methodsByName.items():
            if len(methods) > 1:
                filteredMethods = []

                for i,method in enumerate(methods):
                    skip = False
                    for j,cmpMethod in enumerate(methods):
                        if i==j:
                            continue

                        # Check if the method is redundant. 
                        if method.htuplePrmRedundant(cmpMethod):
                            skip = True
                            break
#                    print 'Verdict ',method.getName(), '('+','.join([p.getTypeName() for p in method.getParams()])+')=>',skip
                    if skip:
                        # We don't count a pruned method!
                        self.allNonConstructMethodsCount-=1 
                        self.boundMethodsCount-=1
                        continue
                    filteredMethods += [method]
                self.methodsByName[methodName] = filteredMethods

    def getAllFunctionListCode(self):
        return indent(',\n'.join([self.getFunctionListCode(methodName)
                                  for methodName in self.getMethodNames()])
                      +',')
                
if __name__ == '__main__':
    import CppHeaderParser
    HalconIncludeDir = '/home/dov/git/SolarJet/3rdParty/Halcon/'
#    HalconIncludeDir = '/opt/halcon/include/'

    headerFilename = HalconIncludeDir +  'HBarCode.h'
    headerStringList = list(open(headerFilename))
    headerString = re.sub(r'LIntExport\s*','', ''.join(headerStringList))
    cppHeader = CppHeaderParser.CppHeader(headerString, argType='string')

    for myClassName,myKlass in cppHeader.classes.iteritems():
        hClass = PyHalconClass(myClassName, headerStringList)
        print myClassName
        public_methods = myKlass['methods']['public']
        hClass.addPublicMethods(myKlass['methods']['public'])

        filename = '%s_autogen_methods_declarations.i'%myClassName.lower()
        print 'Generating', filename
        with open(filename,'w') as fh:
            fh.write(hClass.getAllFunctionCode())
        filename = '%s_autogen_methods_list.i'%myClassName.lower()
        print 'Generating', filename
        with open(filename,'w') as fh:
            fh.write(hClass.getAllFunctionListCode())

        # Coverage
        boundMethodsCount,allNonConstructMethodsCount = \
            hClass.boundMethodsCount,hClass.allNonConstructMethodsCount
        if allNonConstructMethodsCount == 0:
            Coverage = '-'
        else:
            Coverage = '%.0f%%'%(100.0*boundMethodsCount/allNonConstructMethodsCount)
        print 'Coverage[%s] = %d/%d = %s'%(myClassName,
                                           boundMethodsCount,
                                           allNonConstructMethodsCount,
                                           Coverage)
        

    print 'ok'
    
