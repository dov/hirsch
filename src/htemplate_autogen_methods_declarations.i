PyObject *
PyHirschTemplate_WriteTemplate(PyHirschTemplate*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Template->WriteTemplate(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Template->WriteTemplate(HalconCpp::HString(FileName));
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
    long NumLevel;
    char* Optimize1;
    char* GrayValues;
    long NumLevel1;
    PyObject* Template1;
    char* GrayValues1;
    long FirstError;
    long FirstError1;
    
    try {
        if (PyArg_ParseTuple(args, "Ollss", &Template1,&FirstError1,&NumLevel1,&Optimize1,&GrayValues1)) {
            if (PyHirschImage_Check(Template1)) {
                self->Template->CreateTemplate(*(((PyHirschImage*)Template1)->Image),FirstError1,NumLevel1,Optimize1,GrayValues1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ollss", &Template,&FirstError,&NumLevel,&Optimize,&GrayValues)) {
            if (PyHirschImage_Check(Template)) {
                self->Template->CreateTemplate(*(((PyHirschImage*)Template)->Image),FirstError,NumLevel,HalconCpp::HString(Optimize),HalconCpp::HString(GrayValues));
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
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Template->ReadTemplate(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Template->ReadTemplate(HalconCpp::HString(FileName));
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
    PyObject* Image1;
    double MaxError1;
    long NumLevels1;
    char* SubPixel1;
    PyObject* WhichLevels;
    long WhichLevels2;
    PyObject* Image2;
    double MaxError2;
    char* SubPixel;
    double MaxError;
    long WhichLevels1;
    char* SubPixel2;
    PyObject* Image;
    long NumLevels2;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "OdslO", &Image,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(WhichLevels)) {
                double Row;
                double Column;
                double Error;
                self->Template->BestMatchMg(*(((PyHirschImage*)Image)->Image),MaxError,HalconCpp::HString(SubPixel),NumLevels,*(((PyHirschTuple*)WhichLevels)->Tuple),&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &Image1,&MaxError1,&SubPixel1,&NumLevels1,&WhichLevels1)) {
            if (PyHirschImage_Check(Image1)) {
                double Row1;
                double Column1;
                double Error1;
                self->Template->BestMatchMg(*(((PyHirschImage*)Image1)->Image),MaxError1,HalconCpp::HString(SubPixel1),NumLevels1,WhichLevels1,&Row1,&Column1,&Error1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &Image2,&MaxError2,&SubPixel2,&NumLevels2,&WhichLevels2)) {
            if (PyHirschImage_Check(Image2)) {
                double Row2;
                double Column2;
                double Error2;
                self->Template->BestMatchMg(*(((PyHirschImage*)Image2)->Image),MaxError2,SubPixel2,NumLevels2,WhichLevels2,&Row2,&Column2,&Error2);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                
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
    double MaxError1;
    PyObject* Image1;
    char* SubPixel2;
    PyObject* Image2;
    double MaxError2;
    char* SubPixel;
    double MaxError;
    PyObject* Image;
    char* SubPixel1;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image,&MaxError,&SubPixel)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Error;
                self->Template->BestMatch(*(((PyHirschImage*)Image)->Image),MaxError,HalconCpp::HString(SubPixel),&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Image1,&MaxError1,&SubPixel1)) {
            if (PyHirschImage_Check(Image1)) {
                double Row1;
                double Column1;
                double Error1;
                self->Template->BestMatch(*(((PyHirschImage*)Image1)->Image),MaxError1,HalconCpp::HString(SubPixel1),&Row1,&Column1,&Error1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Image2,&MaxError2,&SubPixel2)) {
            if (PyHirschImage_Check(Image2)) {
                double Row2;
                double Column2;
                double Error2;
                self->Template->BestMatch(*(((PyHirschImage*)Image2)->Image),MaxError2,SubPixel2,&Row2,&Column2,&Error2);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                
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
    PyObject* Image1;
    double MaxError1;
    double AngleStart1;
    char* SubPixel1;
    char* SubPixel2;
    double AngleExtend;
    double AngleStart2;
    PyObject* Image2;
    double MaxError2;
    char* SubPixel;
    double MaxError;
    double AngleExtend1;
    double AngleStart;
    PyObject* Image;
    double AngleExtend2;
    
    try {
        if (PyArg_ParseTuple(args, "Oddds", &Image1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1)) {
            if (PyHirschImage_Check(Image1)) {
                double Row1;
                double Column1;
                double Angle1;
                double Error1;
                self->Template->BestMatchRot(*(((PyHirschImage*)Image1)->Image),AngleStart1,AngleExtend1,MaxError1,HalconCpp::HString(SubPixel1),&Row1,&Column1,&Angle1,&Error1);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &Image2,&AngleStart2,&AngleExtend2,&MaxError2,&SubPixel2)) {
            if (PyHirschImage_Check(Image2)) {
                double Row2;
                double Column2;
                double Angle2;
                double Error2;
                self->Template->BestMatchRot(*(((PyHirschImage*)Image2)->Image),AngleStart2,AngleExtend2,MaxError2,SubPixel2,&Row2,&Column2,&Angle2,&Error2);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Angle;
                HalconCpp::HTuple Error;
                self->Template->BestMatchRot(*(((PyHirschImage*)Image)->Image),AngleStart,AngleExtend,MaxError,HalconCpp::HString(SubPixel),&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Error));
                
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
    char* Optimize1;
    char* GrayValues;
    double AngleExtend;
    long NumLevel1;
    double AngleStep1;
    double AngleExtend1;
    double AngleStep;
    double AngleStart;
    PyObject* Template1;
    char* GrayValues1;
    double AngleStart1;
    
    try {
        if (PyArg_ParseTuple(args, "Oldddss", &Template1,&NumLevel1,&AngleStart1,&AngleExtend1,&AngleStep1,&Optimize1,&GrayValues1)) {
            if (PyHirschImage_Check(Template1)) {
                self->Template->CreateTemplateRot(*(((PyHirschImage*)Template1)->Image),NumLevel1,AngleStart1,AngleExtend1,AngleStep1,Optimize1,GrayValues1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oldddss", &Template,&NumLevel,&AngleStart,&AngleExtend,&AngleStep,&Optimize,&GrayValues)) {
            if (PyHirschImage_Check(Template)) {
                self->Template->CreateTemplateRot(*(((PyHirschImage*)Template)->Image),NumLevel,AngleStart,AngleExtend,AngleStep,HalconCpp::HString(Optimize),HalconCpp::HString(GrayValues));
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
    PyObject* Image1;
    double MaxError1;
    long NumLevels1;
    double AngleStart1;
    char* SubPixel1;
    char* SubPixel2;
    double AngleExtend;
    double AngleStart2;
    PyObject* Image2;
    double MaxError2;
    char* SubPixel;
    double MaxError;
    double AngleExtend1;
    double AngleStart;
    PyObject* Image;
    long NumLevels2;
    long NumLevels;
    double AngleExtend2;
    
    try {
        if (PyArg_ParseTuple(args, "Odddsl", &Image2,&AngleStart2,&AngleExtend2,&MaxError2,&SubPixel2,&NumLevels2)) {
            if (PyHirschImage_Check(Image2)) {
                double Row2;
                double Column2;
                double Angle2;
                double Error2;
                self->Template->BestMatchRotMg(*(((PyHirschImage*)Image2)->Image),AngleStart2,AngleExtend2,MaxError2,SubPixel2,NumLevels2,&Row2,&Column2,&Angle2,&Error2);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odddsl", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Angle;
                HalconCpp::HTuple Error;
                self->Template->BestMatchRotMg(*(((PyHirschImage*)Image)->Image),AngleStart,AngleExtend,MaxError,HalconCpp::HString(SubPixel),NumLevels,&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odddsl", &Image1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1,&NumLevels1)) {
            if (PyHirschImage_Check(Image1)) {
                double Row1;
                double Column1;
                double Angle1;
                double Error1;
                self->Template->BestMatchRotMg(*(((PyHirschImage*)Image1)->Image),AngleStart1,AngleExtend1,MaxError1,HalconCpp::HString(SubPixel1),NumLevels1,&Row1,&Column1,&Angle1,&Error1);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
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
    double MaxError1;
    long NumLevels1;
    PyObject* ImagePyramid;
    long WhichLevels2;
    PyObject* WhichLevels;
    PyObject* ImagePyramid1;
    double MaxError2;
    char* SubPixel;
    PyObject* ImagePyramid2;
    double MaxError;
    long WhichLevels1;
    char* SubPixel2;
    char* SubPixel1;
    long NumLevels2;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &ImagePyramid2,&MaxError2,&SubPixel2,&NumLevels2,&WhichLevels2)) {
            if (PyHirschImage_Check(ImagePyramid2)) {
                double Row2;
                double Column2;
                double Error2;
                self->Template->BestMatchPreMg(*(((PyHirschImage*)ImagePyramid2)->Image),MaxError2,SubPixel2,NumLevels2,WhichLevels2,&Row2,&Column2,&Error2);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OdslO", &ImagePyramid,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImage_Check(ImagePyramid) && PyHirschTuple_Check(WhichLevels)) {
                double Row;
                double Column;
                double Error;
                self->Template->BestMatchPreMg(*(((PyHirschImage*)ImagePyramid)->Image),MaxError,HalconCpp::HString(SubPixel),NumLevels,*(((PyHirschTuple*)WhichLevels)->Tuple),&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &ImagePyramid1,&MaxError1,&SubPixel1,&NumLevels1,&WhichLevels1)) {
            if (PyHirschImage_Check(ImagePyramid1)) {
                double Row1;
                double Column1;
                double Error1;
                self->Template->BestMatchPreMg(*(((PyHirschImage*)ImagePyramid1)->Image),MaxError1,HalconCpp::HString(SubPixel1),NumLevels1,WhichLevels1,&Row1,&Column1,&Error1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
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
