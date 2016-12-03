PyObject *
PyHirschTemplate_WriteTemplate(PyHirschTemplate*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Template->WriteTemplate(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.WriteTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_AdaptTemplate(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                self->Template->AdaptTemplate(*(((PyHirschImage*)Image)->Image));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.AdaptTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_CreateTemplate(PyHirschTemplate*self, PyObject *args)
{
    char* Optimize;
    PyObject* Template;
    long FirstError;
    char* GrayValues;
    long NumLevel;
    
    try {
        if (PyArg_ParseTuple(args, "Ollss", &Template,&FirstError,&NumLevel,&Optimize,&GrayValues)) {
            if (PyHirschImage_Check(Template)) {
                self->Template->CreateTemplate(*(((PyHirschImage*)Template)->Image),FirstError,NumLevel,Optimize,GrayValues);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.CreateTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_ReadTemplate(PyHirschTemplate*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Template->ReadTemplate(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.ReadTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_Clone(PyHirschTemplate*self, PyObject *)
{
    try {
        return PyHirschTemplate_FromHTemplate(self->Template->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_SetHandle(PyHirschTemplate*self, PyObject *args)
{
    long handle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &handle)) {
            self->Template->SetHandle(handle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.SetHandle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchMg(PyHirschTemplate*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    PyObject* Image;
    long NumLevels;
    long WhichLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &Image,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImage_Check(Image)) {
                double Row;
                double Column;
                double Error;
                self->Template->BestMatchMg(*(((PyHirschImage*)Image)->Image),MaxError,SubPixel,NumLevels,WhichLevels,&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_FastMatchMg(PyHirschTemplate*self, PyObject *args)
{
    double MaxError1;
    PyObject* Image1;
    double MaxError;
    long NumLevel1;
    PyObject* NumLevel;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Odl", &Image1,&MaxError1,&NumLevel1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschRegion_FromHRegion(self->Template->FastMatchMg(*(((PyHirschImage*)Image1)->Image),MaxError1,NumLevel1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OdO", &Image,&MaxError,&NumLevel)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(NumLevel)) {
                return PyHirschRegion_FromHRegion(self->Template->FastMatchMg(*(((PyHirschImage*)Image)->Image),MaxError,*(((PyHirschTuple*)NumLevel)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.FastMatchMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatch(PyHirschTemplate*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image,&MaxError,&SubPixel)) {
            if (PyHirschImage_Check(Image)) {
                double Row;
                double Column;
                double Error;
                self->Template->BestMatch(*(((PyHirschImage*)Image)->Image),MaxError,SubPixel,&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatch()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_SetReferenceTemplate(PyHirschTemplate*self, PyObject *args)
{
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            self->Template->SetReferenceTemplate(Row,Column);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.SetReferenceTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchRot(PyHirschTemplate*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    double AngleExtend;
    PyObject* Image;
    double AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "Oddds", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschImage_Check(Image)) {
                double Row;
                double Column;
                double Angle;
                double Error;
                self->Template->BestMatchRot(*(((PyHirschImage*)Image)->Image),AngleStart,AngleExtend,MaxError,SubPixel,&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchRot()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_CreateTemplateRot(PyHirschTemplate*self, PyObject *args)
{
    char* Optimize;
    PyObject* Template;
    long NumLevel;
    char* GrayValues;
    double AngleExtend;
    double AngleStep;
    double AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "Oldddss", &Template,&NumLevel,&AngleStart,&AngleExtend,&AngleStep,&Optimize,&GrayValues)) {
            if (PyHirschImage_Check(Template)) {
                self->Template->CreateTemplateRot(*(((PyHirschImage*)Template)->Image),NumLevel,AngleStart,AngleExtend,AngleStep,Optimize,GrayValues);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.CreateTemplateRot()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchRotMg(PyHirschTemplate*self, PyObject *args)
{
    double AngleExtend;
    char* SubPixel;
    double MaxError;
    double AngleStart;
    PyObject* Image;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odddsl", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschImage_Check(Image)) {
                double Row;
                double Column;
                double Angle;
                double Error;
                self->Template->BestMatchRotMg(*(((PyHirschImage*)Image)->Image),AngleStart,AngleExtend,MaxError,SubPixel,NumLevels,&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchRotMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_FastMatch(PyHirschTemplate*self, PyObject *args)
{
    double MaxError;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&MaxError)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschRegion_FromHRegion(self->Template->FastMatch(*(((PyHirschImage*)Image)->Image),MaxError));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.FastMatch()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_SetOffsetTemplate(PyHirschTemplate*self, PyObject *args)
{
    long GrayOffset;
    
    try {
        if (PyArg_ParseTuple(args, "l", &GrayOffset)) {
            self->Template->SetOffsetTemplate(GrayOffset);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.SetOffsetTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchPreMg(PyHirschTemplate*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    PyObject* ImagePyramid;
    long WhichLevels;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &ImagePyramid,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImage_Check(ImagePyramid)) {
                double Row;
                double Column;
                double Error;
                self->Template->BestMatchPreMg(*(((PyHirschImage*)ImagePyramid)->Image),MaxError,SubPixel,NumLevels,WhichLevels,&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchPreMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
