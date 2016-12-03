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
    PyObject* Image1;
    long RowTolerance;
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    char* EstimationMethod;
    PyObject* Rows1;
    double Rotation;
    PyObject* Cols1;
    long MaskSize;
    long ColTolerance;
    long ColMove;
    PyObject* Rows2;
    char* GrayMatchMethod;
    long RowMove;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points2));
                
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
    PyObject* CovRR1;
    PyObject* Cols2;
    char* Method;
    PyObject* CovRC2;
    PyObject* CovCC2;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* CovRC1;
    PyObject* Rows2;
    PyObject* CovCC1;
    PyObject* CovRR2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOs", &Rows1,&Cols1,&Rows2,&Cols2,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&Method)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2)) {
                double Error;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple W;
                HalconCpp::HTuple CovXYZW;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->HomMat2D.VectorToFundamentalMatrix(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),Method,&Error,&X,&Y,&Z,&W,&CovXYZW)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(X));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Y));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Z));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(W));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(CovXYZW));
                
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
    PyObject* CovRR1;
    long ImageHeight;
    PyObject* Cols2;
    char* Method;
    PyObject* CovRC2;
    PyObject* CovCC2;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* CovRC1;
    long ImageWidth;
    PyObject* Rows2;
    PyObject* CovCC1;
    PyObject* CovRR2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOlls", &Rows1,&Cols1,&Rows2,&Cols2,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&ImageWidth,&ImageHeight,&Method)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2)) {
                double Error;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple W;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.VectorToFundamentalMatrixDistortion(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),ImageWidth,ImageHeight,Method,&Error,&X,&Y,&Z,&W)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(X));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Y));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Z));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(W));
                
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
    PyObject* Image1;
    long RowTolerance;
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    char* EstimationMethod;
    PyObject* Rows1;
    double Rotation;
    PyObject* Cols1;
    long MaskSize;
    long ColTolerance;
    long ColMove;
    PyObject* Rows2;
    char* GrayMatchMethod;
    long RowMove;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->HomMat2D.ProjMatchPointsRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Points2));
                
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
    PyObject* Image1;
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    char* EstimationMethod;
    PyObject* Rows1;
    PyObject* Cols1;
    long MaskSize;
    PyObject* Rows2;
    double DistanceTolerance;
    char* GrayMatchMethod;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOsldlsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,DistanceTolerance,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points2));
                
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
    PyObject* CovRR1;
    long ImageHeight;
    PyObject* CovRR2;
    char* Method;
    PyObject* Points1Row;
    PyObject* CovCC1;
    PyObject* CovCC2;
    PyObject* CovRC1;
    PyObject* Points2Col;
    PyObject* Points1Col;
    long ImageWidth;
    PyObject* CovRC2;
    PyObject* Points2Row;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOlls", &Points1Row,&Points1Col,&Points2Row,&Points2Col,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&ImageWidth,&ImageHeight,&Method)) {
            if (PyHirschTuple_Check(Points1Row) && PyHirschTuple_Check(Points1Col) && PyHirschTuple_Check(Points2Row) && PyHirschTuple_Check(Points2Col) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2)) {
                double Error;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.VectorToProjHomMat2dDistortion(*(((PyHirschTuple*)Points1Row)->Tuple),*(((PyHirschTuple*)Points1Col)->Tuple),*(((PyHirschTuple*)Points2Row)->Tuple),*(((PyHirschTuple*)Points2Col)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),ImageWidth,ImageHeight,Method,&Error)));
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
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovFMat));
                
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
    PyObject* Py;
    PyObject* Px;
    PyObject* L2x;
    PyObject* L2y;
    char* TransformationType;
    PyObject* L1x;
    PyObject* L1y;
    
    try {
        if (PyArg_ParseTuple(args, "sOOOOOO", &TransformationType,&Px,&Py,&L1x,&L1y,&L2x,&L2y)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(L1x) && PyHirschTuple_Check(L1y) && PyHirschTuple_Check(L2x) && PyHirschTuple_Check(L2y)) {
                self->HomMat2D.PointLineToHomMat2d(TransformationType,*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)L1x)->Tuple),*(((PyHirschTuple*)L1y)->Tuple),*(((PyHirschTuple*)L2x)->Tuple),*(((PyHirschTuple*)L2y)->Tuple));
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
    long Width1;
    PyObject* CovFMat;
    long SubSampling;
    long Height1;
    long Height2;
    long Width2;
    char* Mapping;
    
    try {
        if (PyArg_ParseTuple(args, "Ollllls", &CovFMat,&Width1,&Height1,&Width2,&Height2,&SubSampling,&Mapping)) {
            if (PyHirschTuple_Check(CovFMat)) {
                HalconCpp::HImage Map2;
                HalconCpp::HTuple CovFMatRect;
                HalconCpp::HHomMat2D H1;
                HalconCpp::HHomMat2D H2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->HomMat2D.GenBinocularProjRectification(&Map2,*(((PyHirschTuple*)CovFMat)->Tuple),Width1,Height1,Width2,Height2,SubSampling,Mapping,&CovFMatRect,&H1,&H2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CovFMatRect));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H1));
                PyTuple_SET_ITEM(ret, 4, PyHirschHomMat2D_FromHHomMat2D(H2));
                
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
    char* AdaptImageSize;
    char* Interpolation;
    PyObject* Image;
    char* TransformDomain;
    
    try {
        if (PyArg_ParseTuple(args, "Osss", &Image,&Interpolation,&AdaptImageSize,&TransformDomain)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.ProjectiveTransImage(*(((PyHirschImage*)Image)->Image),Interpolation,AdaptImageSize,TransformDomain));
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
    PyObject* CovRR1;
    PyObject* Cols2;
    char* Method;
    PyObject* CovRC2;
    PyObject* CovCC2;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* CovRC1;
    PyObject* CamMat2;
    PyObject* Rows2;
    PyObject* CovCC1;
    PyObject* CovRR2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOs", &Rows1,&Cols1,&Rows2,&Cols2,&CovRR1,&CovRC1,&CovCC1,&CovRR2,&CovRC2,&CovCC2,&CamMat2,&Method)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CovRR1) && PyHirschTuple_Check(CovRC1) && PyHirschTuple_Check(CovCC1) && PyHirschTuple_Check(CovRR2) && PyHirschTuple_Check(CovRC2) && PyHirschTuple_Check(CovCC2) && PyHirschHomMat2D_Check(CamMat2)) {
                HalconCpp::HTuple CovEMat;
                double Error;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                HalconCpp::HTuple CovXYZ;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.VectorToEssentialMatrix(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CovRR1)->Tuple),*(((PyHirschTuple*)CovRC1)->Tuple),*(((PyHirschTuple*)CovCC1)->Tuple),*(((PyHirschTuple*)CovRR2)->Tuple),*(((PyHirschTuple*)CovRC2)->Tuple),*(((PyHirschTuple*)CovCC2)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat2)->HomMat2D)),Method,&CovEMat,&Error,&X,&Y,&Z,&CovXYZ)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovEMat));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(X));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Y));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Z));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(CovXYZ));
                
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
    char* Axis;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Theta,&Axis)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlantLocal(Theta,Axis));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->HomMat2D.ProjectiveTransPoint2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Pw)->Tuple),&Qy,&Qw)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Qy));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Qw));
                
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
    PyObject* Py;
    PyObject* Px;
    PyObject* CovYY1;
    PyObject* CovXY1;
    char* Method;
    PyObject* CovXY2;
    PyObject* CovXX2;
    PyObject* CovXX1;
    PyObject* CovYY2;
    PyObject* Qx;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOsOOOOOO", &Px,&Py,&Qx,&Qy,&Method,&CovXX1,&CovYY1,&CovXY1,&CovXX2,&CovYY2,&CovXY2)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy) && PyHirschTuple_Check(CovXX1) && PyHirschTuple_Check(CovYY1) && PyHirschTuple_Check(CovXY1) && PyHirschTuple_Check(CovXX2) && PyHirschTuple_Check(CovYY2) && PyHirschTuple_Check(CovXY2)) {
                return PyHirschTuple_FromHTuple(self->HomMat2D.VectorToProjHomMat2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple),Method,*(((PyHirschTuple*)CovXX1)->Tuple),*(((PyHirschTuple*)CovYY1)->Tuple),*(((PyHirschTuple*)CovXY1)->Tuple),*(((PyHirschTuple*)CovXX2)->Tuple),*(((PyHirschTuple*)CovYY2)->Tuple),*(((PyHirschTuple*)CovXY2)->Tuple)));
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
    PyObject* Pw;
    char* Method;
    PyObject* Qw;
    PyObject* Qx;
    PyObject* Qy;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOs", &Px,&Py,&Pw,&Qx,&Qy,&Qw,&Method)) {
            if (PyHirschTuple_Check(Px) && PyHirschTuple_Check(Py) && PyHirschTuple_Check(Pw) && PyHirschTuple_Check(Qx) && PyHirschTuple_Check(Qy) && PyHirschTuple_Check(Qw)) {
                self->HomMat2D.HomVectorToProjHomMat2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),*(((PyHirschTuple*)Pw)->Tuple),*(((PyHirschTuple*)Qx)->Tuple),*(((PyHirschTuple*)Qy)->Tuple),*(((PyHirschTuple*)Qw)->Tuple),Method);
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(X));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Y));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Z));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(W));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(CovXYZW));
                
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(RowTrans));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColTrans));
                
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
    PyObject* Image1;
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    char* EstimationMethod;
    PyObject* Rows1;
    PyObject* Cols1;
    long MaskSize;
    double KappaGuide;
    PyObject* Rows2;
    double DistanceTolerance;
    char* GrayMatchMethod;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOslddlsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&KappaGuide,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,KappaGuide,DistanceTolerance,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->HomMat2D.ReadWorldFile(FileName);
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(RowTrans));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColTrans));
                
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->HomMat2D.AffineTransPoint2d(*(((PyHirschTuple*)Px)->Tuple),*(((PyHirschTuple*)Py)->Tuple),&Qy)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Qy));
                
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
    PyObject* Image1;
    long RowTolerance;
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    char* EstimationMethod;
    PyObject* Rows1;
    double Rotation;
    PyObject* Cols1;
    long MaskSize;
    long ColTolerance;
    long ColMove;
    PyObject* Rows2;
    char* GrayMatchMethod;
    long RowMove;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->HomMat2D.MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points2));
                
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
    char* AdaptImageSize;
    char* Interpolation;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image,&Interpolation,&AdaptImageSize)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.AffineTransImage(*(((PyHirschImage*)Image)->Image),Interpolation,AdaptImageSize));
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
    char* Interpolation;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions,&Interpolation)) {
            if (PyHirschRegion_Check(Regions)) {
                return PyHirschRegion_FromHRegion(self->HomMat2D.ProjectiveTransRegion(*(((PyHirschRegion*)Regions)->Region),Interpolation));
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
    PyObject* MappingDest;
    PyObject* HomMatrices2D;
    PyObject* Cols2;
    long ReferenceImage;
    PyObject* Rows1;
    PyObject* Cols1;
    long NumImages;
    PyObject* MappingSource;
    PyObject* Rows2;
    PyObject* NumCorrespondences;
    
    try {
        if (PyArg_ParseTuple(args, "llOOOOOOOOs", &NumImages,&ReferenceImage,&MappingSource,&MappingDest,&HomMatrices2D,&Rows1,&Cols1,&Rows2,&Cols2,&NumCorrespondences,&Transformation)) {
            if (PyHirschTuple_Check(MappingSource) && PyHirschTuple_Check(MappingDest) && PyHirschHomMat2DArray_Check(HomMatrices2D) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(NumCorrespondences)) {
                HalconCpp::HTuple Rows;
                HalconCpp::HTuple Cols;
                double Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::BundleAdjustMosaic(NumImages,ReferenceImage,*(((PyHirschTuple*)MappingSource)->Tuple),*(((PyHirschTuple*)MappingDest)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)NumCorrespondences)->Tuple),Transformation,&Rows,&Cols,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Cols));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
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
    PyObject* CameraModel;
    PyObject* MappingDest;
    PyObject* HomMatrices2D;
    char* EstimationMethod;
    long ImageHeight;
    long ReferenceImage;
    PyObject* Cols2;
    PyObject* Rows1;
    PyObject* Cols1;
    long NumImages;
    long ImageWidth;
    PyObject* Rows2;
    PyObject* MappingSource;
    char* FixedCameraParams;
    PyObject* NumCorrespondences;
    
    try {
        if (PyArg_ParseTuple(args, "llllOOOOOOOOsOs", &NumImages,&ImageWidth,&ImageHeight,&ReferenceImage,&MappingSource,&MappingDest,&HomMatrices2D,&Rows1,&Cols1,&Rows2,&Cols2,&NumCorrespondences,&EstimationMethod,&CameraModel,&FixedCameraParams)) {
            if (PyHirschTuple_Check(MappingSource) && PyHirschTuple_Check(MappingDest) && PyHirschHomMat2DArray_Check(HomMatrices2D) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(NumCorrespondences) && PyHirschTuple_Check(CameraModel)) {
                double Kappa;
                HalconCpp::HHomMat2DArray RotationMatrices;
                HalconCpp::HTuple X;
                HalconCpp::HTuple Y;
                HalconCpp::HTuple Z;
                double Error;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2DArray_FromHHomMat2DArray(HalconCpp::HHomMat2D::StationaryCameraSelfCalibration(NumImages,ImageWidth,ImageHeight,ReferenceImage,*(((PyHirschTuple*)MappingSource)->Tuple),*(((PyHirschTuple*)MappingDest)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)NumCorrespondences)->Tuple),EstimationMethod,*(((PyHirschTuple*)CameraModel)->Tuple),FixedCameraParams,&Kappa,&RotationMatrices,&X,&Y,&Z,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2DArray_FromHHomMat2DArray(RotationMatrices));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(X));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Y));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Z));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(Error));
                
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
    char* Interpolation;
    PyObject* Image;
    long Height;
    long Width;
    char* TransformDomain;
    
    try {
        if (PyArg_ParseTuple(args, "Oslls", &Image,&Interpolation,&Width,&Height,&TransformDomain)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.ProjectiveTransImageSize(*(((PyHirschImage*)Image)->Image),Interpolation,Width,Height,TransformDomain));
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
    PyObject* Region;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Region,&Interpolate)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschRegion_FromHRegion(self->HomMat2D.AffineTransRegion(*(((PyHirschRegion*)Region)->Region),Interpolate));
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
    PyObject* Image1;
    long RowTolerance;
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    char* EstimationMethod;
    PyObject* Rows1;
    double Rotation;
    PyObject* Cols1;
    long MaskSize;
    long ColTolerance;
    PyObject* CamMat2;
    long ColMove;
    PyObject* Rows2;
    char* GrayMatchMethod;
    long RowMove;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOsllllldlsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&CamMat2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(CamMat2)) {
                HalconCpp::HTuple CovEMat;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.MatchEssentialMatrixRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat2)->HomMat2D)),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&CovEMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovEMat));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
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
    char* Axis;
    double Py;
    double Px;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "dsdd", &Theta,&Axis,&Px,&Py)) {
            return PyHirschHomMat2D_FromHHomMat2D(self->HomMat2D.HomMat2dSlant(Theta,Axis,Px,Py));
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
    char* Interpolation;
    PyObject* Image;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &Image,&Interpolation,&Width,&Height)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->HomMat2D.AffineTransImageSize(*(((PyHirschImage*)Image)->Image),Interpolation,Width,Height));
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
    PyObject* Image1;
    long RowTolerance;
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    char* EstimationMethod;
    PyObject* Rows1;
    double Rotation;
    PyObject* Cols1;
    long MaskSize;
    long ColTolerance;
    long ColMove;
    PyObject* Rows2;
    char* GrayMatchMethod;
    long RowMove;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOsllllldlsdl", &Image1,&Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image1) && PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->HomMat2D.MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image1)->Image),*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points2));
                
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
