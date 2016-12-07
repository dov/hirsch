PyObject *
PyHirschDataCode2D_CreateDataCode2dModel(PyHirschDataCode2D*self, PyObject *args)
{
    char* SymbolType;
    char* GenParamValue2;
    char* GenParamName1;
    PyObject* GenParamName;
    char* GenParamName2;
    char* SymbolType1;
    PyObject* GenParamValue;
    char* SymbolType2;
    char* GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "sOO", &SymbolType,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                self->DataCode2D->CreateDataCode2dModel(HalconCpp::HString(SymbolType),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &SymbolType1,&GenParamName1,&GenParamValue1)) {
            self->DataCode2D->CreateDataCode2dModel(HalconCpp::HString(SymbolType1),HalconCpp::HString(GenParamName1),HalconCpp::HString(GenParamValue1));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &SymbolType2,&GenParamName2,&GenParamValue2)) {
            self->DataCode2D->CreateDataCode2dModel(SymbolType2,GenParamName2,GenParamValue2);
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
    PyObject* Image1;
    long GenParamValue2;
    char* GenParamName1;
    PyObject* Image2;
    PyObject* GenParamName;
    char* GenParamName2;
    PyObject* Image;
    PyObject* GenParamValue;
    long GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&GenParamName,&GenParamValue)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HTuple ResultHandles;
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple),&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osl", &Image2,&GenParamName2,&GenParamValue2)) {
            if (PyHirschImage_Check(Image2)) {
                Hlong ResultHandles2;
                HalconCpp::HString DecodedDataStrings2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image2)->Image),GenParamName2,GenParamValue2,&ResultHandles2,&DecodedDataStrings2)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(ResultHandles2)));
                PyTuple_SET_ITEM(ret, 2, PyString_FromString(DecodedDataStrings2.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osl", &Image1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschImage_Check(Image1)) {
                Hlong ResultHandles1;
                HalconCpp::HString DecodedDataStrings1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->DataCode2D->FindDataCode2d(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(GenParamName1),GenParamValue1,&ResultHandles1,&DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(ResultHandles1)));
                PyTuple_SET_ITEM(ret, 2, PyString_FromString(DecodedDataStrings1.Text()));
                
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
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->DataCode2D->WriteDataCode2dModel(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->DataCode2D->WriteDataCode2dModel(HalconCpp::HString(FileName));
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
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->DataCode2D->ReadDataCode2dModel(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->DataCode2D->ReadDataCode2dModel(HalconCpp::HString(FileName));
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
    char* CandidateHandle1;
    char* ResultNames2;
    PyObject* CandidateHandle;
    char* ResultNames1;
    PyObject* ResultNames;
    char* CandidateHandle2;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &CandidateHandle,&ResultNames)) {
            if (PyHirschTuple_Check(CandidateHandle) && PyHirschTuple_Check(ResultNames)) {
                return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->GetDataCode2dResults(*(((PyHirschTuple*)CandidateHandle)->Tuple),*(((PyHirschTuple*)ResultNames)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &CandidateHandle2,&ResultNames2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->GetDataCode2dResults(CandidateHandle2,ResultNames2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &CandidateHandle1,&ResultNames1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->GetDataCode2dResults(HalconCpp::HString(CandidateHandle1),HalconCpp::HString(ResultNames1)));
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
    char* QueryName1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &QueryName)) {
            return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->QueryDataCode2dParams(HalconCpp::HString(QueryName)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &QueryName1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->QueryDataCode2dParams(QueryName1));
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
    char* GenParamValue2;
    char* GenParamName1;
    PyObject* GenParamName;
    char* GenParamName2;
    PyObject* GenParamValue;
    char* GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &GenParamName1,&GenParamValue1)) {
            self->DataCode2D->SetDataCode2dParam(HalconCpp::HString(GenParamName1),HalconCpp::HString(GenParamValue1));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &GenParamName2,&GenParamValue2)) {
            self->DataCode2D->SetDataCode2dParam(GenParamName2,GenParamValue2);
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
    char* GenParamName2;
    PyObject* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GenParamName)) {
            if (PyHirschTuple_Check(GenParamName)) {
                return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->GetDataCode2dParam(*(((PyHirschTuple*)GenParamName)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GenParamName1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->GetDataCode2dParam(HalconCpp::HString(GenParamName1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GenParamName2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->DataCode2D->GetDataCode2dParam(GenParamName2));
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
