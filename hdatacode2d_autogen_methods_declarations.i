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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.CreateDataCode2dModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_FindDataCode2d(PyHirschDataCode2D*self, PyObject *args)
{
    char* GenParamNames;
    long GenParamValues;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Osl", &Image,&GenParamNames,&GenParamValues)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple ResultHandles;
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image)->Image),GenParamNames,GenParamValues,&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
            if (PyHirschImage_Check(Image)) {
                Hlong ResultHandles;
                char DecodedDataStrings[256];
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image)->Image),GenParamNames,GenParamValues,&ResultHandles,(char*)DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(ResultHandles)));
                PyTuple_SET_ITEM(ret, 2, PyString_FromString(DecodedDataStrings));
                
                return ret;
            }
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->DataCode2D->WriteDataCode2dModel(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->DataCode2D->ReadDataCode2dModel(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
    char* QueryName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &QueryName)) {
            return PyHirschTuple_FromHTuple(self->DataCode2D->QueryDataCode2dParams(QueryName));
        }
        
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
    char* GenParamNames;
    
    try {
        if (PyArg_ParseTuple(args, "s", &GenParamNames)) {
            return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dParam(GenParamNames));
        }
        
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
