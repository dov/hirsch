PyObject *
PyHirschTemplate_WriteTemplate(PyHirschTemplate*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Template->WriteTemplate(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->Template->WriteTemplate(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.WriteTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_AdaptTemplate(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImageArray_Check(Image)) {
                self->Template->AdaptTemplate(*(((PyHirschImageArray*)Image)->ImageArray));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.AdaptTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_CreateTemplate(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Optimize;
    PyObject* Template;
    PyObject* GrayValues;
    char* Optimize1;
    PyObject* NumLevel;
    long NumLevel1;
    PyObject* FirstError;
    char* GrayValues1;
    PyObject* Template1;
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
        if (PyArg_ParseTuple(args, "OOOOO", &Template,&FirstError,&NumLevel,&Optimize,&GrayValues)) {
            if (PyHirschImage_Check(Template) && PyHirschTuple_Check(FirstError) && PyHirschTuple_Check(NumLevel) && PyHirschTuple_Check(Optimize) && PyHirschTuple_Check(GrayValues)) {
                self->Template->CreateTemplate(*(((PyHirschImage*)Template)->Image),*(((PyHirschTuple*)FirstError)->Tuple),*(((PyHirschTuple*)NumLevel)->Tuple),*(((PyHirschTuple*)Optimize)->Tuple),*(((PyHirschTuple*)GrayValues)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.CreateTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_ReadTemplate(PyHirschTemplate*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Template->ReadTemplate(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->Template->ReadTemplate(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.ReadTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_SetOffsetTemplate(PyHirschTemplate*self, PyObject *args)
{
    PyObject* GrayOffset;
    long GrayOffset1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GrayOffset)) {
            if (PyHirschTuple_Check(GrayOffset)) {
                self->Template->SetOffsetTemplate(*(((PyHirschTuple*)GrayOffset)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &GrayOffset1)) {
            self->Template->SetOffsetTemplate(GrayOffset1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.SetOffsetTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_SetHandle(PyHirschTemplate*self, PyObject *args)
{
    long ID;
    
    try {
        if (PyArg_ParseTuple(args, "l", &ID)) {
            self->Template->SetHandle(ID);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.SetHandle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchMg(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* NumLevels1;
    PyObject* NumLevels;
    PyObject* SubPixel;
    PyObject* WhichLevels;
    long WhichLevels2;
    long WhichLevels3;
    PyObject* Image2;
    PyObject* MaxError1;
    double MaxError2;
    PyObject* MaxError;
    PyObject* WhichLevels1;
    PyObject* Image;
    PyObject* Image3;
    char* SubPixel2;
    double MaxError3;
    long NumLevels2;
    char* SubPixel3;
    PyObject* SubPixel1;
    long NumLevels3;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &Image3,&MaxError3,&SubPixel3,&NumLevels3,&WhichLevels3)) {
            if (PyHirschImageArray_Check(Image3)) {
                double Column3;
                double Error3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchMg(*(((PyHirschImageArray*)Image3)->ImageArray),MaxError3,SubPixel3,NumLevels3,WhichLevels3,&Column3,&Error3)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column3));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Image,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImageArray_Check(Image) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(WhichLevels)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchMg(*(((PyHirschImageArray*)Image)->ImageArray),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)WhichLevels)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Image1,&MaxError1,&SubPixel1,&NumLevels1,&WhichLevels1)) {
            if (PyHirschImageArray_Check(Image1) && PyHirschTuple_Check(MaxError1) && PyHirschTuple_Check(SubPixel1) && PyHirschTuple_Check(NumLevels1) && PyHirschTuple_Check(WhichLevels1)) {
                double Column1;
                double Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchMg(*(((PyHirschImageArray*)Image1)->ImageArray),*(((PyHirschTuple*)MaxError1)->Tuple),*(((PyHirschTuple*)SubPixel1)->Tuple),*(((PyHirschTuple*)NumLevels1)->Tuple),*(((PyHirschTuple*)WhichLevels1)->Tuple),&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &Image2,&MaxError2,&SubPixel2,&NumLevels2,&WhichLevels2)) {
            if (PyHirschImageArray_Check(Image2)) {
                Halcon::HTuple Column2;
                Halcon::HTuple Error2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchMg(*(((PyHirschImageArray*)Image2)->ImageArray),MaxError2,SubPixel2,NumLevels2,WhichLevels2,&Column2,&Error2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_FastMatchMg(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Image1;
    double MaxError1;
    PyObject* MaxError;
    PyObject* Image;
    long NumLevel1;
    PyObject* NumLevel;
    
    try {
        if (PyArg_ParseTuple(args, "Odl", &Image1,&MaxError1,&NumLevel1)) {
            if (PyHirschImageArray_Check(Image1)) {
                return PyHirschRegionArray_FromHRegionArray(self->Template->FastMatchMg(*(((PyHirschImageArray*)Image1)->ImageArray),MaxError1,NumLevel1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Image,&MaxError,&NumLevel)) {
            if (PyHirschImageArray_Check(Image) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(NumLevel)) {
                return PyHirschRegionArray_FromHRegionArray(self->Template->FastMatchMg(*(((PyHirschImageArray*)Image)->ImageArray),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)NumLevel)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.FastMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatch(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* SubPixel;
    char* SubPixel2;
    PyObject* Image2;
    PyObject* MaxError1;
    double MaxError2;
    PyObject* MaxError;
    PyObject* Image;
    PyObject* Image3;
    double MaxError3;
    char* SubPixel3;
    PyObject* SubPixel1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image1,&MaxError1,&SubPixel1)) {
            if (PyHirschImageArray_Check(Image1) && PyHirschTuple_Check(MaxError1) && PyHirschTuple_Check(SubPixel1)) {
                double Column1;
                double Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatch(*(((PyHirschImageArray*)Image1)->ImageArray),*(((PyHirschTuple*)MaxError1)->Tuple),*(((PyHirschTuple*)SubPixel1)->Tuple),&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Image2,&MaxError2,&SubPixel2)) {
            if (PyHirschImageArray_Check(Image2)) {
                Halcon::HTuple Column2;
                Halcon::HTuple Error2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatch(*(((PyHirschImageArray*)Image2)->ImageArray),MaxError2,SubPixel2,&Column2,&Error2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Image,&MaxError,&SubPixel)) {
            if (PyHirschImageArray_Check(Image) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatch(*(((PyHirschImageArray*)Image)->ImageArray),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Image3,&MaxError3,&SubPixel3)) {
            if (PyHirschImageArray_Check(Image3)) {
                double Column3;
                double Error3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatch(*(((PyHirschImageArray*)Image3)->ImageArray),MaxError3,SubPixel3,&Column3,&Error3)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column3));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error3));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_SetReferenceTemplate(PyHirschTemplate*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                self->Template->SetReferenceTemplate(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            self->Template->SetReferenceTemplate(Row1,Column1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.SetReferenceTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchRot(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* AngleExtend1;
    char* SubPixel3;
    PyObject* Image3;
    PyObject* SubPixel;
    char* SubPixel2;
    double AngleExtend3;
    double MaxError3;
    double AngleStart2;
    PyObject* Image2;
    PyObject* MaxError1;
    double MaxError2;
    PyObject* MaxError;
    PyObject* AngleStart1;
    PyObject* Image;
    PyObject* AngleStart;
    PyObject* AngleExtend;
    double AngleStart3;
    PyObject* SubPixel1;
    double AngleExtend2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschImageArray_Check(Image) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtend) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatchRot(*(((PyHirschImageArray*)Image)->ImageArray),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &Image2,&AngleStart2,&AngleExtend2,&MaxError2,&SubPixel2)) {
            if (PyHirschImageArray_Check(Image2)) {
                Halcon::HTuple Column2;
                Halcon::HTuple Angle2;
                Halcon::HTuple Error2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatchRot(*(((PyHirschImageArray*)Image2)->ImageArray),AngleStart2,AngleExtend2,MaxError2,SubPixel2,&Column2,&Angle2,&Error2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &Image3,&AngleStart3,&AngleExtend3,&MaxError3,&SubPixel3)) {
            if (PyHirschImageArray_Check(Image3)) {
                double Column3;
                double Angle3;
                double Error3;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchRot(*(((PyHirschImageArray*)Image3)->ImageArray),AngleStart3,AngleExtend3,MaxError3,SubPixel3,&Column3,&Angle3,&Error3)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column3));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle3));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Image1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1)) {
            if (PyHirschImageArray_Check(Image1) && PyHirschTuple_Check(AngleStart1) && PyHirschTuple_Check(AngleExtend1) && PyHirschTuple_Check(MaxError1) && PyHirschTuple_Check(SubPixel1)) {
                double Column1;
                double Angle1;
                double Error1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchRot(*(((PyHirschImageArray*)Image1)->ImageArray),*(((PyHirschTuple*)AngleStart1)->Tuple),*(((PyHirschTuple*)AngleExtend1)->Tuple),*(((PyHirschTuple*)MaxError1)->Tuple),*(((PyHirschTuple*)SubPixel1)->Tuple),&Column1,&Angle1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchRot()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_CreateTemplateRot(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Optimize;
    PyObject* Template;
    double AngleStart1;
    PyObject* GrayValues;
    char* Optimize1;
    double AngleStep1;
    PyObject* AngleExtend;
    PyObject* AngleStart;
    PyObject* Template1;
    long NumLevel1;
    PyObject* NumLevel;
    double AngleExtend1;
    PyObject* AngleStep;
    char* GrayValues1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Template,&NumLevel,&AngleStart,&AngleExtend,&AngleStep,&Optimize,&GrayValues)) {
            if (PyHirschImage_Check(Template) && PyHirschTuple_Check(NumLevel) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtend) && PyHirschTuple_Check(AngleStep) && PyHirschTuple_Check(Optimize) && PyHirschTuple_Check(GrayValues)) {
                self->Template->CreateTemplateRot(*(((PyHirschImage*)Template)->Image),*(((PyHirschTuple*)NumLevel)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)AngleStep)->Tuple),*(((PyHirschTuple*)Optimize)->Tuple),*(((PyHirschTuple*)GrayValues)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oldddss", &Template1,&NumLevel1,&AngleStart1,&AngleExtend1,&AngleStep1,&Optimize1,&GrayValues1)) {
            if (PyHirschImage_Check(Template1)) {
                self->Template->CreateTemplateRot(*(((PyHirschImage*)Template1)->Image),NumLevel1,AngleStart1,AngleExtend1,AngleStep1,Optimize1,GrayValues1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.CreateTemplateRot()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchRotMg(PyHirschTemplate*self, PyObject *args)
{
    PyObject* NumLevels1;
    double MaxError2;
    PyObject* MaxError;
    char* SubPixel3;
    long NumLevels2;
    PyObject* SubPixel1;
    PyObject* Image1;
    PyObject* NumLevels;
    PyObject* Image3;
    double AngleStart3;
    PyObject* Image;
    PyObject* AngleExtend;
    double AngleExtend2;
    PyObject* AngleExtend1;
    long NumLevels3;
    PyObject* SubPixel;
    double MaxError3;
    PyObject* MaxError1;
    char* SubPixel2;
    double AngleStart2;
    PyObject* Image2;
    PyObject* AngleStart1;
    double AngleExtend3;
    PyObject* AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "Odddsl", &Image2,&AngleStart2,&AngleExtend2,&MaxError2,&SubPixel2,&NumLevels2)) {
            if (PyHirschImageArray_Check(Image2)) {
                Halcon::HTuple Column2;
                Halcon::HTuple Angle2;
                Halcon::HTuple Error2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatchRotMg(*(((PyHirschImageArray*)Image2)->ImageArray),AngleStart2,AngleExtend2,MaxError2,SubPixel2,NumLevels2,&Column2,&Angle2,&Error2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Image1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1,&NumLevels1)) {
            if (PyHirschImageArray_Check(Image1) && PyHirschTuple_Check(AngleStart1) && PyHirschTuple_Check(AngleExtend1) && PyHirschTuple_Check(MaxError1) && PyHirschTuple_Check(SubPixel1) && PyHirschTuple_Check(NumLevels1)) {
                double Column1;
                double Angle1;
                double Error1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchRotMg(*(((PyHirschImageArray*)Image1)->ImageArray),*(((PyHirschTuple*)AngleStart1)->Tuple),*(((PyHirschTuple*)AngleExtend1)->Tuple),*(((PyHirschTuple*)MaxError1)->Tuple),*(((PyHirschTuple*)SubPixel1)->Tuple),*(((PyHirschTuple*)NumLevels1)->Tuple),&Column1,&Angle1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschImageArray_Check(Image) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtend) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatchRotMg(*(((PyHirschImageArray*)Image)->ImageArray),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odddsl", &Image3,&AngleStart3,&AngleExtend3,&MaxError3,&SubPixel3,&NumLevels3)) {
            if (PyHirschImageArray_Check(Image3)) {
                double Column3;
                double Angle3;
                double Error3;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchRotMg(*(((PyHirschImageArray*)Image3)->ImageArray),AngleStart3,AngleExtend3,MaxError3,SubPixel3,NumLevels3,&Column3,&Angle3,&Error3)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column3));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle3));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error3));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchRotMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_FastMatch(PyHirschTemplate*self, PyObject *args)
{
    PyObject* Image1;
    double MaxError1;
    PyObject* MaxError;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&MaxError1)) {
            if (PyHirschImageArray_Check(Image1)) {
                return PyHirschRegionArray_FromHRegionArray(self->Template->FastMatch(*(((PyHirschImageArray*)Image1)->ImageArray),MaxError1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&MaxError)) {
            if (PyHirschImageArray_Check(Image) && PyHirschTuple_Check(MaxError)) {
                return PyHirschRegionArray_FromHRegionArray(self->Template->FastMatch(*(((PyHirschImageArray*)Image)->ImageArray),*(((PyHirschTuple*)MaxError)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.FastMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_BestMatchPreMg(PyHirschTemplate*self, PyObject *args)
{
    PyObject* ImagePyramid3;
    long WhichLevels2;
    PyObject* ImagePyramid;
    PyObject* NumLevels;
    PyObject* SubPixel;
    PyObject* WhichLevels;
    PyObject* ImagePyramid1;
    long WhichLevels3;
    PyObject* ImagePyramid2;
    PyObject* MaxError1;
    double MaxError2;
    PyObject* MaxError;
    PyObject* WhichLevels1;
    double MaxError3;
    char* SubPixel2;
    long NumLevels2;
    char* SubPixel3;
    PyObject* SubPixel1;
    PyObject* NumLevels1;
    long NumLevels3;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &ImagePyramid1,&MaxError1,&SubPixel1,&NumLevels1,&WhichLevels1)) {
            if (PyHirschImageArray_Check(ImagePyramid1) && PyHirschTuple_Check(MaxError1) && PyHirschTuple_Check(SubPixel1) && PyHirschTuple_Check(NumLevels1) && PyHirschTuple_Check(WhichLevels1)) {
                double Column1;
                double Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchPreMg(*(((PyHirschImageArray*)ImagePyramid1)->ImageArray),*(((PyHirschTuple*)MaxError1)->Tuple),*(((PyHirschTuple*)SubPixel1)->Tuple),*(((PyHirschTuple*)NumLevels1)->Tuple),*(((PyHirschTuple*)WhichLevels1)->Tuple),&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &ImagePyramid2,&MaxError2,&SubPixel2,&NumLevels2,&WhichLevels2)) {
            if (PyHirschImageArray_Check(ImagePyramid2)) {
                Halcon::HTuple Column2;
                Halcon::HTuple Error2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchPreMg(*(((PyHirschImageArray*)ImagePyramid2)->ImageArray),MaxError2,SubPixel2,NumLevels2,WhichLevels2,&Column2,&Error2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &ImagePyramid,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImageArray_Check(ImagePyramid) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(WhichLevels)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchPreMg(*(((PyHirschImageArray*)ImagePyramid)->ImageArray),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)WhichLevels)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &ImagePyramid3,&MaxError3,&SubPixel3,&NumLevels3,&WhichLevels3)) {
            if (PyHirschImageArray_Check(ImagePyramid3)) {
                double Column3;
                double Error3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchPreMg(*(((PyHirschImageArray*)ImagePyramid3)->ImageArray),MaxError3,SubPixel3,NumLevels3,WhichLevels3,&Column3,&Error3)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column3));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error3));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchPreMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

#if PY_MAJOR_VERSION >= 3
#define PyInt_FromLong PyLong_FromLong
#endif

PyObject *
PyHirschTemplate_GetHandle(PyHirschTemplate*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Template->GetHandle()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
