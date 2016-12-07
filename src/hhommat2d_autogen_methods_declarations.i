PyObject *
PyHirschHomMat2D_HomMat2dScaleLocal(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Sy;
    double Sy1;
    double Sx1;
    PyObject* Sx;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Sx1,&Sy1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dScaleLocal(Sx1,Sy1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Sx,&Sy)) {
            if (PyHirschTuple_Check(Sx) && PyHirschTuple_Check(Sy)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dScaleLocal(*(((PyHirschTuple*)Sx)->Tuple),*(((PyHirschTuple*)Sy)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dScaleLocal()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjMatchPointsDistortionRansac(PyHirschHomMat2D*self, PyObject *args)
{
    long RowTolerance;
    long ColMove1;
    long RowMove1;
    PyObject* Image12;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* Image1;
    double DistanceThreshold2;
    PyObject* DistanceThreshold;
    PyObject* Cols2;
    long MatchThreshold1;
    double Rotation1;
    PyObject* Cols12;
    PyObject* Image22;
    PyObject* Rows21;
    long RowTolerance2;
    PyObject* Cols21;
    long ColMove;
    char* EstimationMethod;
    long MaskSize;
    long ColTolerance1;
    double Rotation2;
    PyObject* MatchThreshold;
    char* EstimationMethod2;
    long RowMove2;
    long ColMove2;
    PyObject* Image21;
    PyObject* Rows1;
    long MaskSize2;
    long ColTolerance;
    long RandSeed1;
    PyObject* Image11;
    PyObject* Rows22;
    long RowTolerance1;
    long RandSeed2;
    long RandSeed;
    char* EstimationMethod1;
    double DistanceThreshold1;
    PyObject* Image2;
    char* GrayMatchMethod2;
    PyObject* Rotation;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    char* GrayMatchMethod1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOslllllOOsOl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image11,&Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image11) && PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image11)->Image),*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image12,&Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image12) && PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image12)->Image),*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjMatchPointsDistortionRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToFundamentalMatrix(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* CovRR2;
    PyObject* Rows11;
    PyObject* CovRC2;
    PyObject* Cols1;
    PyObject* CovRC21;
    PyObject* Rows2;
    PyObject* CovRR11;
    PyObject* CovCC21;
    PyObject* Cols2;
    char* Method;
    PyObject* CovRC11;
    PyObject* Rows21;
    PyObject* Cols21;
    PyObject* CovCC1;
    PyObject* CovRR1;
    char* Method1;
    PyObject* Rows1;
    PyObject* CovRR21;
    PyObject* CovCC11;
    PyObject* CovCC2;
    PyObject* Cols11;
    PyObject* CovRC1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOs", &Rows11,&Cols11,&Rows21,&Cols21,&CovRR11,&CovRC11,&CovCC11,&CovRR21,&CovRC21,&CovCC21,&Method1)) {
            if (PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschTuple_Check(CovRR11) && PyHirschTuple_Check(CovRC11) && PyHirschTuple_Check(CovCC11) && PyHirschTuple_Check(CovRR21) && PyHirschTuple_Check(CovRC21) && PyHirschTuple_Check(CovCC21)) {
                double Error1;
                HalconCpp::HTuple X1;
                HalconCpp::HTuple Y1;
                HalconCpp::HTuple Z1;
                HalconCpp::HTuple W1;
                HalconCpp::HTuple CovXYZW1;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.VectorToFundamentalMatrix(*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),*(((PyHirschTuple*)CovRR11)->Tuple),*(((PyHirschTuple*)CovRC11)->Tuple),*(((PyHirschTuple*)CovCC11)->Tuple),*(((PyHirschTuple*)CovRR21)->Tuple),*(((PyHirschTuple*)CovRC21)->Tuple),*(((PyHirschTuple*)CovCC21)->Tuple),Method1,&Error1,&X1,&Y1,&Z1,&W1,&CovXYZW1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(X1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Y1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Z1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(W1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(CovXYZW1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOs", &Rows1,&Cols1,&Rows2,&Cols2,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&Method)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2)) {
                double Error;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple W;
                HalconCpp::HTuple CovXYZW;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.VectorToFundamentalMatrix(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),HalconCpp::HString(Method),&Error,&X,&Y,&Z,&W,&CovXYZW)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(X));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Y));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Z));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(W));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(CovXYZW));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToFundamentalMatrix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToFundamentalMatrixDistortion(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* CovRR2;
    PyObject* Rows11;
    PyObject* CovRC2;
    PyObject* Cols1;
    PyObject* CovRC21;
    long ImageHeight1;
    PyObject* Rows2;
    PyObject* CovRR11;
    long ImageWidth1;
    PyObject* CovCC21;
    PyObject* Cols2;
    char* Method;
    PyObject* CovRC11;
    PyObject* Rows21;
    PyObject* Cols21;
    PyObject* CovCC1;
    PyObject* CovRR1;
    long ImageHeight;
    char* Method1;
    PyObject* Rows1;
    PyObject* CovRR21;
    PyObject* CovCC11;
    PyObject* CovCC2;
    PyObject* Cols11;
    PyObject* CovRC1;
    long ImageWidth;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOlls", &Rows1,&Cols1,&Rows2,&Cols2,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&ImageWidth,&ImageHeight,&Method)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2)) {
                double Error;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple W;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.VectorToFundamentalMatrixDistortion(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),ImageWidth,ImageHeight,HalconCpp::HString(Method),&Error,&X,&Y,&Z,&W)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(X));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Y));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Z));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(W));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOlls", &Rows11,&Cols11,&Rows21,&Cols21,&CovRR11,&CovRC11,&CovCC11,&CovRR21,&CovRC21,&CovCC21,&ImageWidth1,&ImageHeight1,&Method1)) {
            if (PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschTuple_Check(CovRR11) && PyHirschTuple_Check(CovRC11) && PyHirschTuple_Check(CovCC11) && PyHirschTuple_Check(CovRR21) && PyHirschTuple_Check(CovRC21) && PyHirschTuple_Check(CovCC21)) {
                double Error1;
                HalconCpp::HTuple X1;
                HalconCpp::HTuple Y1;
                HalconCpp::HTuple Z1;
                HalconCpp::HTuple W1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.VectorToFundamentalMatrixDistortion(*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),*(((PyHirschTuple*)CovRR11)->Tuple),*(((PyHirschTuple*)CovRC11)->Tuple),*(((PyHirschTuple*)CovCC11)->Tuple),*(((PyHirschTuple*)CovRR21)->Tuple),*(((PyHirschTuple*)CovRC21)->Tuple),*(((PyHirschTuple*)CovCC21)->Tuple),ImageWidth1,ImageHeight1,Method1,&Error1,&X1,&Y1,&Z1,&W1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(X1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Y1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Z1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(W1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToFundamentalMatrixDistortion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjMatchPointsRansac(PyHirschHomMat2D*self, PyObject *args)
{
    long RowTolerance;
    long ColMove1;
    long RowMove1;
    PyObject* Image12;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* Image1;
    double DistanceThreshold2;
    PyObject* Cols2;
    long MatchThreshold1;
    double Rotation1;
    PyObject* Cols12;
    PyObject* Image22;
    PyObject* Rows21;
    long RowTolerance2;
    PyObject* Cols21;
    long ColMove;
    char* EstimationMethod;
    long MaskSize;
    long ColTolerance1;
    double Rotation2;
    PyObject* MatchThreshold;
    char* EstimationMethod2;
    long RowMove2;
    long ColMove2;
    PyObject* Image21;
    double DistanceThreshold;
    long MaskSize2;
    long ColTolerance;
    long RandSeed1;
    PyObject* Image11;
    PyObject* Rows22;
    long RowTolerance1;
    long RandSeed2;
    long RandSeed;
    char* EstimationMethod1;
    PyObject* Rows1;
    double DistanceThreshold1;
    PyObject* Image2;
    char* GrayMatchMethod2;
    PyObject* Rotation;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    char* GrayMatchMethod1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOslllllOOsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold)) {
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.ProjMatchPointsRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),DistanceThreshold,RandSeed,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image11,&Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image11) && PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.ProjMatchPointsRansac(*(((PyHirschImage*)Image11)->Image),*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image12,&Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image12) && PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.ProjMatchPointsRansac(*(((PyHirschImage*)Image12)->Image),*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjMatchPointsRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjMatchPointsRansacGuided(PyHirschHomMat2D*self, PyObject *args)
{
    char* EstimationMethod1;
    PyObject* Image12;
    PyObject* Rows11;
    long MatchThreshold2;
    PyObject* Cols1;
    long MaskSize1;
    char* GrayMatchMethod2;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* Image1;
    double DistanceThreshold2;
    double DistanceTolerance2;
    PyObject* Cols2;
    long MatchThreshold1;
    PyObject* Cols12;
    PyObject* Image22;
    PyObject* Rows21;
    PyObject* Cols21;
    long MaskSize2;
    char* EstimationMethod;
    long MaskSize;
    PyObject* MatchThreshold;
    char* EstimationMethod2;
    PyObject* Image21;
    double DistanceThreshold;
    long RandSeed2;
    long RandSeed1;
    PyObject* Image11;
    PyObject* Rows22;
    long RandSeed;
    PyObject* Rows1;
    double DistanceTolerance1;
    PyObject* Image2;
    double DistanceTolerance;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    double DistanceThreshold1;
    char* GrayMatchMethod1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOsldlsdl", &Image12,&Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&DistanceTolerance2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image12) && PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image12)->Image),*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,DistanceTolerance2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsldlsdl", &Image11,&Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&DistanceTolerance1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image11) && PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image11)->Image),*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,DistanceTolerance1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsldOsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(MatchThreshold)) {
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,DistanceTolerance,*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),DistanceThreshold,RandSeed,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjMatchPointsRansacGuided()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToProjHomMat2dDistortion(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* CovRR2;
    PyObject* Points1Row;
    PyObject* CovRC2;
    PyObject* CovRC21;
    long ImageHeight1;
    PyObject* Points2Row;
    PyObject* CovRR11;
    long ImageWidth1;
    PyObject* CovCC21;
    PyObject* Points2Row1;
    char* Method;
    PyObject* CovRC11;
    PyObject* CovCC1;
    PyObject* CovRR1;
    long ImageHeight;
    char* Method1;
    PyObject* Points2Col;
    PyObject* Points1Col1;
    PyObject* CovRR21;
    PyObject* CovCC11;
    PyObject* Points1Row1;
    PyObject* CovCC2;
    PyObject* Points2Col1;
    PyObject* CovRC1;
    PyObject* Points1Col;
    long ImageWidth;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOlls", &Points1Row1,&Points1Col1,&Points2Row1,&Points2Col1,&CovRR11,&CovRC11,&CovCC11,&CovRR21,&CovRC21,&CovCC21,&ImageWidth1,&ImageHeight1,&Method1)) {
            if (PyHirschTuple_Check(Points1Row1) && PyHirschTuple_Check(Points1Col1) && PyHirschTuple_Check(Points2Row1) && PyHirschTuple_Check(Points2Col1) && PyHirschTuple_Check(CovRR11) && PyHirschTuple_Check(CovRC11) && PyHirschTuple_Check(CovCC11) && PyHirschTuple_Check(CovRR21) && PyHirschTuple_Check(CovRC21) && PyHirschTuple_Check(CovCC21)) {
                double Error1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.VectorToProjHomMat2dDistortion(*(((PyHirschTuple*)Points1Row1)->Tuple),*(((PyHirschTuple*)Points1Col1)->Tuple),*(((PyHirschTuple*)Points2Row1)->Tuple),*(((PyHirschTuple*)Points2Col1)->Tuple),*(((PyHirschTuple*)CovRR11)->Tuple),*(((PyHirschTuple*)CovRC11)->Tuple),*(((PyHirschTuple*)CovCC11)->Tuple),*(((PyHirschTuple*)CovRR21)->Tuple),*(((PyHirschTuple*)CovRC21)->Tuple),*(((PyHirschTuple*)CovCC21)->Tuple),ImageWidth1,ImageHeight1,Method1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOlls", &Points1Row,&Points1Col,&Points2Row,&Points2Col,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&ImageWidth,&ImageHeight,&Method)) {
            if (PyHirschTuple_Check(Points1Row) && PyHirschTuple_Check(Points1Col) && PyHirschTuple_Check(Points2Row) && PyHirschTuple_Check(Points2Col) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2)) {
                double Error;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.VectorToProjHomMat2dDistortion(*(((PyHirschTuple*)Points1Row)->Tuple),*(((PyHirschTuple*)Points1Col)->Tuple),*(((PyHirschTuple*)Points2Row)->Tuple),*(((PyHirschTuple*)Points2Col)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),ImageWidth,ImageHeight,HalconCpp::HString(Method),&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToProjHomMat2dDistortion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_EssentialToFundamentalMatrix(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* CovEMat;
    PyObject* CamMat1;
    PyObject* CamMat2;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CovEMat,&CamMat1,&CamMat2)) {
            if (PyHirschTuple_Check(CovEMat) && PyHirschHomMat2D_Check(CamMat1) && PyHirschHomMat2D_Check(CamMat2)) {
                HalconCpp::HTuple CovFMat;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.EssentialToFundamentalMatrix(*(((PyHirschTuple*)CovEMat)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat1)->HomMat2D)),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat2)->HomMat2D)),&CovFMat)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovFMat));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.EssentialToFundamentalMatrix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_PointLineToHomMat2d(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* L1x1;
    PyObject* Py;
    PyObject* Px;
    PyObject* L1y1;
    PyObject* L2y1;
    PyObject* L2x;
    PyObject* L2y;
    PyObject* L2x1;
    char* TransformationType1;
    char* TransformationType;
    PyObject* L1x;
    PyObject* Py1;
    PyObject* Px1;
    PyObject* L1y;
    
    try {
        if (PyArg_ParseTuple(args, "sOOOOOO", &TransformationType,&Px,&Py,&L1x,&L1y,&L2x,&L2y)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(L1x) && PyHirschTuple_Check(L1y) && PyHirschTuple_Check(L2x) && PyHirschTuple_Check(L2y)) {
                self->HomMat2D.PointLineToHomMat2d(HalconCpp::HString(TransformationType),*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)L1x)->Tuple),*(((PyHirschTuple*)L1y)->Tuple),*(((PyHirschTuple*)L2x)->Tuple),*(((PyHirschTuple*)L2y)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOOOOO", &TransformationType1,&Px1,&Py1,&L1x1,&L1y1,&L2x1,&L2y1)) {
            if (PyHirschTuple_Check(Px1) && PyHirschTuple_Check(Py1) && PyHirschTuple_Check(L1x1) && PyHirschTuple_Check(L1y1) && PyHirschTuple_Check(L2x1) && PyHirschTuple_Check(L2y1)) {
                self->HomMat2D.PointLineToHomMat2d(TransformationType1,*(((PyHirschTuple*)Px1)->Tuple),*(((PyHirschTuple*)Py1)->Tuple),*(((PyHirschTuple*)L1x1)->Tuple),*(((PyHirschTuple*)L1y1)->Tuple),*(((PyHirschTuple*)L2x1)->Tuple),*(((PyHirschTuple*)L2y1)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.PointLineToHomMat2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dRotateLocal(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Phi;
    double Phi1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Phi)) {
            if (PyHirschTuple_Check(Phi)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dRotateLocal(*(((PyHirschTuple*)Phi)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "d", &Phi1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dRotateLocal(Phi1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dRotateLocal()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dInvert(PyHirschHomMat2D*self, PyObject *)
{
    try {
        return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dInvert());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_Clone(PyHirschHomMat2D*self, PyObject *)
{
    try {
        return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_GenBinocularProjRectification(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* SubSampling;
    long Width21;
    long Width1;
    PyObject* CovFMat;
    long Height21;
    PyObject* CovFMat2;
    char* Mapping2;
    long Height22;
    long Height12;
    long Width22;
    long Height1;
    long SubSampling1;
    long Width12;
    long SubSampling2;
    long Height11;
    long Height2;
    PyObject* CovFMat1;
    long Width11;
    long Width2;
    char* Mapping;
    char* Mapping1;
    
    try {
        if (PyArg_ParseTuple(args, "OllllOs", &CovFMat,&Width1,&Height1,&Width2,&Height2,&SubSampling,&Mapping)) {
            if (PyHirschTuple_Check(CovFMat) && PyHirschTuple_Check(SubSampling)) {
                HalconCpp::HImage Map2;
                HalconCpp::HTuple CovFMatRect;
                HalconCpp::HHomMat2D H1;
                HalconCpp::HHomMat2D H2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->HomMat2D.GenBinocularProjRectification(&Map2,*(((PyHirschTuple*)CovFMat)->Tuple),Width1,Height1,Width2,Height2,*(((PyHirschTuple*)SubSampling)->Tuple),HalconCpp::HString(Mapping),&CovFMatRect,&H1,&H2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(CovFMatRect));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H1));
                PyTuple_SET_ITEM(ret, 4, PyHirschHomMat2D_FromHHomMat2D(H2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ollllls", &CovFMat2,&Width12,&Height12,&Width22,&Height22,&SubSampling2,&Mapping2)) {
            if (PyHirschTuple_Check(CovFMat2)) {
                HalconCpp::HImage Map22;
                HalconCpp::HTuple CovFMatRect2;
                HalconCpp::HHomMat2D H12;
                HalconCpp::HHomMat2D H22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->HomMat2D.GenBinocularProjRectification(&Map22,*(((PyHirschTuple*)CovFMat2)->Tuple),Width12,Height12,Width22,Height22,SubSampling2,Mapping2,&CovFMatRect2,&H12,&H22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map22));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(CovFMatRect2));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H12));
                PyTuple_SET_ITEM(ret, 4, PyHirschHomMat2D_FromHHomMat2D(H22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ollllls", &CovFMat1,&Width11,&Height11,&Width21,&Height21,&SubSampling1,&Mapping1)) {
            if (PyHirschTuple_Check(CovFMat1)) {
                HalconCpp::HImage Map21;
                HalconCpp::HTuple CovFMatRect1;
                HalconCpp::HHomMat2D H11;
                HalconCpp::HHomMat2D H21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->HomMat2D.GenBinocularProjRectification(&Map21,*(((PyHirschTuple*)CovFMat1)->Tuple),Width11,Height11,Width21,Height21,SubSampling1,HalconCpp::HString(Mapping1),&CovFMatRect1,&H11,&H21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map21));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(CovFMatRect1));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H11));
                PyTuple_SET_ITEM(ret, 4, PyHirschHomMat2D_FromHHomMat2D(H21));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.GenBinocularProjRectification()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjectiveTransImage(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Image1;
    char* AdaptImageSize1;
    char* Interpolation;
    char* TransformDomain;
    char* AdaptImageSize;
    PyObject* Image;
    char* TransformDomain1;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "Osss", &Image1,&Interpolation1,&AdaptImageSize1,&TransformDomain1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->HomMat2D.ProjectiveTransImage(*(((PyHirschImage*)Image1)->Image),Interpolation1,AdaptImageSize1,TransformDomain1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osss", &Image,&Interpolation,&AdaptImageSize,&TransformDomain)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.ProjectiveTransImage(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Interpolation),HalconCpp::HString(AdaptImageSize),HalconCpp::HString(TransformDomain)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjectiveTransImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToEssentialMatrix(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* CovCC12;
    PyObject* CovRR2;
    PyObject* Rows11;
    char* Method2;
    PyObject* CovRC2;
    PyObject* CovCC22;
    PyObject* Cols1;
    PyObject* CovRC21;
    PyObject* CamMat2;
    PyObject* Rows2;
    PyObject* CovRR22;
    PyObject* CovRR11;
    PyObject* CovCC21;
    PyObject* Cols2;
    PyObject* CovRC22;
    char* Method;
    PyObject* CovRC11;
    PyObject* CamMat21;
    PyObject* Cols12;
    PyObject* Rows21;
    PyObject* Cols21;
    PyObject* CovCC1;
    PyObject* CovRR1;
    char* Method1;
    PyObject* Rows1;
    PyObject* CovRR21;
    PyObject* CovCC11;
    PyObject* CamMat22;
    PyObject* CovRC12;
    PyObject* Rows22;
    PyObject* CovCC2;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    PyObject* CovRC1;
    PyObject* CovRR12;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOs", &Rows1,&Cols1,&Rows2,&Cols2,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&CamMat2,&Method)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2) && PyHirschHomMat2D_Check(CamMat2)) {
                HalconCpp::HTuple CovEMat;
                HalconCpp::HTuple Error;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple CovXYZ;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.VectorToEssentialMatrix(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat2)->HomMat2D)),HalconCpp::HString(Method),&CovEMat,&Error,&X,&Y,&Z,&CovXYZ)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(X));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Y));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Z));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(CovXYZ));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOs", &Rows12,&Cols12,&Rows22,&Cols22,&CovRR12,&CovRC12,&CovCC12,&CovRR22,&CovRC22,&CovCC22,&CamMat22,&Method2)) {
            if (PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22) && PyHirschTuple_Check(CovRR12) && PyHirschTuple_Check(CovRC12) && PyHirschTuple_Check(CovCC12) && PyHirschTuple_Check(CovRR22) && PyHirschTuple_Check(CovRC22) && PyHirschTuple_Check(CovCC22) && PyHirschHomMat2D_Check(CamMat22)) {
                HalconCpp::HTuple CovEMat2;
                double Error2;
                HalconCpp::HTuple X2;
                HalconCpp::HTuple Y2;
                HalconCpp::HTuple Z2;
                HalconCpp::HTuple CovXYZ2;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.VectorToEssentialMatrix(*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),*(((PyHirschTuple*)CovRR12)->Tuple),*(((PyHirschTuple*)CovRC12)->Tuple),*(((PyHirschTuple*)CovCC12)->Tuple),*(((PyHirschTuple*)CovRR22)->Tuple),*(((PyHirschTuple*)CovRC22)->Tuple),*(((PyHirschTuple*)CovCC22)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat22)->HomMat2D)),Method2,&CovEMat2,&Error2,&X2,&Y2,&Z2,&CovXYZ2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(X2));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Y2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Z2));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(CovXYZ2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOs", &Rows11,&Cols11,&Rows21,&Cols21,&CovRR11,&CovRC11,&CovCC11,&CovRR21,&CovRC21,&CovCC21,&CamMat21,&Method1)) {
            if (PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschTuple_Check(CovRR11) && PyHirschTuple_Check(CovRC11) && PyHirschTuple_Check(CovCC11) && PyHirschTuple_Check(CovRR21) && PyHirschTuple_Check(CovRC21) && PyHirschTuple_Check(CovCC21) && PyHirschHomMat2D_Check(CamMat21)) {
                HalconCpp::HTuple CovEMat1;
                double Error1;
                HalconCpp::HTuple X1;
                HalconCpp::HTuple Y1;
                HalconCpp::HTuple Z1;
                HalconCpp::HTuple CovXYZ1;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.VectorToEssentialMatrix(*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),*(((PyHirschTuple*)CovRR11)->Tuple),*(((PyHirschTuple*)CovRC11)->Tuple),*(((PyHirschTuple*)CovCC11)->Tuple),*(((PyHirschTuple*)CovRR21)->Tuple),*(((PyHirschTuple*)CovRC21)->Tuple),*(((PyHirschTuple*)CovCC21)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat21)->HomMat2D)),HalconCpp::HString(Method1),&CovEMat1,&Error1,&X1,&Y1,&Z1,&CovXYZ1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(X1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Y1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Z1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(CovXYZ1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToEssentialMatrix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dSlantLocal(PyHirschHomMat2D*self, PyObject *args)
{
    double Theta2;
    PyObject* Theta;
    char* Axis1;
    char* Axis;
    char* Axis2;
    double Theta1;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Theta,&Axis)) {
            if (PyHirschTuple_Check(Theta)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlantLocal(*(((PyHirschTuple*)Theta)->Tuple),HalconCpp::HString(Axis)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Theta2,&Axis2)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlantLocal(Theta2,Axis2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Theta1,&Axis1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlantLocal(Theta1,HalconCpp::HString(Axis1)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dSlantLocal()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToHomMat2d(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Py;
    PyObject* Px;
    PyObject* Qx;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Px,&Py,&Qx,&Qy)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy)) {
                self->HomMat2D.VectorToHomMat2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToHomMat2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjectiveTransPoint2d(PyHirschHomMat2D*self, PyObject *args)
{
    double Px1;
    PyObject* Py;
    PyObject* Px;
    double Pw1;
    PyObject* Pw;
    double Py1;
    
    try {
        if (PyArg_ParseTuple(args, "ddd", &Px1,&Py1,&Pw1)) {
            {
            // with output params
                double Qy1;
                double Qw1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.ProjectiveTransPoint2d(Px1,Py1,Pw1,&Qy1,&Qw1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Qy1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Qw1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Px,&Py,&Pw)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Pw)) {
                HalconCpp::HTuple Qy;
                HalconCpp::HTuple Qw;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.ProjectiveTransPoint2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Pw)->Tuple),&Qy,&Qw)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Qy));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Qw));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjectiveTransPoint2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToProjHomMat2d(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Px;
    PyObject* CovXY1;
    PyObject* CovXY2;
    PyObject* CovYY2;
    PyObject* Qx1;
    PyObject* CovXX2;
    PyObject* CovXY21;
    char* Method;
    PyObject* CovYY11;
    PyObject* Qy1;
    PyObject* Qx;
    PyObject* Py;
    PyObject* CovYY1;
    char* Method1;
    PyObject* CovXX11;
    PyObject* CovXX1;
    PyObject* CovXY11;
    PyObject* CovYY21;
    PyObject* CovXX21;
    PyObject* Py1;
    PyObject* Px1;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOsOOOOOO", &Px1,&Py1,&Qx1,&Qy1,&Method1,&CovXX11,&CovYY11,&CovXY11,&CovXX21,&CovYY21,&CovXY21)) {
            if (PyHirschTuple_Check(Px1) && PyHirschTuple_Check(Py1) && PyHirschTuple_Check(Qx1) && PyHirschTuple_Check(Qy1) && PyHirschTuple_Check(CovXX11) && PyHirschTuple_Check(CovYY11) && PyHirschTuple_Check(CovXY11) && PyHirschTuple_Check(CovXX21) && PyHirschTuple_Check(CovYY21) && PyHirschTuple_Check(CovXY21)) {
                return PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.VectorToProjHomMat2d(*(((PyHirschTuple*)Px1)->Tuple),*(((PyHirschTuple*)Py1)->Tuple),*(((PyHirschTuple*)Qx1)->Tuple),*(((PyHirschTuple*)Qy1)->Tuple),Method1,*(((PyHirschTuple*)CovXX11)->Tuple),*(((PyHirschTuple*)CovYY11)->Tuple),*(((PyHirschTuple*)CovXY11)->Tuple),*(((PyHirschTuple*)CovXX21)->Tuple),*(((PyHirschTuple*)CovYY21)->Tuple),*(((PyHirschTuple*)CovXY21)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOsOOOOOO", &Px,&Py,&Qx,&Qy,&Method,&CovXX1,&CovYY1,&CovXY1,&CovXX2,&CovYY2,&CovXY2)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy) && PyHirschTuple_Check(CovXX1) && PyHirschTuple_Check(CovYY1) && PyHirschTuple_Check(CovXY1) && PyHirschTuple_Check(CovXX2) && PyHirschTuple_Check(CovYY2) && PyHirschTuple_Check(CovXY2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.VectorToProjHomMat2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple),HalconCpp::HString(Method),*(((PyHirschTuple*)CovXX1)->Tuple),*(((PyHirschTuple*)CovYY1)->Tuple),*(((PyHirschTuple*)CovXY1)->Tuple),*(((PyHirschTuple*)CovXX2)->Tuple),*(((PyHirschTuple*)CovYY2)->Tuple),*(((PyHirschTuple*)CovXY2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToProjHomMat2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToSimilarity(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Py;
    PyObject* Px;
    PyObject* Qx;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Px,&Py,&Qx,&Qy)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy)) {
                self->HomMat2D.VectorToSimilarity(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToSimilarity()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dRotate(PyHirschHomMat2D*self, PyObject *args)
{
    double Px1;
    PyObject* Py;
    PyObject* Px;
    double Phi1;
    PyObject* Phi;
    double Py1;
    
    try {
        if (PyArg_ParseTuple(args, "ddd", &Phi1,&Px1,&Py1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dRotate(Phi1,Px1,Py1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Phi,&Px,&Py)) {
            if (PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dRotate(*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dRotate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomVectorToProjHomMat2d(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Py;
    PyObject* Px;
    char* Method1;
    PyObject* Pw1;
    PyObject* Qw1;
    PyObject* Pw;
    char* Method;
    PyObject* Qw;
    PyObject* Qy1;
    PyObject* Py1;
    PyObject* Qx1;
    PyObject* Px1;
    PyObject* Qx;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOs", &Px1,&Py1,&Pw1,&Qx1,&Qy1,&Qw1,&Method1)) {
            if (PyHirschTuple_Check(Px1) && PyHirschTuple_Check(Py1) && PyHirschTuple_Check(Pw1) && PyHirschTuple_Check(Qx1) && PyHirschTuple_Check(Qy1) && PyHirschTuple_Check(Qw1)) {
                self->HomMat2D.HomVectorToProjHomMat2d(*(((PyHirschTuple*)Px1)->Tuple),*(((PyHirschTuple*)Py1)->Tuple),*(((PyHirschTuple*)Pw1)->Tuple),*(((PyHirschTuple*)Qx1)->Tuple),*(((PyHirschTuple*)Qy1)->Tuple),*(((PyHirschTuple*)Qw1)->Tuple),Method1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOs", &Px,&Py,&Pw,&Qx,&Qy,&Qw,&Method)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Pw) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy) && PyHirschTuple_Check(Qw)) {
                self->HomMat2D.HomVectorToProjHomMat2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Pw)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple),*(((PyHirschTuple*)Qw)->Tuple),HalconCpp::HString(Method));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomVectorToProjHomMat2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_Reconst3dFromFundamentalMatrix(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* CovRR2;
    PyObject* CovRC2;
    PyObject* Cols1;
    double Cols21;
    double CovRR21;
    PyObject* CovFMat;
    PyObject* Rows2;
    PyObject* Cols2;
    double CovRC11;
    PyObject* CovCC1;
    PyObject* CovRR1;
    double CovRR11;
    double Cols11;
    PyObject* Rows1;
    PyObject* CovFMat1;
    double Rows11;
    double Rows21;
    double CovCC11;
    PyObject* CovCC2;
    PyObject* CovRC1;
    double CovCC21;
    double CovRC21;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddddddO", &Rows11,&Cols11,&Rows21,&Cols21,&CovRR11,&CovRC11,&CovCC11,&CovRR21,&CovRC21,&CovCC21,&CovFMat1)) {
            if (PyHirschTuple_Check(CovFMat1)) {
                double X1;
                double Y1;
                double Z1;
                double W1;
                double CovXYZW1;
                self->HomMat2D.Reconst3dFromFundamentalMatrix(Rows11,Cols11,Rows21,Cols21,CovRR11,CovRC11,CovCC11,CovRR21,CovRC21,CovCC21,*(((PyHirschTuple*)CovFMat1)->Tuple),&X1,&Y1,&Z1,&W1,&CovXYZW1);
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(X1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Y1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Z1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(W1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(CovXYZW1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &Rows1,&Cols1,&Rows2,&Cols2,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&CovFMat)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2) && PyHirschTuple_Check(CovFMat)) {
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple W;
                HalconCpp::HTuple CovXYZW;
                self->HomMat2D.Reconst3dFromFundamentalMatrix(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),*(((PyHirschTuple*)CovFMat)->Tuple),&X,&Y,&Z,&W,&CovXYZW);
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(X));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Y));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Z));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(W));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(CovXYZW));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.Reconst3dFromFundamentalMatrix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dToAffinePar(PyHirschHomMat2D*self, PyObject *)
{
    try {
        double Sy;
        double Phi;
        double Theta;
        double Tx;
        double Ty;
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.HomMat2dToAffinePar(&Sy,&Phi,&Theta,&Tx,&Ty)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Sy));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Theta));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Tx));
        PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Ty));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_AffineTransPixel(PyHirschHomMat2D*self, PyObject *args)
{
    double Row1;
    PyObject* Row;
    PyObject* Col;
    double Col1;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row1,&Col1)) {
            {
            // with output params
                double RowTrans1;
                double ColTrans1;
                self->HomMat2D.AffineTransPixel(Row1,Col1,&RowTrans1,&ColTrans1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(RowTrans1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(ColTrans1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Row,&Col)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col)) {
                HalconCpp::HTuple RowTrans;
                HalconCpp::HTuple ColTrans;
                self->HomMat2D.AffineTransPixel(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),&RowTrans,&ColTrans);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowTrans));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColTrans));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.AffineTransPixel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToRigid(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Py;
    PyObject* Px;
    PyObject* Qx;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Px,&Py,&Qx,&Qy)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy)) {
                self->HomMat2D.VectorToRigid(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToRigid()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjMatchPointsDistortionRansacGuided(PyHirschHomMat2D*self, PyObject *args)
{
    char* EstimationMethod1;
    PyObject* Image12;
    PyObject* Rows11;
    long MatchThreshold2;
    PyObject* Cols1;
    long MaskSize1;
    double KappaGuide;
    PyObject* Rows2;
    char* GrayMatchMethod;
    char* GrayMatchMethod2;
    PyObject* Image1;
    double DistanceThreshold2;
    PyObject* DistanceThreshold;
    double DistanceTolerance2;
    double KappaGuide2;
    char* GrayMatchMethod1;
    long MatchThreshold1;
    PyObject* Cols12;
    PyObject* Image22;
    PyObject* Rows21;
    PyObject* Cols21;
    long MaskSize2;
    char* EstimationMethod;
    long MaskSize;
    PyObject* MatchThreshold;
    char* EstimationMethod2;
    PyObject* Image21;
    PyObject* Rows1;
    long RandSeed2;
    long RandSeed1;
    PyObject* Image11;
    PyObject* Rows22;
    double KappaGuide1;
    long RandSeed;
    double DistanceThreshold1;
    double DistanceTolerance1;
    PyObject* Image2;
    double DistanceTolerance;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    PyObject* Cols2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOslddOsOl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&KappaGuide,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,KappaGuide,DistanceTolerance,*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOslddlsdl", &Image11,&Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&KappaGuide1,&DistanceTolerance1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image11) && PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                double Kappa1;
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image11)->Image),*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,KappaGuide1,DistanceTolerance1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Kappa1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOslddlsdl", &Image12,&Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&KappaGuide2,&DistanceTolerance2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image12) && PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                double Kappa2;
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image12)->Image),*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,KappaGuide2,DistanceTolerance2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Kappa2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjMatchPointsDistortionRansacGuided()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dTranspose(PyHirschHomMat2D*self, PyObject *)
{
    try {
        return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dTranspose());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorFieldToHomMat2d(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* VectorField;
    
    try {
        if (PyArg_ParseTuple(args, "O", &VectorField)) {
            if (PyHirschImage_Check(VectorField)) {
                self->HomMat2D.VectorFieldToHomMat2d(*(((PyHirschImage*)VectorField)->Image));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorFieldToHomMat2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dScale(PyHirschHomMat2D*self, PyObject *args)
{
    double Px1;
    PyObject* Py;
    PyObject* Px;
    double Sx1;
    double Sy1;
    PyObject* Sy;
    double Py1;
    PyObject* Sx;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Sx,&Sy,&Px,&Py)) {
            if (PyHirschTuple_Check(Sx) && PyHirschTuple_Check(Sy) && PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dScale(*(((PyHirschTuple*)Sx)->Tuple),*(((PyHirschTuple*)Sy)->Tuple),*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Sx1,&Sy1,&Px1,&Py1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dScale(Sx1,Sy1,Px1,Py1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dScale()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dDeterminant(PyHirschHomMat2D*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->HomMat2D.HomMat2dDeterminant());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ReadWorldFile(PyHirschHomMat2D*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->HomMat2D.ReadWorldFile(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->HomMat2D.ReadWorldFile(HalconCpp::HString(FileName));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ReadWorldFile()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjectiveTransContourXld(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Contours;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours)) {
            if (PyHirschXLDCont_Check(Contours)) {
                return PyHirschXLDCont_FromHXLDCont(self->HomMat2D.ProjectiveTransContourXld(*(((PyHirschXLDCont*)Contours)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjectiveTransContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjectiveTransPixel(PyHirschHomMat2D*self, PyObject *args)
{
    double Row1;
    PyObject* Row;
    PyObject* Col;
    double Col1;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row1,&Col1)) {
            {
            // with output params
                double RowTrans1;
                double ColTrans1;
                self->HomMat2D.ProjectiveTransPixel(Row1,Col1,&RowTrans1,&ColTrans1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(RowTrans1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(ColTrans1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Row,&Col)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col)) {
                HalconCpp::HTuple RowTrans;
                HalconCpp::HTuple ColTrans;
                self->HomMat2D.ProjectiveTransPixel(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),&RowTrans,&ColTrans);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowTrans));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColTrans));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjectiveTransPixel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_AffineTransContourXld(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Contours;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours)) {
            if (PyHirschXLDCont_Check(Contours)) {
                return PyHirschXLDCont_FromHXLDCont(self->HomMat2D.AffineTransContourXld(*(((PyHirschXLDCont*)Contours)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.AffineTransContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_AffineTransPoint2d(PyHirschHomMat2D*self, PyObject *args)
{
    double Px1;
    PyObject* Py;
    PyObject* Px;
    double Py1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Px,&Py)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py)) {
                HalconCpp::HTuple Qy;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.AffineTransPoint2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),&Qy)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Qy));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Px1,&Py1)) {
            {
            // with output params
                double Qy1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.AffineTransPoint2d(Px1,Py1,&Qy1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Qy1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.AffineTransPoint2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorAngleToRigid(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Row1;
    PyObject* Column1;
    double Angle21;
    PyObject* Column2;
    double Column21;
    PyObject* Angle1;
    double Row11;
    double Angle11;
    PyObject* Row2;
    double Row21;
    PyObject* Angle2;
    double Column11;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Row1,&Column1,&Angle1,&Row2,&Column2,&Angle2)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Column1) && PyHirschTuple_Check(Angle1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Column2) && PyHirschTuple_Check(Angle2)) {
                self->HomMat2D.VectorAngleToRigid(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Angle1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),*(((PyHirschTuple*)Angle2)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddd", &Row11,&Column11,&Angle11,&Row21,&Column21,&Angle21)) {
            self->HomMat2D.VectorAngleToRigid(Row11,Column11,Angle11,Row21,Column21,Angle21);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorAngleToRigid()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_MatchFundamentalMatrixDistortionRansac(PyHirschHomMat2D*self, PyObject *args)
{
    long RowTolerance;
    long ColMove1;
    long RowMove1;
    PyObject* Image12;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* Image1;
    double DistanceThreshold2;
    PyObject* DistanceThreshold;
    PyObject* Cols2;
    long MatchThreshold1;
    double Rotation1;
    PyObject* Cols12;
    PyObject* Image22;
    PyObject* Rows21;
    long RowTolerance2;
    PyObject* Cols21;
    long ColMove;
    char* EstimationMethod;
    long MaskSize;
    long ColTolerance1;
    double Rotation2;
    PyObject* MatchThreshold;
    char* EstimationMethod2;
    long RowMove2;
    long ColMove2;
    PyObject* Image21;
    PyObject* Rows1;
    long MaskSize2;
    long ColTolerance;
    long RandSeed1;
    PyObject* Image11;
    PyObject* Rows22;
    long RowTolerance1;
    long RandSeed2;
    long RandSeed;
    char* EstimationMethod1;
    double DistanceThreshold1;
    PyObject* Image2;
    char* GrayMatchMethod2;
    PyObject* Rotation;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    char* GrayMatchMethod1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOslllllOOsOl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image11,&Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image11) && PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image11)->Image),*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image12,&Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image12) && PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image12)->Image),*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.MatchFundamentalMatrixDistortionRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dTranslate(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Tx;
    double Ty1;
    double Tx1;
    PyObject* Ty;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Tx,&Ty)) {
            if (PyHirschTuple_Check(Tx) && PyHirschTuple_Check(Ty)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dTranslate(*(((PyHirschTuple*)Tx)->Tuple),*(((PyHirschTuple*)Ty)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Tx1,&Ty1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dTranslate(Tx1,Ty1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dTranslate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dReflect(PyHirschHomMat2D*self, PyObject *args)
{
    double Px1;
    PyObject* Py;
    PyObject* Px;
    double Qx1;
    double Qy1;
    PyObject* Qx;
    PyObject* Qy;
    double Py1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Px,&Py,&Qx,&Qy)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dReflect(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Px1,&Py1,&Qx1,&Qy1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dReflect(Px1,Py1,Qx1,Qy1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dReflect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dTranslateLocal(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Tx;
    double Ty1;
    double Tx1;
    PyObject* Ty;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Tx,&Ty)) {
            if (PyHirschTuple_Check(Tx) && PyHirschTuple_Check(Ty)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dTranslateLocal(*(((PyHirschTuple*)Tx)->Tuple),*(((PyHirschTuple*)Ty)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Tx1,&Ty1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dTranslateLocal(Tx1,Ty1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dTranslateLocal()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_VectorToAniso(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Py;
    PyObject* Px;
    PyObject* Qx;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Px,&Py,&Qx,&Qy)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy)) {
                self->HomMat2D.VectorToAniso(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.VectorToAniso()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_AffineTransImage(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Image1;
    char* AdaptImageSize1;
    char* Interpolation;
    char* AdaptImageSize;
    PyObject* Image;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image1,&Interpolation1,&AdaptImageSize1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->HomMat2D.AffineTransImage(*(((PyHirschImage*)Image1)->Image),Interpolation1,AdaptImageSize1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &Image,&Interpolation,&AdaptImageSize)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.AffineTransImage(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Interpolation),HalconCpp::HString(AdaptImageSize)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.AffineTransImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dReflectLocal(PyHirschHomMat2D*self, PyObject *args)
{
    double Px1;
    PyObject* Py;
    PyObject* Px;
    double Py1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Px,&Py)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dReflectLocal(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Px1,&Py1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dReflectLocal(Px1,Py1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dReflectLocal()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjectiveTransRegion(PyHirschHomMat2D*self, PyObject *args)
{
    char* Interpolation1;
    PyObject* Regions1;
    char* Interpolation;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions1,&Interpolation1)) {
            if (PyHirschRegion_Check(Regions1)) {
                return PyHirschRegion_FromHRegion(self->HomMat2D.ProjectiveTransRegion(*(((PyHirschRegion*)Regions1)->Region),Interpolation1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions,&Interpolation)) {
            if (PyHirschRegion_Check(Regions)) {
                return PyHirschRegion_FromHRegion(self->HomMat2D.ProjectiveTransRegion(*(((PyHirschRegion*)Regions)->Region),HalconCpp::HString(Interpolation)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjectiveTransRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_BundleAdjustMosaic(PyHirschHomMat2D*, PyObject *args)
{
    char* Transformation;
    long ReferenceImage;
    long NumImages2;
    PyObject* Cols1;
    PyObject* MappingSource1;
    PyObject* Rows2;
    PyObject* NumCorrespondences1;
    PyObject* MappingDest2;
    PyObject* MappingSource2;
    PyObject* NumCorrespondences2;
    PyObject* Cols2;
    PyObject* Cols12;
    PyObject* Rows21;
    PyObject* Cols21;
    PyObject* HomMatrices2D1;
    long NumImages;
    PyObject* HomMatrices2D2;
    PyObject* Rows11;
    PyObject* MappingDest;
    PyObject* Rows1;
    long NumImages1;
    char* Transformation2;
    long ReferenceImage1;
    PyObject* Rows22;
    PyObject* MappingDest1;
    PyObject* HomMatrices2D;
    long ReferenceImage2;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    char* Transformation1;
    PyObject* MappingSource;
    PyObject* NumCorrespondences;
    
    try {
        if (PyArg_ParseTuple(args, "llOOOOOOOOs", &NumImages2,&ReferenceImage2,&MappingSource2,&MappingDest2,&HomMatrices2D2,&Rows12,&Cols12,&Rows22,&Cols22,&NumCorrespondences2,&Transformation2)) {
            if (PyHirschTuple_Check(MappingSource2) && PyHirschTuple_Check(MappingDest2) && PyHirschHomMat2DArray_Check(HomMatrices2D2) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22) && PyHirschTuple_Check(NumCorrespondences2)) {
                HalconCpp::HTuple Rows2;
                HalconCpp::HTuple Cols2;
                double Error2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::BundleAdjustMosaic(NumImages2,ReferenceImage2,*(((PyHirschTuple*)MappingSource2)->Tuple),*(((PyHirschTuple*)MappingDest2)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D2)->HomMat2DArray)),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),*(((PyHirschTuple*)NumCorrespondences2)->Tuple),Transformation2,&Rows2,&Cols2,&Error2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Rows2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Cols2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llOOOOOOOOs", &NumImages1,&ReferenceImage1,&MappingSource1,&MappingDest1,&HomMatrices2D1,&Rows11,&Cols11,&Rows21,&Cols21,&NumCorrespondences1,&Transformation1)) {
            if (PyHirschTuple_Check(MappingSource1) && PyHirschTuple_Check(MappingDest1) && PyHirschHomMat2DArray_Check(HomMatrices2D1) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschTuple_Check(NumCorrespondences1)) {
                HalconCpp::HTuple Rows1;
                HalconCpp::HTuple Cols1;
                double Error1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::BundleAdjustMosaic(NumImages1,ReferenceImage1,*(((PyHirschTuple*)MappingSource1)->Tuple),*(((PyHirschTuple*)MappingDest1)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D1)->HomMat2DArray)),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),*(((PyHirschTuple*)NumCorrespondences1)->Tuple),HalconCpp::HString(Transformation1),&Rows1,&Cols1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Rows1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Cols1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llOOOOOOOOs", &NumImages,&ReferenceImage,&MappingSource,&MappingDest,&HomMatrices2D,&Rows1,&Cols1,&Rows2,&Cols2,&NumCorrespondences,&Transformation)) {
            if (PyHirschTuple_Check(MappingSource) && PyHirschTuple_Check(MappingDest) && PyHirschHomMat2DArray_Check(HomMatrices2D) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(NumCorrespondences)) {
                HalconCpp::HTuple Rows;
                HalconCpp::HTuple Cols;
                HalconCpp::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::BundleAdjustMosaic(NumImages,ReferenceImage,*(((PyHirschTuple*)MappingSource)->Tuple),*(((PyHirschTuple*)MappingDest)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)NumCorrespondences)->Tuple),HalconCpp::HString(Transformation),&Rows,&Cols,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Rows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Cols));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.BundleAdjustMosaic()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_StationaryCameraSelfCalibration(PyHirschHomMat2D*, PyObject *args)
{
    char* EstimationMethod1;
    long ImageWidth2;
    long ImageWidth1;
    long ReferenceImage;
    long NumImages2;
    PyObject* Cols1;
    PyObject* CameraModel2;
    long ImageHeight1;
    char* FixedCameraParams2;
    PyObject* Rows2;
    PyObject* MappingSource1;
    char* EstimationMethod2;
    PyObject* MappingDest2;
    PyObject* CameraModel;
    PyObject* NumCorrespondences2;
    PyObject* Cols2;
    PyObject* Rows21;
    PyObject* NumCorrespondences1;
    PyObject* CameraModel1;
    PyObject* Cols12;
    long NumImages;
    PyObject* Cols21;
    char* EstimationMethod;
    PyObject* HomMatrices2D1;
    PyObject* HomMatrices2D2;
    PyObject* Rows11;
    PyObject* MappingDest;
    long ImageHeight;
    PyObject* Rows1;
    PyObject* MappingSource2;
    long NumImages1;
    PyObject* MappingSource;
    long ReferenceImage1;
    long ImageHeight2;
    PyObject* Rows22;
    char* FixedCameraParams1;
    PyObject* HomMatrices2D;
    PyObject* MappingDest1;
    long ReferenceImage2;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    long ImageWidth;
    char* FixedCameraParams;
    PyObject* NumCorrespondences;
    
    try {
        if (PyArg_ParseTuple(args, "llllOOOOOOOOsOs", &NumImages2,&ImageWidth2,&ImageHeight2,&ReferenceImage2,&MappingSource2,&MappingDest2,&HomMatrices2D2,&Rows12,&Cols12,&Rows22,&Cols22,&NumCorrespondences2,&EstimationMethod2,&CameraModel2,&FixedCameraParams2)) {
            if (PyHirschTuple_Check(MappingSource2) && PyHirschTuple_Check(MappingDest2) && PyHirschHomMat2DArray_Check(HomMatrices2D2) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22) && PyHirschTuple_Check(NumCorrespondences2) && PyHirschTuple_Check(CameraModel2)) {
                double Kappa2;
                HalconCpp::HHomMat2DArray RotationMatrices2;
                HalconCpp::HTuple X2;
                HalconCpp::HTuple Y2;
                HalconCpp::HTuple Z2;
                double Error2;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::StationaryCameraSelfCalibration(NumImages2,ImageWidth2,ImageHeight2,ReferenceImage2,*(((PyHirschTuple*)MappingSource2)->Tuple),*(((PyHirschTuple*)MappingDest2)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D2)->HomMat2DArray)),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),*(((PyHirschTuple*)NumCorrespondences2)->Tuple),EstimationMethod2,*(((PyHirschTuple*)CameraModel2)->Tuple),FixedCameraParams2,&Kappa2,&RotationMatrices2,&X2,&Y2,&Z2,&Error2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa2));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2DArray_FromHHomMat2DArray(RotationMatrices2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(X2));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Y2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Z2));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llllOOOOOOOOsOs", &NumImages,&ImageWidth,&ImageHeight,&ReferenceImage,&MappingSource,&MappingDest,&HomMatrices2D,&Rows1,&Cols1,&Rows2,&Cols2,&NumCorrespondences,&EstimationMethod,&CameraModel,&FixedCameraParams)) {
            if (PyHirschTuple_Check(MappingSource) && PyHirschTuple_Check(MappingDest) && PyHirschHomMat2DArray_Check(HomMatrices2D) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(NumCorrespondences) && PyHirschTuple_Check(CameraModel)) {
                HalconCpp::HTuple Kappa;
                HalconCpp::HHomMat2DArray RotationMatrices;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple Error;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::StationaryCameraSelfCalibration(NumImages,ImageWidth,ImageHeight,ReferenceImage,*(((PyHirschTuple*)MappingSource)->Tuple),*(((PyHirschTuple*)MappingDest)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)NumCorrespondences)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)CameraModel)->Tuple),HalconCpp::HString(FixedCameraParams),&Kappa,&RotationMatrices,&X,&Y,&Z,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2DArray_FromHHomMat2DArray(RotationMatrices));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(X));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Y));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Z));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llllOOOOOOOOsOs", &NumImages1,&ImageWidth1,&ImageHeight1,&ReferenceImage1,&MappingSource1,&MappingDest1,&HomMatrices2D1,&Rows11,&Cols11,&Rows21,&Cols21,&NumCorrespondences1,&EstimationMethod1,&CameraModel1,&FixedCameraParams1)) {
            if (PyHirschTuple_Check(MappingSource1) && PyHirschTuple_Check(MappingDest1) && PyHirschHomMat2DArray_Check(HomMatrices2D1) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschTuple_Check(NumCorrespondences1) && PyHirschTuple_Check(CameraModel1)) {
                double Kappa1;
                HalconCpp::HHomMat2DArray RotationMatrices1;
                HalconCpp::HTuple X1;
                HalconCpp::HTuple Y1;
                HalconCpp::HTuple Z1;
                double Error1;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::StationaryCameraSelfCalibration(NumImages1,ImageWidth1,ImageHeight1,ReferenceImage1,*(((PyHirschTuple*)MappingSource1)->Tuple),*(((PyHirschTuple*)MappingDest1)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D1)->HomMat2DArray)),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),*(((PyHirschTuple*)NumCorrespondences1)->Tuple),HalconCpp::HString(EstimationMethod1),*(((PyHirschTuple*)CameraModel1)->Tuple),HalconCpp::HString(FixedCameraParams1),&Kappa1,&RotationMatrices1,&X1,&Y1,&Z1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa1));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2DArray_FromHHomMat2DArray(RotationMatrices1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(X1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Y1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Z1));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.StationaryCameraSelfCalibration()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_ProjectiveTransImageSize(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Image1;
    long Width1;
    char* Interpolation;
    long Width;
    long Height;
    char* TransformDomain;
    PyObject* Image;
    long Height1;
    char* Interpolation1;
    char* TransformDomain1;
    
    try {
        if (PyArg_ParseTuple(args, "Oslls", &Image1,&Interpolation1,&Width1,&Height1,&TransformDomain1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->HomMat2D.ProjectiveTransImageSize(*(((PyHirschImage*)Image1)->Image),Interpolation1,Width1,Height1,TransformDomain1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oslls", &Image,&Interpolation,&Width,&Height,&TransformDomain)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.ProjectiveTransImageSize(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Interpolation),Width,Height,HalconCpp::HString(TransformDomain)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.ProjectiveTransImageSize()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_AffineTransRegion(PyHirschHomMat2D*self, PyObject *args)
{
    char* Interpolate;
    char* Interpolate1;
    PyObject* Region;
    PyObject* Region1;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Region,&Interpolate)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschRegion_FromHRegion(self->HomMat2D.AffineTransRegion(*(((PyHirschRegion*)Region)->Region),HalconCpp::HString(Interpolate)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Region1,&Interpolate1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschRegion_FromHRegion(self->HomMat2D.AffineTransRegion(*(((PyHirschRegion*)Region1)->Region),Interpolate1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.AffineTransRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_MatchEssentialMatrixRansac(PyHirschHomMat2D*self, PyObject *args)
{
    long RowTolerance;
    long ColMove1;
    long RowMove1;
    PyObject* Image12;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    PyObject* CamMat2;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* Image1;
    double DistanceThreshold2;
    PyObject* DistanceThreshold;
    PyObject* CamMat21;
    PyObject* Cols2;
    long MatchThreshold1;
    double Rotation1;
    PyObject* Cols12;
    PyObject* Image22;
    PyObject* Rows21;
    long RowTolerance2;
    PyObject* Cols21;
    long ColMove;
    char* EstimationMethod;
    long MaskSize;
    long ColTolerance1;
    double Rotation2;
    PyObject* MatchThreshold;
    char* EstimationMethod2;
    long RowMove2;
    long ColMove2;
    PyObject* Image21;
    PyObject* Rows1;
    long MaskSize2;
    long ColTolerance;
    long RandSeed1;
    PyObject* Image11;
    PyObject* Rows22;
    long RowTolerance1;
    PyObject* CamMat22;
    long RandSeed2;
    long RandSeed;
    char* EstimationMethod1;
    double DistanceThreshold1;
    PyObject* Image2;
    char* GrayMatchMethod2;
    PyObject* Rotation;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    char* GrayMatchMethod1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOsllllldlsdl", &Image11,&Image21,&Rows11,&Cols11,&Rows21,&Cols21,&CamMat21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image11) && PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschHomMat2D_Check(CamMat21)) {
                HalconCpp::HTuple CovEMat1;
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.MatchEssentialMatrixRansac(*(((PyHirschImage*)Image11)->Image),*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat21)->HomMat2D)),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&CovEMat1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOsllllldlsdl", &Image12,&Image22,&Rows12,&Cols12,&Rows22,&Cols22,&CamMat22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image12) && PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22) && PyHirschHomMat2D_Check(CamMat22)) {
                HalconCpp::HTuple CovEMat2;
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.MatchEssentialMatrixRansac(*(((PyHirschImage*)Image12)->Image),*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat22)->HomMat2D)),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&CovEMat2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOslllllOOsOl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&CamMat2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(CamMat2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                HalconCpp::HTuple CovEMat;
                HalconCpp::HTuple Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.MatchEssentialMatrixRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat2)->HomMat2D)),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&CovEMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.MatchEssentialMatrixRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dCompose(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* HomMat2DRight;
    
    try {
        if (PyArg_ParseTuple(args, "O", &HomMat2DRight)) {
            if (PyHirschHomMat2D_Check(HomMat2DRight)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dCompose(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DRight)->HomMat2D))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dCompose()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dSlant(PyHirschHomMat2D*self, PyObject *args)
{
    double Px1;
    PyObject* Py;
    PyObject* Px;
    double Theta2;
    PyObject* Theta;
    double Py2;
    double Px2;
    char* Axis1;
    char* Axis;
    char* Axis2;
    double Theta1;
    double Py1;
    
    try {
        if (PyArg_ParseTuple(args, "dsdd", &Theta2,&Axis2,&Px2,&Py2)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlant(Theta2,Axis2,Px2,Py2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OsOO", &Theta,&Axis,&Px,&Py)) {
            if (PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py)) {
                return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlant(*(((PyHirschTuple*)Theta)->Tuple),HalconCpp::HString(Axis),*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dsdd", &Theta1,&Axis1,&Px1,&Py1)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlant(Theta1,HalconCpp::HString(Axis1),Px1,Py1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.HomMat2dSlant()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_HomMat2dIdentity(PyHirschHomMat2D*self, PyObject *)
{
    try {
        self->HomMat2D.HomMat2dIdentity();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_AffineTransImageSize(PyHirschHomMat2D*self, PyObject *args)
{
    PyObject* Image1;
    long Width1;
    char* Interpolation;
    long Width;
    long Height;
    PyObject* Image;
    long Height1;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &Image,&Interpolation,&Width,&Height)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.AffineTransImageSize(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Interpolation),Width,Height));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osll", &Image1,&Interpolation1,&Width1,&Height1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->HomMat2D.AffineTransImageSize(*(((PyHirschImage*)Image1)->Image),Interpolation1,Width1,Height1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.AffineTransImageSize()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2D_MatchFundamentalMatrixRansac(PyHirschHomMat2D*self, PyObject *args)
{
    long RowTolerance;
    long ColMove1;
    long RowMove1;
    PyObject* Image12;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* Image1;
    double DistanceThreshold2;
    PyObject* DistanceThreshold;
    PyObject* Cols2;
    long MatchThreshold1;
    double Rotation1;
    PyObject* Cols12;
    PyObject* Image22;
    PyObject* Rows21;
    long RowTolerance2;
    PyObject* Cols21;
    long ColMove;
    char* EstimationMethod;
    long MaskSize;
    long ColTolerance1;
    double Rotation2;
    PyObject* MatchThreshold;
    char* EstimationMethod2;
    long RowMove2;
    long ColMove2;
    PyObject* Image21;
    PyObject* Rows1;
    long MaskSize2;
    long ColTolerance;
    long RandSeed1;
    PyObject* Image11;
    PyObject* Rows22;
    long RowTolerance1;
    long RandSeed2;
    long RandSeed;
    char* EstimationMethod1;
    double DistanceThreshold1;
    PyObject* Image2;
    char* GrayMatchMethod2;
    PyObject* Rotation;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    char* GrayMatchMethod1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOslllllOOsOl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image11,&Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image11) && PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image11)->Image),*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image12,&Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image12) && PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->HomMat2D.MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image12)->Image),*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2D.MatchFundamentalMatrixRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
