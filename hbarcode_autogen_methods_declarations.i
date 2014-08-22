PyObject *
PyHirschBarCode_FindBarCode(PyHirschBarCode*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Image;
    char* CodeType1;
    PyObject* CodeType;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image,&CodeType)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CodeType)) {
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->BarCode->FindBarCode(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CodeType)->Tuple),&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image1,&CodeType1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple DecodedDataStrings1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->BarCode->FindBarCode(*(((PyHirschImage*)Image1)->Image),CodeType1,&DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* GenParamNames;
    double GenParamValues1;
    char* GenParamNames1;
    PyObject* GenParamValues;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamNames1,&GenParamValues1)) {
            self->BarCode->CreateBarCodeModel(GenParamNames1,GenParamValues1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GenParamNames,&GenParamValues)) {
            if (PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                self->BarCode->CreateBarCodeModel(*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    PyObject* GenParamNames;
    double GenParamValues1;
    char* GenParamNames1;
    PyObject* GenParamValues;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamNames1,&GenParamValues1)) {
            self->BarCode->SetBarCodeParam(GenParamNames1,GenParamValues1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GenParamNames,&GenParamValues)) {
            if (PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                self->BarCode->SetBarCodeParam(*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* GenParamNames;
    char* GenParamNames1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &GenParamNames1)) {
            return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeParam(GenParamNames1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &GenParamNames)) {
            if (PyHirschTuple_Check(GenParamNames)) {
                return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeParam(*(((PyHirschTuple*)GenParamNames)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.GetBarCodeParam()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschBarCode_GetHandle(PyHirschBarCode*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->BarCode->GetHandle()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
