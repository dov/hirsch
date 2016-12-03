PyObject *
PyHirschDataCode2D_CreateDataCode2dModel(PyHirschDataCode2D*self, PyObject *args)
{
    char* SymbolType;
    char* GenParamValue;
    char* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "sss", &SymbolType,&GenParamName,&GenParamValue)) {
            self->DataCode2D->CreateDataCode2dModel(SymbolType,GenParamName,GenParamValue);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.CreateDataCode2dModel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_FindDataCode2d(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* Image;
    PyObject* GenParamValue;
    PyObject* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&GenParamName,&GenParamValue)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HTuple ResultHandles;
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple),&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.FindDataCode2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.WriteDataCode2dModel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.ReadDataCode2dModel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_GetDataCode2dResults(PyHirschDataCode2D*self, PyObject *args)
{
    PyObject* ResultNames;
    char* ResultNames1;
    PyObject* CandidateHandle;
    char* CandidateHandle1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &CandidateHandle,&ResultNames)) {
            if (PyHirschTuple_Check(CandidateHandle) && PyHirschTuple_Check(ResultNames)) {
                return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dResults(*(((PyHirschTuple*)CandidateHandle)->Tuple),*(((PyHirschTuple*)ResultNames)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &CandidateHandle1,&ResultNames1)) {
            return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dResults(CandidateHandle1,ResultNames1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.GetDataCode2dResults()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_Clone(PyHirschDataCode2D*self, PyObject *)
{
    try {
        return PyHirschDataCode2D_FromHDataCode2D(self->DataCode2D->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_SetHandle(PyHirschDataCode2D*self, PyObject *args)
{
    long handle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &handle)) {
            self->DataCode2D->SetHandle(handle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.SetHandle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.QueryDataCode2dParams()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_SetDataCode2dParam(PyHirschDataCode2D*self, PyObject *args)
{
    char* GenParamName1;
    PyObject* GenParamValue;
    PyObject* GenParamName;
    char* GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &GenParamName1,&GenParamValue1)) {
            self->DataCode2D->SetDataCode2dParam(GenParamName1,GenParamValue1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                self->DataCode2D->SetDataCode2dParam(*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.SetDataCode2dParam()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataCode2D_GetDataCode2dParam(PyHirschDataCode2D*self, PyObject *args)
{
    char* GenParamName1;
    PyObject* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GenParamName)) {
            if (PyHirschTuple_Check(GenParamName)) {
                return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dParam(*(((PyHirschTuple*)GenParamName)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GenParamName1)) {
            return PyHirschTuple_FromHTuple(self->DataCode2D->GetDataCode2dParam(GenParamName1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataCode2D.GetDataCode2dParam()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
