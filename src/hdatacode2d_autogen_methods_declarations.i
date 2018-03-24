PyObject *
PyHirschDataCode2D_CreateDataCode2dModel(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* GenParamNames;
    PyObject* SymbolType;
    PyObject* GenParamValues;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &SymbolType,&GenParamNames,&GenParamValues)) {
            if (PyHirschTuple_Check(SymbolType) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                self->DataCode2D->CreateDataCode2dModel(*(((PyHirschTuple*)SymbolType)->Tuple),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.CreateDataCode2dModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

#if PY_MAJOR_VERSION >= 3
#define PyInt_FromLong PyLong_FromLong
#define PyString_FromString PyUnicode_FromString
#endif

PyObject *
PyHirschDataCode2D_FindDataCode2d(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* GenParamNames1;
    char* GenParamNames2;
    char* GenParamNames3;
    PyObject* GenParamValues;
    PyObject* Image3;
    PyObject* Image2;
    PyObject* GenParamNames;
    PyObject* Image;
    long GenParamValues2;
    long GenParamValues3;
    PyObject* GenParamValues1;
    
    try {
        if (PyArg_ParseTuple(args, "Osl", &Image2,&GenParamNames2,&GenParamValues2)) {
            if (PyHirschImage_Check(Image2)) {
                Halcon::HTuple ResultHandles2;
                Halcon::HTuple DecodedDataStrings2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image2)->Image),GenParamNames2,GenParamValues2,&ResultHandles2,&DecodedDataStrings2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osl", &Image3,&GenParamNames3,&GenParamValues3)) {
            if (PyHirschImage_Check(Image3)) {
                Hlong ResultHandles3;
                char DecodedDataStrings3[256];
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image3)->Image),GenParamNames3,GenParamValues3,&ResultHandles3,(char*)DecodedDataStrings3)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(ResultHandles3)));
                PyTuple_SET_ITEM(ret, 2, PyString_FromString(DecodedDataStrings3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Image,&GenParamNames,&GenParamValues)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                Halcon::HTuple ResultHandles;
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple),&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Image1,&GenParamNames1,&GenParamValues1)) {
            if (PyHirschImage_Check(Image1) && PyHirschTuple_Check(GenParamNames1) && PyHirschTuple_Check(GenParamValues1)) {
                Hlong ResultHandles1;
                char DecodedDataStrings1[256];
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image1)->Image),*(((PyHirschTuple*)GenParamNames1)->Tuple),*(((PyHirschTuple*)GenParamValues1)->Tuple),&ResultHandles1,(char*)DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(ResultHandles1)));
                PyTuple_SET_ITEM(ret, 2, PyString_FromString(DecodedDataStrings1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.FindDataCode2d()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_WriteDataCode2dModel(PyHirschDataCode2D*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->DataCode2D->WriteDataCode2dModel(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->DataCode2D->WriteDataCode2dModel(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.WriteDataCode2dModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_ReadDataCode2dModel(PyHirschDataCode2D*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->DataCode2D->ReadDataCode2dModel(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->DataCode2D->ReadDataCode2dModel(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.ReadDataCode2dModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_GetDataCode2dResults(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* ResultNames;
    PyObject* CandidateHandle;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &CandidateHandle,&ResultNames)) {
            if (PyHirschTuple_Check(CandidateHandle) && PyHirschTuple_Check(ResultNames)) {
                return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dResults(*(((PyHirschTuple*)CandidateHandle)->Tuple),*(((PyHirschTuple*)ResultNames)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.GetDataCode2dResults()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_SetDataCode2dParam(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* GenParamNames;
    PyObject* GenParamValues;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GenParamNames,&GenParamValues)) {
            if (PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                self->DataCode2D->SetDataCode2dParam(*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.SetDataCode2dParam()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_SetHandle(PyHirschDataCode2D*self, PyObject *args)
{
    long ID;
    
    try {
        if (PyArg_ParseTuple(args, "l", &ID)) {
            self->DataCode2D->SetHandle(ID);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.SetHandle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_QueryDataCode2dParams(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* QueryName;
    char* QueryName1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &QueryName1)) {
            return PyHirschTuple_FromHTuple(self->DataCode2D->QueryDataCode2dParams(QueryName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &QueryName)) {
            if (PyHirschTuple_Check(QueryName)) {
                return PyHirschTuple_FromHTuple(self->DataCode2D->QueryDataCode2dParams(*(((PyHirschTuple*)QueryName)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.QueryDataCode2dParams()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_GetDataCode2dParam(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* GenParamNames;
    char* GenParamNames1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &GenParamNames1)) {
            return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dParam(GenParamNames1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &GenParamNames)) {
            if (PyHirschTuple_Check(GenParamNames)) {
                return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dParam(*(((PyHirschTuple*)GenParamNames)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.GetDataCode2dParam()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_GetHandle(PyHirschDataCode2D*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->DataCode2D->GetHandle()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
