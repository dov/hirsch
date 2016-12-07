PyObject *
PyHirschBarCode_FindBarCode(PyHirschBarCode*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* CodeType;
    PyObject* Image2;
    PyObject* Image;
    char* CodeType2;
    char* CodeType1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image,&CodeType)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CodeType)) {
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->BarCode->FindBarCode(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CodeType)->Tuple),&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image1,&CodeType1)) {
            if (PyHirschImage_Check(Image1)) {
                HalconCpp::HString DecodedDataStrings1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->BarCode->FindBarCode(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(CodeType1),&DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyString_FromString(DecodedDataStrings1.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image2,&CodeType2)) {
            if (PyHirschImage_Check(Image2)) {
                HalconCpp::HString DecodedDataStrings2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->BarCode->FindBarCode(*(((PyHirschImage*)Image2)->Image),CodeType2,&DecodedDataStrings2)));
                PyTuple_SET_ITEM(ret, 1, PyString_FromString(DecodedDataStrings2.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.FindBarCode()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_GetBarCodeParamSpecific(PyHirschBarCode*self, PyObject *args)
{
    char* CodeTypes1;
    char* GenParamName1;
    char* CodeTypes2;
    PyObject* GenParamName;
    char* GenParamName2;
    PyObject* CodeTypes;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &CodeTypes1,&GenParamName1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeParamSpecific(HalconCpp::HString(CodeTypes1),HalconCpp::HString(GenParamName1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &CodeTypes2,&GenParamName2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeParamSpecific(CodeTypes2,GenParamName2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &CodeTypes,&GenParamName)) {
            if (PyHirschTuple_Check(CodeTypes) && PyHirschTuple_Check(GenParamName)) {
                return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeParamSpecific(*(((PyHirschTuple*)CodeTypes)->Tuple),*(((PyHirschTuple*)GenParamName)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.GetBarCodeParamSpecific()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_CreateBarCodeModel(PyHirschBarCode*self, PyObject *args)
{
    char* GenParamName1;
    PyObject* GenParamName;
    char* GenParamName2;
    double GenParamValue2;
    PyObject* GenParamValue;
    double GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamName2,&GenParamValue2)) {
            self->BarCode->CreateBarCodeModel(GenParamName2,GenParamValue2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &GenParamName1,&GenParamValue1)) {
            self->BarCode->CreateBarCodeModel(HalconCpp::HString(GenParamName1),GenParamValue1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                self->BarCode->CreateBarCodeModel(*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.CreateBarCodeModel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_ReadBarCodeModel(PyHirschBarCode*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->BarCode->ReadBarCodeModel(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->BarCode->ReadBarCodeModel(HalconCpp::HString(FileName));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.ReadBarCodeModel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_SetBarCodeParam(PyHirschBarCode*self, PyObject *args)
{
    char* GenParamName1;
    PyObject* GenParamName;
    char* GenParamName2;
    double GenParamValue2;
    PyObject* GenParamValue;
    double GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamName2,&GenParamValue2)) {
            self->BarCode->SetBarCodeParam(GenParamName2,GenParamValue2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &GenParamName1,&GenParamValue1)) {
            self->BarCode->SetBarCodeParam(HalconCpp::HString(GenParamName1),GenParamValue1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                self->BarCode->SetBarCodeParam(*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.SetBarCodeParam()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_Clone(PyHirschBarCode*self, PyObject *)
{
    try {
        return PyHirschBarCode_FromHBarCode(self->BarCode->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_SetHandle(PyHirschBarCode*self, PyObject *args)
{
    long handle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &handle)) {
            self->BarCode->SetHandle(handle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.SetHandle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_WriteBarCodeModel(PyHirschBarCode*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->BarCode->WriteBarCodeModel(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->BarCode->WriteBarCodeModel(HalconCpp::HString(FileName));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.WriteBarCodeModel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_GetBarCodeResult(PyHirschBarCode*self, PyObject *args)
{
    char* CandidateHandle1;
    char* ResultName;
    PyObject* CandidateHandle;
    char* ResultName2;
    char* CandidateHandle2;
    char* ResultName1;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &CandidateHandle2,&ResultName2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeResult(CandidateHandle2,ResultName2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &CandidateHandle,&ResultName)) {
            if (PyHirschTuple_Check(CandidateHandle)) {
                return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeResult(*(((PyHirschTuple*)CandidateHandle)->Tuple),HalconCpp::HString(ResultName)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &CandidateHandle1,&ResultName1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeResult(HalconCpp::HString(CandidateHandle1),HalconCpp::HString(ResultName1)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.GetBarCodeResult()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_GetBarCodeParam(PyHirschBarCode*self, PyObject *args)
{
    char* GenParamName1;
    char* GenParamName2;
    PyObject* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GenParamName)) {
            if (PyHirschTuple_Check(GenParamName)) {
                return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeParam(*(((PyHirschTuple*)GenParamName)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GenParamName1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeParam(HalconCpp::HString(GenParamName1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GenParamName2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->BarCode->GetBarCodeParam(GenParamName2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.GetBarCodeParam()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_QueryBarCodeParams(PyHirschBarCode*self, PyObject *args)
{
    PyObject* Properties;
    char* Properties2;
    char* Properties1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Properties1)) {
            return PyString_FromString(self->BarCode->QueryBarCodeParams(HalconCpp::HString(Properties1)).Text());
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Properties)) {
            if (PyHirschTuple_Check(Properties)) {
                return PyHirschTuple_GetAsScalarIfOne(self->BarCode->QueryBarCodeParams(*(((PyHirschTuple*)Properties)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Properties2)) {
            return PyString_FromString(self->BarCode->QueryBarCodeParams(Properties2).Text());
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.QueryBarCodeParams()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_SetBarCodeParamSpecific(PyHirschBarCode*self, PyObject *args)
{
    char* CodeTypes1;
    char* GenParamName1;
    char* CodeTypes2;
    PyObject* GenParamName;
    char* GenParamName2;
    PyObject* GenParamValue;
    PyObject* GenParamValue1;
    PyObject* CodeTypes;
    PyObject* GenParamValue2;
    
    try {
        if (PyArg_ParseTuple(args, "ssO", &CodeTypes2,&GenParamName2,&GenParamValue2)) {
            if (PyHirschTuple_Check(GenParamValue2)) {
                self->BarCode->SetBarCodeParamSpecific(CodeTypes2,GenParamName2,*(((PyHirschTuple*)GenParamValue2)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssO", &CodeTypes1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschTuple_Check(GenParamValue1)) {
                self->BarCode->SetBarCodeParamSpecific(HalconCpp::HString(CodeTypes1),HalconCpp::HString(GenParamName1),*(((PyHirschTuple*)GenParamValue1)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &CodeTypes,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(CodeTypes) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                self->BarCode->SetBarCodeParamSpecific(*(((PyHirschTuple*)CodeTypes)->Tuple),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.SetBarCodeParamSpecific()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschBarCode_DecodeBarCodeRectangle2(PyHirschBarCode*self, PyObject *args)
{
    PyObject* Image1;
    double Length21;
    PyObject* Column;
    PyObject* Row;
    PyObject* Length1;
    double Phi1;
    PyObject* CodeType;
    double Column2;
    double Length22;
    PyObject* Length2;
    PyObject* Image2;
    char* CodeType2;
    double Length11;
    PyObject* Phi;
    double Row2;
    double Column1;
    PyObject* Image;
    double Row1;
    double Length12;
    char* CodeType1;
    double Phi2;
    
    try {
        if (PyArg_ParseTuple(args, "Osddddd", &Image1,&CodeType1,&Row1,&Column1,&Phi1,&Length11,&Length21)) {
            if (PyHirschImage_Check(Image1)) {
                return PyString_FromString(self->BarCode->DecodeBarCodeRectangle2(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(CodeType1),Row1,Column1,Phi1,Length11,Length21).Text());
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Image,&CodeType,&Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CodeType) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->BarCode->DecodeBarCodeRectangle2(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CodeType)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osddddd", &Image2,&CodeType2,&Row2,&Column2,&Phi2,&Length12,&Length22)) {
            if (PyHirschImage_Check(Image2)) {
                return PyString_FromString(self->BarCode->DecodeBarCodeRectangle2(*(((PyHirschImage*)Image2)->Image),CodeType2,Row2,Column2,Phi2,Length12,Length22).Text());
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HBarCode.DecodeBarCodeRectangle2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
