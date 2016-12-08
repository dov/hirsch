#!/usr/bin/python

# This file is part of the Hirsch binding to the halcon image
# processing library. It is licensed under GPL3.0 with the
# additional restriction that the code it generates must be
# licensed under LGPL3.
#
# Dov Grobgeld
# dov.grobgeld@gmail.com
# 2013-12-13 Fri

import sys
import CppHeaderParser
import re
import glob
import json
import HParseTypes
import pathlib
from pathlib import Path

# Try to find HALCON 13
_possible_halcon_locations = ('/opt/halcon13/include/halconcpp/',
                              '/opt/halcon/include/halconcpp/',
                              '/space/halcon13/include/halconcpp/')
HalconIncludeDirectory = None
for location in _possible_halcon_locations:
    if Path(location).is_dir():
        HalconIncludeDirectory = location
assert HalconIncludeDirectory is not None, 'Could not find HALCON 13!'
print 'Using HALCON 13 from ', HalconIncludeDirectory

headersToParse = ['HImage',
                  'HDataBase',
                  'HHomMat2D',
                  'HRegion',
                  'HXLD',
                  'HXLDCont',
                  'HTuple',
                  'HBarCode',
                  'HDataCode2D',
                  'HTemplate',
                  ]
myClasses = {}
headerAsArray = {}
classToFile = {}


# Parse an h-file and automatically generate bindings.
for headerType in headersToParse:
    headerFilename = HalconIncludeDirectory + headerType + '.h'
    print 'Parsing ', headerFilename
    try:
        # Clean up the header file a bit
        headerStringList = list(open(headerFilename))
        headerString = re.sub(r'LIntExport\s*','', ''.join(headerStringList))
        cppHeader = CppHeaderParser.CppHeader(headerString, argType='string')
    except CppHeaderParser.CppParseError,  e:
        print e
        sys.exit(1)

    for className,klass in cppHeader.classes.iteritems():
        if not className in HParseTypes.knownClasses:
            continue
        hClass = HParseTypes.PyHalconClass(className, headerStringList)
        myClasses[className] = (klass,hClass)

for className in myClasses.keys():
    klass,hClass = myClasses[className]

    print ">>>> Processing ", className

    # Add all parents methods.
    public_methods = klass['methods']['public']
    methodDoc = [] # List of same size as the public method
    for pm in public_methods:
        doc = hClass.extractMethodDoc(pm)
        methodDoc += [hClass.extractMethodDoc(pm)]

    private_methods = [m['name'] for m in klass['methods']['private']]
    k = klass
    ancestors = []
    # This logic should move to HParseTypes!
    seen = set()
    ancestors = [kl['class'] for kl in k['inherits']]

    while len(ancestors):
        ancestor_public_methods_and_doc = []

        kn, ancestors = ancestors[0], ancestors[1:]

        if kn in seen:
            continue

        seen.add(kn)

        if not kn in HParseTypes.knownClasses:
            continue

        k,hk = myClasses[kn]
        ancestors += [kl['class'] for kl in k['inherits']
                      if not kl['class'] in seen]

        for m in k['methods']['public']:
            if (not m['name'] in private_methods
                and not m['name']==kn
                ):
                ancestor_public_methods_and_doc += [(m,hk.extractMethodDoc(m))]

        private_methods += [m['name'] for m in k['methods']['private']]

        # add inherited methods
        for pm,doc in ancestor_public_methods_and_doc:
            hClass.addMethod(pm,doc,inherited_check=True,inherited_class=kn)

    # add inherited methods
    for pm,doc in zip(public_methods,methodDoc):
        hClass.addMethod(pm,doc)

    hClass.pruneRedundantMethods()

    filename = '%s_autogen_methods_declarations.i'%className.lower()
    print 'Generating', filename
    with open(filename,'w') as fh:
        fh.write(hClass.getAllFunctionCode())
    filename = '%s_autogen_methods_list.i'%className.lower()
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
    print 'Coverage[%s] = %d/%d = %s'%(className,
                                       boundMethodsCount,
                                       allNonConstructMethodsCount,
                                       Coverage)
