PyObject *
PyHirschBarCode_FindBarCode(PyHirschBarCode*self, PyObject *args)
{
    PyObject* Image;
    char* CodeType;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Image,&CodeType)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->BarCode->FindBarCode(*(((PyHirschImage*)Image)->Image),CodeType,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.FindBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschBarCode_CreateBarCodeModel(PyHirschBarCode*self, PyObject *args)
{
    char* GenParamNames;
    double GenParamValues;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamNames,&GenParamValues)) {
            self->BarCode->CreateBarCodeModel(GenParamNames,GenParamValues);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.CreateBarCodeModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschBarCode_SetBarCodeParam(PyHirschBarCode*self, PyObject *args)
{
    char* GenParamNames;
    double GenParamValues;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamNames,&GenParamValues)) {
            self->BarCode->SetBarCodeParam(GenParamNames,GenParamValues);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.SetBarCodeParam()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschBarCode_SetHandle(PyHirschBarCode*self, PyObject *args)
{
    long ID;
    
    try {
        if (PyArg_ParseTuple(args, "l", &ID)) {
            self->BarCode->SetHandle(ID);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.SetHandle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschBarCode_GetBarCodeResult(PyHirschBarCode*self, PyObject *args)
{
    PyObject* CandidateHandle;
    PyObject* ResultName;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &CandidateHandle,&ResultName)) {
            if (PyHirschTuple_Check(CandidateHandle) && PyHirschTuple_Check(ResultName)) {
                return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeResult(*(((PyHirschTuple*)CandidateHandle)->Tuple),*(((PyHirschTuple*)ResultName)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.GetBarCodeResult()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschBarCode_GetBarCodeParam(PyHirschBarCode*self, PyObject *args)
{
    char* GenParamNames;
    
    try {
        if (PyArg_ParseTuple(args, "s", &GenParamNames)) {
            return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeParam(GenParamNames));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.GetBarCodeParam()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschBarCode_GetHandle(PyHirschBarCode*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->BarCode->GetHandle()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
