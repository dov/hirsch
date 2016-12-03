PyObject *
PyHirschBarCode_FindBarCode(PyHirschBarCode*self, PyObject *args)
{
    PyObject* Image;
    PyObject* CodeType;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image,&CodeType)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CodeType)) {
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->BarCode->FindBarCode(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CodeType)->Tuple),&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
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
    PyObject* CodeTypes;
    PyObject* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &CodeTypes1,&GenParamName1)) {
            return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeParamSpecific(CodeTypes1,GenParamName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &CodeTypes,&GenParamName)) {
            if (PyHirschTuple_Check(CodeTypes) && PyHirschTuple_Check(GenParamName)) {
                return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeParamSpecific(*(((PyHirschTuple*)CodeTypes)->Tuple),*(((PyHirschTuple*)GenParamName)->Tuple)));
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
    PyObject* GenParamValue;
    PyObject* GenParamName;
    double GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamName1,&GenParamValue1)) {
            self->BarCode->CreateBarCodeModel(GenParamName1,GenParamValue1);
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->BarCode->ReadBarCodeModel(FileName);
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
    PyObject* GenParamValue;
    PyObject* GenParamName;
    double GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &GenParamName1,&GenParamValue1)) {
            self->BarCode->SetBarCodeParam(GenParamName1,GenParamValue1);
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->BarCode->WriteBarCodeModel(FileName);
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
    char* CandidateHandle;
    char* ResultName;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &CandidateHandle,&ResultName)) {
            return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeResult(CandidateHandle,ResultName));
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
    PyObject* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GenParamName)) {
            if (PyHirschTuple_Check(GenParamName)) {
                return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeParam(*(((PyHirschTuple*)GenParamName)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GenParamName1)) {
            return PyHirschTuple_FromHTuple(self->BarCode->GetBarCodeParam(GenParamName1));
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
    
    try {
        if (PyArg_ParseTuple(args, "O", &Properties)) {
            if (PyHirschTuple_Check(Properties)) {
                return PyHirschTuple_FromHTuple(self->BarCode->QueryBarCodeParams(*(((PyHirschTuple*)Properties)->Tuple)));
            }
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
    PyObject* GenParamName;
    PyObject* GenParamValue;
    PyObject* GenParamValue1;
    PyObject* CodeTypes;
    
    try {
        if (PyArg_ParseTuple(args, "ssO", &CodeTypes1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschTuple_Check(GenParamValue1)) {
                self->BarCode->SetBarCodeParamSpecific(CodeTypes1,GenParamName1,*(((PyHirschTuple*)GenParamValue1)->Tuple));
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
    PyObject* Column;
    PyObject* Row;
    PyObject* Length1;
    PyObject* CodeType;
    PyObject* Length2;
    PyObject* Phi;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Image,&CodeType,&Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CodeType) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschTuple_FromHTuple(self->BarCode->DecodeBarCodeRectangle2(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CodeType)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
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
