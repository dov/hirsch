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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Template->ReadTemplate(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
    long GrayOffset;
    
    try {
        if (PyArg_ParseTuple(args, "l", &GrayOffset)) {
            self->Template->SetOffsetTemplate(GrayOffset);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
    char* SubPixel;
    double MaxError;
    PyObject* Image;
    long NumLevels;
    long WhichLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &Image,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImageArray_Check(Image)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchMg(*(((PyHirschImageArray*)Image)->ImageArray),MaxError,SubPixel,NumLevels,WhichLevels,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
            if (PyHirschImageArray_Check(Image)) {
                double Column;
                double Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchMg(*(((PyHirschImageArray*)Image)->ImageArray),MaxError,SubPixel,NumLevels,WhichLevels,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchMg()");
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
    char* SubPixel;
    double MaxError;
    double AngleExtend;
    PyObject* Image;
    double AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "Oddds", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschImageArray_Check(Image)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatchRot(*(((PyHirschImageArray*)Image)->ImageArray),AngleStart,AngleExtend,MaxError,SubPixel,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
            if (PyHirschImageArray_Check(Image)) {
                double Column;
                double Angle;
                double Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchRot(*(((PyHirschImageArray*)Image)->ImageArray),AngleStart,AngleExtend,MaxError,SubPixel,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchRot()");
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
    double MaxError;
    PyObject* Image;
    long NumLevel;
    
    try {
        if (PyArg_ParseTuple(args, "Odl", &Image,&MaxError,&NumLevel)) {
            if (PyHirschImageArray_Check(Image)) {
                return PyHirschRegionArray_FromHRegionArray(self->Template->FastMatchMg(*(((PyHirschImageArray*)Image)->ImageArray),MaxError,NumLevel));
            }
        }
        
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
    char* SubPixel;
    double MaxError;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image,&MaxError,&SubPixel)) {
            if (PyHirschImageArray_Check(Image)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatch(*(((PyHirschImageArray*)Image)->ImageArray),MaxError,SubPixel,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
            if (PyHirschImageArray_Check(Image)) {
                double Column;
                double Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatch(*(((PyHirschImageArray*)Image)->ImageArray),MaxError,SubPixel,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            self->Template->SetReferenceTemplate(Row,Column);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.SetReferenceTemplate()");
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
    double MaxError;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&MaxError)) {
            if (PyHirschImageArray_Check(Image)) {
                return PyHirschRegionArray_FromHRegionArray(self->Template->FastMatch(*(((PyHirschImageArray*)Image)->ImageArray),MaxError));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.FastMatch()");
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
    double AngleExtend;
    char* SubPixel;
    double MaxError;
    double AngleStart;
    PyObject* Image;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odddsl", &Image,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschImageArray_Check(Image)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Template->BestMatchRotMg(*(((PyHirschImageArray*)Image)->ImageArray),AngleStart,AngleExtend,MaxError,SubPixel,NumLevels,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
            if (PyHirschImageArray_Check(Image)) {
                double Column;
                double Angle;
                double Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchRotMg(*(((PyHirschImageArray*)Image)->ImageArray),AngleStart,AngleExtend,MaxError,SubPixel,NumLevels,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchRotMg()");
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
    char* SubPixel;
    double MaxError;
    PyObject* ImagePyramid;
    long WhichLevels;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &ImagePyramid,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschImageArray_Check(ImagePyramid)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchPreMg(*(((PyHirschImageArray*)ImagePyramid)->ImageArray),MaxError,SubPixel,NumLevels,WhichLevels,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
            if (PyHirschImageArray_Check(ImagePyramid)) {
                double Column;
                double Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Template->BestMatchPreMg(*(((PyHirschImageArray*)ImagePyramid)->ImageArray),MaxError,SubPixel,NumLevels,WhichLevels,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTemplate.BestMatchPreMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTemplate_GetHandle(PyHirschTemplate*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->Template->GetHandle()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
