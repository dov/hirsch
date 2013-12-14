PyObject *
PyHirschImage_MapImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Map;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Map)) {
            if (PyHirschImage_Check(Map)) {
                return PyHirschImage_FromHImage(self->Image->MapImage(*(((PyHirschImage*)Map)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MapImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldLength(PyHirschImage*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->VectorFieldLength(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.VectorFieldLength()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SelectGrayvaluesFromChannels(PyHirschImage*self, PyObject *args)
{
    PyObject* IndexImage;
    
    try {
        if (PyArg_ParseTuple(args, "O", &IndexImage)) {
            if (PyHirschImage_Check(IndexImage)) {
                return PyHirschImage_FromHImage(self->Image->SelectGrayvaluesFromChannels(*(((PyHirschImage*)IndexImage)->Image)));
            }
            if (PyHirschImageArray_Check(IndexImage)) {
                return PyHirschImage_FromHImage(self->Image->SelectGrayvaluesFromChannels(*(((PyHirschImageArray*)IndexImage)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SelectGrayvaluesFromChannels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Pouring(PyHirschImage*self, PyObject *args)
{
    long MinGray;
    char* Mode;
    long MaxGray;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Mode,&MinGray,&MaxGray)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->Pouring(Mode,MinGray,MaxGray));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Pouring()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CreateUncalibDescriptorModel(PyHirschImage*self, PyObject *args)
{
    PyObject* DescriptorParamValue;
    PyObject* DetectorParamValue;
    PyObject* DetectorType;
    PyObject* DescriptorParamName;
    PyObject* DetectorParamName;
    PyObject* Seed;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &DetectorType,&DetectorParamName,&DetectorParamValue,&DescriptorParamName,&DescriptorParamValue,&Seed)) {
            if (PyHirschTuple_Check(DetectorType) && PyHirschTuple_Check(DetectorParamName) && PyHirschTuple_Check(DetectorParamValue) && PyHirschTuple_Check(DescriptorParamName) && PyHirschTuple_Check(DescriptorParamValue) && PyHirschTuple_Check(Seed)) {
                return PyHirschTuple_FromHTuple(self->Image->CreateUncalibDescriptorModel(*(((PyHirschTuple*)DetectorType)->Tuple),*(((PyHirschTuple*)DetectorParamName)->Tuple),*(((PyHirschTuple*)DetectorParamValue)->Tuple),*(((PyHirschTuple*)DescriptorParamName)->Tuple),*(((PyHirschTuple*)DescriptorParamValue)->Tuple),*(((PyHirschTuple*)Seed)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CreateUncalibDescriptorModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjMatchPointsRansac(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskSize;
    PyObject* ColMove;
    PyObject* RowTolerance;
    PyObject* Cols2;
    PyObject* EstimationMethod;
    PyObject* Image2;
    PyObject* GrayMatchMethod;
    PyObject* Rotation;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* ColTolerance;
    PyObject* RandSeed;
    PyObject* MatchThreshold;
    PyObject* Rows2;
    PyObject* RowMove;
    PyObject* DistanceThreshold;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOOOOO", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(GrayMatchMethod) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(RowMove) && PyHirschTuple_Check(ColMove) && PyHirschTuple_Check(RowTolerance) && PyHirschTuple_Check(ColTolerance) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(EstimationMethod) && PyHirschTuple_Check(DistanceThreshold) && PyHirschTuple_Check(RandSeed)) {
                Halcon::HTuple Points1;
                Halcon::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->ProjMatchPointsRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)GrayMatchMethod)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)RowMove)->Tuple),*(((PyHirschTuple*)ColMove)->Tuple),*(((PyHirschTuple*)RowTolerance)->Tuple),*(((PyHirschTuple*)ColTolerance)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),*(((PyHirschTuple*)EstimationMethod)->Tuple),*(((PyHirschTuple*)DistanceThreshold)->Tuple),*(((PyHirschTuple*)RandSeed)->Tuple),&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjMatchPointsRansac()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MeanN(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->MeanN());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RobinsonDir(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->RobinsonDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateTiltLr(PyHirschImage*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Image->EstimateTiltLr());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Compose4(PyHirschImage*self, PyObject *args)
{
    PyObject* Image4;
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Image3,&Image4)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4)) {
                return PyHirschImage_FromHImage(self->Image->Compose4(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image)));
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4)) {
                return PyHirschImage_FromHImage(self->Image->Compose4(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose4()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Compose5(PyHirschImage*self, PyObject *args)
{
    PyObject* Image4;
    PyObject* Image5;
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Image2,&Image3,&Image4,&Image5)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4) && PyHirschImage_Check(Image5)) {
                return PyHirschImage_FromHImage(self->Image->Compose5(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image),*(((PyHirschImage*)Image5)->Image)));
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4) && PyHirschImageArray_Check(Image5)) {
                return PyHirschImage_FromHImage(self->Image->Compose5(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray),*(((PyHirschImageArray*)Image5)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose5()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Compose6(PyHirschImage*self, PyObject *args)
{
    PyObject* Image6;
    PyObject* Image4;
    PyObject* Image5;
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image2,&Image3,&Image4,&Image5,&Image6)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4) && PyHirschImage_Check(Image5) && PyHirschImage_Check(Image6)) {
                return PyHirschImage_FromHImage(self->Image->Compose6(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image),*(((PyHirschImage*)Image5)->Image),*(((PyHirschImage*)Image6)->Image)));
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4) && PyHirschImageArray_Check(Image5) && PyHirschImageArray_Check(Image6)) {
                return PyHirschImage_FromHImage(self->Image->Compose6(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray),*(((PyHirschImageArray*)Image5)->ImageArray),*(((PyHirschImageArray*)Image6)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose6()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Compose7(PyHirschImage*self, PyObject *args)
{
    PyObject* Image4;
    PyObject* Image2;
    PyObject* Image3;
    PyObject* Image6;
    PyObject* Image7;
    PyObject* Image5;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Image2,&Image3,&Image4,&Image5,&Image6,&Image7)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4) && PyHirschImage_Check(Image5) && PyHirschImage_Check(Image6) && PyHirschImage_Check(Image7)) {
                return PyHirschImage_FromHImage(self->Image->Compose7(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image),*(((PyHirschImage*)Image5)->Image),*(((PyHirschImage*)Image6)->Image),*(((PyHirschImage*)Image7)->Image)));
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4) && PyHirschImageArray_Check(Image5) && PyHirschImageArray_Check(Image6) && PyHirschImageArray_Check(Image7)) {
                return PyHirschImage_FromHImage(self->Image->Compose7(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray),*(((PyHirschImageArray*)Image5)->ImageArray),*(((PyHirschImageArray*)Image6)->ImageArray),*(((PyHirschImageArray*)Image7)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose7()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Compose2(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->Compose2(*(((PyHirschImage*)Image2)->Image)));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->Compose2(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Compose3(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image2,&Image3)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3)) {
                return PyHirschImage_FromHImage(self->Image->Compose3(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image)));
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3)) {
                return PyHirschImage_FromHImage(self->Image->Compose3(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose3()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinThreshold(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->BinThreshold());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_TopographicSketch(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->TopographicSketch());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MeanCurvatureFlow(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    long Iterations;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "ddl", &Sigma,&Theta,&Iterations)) {
            return PyHirschImage_FromHImage(self->Image->MeanCurvatureFlow(Sigma,Theta,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanCurvatureFlow()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GraySkeleton(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->GraySkeleton());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_KirschAmp(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->KirschAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetGrayvalContourXld(PyHirschImage*self, PyObject *args)
{
    PyObject* Contour;
    char* Interpolation;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour,&Interpolation)) {
            if (PyHirschXLDCont_Check(Contour)) {
                return PyHirschTuple_FromHTuple(self->Image->GetGrayvalContourXld(*(((PyHirschXLDCont*)Contour)->XLDCont),Interpolation));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetGrayvalContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FillInterlace(PyHirschImage*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->FillInterlace(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FillInterlace()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitAnd(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitAnd(*(((PyHirschImage*)Image2)->Image)));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitAnd(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitAnd()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjMatchPointsRansacGuided(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskSize;
    PyObject* MatchThreshold;
    PyObject* DistanceThreshold;
    PyObject* Cols2;
    PyObject* EstimationMethod;
    PyObject* Image2;
    PyObject* GrayMatchMethod;
    PyObject* HomMat2DGuide;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* RandSeed;
    PyObject* DistanceTolerance;
    PyObject* Rows2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOO", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&HomMat2DGuide,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(GrayMatchMethod) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(HomMat2DGuide) && PyHirschTuple_Check(DistanceTolerance) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(EstimationMethod) && PyHirschTuple_Check(DistanceThreshold) && PyHirschTuple_Check(RandSeed)) {
                Halcon::HTuple Points1;
                Halcon::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)GrayMatchMethod)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)HomMat2DGuide)->Tuple),*(((PyHirschTuple*)DistanceTolerance)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),*(((PyHirschTuple*)EstimationMethod)->Tuple),*(((PyHirschTuple*)DistanceThreshold)->Tuple),*(((PyHirschTuple*)RandSeed)->Tuple),&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjMatchPointsRansacGuided()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CreateTemplate(PyHirschImage*self, PyObject *args)
{
    char* Optimize;
    char* GrayValues;
    long FirstError;
    long NumLevel;
    
    try {
        if (PyArg_ParseTuple(args, "llss", &FirstError,&NumLevel,&Optimize,&GrayValues)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplate(FirstError,NumLevel,Optimize,GrayValues));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CreateTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SubImage(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageSubtrahend;
    double Add;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &ImageSubtrahend,&Mult,&Add)) {
            if (PyHirschImage_Check(ImageSubtrahend)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImage*)ImageSubtrahend)->Image),Mult,Add));
            }
            if (PyHirschImageArray_Check(ImageSubtrahend)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImageArray*)ImageSubtrahend)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SubImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ScaleImage(PyHirschImage*self, PyObject *args)
{
    double Add;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Mult,&Add)) {
            return PyHirschImage_FromHImage(self->Image->ScaleImage(Mult,Add));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ScaleImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImage1Extern(PyHirschImage*self, PyObject *args)
{
    long PixelPointer;
    long Height;
    long Width;
    char* Type;
    long ClearProc;
    
    try {
        if (PyArg_ParseTuple(args, "sllll", &Type,&Width,&Height,&PixelPointer,&ClearProc)) {
            return PyHirschImage_FromHImage(self->Image->GenImage1Extern(Type,Width,Height,PixelPointer,ClearProc));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImage1Extern()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Lowlands(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->Image->Lowlands());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetDomain(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->GetDomain());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RealToVectorField(PyHirschImage*self, PyObject *args)
{
    PyObject* Col;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Col)) {
            if (PyHirschImage_Check(Col)) {
                return PyHirschImage_FromHImage(self->Image->RealToVectorField(*(((PyHirschImage*)Col)->Image)));
            }
            if (PyHirschImageArray_Check(Col)) {
                return PyHirschImage_FromHImage(self->Image->RealToVectorField(*(((PyHirschImageArray*)Col)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RealToVectorField()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Get1dBarCode(PyHirschImage*self, PyObject *args)
{
    PyObject* Orientation;
    PyObject* GenericValue;
    PyObject* GenericName;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &BarCodeDescr,&GenericName,&GenericValue,&Orientation)) {
            if (PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(GenericName) && PyHirschTuple_Check(GenericValue) && PyHirschTuple_Check(Orientation)) {
                return PyHirschTuple_FromHTuple(self->Image->Get1dBarCode(*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple),*(((PyHirschTuple*)Orientation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Get1dBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerLn(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PowerLn());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImage1(PyHirschImage*self, PyObject *args)
{
    long PixelPointer;
    long Height;
    long Width;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "slll", &Type,&Width,&Height,&PixelPointer)) {
            return PyHirschImage_FromHImage(self->Image->GenImage1(Type,Width,Height,PixelPointer));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImage1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SimulateMotion(PyHirschImage*self, PyObject *args)
{
    long Angle;
    double Blurring;
    long Type;
    
    try {
        if (PyArg_ParseTuple(args, "dll", &Blurring,&Angle,&Type)) {
            return PyHirschImage_FromHImage(self->Image->SimulateMotion(Blurring,Angle,Type));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SimulateMotion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AnisotropeDiff(PyHirschImage*self, PyObject *args)
{
    long Mode;
    long NeighborhoodType;
    long Percent;
    long Iteration;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Percent,&Mode,&Iteration,&NeighborhoodType)) {
            return PyHirschImage_FromHImage(self->Image->AnisotropeDiff(Percent,Mode,Iteration,NeighborhoodType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AnisotropeDiff()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CropDomainRel(PyHirschImage*self, PyObject *args)
{
    long Right;
    long Bottom;
    long Left;
    long Top;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Top,&Left,&Bottom,&Right)) {
            return PyHirschImage_FromHImage(self->Image->CropDomainRel(Top,Left,Bottom,Right));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CropDomainRel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CriticalPointsSubPix(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    double Sigma;
    char* Filter;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter,&Sigma,&Threshold)) {
            {
            // with output params
                Halcon::HTuple ColumnMin;
                Halcon::HTuple RowMax;
                Halcon::HTuple ColumnMax;
                Halcon::HTuple RowSaddle;
                Halcon::HTuple ColumnSaddle;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->CriticalPointsSubPix(Filter,Sigma,Threshold,&ColumnMin,&RowMax,&ColumnMax,&RowSaddle,&ColumnSaddle)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColumnMin));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(RowMax));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ColumnMax));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(RowSaddle));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(ColumnSaddle));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CriticalPointsSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SimCaltab(PyHirschImage*self, PyObject *args)
{
    PyObject* GrayCaltab;
    PyObject* ScaleFac;
    PyObject* CaltabPose;
    PyObject* CalTabDescrFile;
    PyObject* GrayMarks;
    PyObject* GrayBackground;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &CalTabDescrFile,&CamParam,&CaltabPose,&GrayBackground,&GrayCaltab,&GrayMarks,&ScaleFac)) {
            if (PyHirschTuple_Check(CalTabDescrFile) && PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(CaltabPose) && PyHirschTuple_Check(GrayBackground) && PyHirschTuple_Check(GrayCaltab) && PyHirschTuple_Check(GrayMarks) && PyHirschTuple_Check(ScaleFac)) {
                return PyHirschImage_FromHImage(self->Image->SimCaltab(*(((PyHirschTuple*)CalTabDescrFile)->Tuple),*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)CaltabPose)->Tuple),*(((PyHirschTuple*)GrayBackground)->Tuple),*(((PyHirschTuple*)GrayCaltab)->Tuple),*(((PyHirschTuple*)GrayMarks)->Tuple),*(((PyHirschTuple*)ScaleFac)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SimCaltab()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CreateTemplateRot(PyHirschImage*self, PyObject *args)
{
    char* Optimize;
    long NumLevel;
    char* GrayValues;
    double AngleExtend;
    double AngleStep;
    double AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "ldddss", &NumLevel,&AngleStart,&AngleExtend,&AngleStep,&Optimize,&GrayValues)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplateRot(NumLevel,AngleStart,AngleExtend,AngleStep,Optimize,GrayValues));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CreateTemplateRot()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CropPart(PyHirschImage*self, PyObject *args)
{
    long Row;
    long Height;
    long Width;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row,&Column,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->CropPart(Row,Column,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CropPart()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenDerivativeFilter(PyHirschImage*self, PyObject *args)
{
    long Width;
    char* Norm;
    long Height;
    char* Derivative;
    long Exponent;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "slssll", &Derivative,&Exponent,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenDerivativeFilter(Derivative,Exponent,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenDerivativeFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayRangeRect(PyHirschImage*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImage_FromHImage(self->Image->GrayRangeRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayRangeRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SaddlePointsSubPix(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    double Sigma;
    char* Filter;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter,&Sigma,&Threshold)) {
            {
            // with output params
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->SaddlePointsSubPix(Filter,Sigma,Threshold,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SaddlePointsSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindBarCode(PyHirschImage*self, PyObject *args)
{
    char* CodeType;
    PyObject* BarCodeHandle;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &BarCodeHandle,&CodeType)) {
            if (PyHirschBarCode_Check(BarCodeHandle)) {
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Image->FindBarCode(*(((PyHirschBarCode*)BarCodeHandle)->BarCode),CodeType,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AdaptTemplate(PyHirschImage*self, PyObject *args)
{
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "O", &TemplateID)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                self->Image->AdaptTemplate(*(((PyHirschTemplate*)TemplateID)->Template));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AdaptTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_HysteresisThreshold(PyHirschImage*self, PyObject *args)
{
    long Low;
    long High;
    long MaxLength;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Low,&High,&MaxLength)) {
            return PyHirschRegion_FromHRegion(self->Image->HysteresisThreshold(Low,High,MaxLength));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HysteresisThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PhaseDeg(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PhaseDeg());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CropDomain(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->CropDomain());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SetPixVal(PyHirschImage*self, PyObject *args)
{
    PyObject* val;
    int y;
    int x;
    long k;
    
    try {
        if (PyArg_ParseTuple(args, "lO", &k,&val)) {
            if (PyHirschPixVal_Check(val)) {
                self->Image->SetPixVal(k,Halcon::HPixVal((((PyHirschPixVal*)val)->PixVal)));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        if (PyArg_ParseTuple(args, "iiO", &x,&y,&val)) {
            if (PyHirschPixVal_Check(val)) {
                self->Image->SetPixVal(x,y,Halcon::HPixVal((((PyHirschPixVal*)val)->PixVal)));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SetPixVal()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ThresholdSubPix(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Threshold)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->ThresholdSubPix(Threshold));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ThresholdSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerReal(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PowerReal());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsLepetit(PyHirschImage*self, PyObject *args)
{
    long CheckNeighbor;
    long MinScore;
    long MinCheckNeighborDiff;
    char* Subpix;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "lllls", &Radius,&CheckNeighbor,&MinCheckNeighborDiff,&MinScore,&Subpix)) {
            {
            // with output params
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsLepetit(Radius,CheckNeighbor,MinCheckNeighborDiff,MinScore,Subpix,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsLepetit()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBandpass(PyHirschImage*self, PyObject *args)
{
    double MinFrequency;
    long Width;
    char* Norm;
    long Height;
    double MaxFrequency;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency,&MaxFrequency,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenBandpass(MinFrequency,MaxFrequency,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBandpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FftImage(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FftImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DetermineShapeModelParams(PyHirschImage*self, PyObject *args)
{
    double ScaleMax;
    long MinContrast;
    double ScaleMin;
    char* Parameters;
    long Contrast;
    char* Metric;
    double AngleStart;
    double AngleExtent;
    char* Optimization;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "lddddsslls", &NumLevels,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&Optimization,&Metric,&Contrast,&MinContrast,&Parameters)) {
            {
            // with output params
                Halcon::HTuple ParameterValue;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetermineShapeModelParams(NumLevels,AngleStart,AngleExtent,ScaleMin,ScaleMax,Optimization,Metric,Contrast,MinContrast,Parameters,&ParameterValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ParameterValue));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DetermineShapeModelParams()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ShockFilter(PyHirschImage*self, PyObject *args)
{
    char* Mode;
    double Sigma;
    long Iterations;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "dlsd", &Theta,&Iterations,&Mode,&Sigma)) {
            return PyHirschImage_FromHImage(self->Image->ShockFilter(Theta,Iterations,Mode,Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ShockFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DotsImage(PyHirschImage*self, PyObject *args)
{
    char* FilterType;
    long Diameter;
    long PixelShift;
    
    try {
        if (PyArg_ParseTuple(args, "lsl", &Diameter,&FilterType,&PixelShift)) {
            return PyHirschImage_FromHImage(self->Image->DotsImage(Diameter,FilterType,PixelShift));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DotsImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EdgesColorSubPix(PyHirschImage*self, PyObject *args)
{
    double Low;
    double High;
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sddd", &Filter,&Alpha,&Low,&High)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->EdgesColorSubPix(Filter,Alpha,Low,High));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesColorSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer3(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HTuple PointerGreen;
        Halcon::HTuple PointerBlue;
        Halcon::HTuple Type;
        Halcon::HTuple Width;
        Halcon::HTuple Height;
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GetImagePointer3(&PointerGreen,&PointerBlue,&Type,&Width,&Height))));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(PointerGreen));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(PointerBlue));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Type));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Width));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Height));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FullDomain(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FullDomain());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DerivateGauss(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    char* Component;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Sigma,&Component)) {
            return PyHirschImage_FromHImage(self->Image->DerivateGauss(Sigma,Component));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DerivateGauss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetGrayval(PyHirschImage*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschTuple_FromHTuple(self->Image->GetGrayval(Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetGrayval()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FastMatchMg(PyHirschImage*self, PyObject *args)
{
    double MaxError;
    long NumLevel;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Odl", &TemplateID,&MaxError,&NumLevel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                return PyHirschRegion_FromHRegion(self->Image->FastMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,NumLevel));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FastMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DispChannel(PyHirschImage*self, PyObject *args)
{
    long WindowHandle;
    long Channel;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &WindowHandle,&Channel)) {
            self->Image->DispChannel(WindowHandle,Channel);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DispChannel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_NonmaxSuppressionAmp(PyHirschImage*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionAmp(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.NonmaxSuppressionAmp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ZeroCrossingSubPix(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschXLDContArray_FromHXLDContArray(self->Image->ZeroCrossingSubPix());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenMeanFilter(PyHirschImage*self, PyObject *args)
{
    double Diameter1;
    double Diameter2;
    long Width;
    char* MaskShape;
    long Height;
    char* Norm;
    double Phi;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sdddssll", &MaskShape,&Diameter1,&Diameter2,&Phi,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenMeanFilter(MaskShape,Diameter1,Diameter2,Phi,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenMeanFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_HarmonicInterpolation(PyHirschImage*self, PyObject *args)
{
    double Precision;
    PyObject* Region;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Region,&Precision)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->HarmonicInterpolation(*(((PyHirschRegion*)Region)->Region),Precision));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HarmonicInterpolation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_TransToRgb(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageInput2;
    char* ColorSpace;
    PyObject* ImageInput3;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &ImageInput2,&ImageInput3,&ColorSpace)) {
            if (PyHirschImage_Check(ImageInput2) && PyHirschImage_Check(ImageInput3)) {
                Halcon::HImage ImageGreen;
                Halcon::HImage ImageBlue;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImage*)ImageInput2)->Image),*(((PyHirschImage*)ImageInput3)->Image),&ImageGreen,&ImageBlue,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue));
                
                return ret;
            }
            if (PyHirschImageArray_Check(ImageInput2) && PyHirschImageArray_Check(ImageInput3)) {
                Halcon::HImage ImageGreen;
                Halcon::HImage ImageBlue;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImageArray*)ImageInput2)->ImageArray),*(((PyHirschImageArray*)ImageInput3)->ImageArray),&ImageGreen,&ImageBlue,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TransToRgb()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjectiveTransImage(PyHirschImage*self, PyObject *args)
{
    PyObject* AdaptImageSize;
    PyObject* Interpolation;
    PyObject* HomMat2D;
    PyObject* TransformRegion;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &HomMat2D,&Interpolation,&AdaptImageSize,&TransformRegion)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(AdaptImageSize) && PyHirschTuple_Check(TransformRegion)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImage(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)AdaptImageSize)->Tuple),*(((PyHirschTuple*)TransformRegion)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjectiveTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EnergyGabor(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageHilbert;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageHilbert)) {
            if (PyHirschImage_Check(ImageHilbert)) {
                return PyHirschImage_FromHImage(self->Image->EnergyGabor(*(((PyHirschImage*)ImageHilbert)->Image)));
            }
            if (PyHirschImageArray_Check(ImageHilbert)) {
                return PyHirschImage_FromHImage(self->Image->EnergyGabor(*(((PyHirschImageArray*)ImageHilbert)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EnergyGabor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Laplace(PyHirschImage*self, PyObject *args)
{
    char* FilterMask;
    char* ResultType;
    long MaskSize;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &ResultType,&MaskSize,&FilterMask)) {
            return PyHirschImage_FromHImage(self->Image->Laplace(ResultType,MaskSize,FilterMask));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Laplace()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_HoughLinesDir(PyHirschImage*self, PyObject *args)
{
    long Threshold;
    char* Smoothing;
    long AngleGap;
    char* GenLines;
    long AngleResolution;
    long FilterSize;
    long DirectionUncertainty;
    long DistGap;
    
    try {
        if (PyArg_ParseTuple(args, "llslllls", &DirectionUncertainty,&AngleResolution,&Smoothing,&FilterSize,&Threshold,&AngleGap,&DistGap,&GenLines)) {
            {
            // with output params
                Halcon::HRegionArray Lines;
                Halcon::HTuple Angle;
                Halcon::HTuple Dist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->HoughLinesDir(&Lines,DirectionUncertainty,AngleResolution,Smoothing,FilterSize,Threshold,AngleGap,DistGap,GenLines,&Angle,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(Lines));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Dist));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HoughLinesDir()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AffineTransImage(PyHirschImage*self, PyObject *args)
{
    PyObject* AdaptImageSize;
    PyObject* Interpolation;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &HomMat2D,&Interpolation,&AdaptImageSize)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(AdaptImageSize)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImage(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)AdaptImageSize)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AffineTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenRadialDistortionMap(PyHirschImage*self, PyObject *args)
{
    PyObject* Interpolation;
    PyObject* CamParamOut;
    PyObject* CamParamIn;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParamIn,&CamParamOut,&Interpolation)) {
            if (PyHirschTuple_Check(CamParamIn) && PyHirschTuple_Check(CamParamOut) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->GenRadialDistortionMap(*(((PyHirschTuple*)CamParamIn)->Tuple),*(((PyHirschTuple*)CamParamOut)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenRadialDistortionMap()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_HClassName(PyHirschImage*self, PyObject *args)
{
    try {
        return PyString_FromString(self->Image->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Height(PyHirschImage*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->Image->Height()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitMask(PyHirschImage*self, PyObject *args)
{
    long BitMask;
    
    try {
        if (PyArg_ParseTuple(args, "l", &BitMask)) {
            return PyHirschImage_FromHImage(self->Image->BitMask(BitMask));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitMask()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BestMatch(PyHirschImage*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &TemplateID,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                double Column;
                double Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatch(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldToReal(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage Col;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->VectorFieldToReal(&Col)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Col));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LutTrans(PyHirschImage*self, PyObject *args)
{
    PyObject* Lut;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Lut)) {
            if (PyHirschTuple_Check(Lut)) {
                return PyHirschImage_FromHImage(self->Image->LutTrans(*(((PyHirschTuple*)Lut)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LutTrans()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_TransFromRgb(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageGreen;
    char* ColorSpace;
    PyObject* ImageBlue;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &ImageGreen,&ImageBlue,&ColorSpace)) {
            if (PyHirschImage_Check(ImageGreen) && PyHirschImage_Check(ImageBlue)) {
                Halcon::HImage ImageResult2;
                Halcon::HImage ImageResult3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImage*)ImageGreen)->Image),*(((PyHirschImage*)ImageBlue)->Image),&ImageResult2,&ImageResult3,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult3));
                
                return ret;
            }
            if (PyHirschImageArray_Check(ImageGreen) && PyHirschImageArray_Check(ImageBlue)) {
                Halcon::HImage ImageResult2;
                Halcon::HImage ImageResult3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImageArray*)ImageGreen)->ImageArray),*(((PyHirschImageArray*)ImageBlue)->ImageArray),&ImageResult2,&ImageResult3,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult3));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TransFromRgb()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DualRank(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskType;
    PyObject* ModePercent;
    PyObject* Radius;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &MaskType,&Radius,&ModePercent,&Margin)) {
            if (PyHirschTuple_Check(MaskType) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(ModePercent) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->DualRank(*(((PyHirschTuple*)MaskType)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)ModePercent)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DualRank()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateSlAlLr(PyHirschImage*self, PyObject *args)
{
    try {
        double Albedo;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EstimateSlAlLr(&Albedo)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Albedo));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EdgesImage(PyHirschImage*self, PyObject *args)
{
    long Low;
    long High;
    char* NMS;
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdsll", &Filter,&Alpha,&NMS,&Low,&High)) {
            {
            // with output params
                Halcon::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesImage(&ImaDir,Filter,Alpha,NMS,Low,High)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CopyImage(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->CopyImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RankImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Rank;
    PyObject* Margin;
    PyObject* Mask;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Mask,&Rank,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Rank) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->RankImage(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Rank)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RankImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsFoerstner(PyHirschImage*self, PyObject *args)
{
    char* Smoothing;
    char* EliminateDoublets;
    double SigmaInt;
    double SigmaGrad;
    double ThreshInhom;
    double SigmaPoints;
    double ThreshShape;
    
    try {
        if (PyArg_ParseTuple(args, "dddddss", &SigmaGrad,&SigmaInt,&SigmaPoints,&ThreshInhom,&ThreshShape,&Smoothing,&EliminateDoublets)) {
            {
            // with output params
                Halcon::HTuple ColumnJunctions;
                Halcon::HTuple CoRRJunctions;
                Halcon::HTuple CoRCJunctions;
                Halcon::HTuple CoCCJunctions;
                Halcon::HTuple RowArea;
                Halcon::HTuple ColumnArea;
                Halcon::HTuple CoRRArea;
                Halcon::HTuple CoRCArea;
                Halcon::HTuple CoCCArea;
                PyObject *ret = PyTuple_New(10);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsFoerstner(SigmaGrad,SigmaInt,SigmaPoints,ThreshInhom,ThreshShape,Smoothing,EliminateDoublets,&ColumnJunctions,&CoRRJunctions,&CoRCJunctions,&CoCCJunctions,&RowArea,&ColumnArea,&CoRRArea,&CoRCArea,&CoCCArea)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColumnJunctions));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CoRRJunctions));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(CoRCJunctions));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(CoCCJunctions));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(RowArea));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(ColumnArea));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(CoRRArea));
                PyTuple_SET_ITEM(ret, 8, PyHirschTuple_FromHTuple(CoRCArea));
                PyTuple_SET_ITEM(ret, 9, PyHirschTuple_FromHTuple(CoCCArea));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsFoerstner()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayDilation(PyHirschImage*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImage_FromHImage(self->Image->GrayDilation(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayDilation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RealToComplex(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageImaginary;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageImaginary)) {
            if (PyHirschImage_Check(ImageImaginary)) {
                return PyHirschImage_FromHImage(self->Image->RealToComplex(*(((PyHirschImage*)ImageImaginary)->Image)));
            }
            if (PyHirschImageArray_Check(ImageImaginary)) {
                return PyHirschImage_FromHImage(self->Image->RealToComplex(*(((PyHirschImageArray*)ImageImaginary)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RealToComplex()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MatchFundamentalMatrixRansac(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskSize;
    PyObject* ColMove;
    PyObject* RowTolerance;
    PyObject* Cols2;
    PyObject* EstimationMethod;
    PyObject* Image2;
    PyObject* GrayMatchMethod;
    PyObject* Rotation;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* ColTolerance;
    PyObject* RandSeed;
    PyObject* MatchThreshold;
    PyObject* Rows2;
    PyObject* RowMove;
    PyObject* DistanceThreshold;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOOOOO", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(GrayMatchMethod) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(RowMove) && PyHirschTuple_Check(ColMove) && PyHirschTuple_Check(RowTolerance) && PyHirschTuple_Check(ColTolerance) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(EstimationMethod) && PyHirschTuple_Check(DistanceThreshold) && PyHirschTuple_Check(RandSeed)) {
                Halcon::HTuple CovFMat;
                Halcon::HTuple Error;
                Halcon::HTuple Points1;
                Halcon::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)GrayMatchMethod)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)RowMove)->Tuple),*(((PyHirschTuple*)ColMove)->Tuple),*(((PyHirschTuple*)RowTolerance)->Tuple),*(((PyHirschTuple*)ColTolerance)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),*(((PyHirschTuple*)EstimationMethod)->Tuple),*(((PyHirschTuple*)DistanceThreshold)->Tuple),*(((PyHirschTuple*)RandSeed)->Tuple),&CovFMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovFMat));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MatchFundamentalMatrixRansac()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ShadeHeightField(PyHirschImage*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    char* Shadows;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Slant,&Tilt,&Albedo,&Ambient,&Shadows)) {
            return PyHirschImage_FromHImage(self->Image->ShadeHeightField(Slant,Tilt,Albedo,Ambient,Shadows));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ShadeHeightField()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BestMatchMg(PyHirschImage*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    long NumLevels;
    long WhichLevels;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                double Column;
                double Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,NumLevels,WhichLevels,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FastMatch(PyHirschImage*self, PyObject *args)
{
    double MaxError;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &TemplateID,&MaxError)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                return PyHirschRegion_FromHRegion(self->Image->FastMatch(*(((PyHirschTemplate*)TemplateID)->Template),MaxError));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FastMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DeviationImage(PyHirschImage*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->DeviationImage(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DeviationImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SobelDir(PyHirschImage*self, PyObject *args)
{
    char* FilterType;
    long Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType,&Size)) {
            {
            // with output params
                Halcon::HImage EdgeDirection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SobelDir(&EdgeDirection,FilterType,Size)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(EdgeDirection));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SobelDir()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjectiveTransImageSize(PyHirschImage*self, PyObject *args)
{
    PyObject* Height;
    PyObject* Interpolation;
    PyObject* Width;
    PyObject* HomMat2D;
    PyObject* TransformRegion;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &HomMat2D,&Interpolation,&Width,&Height,&TransformRegion)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(TransformRegion)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImageSize(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)TransformRegion)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjectiveTransImageSize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayOpeningShape(PyHirschImage*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImage_FromHImage(self->Image->GrayOpeningShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayOpeningShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ConvertImageType(PyHirschImage*self, PyObject *args)
{
    char* NewType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &NewType)) {
            return PyHirschImage_FromHImage(self->Image->ConvertImageType(NewType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvertImageType()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindRectificationGrid(PyHirschImage*self, PyObject *args)
{
    double Radius;
    double MinContrast;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &MinContrast,&Radius)) {
            return PyHirschRegion_FromHRegion(self->Image->FindRectificationGrid(MinContrast,Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindRectificationGrid()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DetectEdgeSegments(PyHirschImage*self, PyObject *args)
{
    long MinLength;
    long MinAmplitude;
    long SobelSize;
    long MaxDistance;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &SobelSize,&MinAmplitude,&MaxDistance,&MinLength)) {
            {
            // with output params
                Halcon::HTuple BeginCol;
                Halcon::HTuple EndRow;
                Halcon::HTuple EndCol;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetectEdgeSegments(SobelSize,MinAmplitude,MaxDistance,MinLength,&BeginCol,&EndRow,&EndCol)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DetectEdgeSegments()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Rgb3ToGray(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageGreen;
    PyObject* ImageBlue;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageGreen,&ImageBlue)) {
            if (PyHirschImage_Check(ImageGreen) && PyHirschImage_Check(ImageBlue)) {
                return PyHirschImage_FromHImage(self->Image->Rgb3ToGray(*(((PyHirschImage*)ImageGreen)->Image),*(((PyHirschImage*)ImageBlue)->Image)));
            }
            if (PyHirschImageArray_Check(ImageGreen) && PyHirschImageArray_Check(ImageBlue)) {
                return PyHirschImage_FromHImage(self->Image->Rgb3ToGray(*(((PyHirschImageArray*)ImageGreen)->ImageArray),*(((PyHirschImageArray*)ImageBlue)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Rgb3ToGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalMaxSubPix(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    double Sigma;
    char* Filter;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter,&Sigma,&Threshold)) {
            {
            // with output params
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->LocalMaxSubPix(Filter,Sigma,Threshold,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LocalMaxSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImageTime(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HTuple Second;
        Halcon::HTuple Minute;
        Halcon::HTuple Hour;
        Halcon::HTuple Day;
        Halcon::HTuple YDay;
        Halcon::HTuple Month;
        Halcon::HTuple Year;
        PyObject *ret = PyTuple_New(8);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GetImageTime(&Second,&Minute,&Hour,&Day,&YDay,&Month,&Year))));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Second));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Minute));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Hour));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Day));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(YDay));
        PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Month));
        PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(Year));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EdgesColor(PyHirschImage*self, PyObject *args)
{
    long Low;
    long High;
    char* NMS;
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdsll", &Filter,&Alpha,&NMS,&Low,&High)) {
            {
            // with output params
                Halcon::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesColor(&ImaDir,Filter,Alpha,NMS,Low,High)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesColor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LabelToRegion(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->Image->LabelToRegion());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ConvolGabor(PyHirschImage*self, PyObject *args)
{
    PyObject* GaborFilter;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GaborFilter)) {
            if (PyHirschImage_Check(GaborFilter)) {
                Halcon::HImage ImageResultHilbert;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->ConvolGabor(*(((PyHirschImage*)GaborFilter)->Image),&ImageResultHilbert)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResultHilbert));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolGabor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MaxImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MaxImage(*(((PyHirschImage*)Image2)->Image)));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MaxImage(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MaxImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayErosionShape(PyHirschImage*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImage_FromHImage(self->Image->GrayErosionShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayErosionShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InvertImage(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->InvertImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Regiongrowing(PyHirschImage*self, PyObject *args)
{
    long MinSize;
    double Tolerance;
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "lldl", &Row,&Column,&Tolerance,&MinSize)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->Regiongrowing(Row,Column,Tolerance,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Regiongrowing()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DiffOfGauss(PyHirschImage*self, PyObject *args)
{
    double SigFactor;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Sigma,&SigFactor)) {
            return PyHirschImage_FromHImage(self->Image->DiffOfGauss(Sigma,SigFactor));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DiffOfGauss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayErosion(PyHirschImage*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImage_FromHImage(self->Image->GrayErosion(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayErosion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitLshift(PyHirschImage*self, PyObject *args)
{
    long Shift;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift)) {
            return PyHirschImage_FromHImage(self->Image->BitLshift(Shift));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitLshift()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayErosionRect(PyHirschImage*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImage_FromHImage(self->Image->GrayErosionRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayErosionRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Symmetry(PyHirschImage*self, PyObject *args)
{
    double Direction;
    long MaskSize;
    double Exponent;
    
    try {
        if (PyArg_ParseTuple(args, "ldd", &MaskSize,&Direction,&Exponent)) {
            return PyHirschImage_FromHImage(self->Image->Symmetry(MaskSize,Direction,Exponent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Symmetry()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenGaussPyramid(PyHirschImage*self, PyObject *args)
{
    double Scale;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode,&Scale)) {
            return PyHirschImageArray_FromHImageArray(self->Image->GenGaussPyramid(Mode,Scale));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGaussPyramid()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CreateCalibDescriptorModel(PyHirschImage*self, PyObject *args)
{
    PyObject* DescriptorParamValue;
    PyObject* DetectorParamValue;
    PyObject* DetectorType;
    PyObject* ReferencePose;
    PyObject* DescriptorParamName;
    PyObject* DetectorParamName;
    PyObject* CamParam;
    PyObject* Seed;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &CamParam,&ReferencePose,&DetectorType,&DetectorParamName,&DetectorParamValue,&DescriptorParamName,&DescriptorParamValue,&Seed)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(ReferencePose) && PyHirschTuple_Check(DetectorType) && PyHirschTuple_Check(DetectorParamName) && PyHirschTuple_Check(DetectorParamValue) && PyHirschTuple_Check(DescriptorParamName) && PyHirschTuple_Check(DescriptorParamValue) && PyHirschTuple_Check(Seed)) {
                return PyHirschTuple_FromHTuple(self->Image->CreateCalibDescriptorModel(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)ReferencePose)->Tuple),*(((PyHirschTuple*)DetectorType)->Tuple),*(((PyHirschTuple*)DetectorParamName)->Tuple),*(((PyHirschTuple*)DetectorParamValue)->Tuple),*(((PyHirschTuple*)DescriptorParamName)->Tuple),*(((PyHirschTuple*)DescriptorParamValue)->Tuple),*(((PyHirschTuple*)Seed)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CreateCalibDescriptorModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateTiltZc(PyHirschImage*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Image->EstimateTiltZc());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImage1Rect(PyHirschImage*self, PyObject *args)
{
    long BitsPerPixel;
    long Width;
    long Height;
    long ClearProc;
    char* DoCopy;
    long VerticalPitch;
    long PixelPointer;
    long HorizontalBitPitch;
    
    try {
        if (PyArg_ParseTuple(args, "llllllsl", &PixelPointer,&Width,&Height,&VerticalPitch,&HorizontalBitPitch,&BitsPerPixel,&DoCopy,&ClearProc)) {
            return PyHirschImage_FromHImage(self->Image->GenImage1Rect(PixelPointer,Width,Height,VerticalPitch,HorizontalBitPitch,BitsPerPixel,DoCopy,ClearProc));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImage1Rect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MatchEssentialMatrixRansac(PyHirschImage*self, PyObject *args)
{
    PyObject* CamMat1;
    PyObject* MaskSize;
    PyObject* ColMove;
    PyObject* RowTolerance;
    PyObject* Cols2;
    PyObject* EstimationMethod;
    PyObject* Image2;
    PyObject* GrayMatchMethod;
    PyObject* Rotation;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* ColTolerance;
    PyObject* CamMat2;
    PyObject* MatchThreshold;
    PyObject* Rows2;
    PyObject* RowMove;
    PyObject* DistanceThreshold;
    PyObject* RandSeed;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOOOOOOO", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&CamMat1,&CamMat2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CamMat1) && PyHirschTuple_Check(CamMat2) && PyHirschTuple_Check(GrayMatchMethod) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(RowMove) && PyHirschTuple_Check(ColMove) && PyHirschTuple_Check(RowTolerance) && PyHirschTuple_Check(ColTolerance) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(EstimationMethod) && PyHirschTuple_Check(DistanceThreshold) && PyHirschTuple_Check(RandSeed)) {
                Halcon::HTuple CovEMat;
                Halcon::HTuple Error;
                Halcon::HTuple Points1;
                Halcon::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->MatchEssentialMatrixRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CamMat1)->Tuple),*(((PyHirschTuple*)CamMat2)->Tuple),*(((PyHirschTuple*)GrayMatchMethod)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)RowMove)->Tuple),*(((PyHirschTuple*)ColMove)->Tuple),*(((PyHirschTuple*)RowTolerance)->Tuple),*(((PyHirschTuple*)ColTolerance)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),*(((PyHirschTuple*)EstimationMethod)->Tuple),*(((PyHirschTuple*)DistanceThreshold)->Tuple),*(((PyHirschTuple*)RandSeed)->Tuple),&CovEMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovEMat));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MatchEssentialMatrixRansac()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MultImage(PyHirschImage*self, PyObject *args)
{
    double Add;
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image2,&Mult,&Add)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MultImage(*(((PyHirschImage*)Image2)->Image),Mult,Add));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MultImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MultImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SfsPentland(PyHirschImage*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Slant,&Tilt,&Albedo,&Ambient)) {
            return PyHirschImage_FromHImage(self->Image->SfsPentland(Slant,Tilt,Albedo,Ambient));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SfsPentland()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDistanceMg(PyHirschImage*self, PyObject *args)
{
    PyObject* MGParamValue;
    PyObject* RelPoseRect;
    PyObject* GradientConstancy;
    PyObject* Smoothness;
    PyObject* CamParamRect1;
    PyObject* Image2;
    PyObject* CamParamRect2;
    PyObject* GrayConstancy;
    PyObject* MGParamName;
    PyObject* CalculateScore;
    PyObject* InitialGuess;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &Image2,&CamParamRect1,&CamParamRect2,&RelPoseRect,&GrayConstancy,&GradientConstancy,&Smoothness,&InitialGuess,&CalculateScore,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(CamParamRect1) && PyHirschTuple_Check(CamParamRect2) && PyHirschTuple_Check(RelPoseRect) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDistanceMg(*(((PyHirschImage*)Image2)->Image),&Score,*(((PyHirschTuple*)CamParamRect1)->Tuple),*(((PyHirschTuple*)CamParamRect2)->Tuple),*(((PyHirschTuple*)RelPoseRect)->Tuple),*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(CamParamRect1) && PyHirschTuple_Check(CamParamRect2) && PyHirschTuple_Check(RelPoseRect) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDistanceMg(*(((PyHirschImageArray*)Image2)->ImageArray),&Score,*(((PyHirschTuple*)CamParamRect1)->Tuple),*(((PyHirschTuple*)CamParamRect2)->Tuple),*(((PyHirschTuple*)RelPoseRect)->Tuple),*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinocularDistanceMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayOpeningRect(PyHirschImage*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImage_FromHImage(self->Image->GrayOpeningRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayOpeningRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PhaseRad(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PhaseRad());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FastThreshold(PyHirschImage*self, PyObject *args)
{
    double MaxGray;
    long MinSize;
    double MinGray;
    
    try {
        if (PyArg_ParseTuple(args, "ddl", &MinGray,&MaxGray,&MinSize)) {
            return PyHirschRegion_FromHRegion(self->Image->FastThreshold(MinGray,MaxGray,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FastThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageConst(PyHirschImage*self, PyObject *args)
{
    long Height;
    long Width;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenImageConst(Type,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageConst()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AddNoiseWhite(PyHirschImage*self, PyObject *args)
{
    double Amp;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Amp)) {
            return PyHirschImage_FromHImage(self->Image->AddNoiseWhite(Amp));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddNoiseWhite()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalMax(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->LocalMax());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EliminateMinMax(PyHirschImage*self, PyObject *args)
{
    long Mode;
    double Gap;
    long MaskWidth;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lldl", &MaskWidth,&MaskHeight,&Gap,&Mode)) {
            return PyHirschImage_FromHImage(self->Image->EliminateMinMax(MaskWidth,MaskHeight,Gap,Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EliminateMinMax()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_OpticalFlowMg(PyHirschImage*self, PyObject *args)
{
    PyObject* MGParamValue;
    PyObject* GradientConstancy;
    PyObject* Algorithm;
    PyObject* Image2;
    PyObject* SmoothingSigma;
    PyObject* MGParamName;
    PyObject* FlowSmoothness;
    PyObject* IntegrationSigma;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Image2,&Algorithm,&SmoothingSigma,&IntegrationSigma,&FlowSmoothness,&GradientConstancy,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(SmoothingSigma) && PyHirschTuple_Check(IntegrationSigma) && PyHirschTuple_Check(FlowSmoothness) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)SmoothingSigma)->Tuple),*(((PyHirschTuple*)IntegrationSigma)->Tuple),*(((PyHirschTuple*)FlowSmoothness)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple)));
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(SmoothingSigma) && PyHirschTuple_Check(IntegrationSigma) && PyHirschTuple_Check(FlowSmoothness) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)SmoothingSigma)->Tuple),*(((PyHirschTuple*)IntegrationSigma)->Tuple),*(((PyHirschTuple*)FlowSmoothness)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.OpticalFlowMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RotateImage(PyHirschImage*self, PyObject *args)
{
    double Phi;
    char* Interpolation;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Phi,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->RotateImage(Phi,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RotateImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldToHomMat2d(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschTuple_FromHTuple(self->Image->VectorFieldToHomMat2d());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CorrelationFft(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageFFT2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageFFT2)) {
            if (PyHirschImage_Check(ImageFFT2)) {
                return PyHirschImage_FromHImage(self->Image->CorrelationFft(*(((PyHirschImage*)ImageFFT2)->Image)));
            }
            if (PyHirschImageArray_Check(ImageFFT2)) {
                return PyHirschImage_FromHImage(self->Image->CorrelationFft(*(((PyHirschImageArray*)ImageFFT2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CorrelationFft()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_VarThreshold(PyHirschImage*self, PyObject *args)
{
    double AbsThreshold;
    long MaskWidth;
    double StdDevScale;
    long MaskHeight;
    char* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskWidth,&MaskHeight,&StdDevScale,&AbsThreshold,&LightDark)) {
            return PyHirschRegion_FromHRegion(self->Image->VarThreshold(MaskWidth,MaskHeight,StdDevScale,AbsThreshold,LightDark));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.VarThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LinesColor(PyHirschImage*self, PyObject *args)
{
    double High;
    double Sigma;
    char* ExtractWidth;
    char* CompleteJunctions;
    double Low;
    
    try {
        if (PyArg_ParseTuple(args, "dddss", &Sigma,&Low,&High,&ExtractWidth,&CompleteJunctions)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesColor(Sigma,Low,High,ExtractWidth,CompleteJunctions));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinesColor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenGabor(PyHirschImage*self, PyObject *args)
{
    double Orientation;
    long Width;
    char* Norm;
    double Bandwidth;
    long Height;
    double Frequency;
    double Angle;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddddssll", &Angle,&Frequency,&Bandwidth,&Orientation,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenGabor(Angle,Frequency,Bandwidth,Orientation,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGabor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ChangeRadialDistortionImage(PyHirschImage*self, PyObject *args)
{
    PyObject* CamParamOut;
    PyObject* Region;
    PyObject* CamParamIn;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Region,&CamParamIn,&CamParamOut)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(CamParamIn) && PyHirschTuple_Check(CamParamOut)) {
                return PyHirschImage_FromHImage(self->Image->ChangeRadialDistortionImage(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)CamParamIn)->Tuple),*(((PyHirschTuple*)CamParamOut)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ChangeRadialDistortionImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenSinBandpass(PyHirschImage*self, PyObject *args)
{
    char* Norm;
    long Height;
    double Frequency;
    long Width;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dssll", &Frequency,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenSinBandpass(Frequency,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenSinBandpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_NumImageRefs(PyHirschImage*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->Image->NumImageRefs()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CropRectangle1(PyHirschImage*self, PyObject *args)
{
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschImage_FromHImage(self->Image->CropRectangle1(Row1,Column1,Row2,Column2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CropRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ChangeDomain(PyHirschImage*self, PyObject *args)
{
    PyObject* NewDomain;
    
    try {
        if (PyArg_ParseTuple(args, "O", &NewDomain)) {
            if (PyHirschRegion_Check(NewDomain)) {
                return PyHirschImage_FromHImage(self->Image->ChangeDomain(*(((PyHirschRegion*)NewDomain)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ChangeDomain()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InpaintingCt(PyHirschImage*self, PyObject *args)
{
    double Kappa;
    double Epsilon;
    PyObject* Region;
    double Rho;
    double ChannelCoefficients;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "Oddddd", &Region,&Epsilon,&Kappa,&Sigma,&Rho,&ChannelCoefficients)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCt(*(((PyHirschRegion*)Region)->Region),Epsilon,Kappa,Sigma,Rho,ChannelCoefficients));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingCt()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_OverpaintRegion(PyHirschImage*self, PyObject *args)
{
    PyObject* Region;
    char* Type;
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Region,&Grayval,&Type)) {
            if (PyHirschRegion_Check(Region)) {
                self->Image->OverpaintRegion(*(((PyHirschRegion*)Region)->Region),Grayval,Type);
                Py_INCREF(Py_None);
                return Py_None;
            }
            if (PyHirschRegionArray_Check(Region)) {
                self->Image->OverpaintRegion(*(((PyHirschRegionArray*)Region)->RegionArray),Grayval,Type);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.OverpaintRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ConvolFft(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageFilter;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageFilter)) {
            if (PyHirschImage_Check(ImageFilter)) {
                return PyHirschImage_FromHImage(self->Image->ConvolFft(*(((PyHirschImage*)ImageFilter)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolFft()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ImageToChannels(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->Image->ImageToChannels());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImage3(PyHirschImage*self, PyObject *args)
{
    long PixelPointerGreen;
    char* Type;
    long Width;
    long Height;
    long PixelPointerRed;
    long PixelPointerBlue;
    
    try {
        if (PyArg_ParseTuple(args, "slllll", &Type,&Width,&Height,&PixelPointerRed,&PixelPointerGreen,&PixelPointerBlue)) {
            return PyHirschImage_FromHImage(self->Image->GenImage3(Type,Width,Height,PixelPointerRed,PixelPointerGreen,PixelPointerBlue));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImage3()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MedianWeighted(PyHirschImage*self, PyObject *args)
{
    char* MaskType;
    long MaskSize;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &MaskType,&MaskSize)) {
            return PyHirschImage_FromHImage(self->Image->MedianWeighted(MaskType,MaskSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianWeighted()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImage3Extern(PyHirschImage*self, PyObject *args)
{
    long PointerRed;
    char* Type;
    long Width;
    long Height;
    long ClearProc;
    long PointerGreen;
    long PointerBlue;
    
    try {
        if (PyArg_ParseTuple(args, "sllllll", &Type,&Width,&Height,&PointerRed,&PointerGreen,&PointerBlue,&ClearProc)) {
            return PyHirschImage_FromHImage(self->Image->GenImage3Extern(Type,Width,Height,PointerRed,PointerGreen,PointerBlue,ClearProc));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImage3Extern()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EdgesSubPix(PyHirschImage*self, PyObject *args)
{
    long Low;
    long High;
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdll", &Filter,&Alpha,&Low,&High)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->EdgesSubPix(Filter,Alpha,Low,High));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer1(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HTuple Type;
        Halcon::HTuple Width;
        Halcon::HTuple Height;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GetImagePointer1(&Type,&Width,&Height))));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Type));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Width));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Height));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Monotony(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->Monotony());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RegiongrowingMean(PyHirschImage*self, PyObject *args)
{
    long StartColumns;
    long MinSize;
    long StartRows;
    double Tolerance;
    
    try {
        if (PyArg_ParseTuple(args, "lldl", &StartRows,&StartColumns,&Tolerance,&MinSize)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->RegiongrowingMean(StartRows,StartColumns,Tolerance,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RegiongrowingMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenInitialComponents(PyHirschImage*self, PyObject *args)
{
    long ContrastLow;
    double GenericValue;
    long MinSize;
    long ContrastHigh;
    char* Mode;
    char* GenericName;
    
    try {
        if (PyArg_ParseTuple(args, "lllssd", &ContrastLow,&ContrastHigh,&MinSize,&Mode,&GenericName,&GenericValue)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->GenInitialComponents(ContrastLow,ContrastHigh,MinSize,Mode,GenericName,GenericValue));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenInitialComponents()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SfsOrigLr(PyHirschImage*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Slant,&Tilt,&Albedo,&Ambient)) {
            return PyHirschImage_FromHImage(self->Image->SfsOrigLr(Slant,Tilt,Albedo,Ambient));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SfsOrigLr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ExhaustiveMatchMg(PyHirschImage*self, PyObject *args)
{
    long Level;
    long Threshold;
    char* Mode;
    PyObject* ImageTemplate;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &ImageTemplate,&Mode,&Level,&Threshold)) {
            if (PyHirschImage_Check(ImageTemplate)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate)->Image),Mode,Level,Threshold));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExhaustiveMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AccessChannel(PyHirschImage*self, PyObject *args)
{
    long Channel;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Channel)) {
            return PyHirschImage_FromHImage(self->Image->AccessChannel(Channel));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AccessChannel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateSlAlZc(PyHirschImage*self, PyObject *args)
{
    try {
        double Albedo;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EstimateSlAlZc(&Albedo)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Albedo));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageSurfaceSecondOrder(PyHirschImage*self, PyObject *args)
{
    double Zeta;
    double Row;
    char* Type;
    long Width;
    double Beta;
    double Epsilon;
    long Height;
    double Delta;
    double Col;
    double Gamma;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sddddddddll", &Type,&Alpha,&Beta,&Gamma,&Delta,&Epsilon,&Zeta,&Row,&Col,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenImageSurfaceSecondOrder(Type,Alpha,Beta,Gamma,Delta,Epsilon,Zeta,Row,Col,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageSurfaceSecondOrder()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_HoughLineTransDir(PyHirschImage*self, PyObject *args)
{
    long DirectionUncertainty;
    long AngleResolution;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &DirectionUncertainty,&AngleResolution)) {
            return PyHirschImage_FromHImage(self->Image->HoughLineTransDir(DirectionUncertainty,AngleResolution));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HoughLineTransDir()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Creator(PyHirschImage*self, PyObject *args)
{
    try {
        return PyString_FromString(self->Image->Creator());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MedianImage(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskType;
    PyObject* Radius;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskType,&Radius,&Margin)) {
            if (PyHirschTuple_Check(MaskType) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->MedianImage(*(((PyHirschTuple*)MaskType)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InpaintingMcf(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    PyObject* Region;
    long Iterations;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "Oddl", &Region,&Sigma,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingMcf(*(((PyHirschRegion*)Region)->Region),Sigma,Theta,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingMcf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Emphasize(PyHirschImage*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    double Factor;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth,&MaskHeight,&Factor)) {
            return PyHirschImage_FromHImage(self->Image->Emphasize(MaskWidth,MaskHeight,Factor));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Emphasize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LinearTransColor(PyHirschImage*self, PyObject *args)
{
    PyObject* TransMat;
    
    try {
        if (PyArg_ParseTuple(args, "O", &TransMat)) {
            if (PyHirschTuple_Check(TransMat)) {
                return PyHirschImage_FromHImage(self->Image->LinearTransColor(*(((PyHirschTuple*)TransMat)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinearTransColor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InpaintingCed(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    PyObject* Region;
    long Iterations;
    double Rho;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "Odddl", &Region,&Sigma,&Rho,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCed(*(((PyHirschRegion*)Region)->Region),Sigma,Rho,Theta,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingCed()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_UnwarpImageVectorField(PyHirschImage*self, PyObject *args)
{
    PyObject* VectorField;
    
    try {
        if (PyArg_ParseTuple(args, "O", &VectorField)) {
            if (PyHirschImage_Check(VectorField)) {
                return PyHirschImage_FromHImage(self->Image->UnwarpImageVectorField(*(((PyHirschImage*)VectorField)->Image)));
            }
            if (PyHirschImageArray_Check(VectorField)) {
                return PyHirschImage_FromHImage(self->Image->UnwarpImageVectorField(*(((PyHirschImageArray*)VectorField)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.UnwarpImageVectorField()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PolarTransImage(PyHirschImage*self, PyObject *args)
{
    long Row;
    long Height;
    long Width;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row,&Column,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImage(Row,Column,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenGaussFilter(PyHirschImage*self, PyObject *args)
{
    double Sigma1;
    long Width;
    char* Norm;
    long Height;
    char* Mode;
    double Phi;
    double Sigma2;
    
    try {
        if (PyArg_ParseTuple(args, "dddssll", &Sigma1,&Sigma2,&Phi,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenGaussFilter(Sigma1,Sigma2,Phi,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGaussFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LaplaceOfGauss(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma)) {
            return PyHirschImage_FromHImage(self->Image->LaplaceOfGauss(Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LaplaceOfGauss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MedianSeparate(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskWidth;
    PyObject* Margin;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskWidth,&MaskHeight,&Margin)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->MedianSeparate(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianSeparate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer1Rect(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HTuple Width;
        Halcon::HTuple Height;
        Halcon::HTuple VerticalPitch;
        Halcon::HTuple HorizontalBitPitch;
        Halcon::HTuple BitsPerPixel;
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GetImagePointer1Rect(&Width,&Height,&VerticalPitch,&HorizontalBitPitch,&BitsPerPixel))));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Width));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Height));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(VerticalPitch));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(HorizontalBitPitch));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(BitsPerPixel));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitNot(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->BitNot());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetPixVal(PyHirschImage*self, PyObject *args)
{
    int y;
    int x;
    long k;
    
    try {
        if (PyArg_ParseTuple(args, "ii", &x,&y)) {
            return PyHirschPixVal_FromHPixVal(self->Image->GetPixVal(x,y));
        }
        if (PyArg_ParseTuple(args, "l", &k)) {
            return PyHirschPixVal_FromHPixVal(self->Image->GetPixVal(k));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetPixVal()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FftGeneric(PyHirschImage*self, PyObject *args)
{
    char* Direction;
    long Exponent;
    char* ResultType;
    char* Mode;
    char* Norm;
    
    try {
        if (PyArg_ParseTuple(args, "slsss", &Direction,&Exponent,&Norm,&Mode,&ResultType)) {
            return PyHirschImage_FromHImage(self->Image->FftGeneric(Direction,Exponent,Norm,Mode,ResultType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FftGeneric()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDistance(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskWidth;
    PyObject* RelPoseRect;
    PyObject* NumLevels;
    PyObject* MinDisparity;
    PyObject* TextureThresh;
    PyObject* ScoreThresh;
    PyObject* CamParamRect1;
    PyObject* Image2;
    PyObject* Filter;
    PyObject* CamParamRect2;
    PyObject* MaxDisparity;
    PyObject* Method;
    PyObject* SubDistance;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOOO", &Image2,&CamParamRect1,&CamParamRect2,&RelPoseRect,&Method,&MaskWidth,&MaskHeight,&TextureThresh,&MinDisparity,&MaxDisparity,&NumLevels,&ScoreThresh,&Filter,&SubDistance)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(CamParamRect1) && PyHirschTuple_Check(CamParamRect2) && PyHirschTuple_Check(RelPoseRect) && PyHirschTuple_Check(Method) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(TextureThresh) && PyHirschTuple_Check(MinDisparity) && PyHirschTuple_Check(MaxDisparity) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(ScoreThresh) && PyHirschTuple_Check(Filter) && PyHirschTuple_Check(SubDistance)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDistance(*(((PyHirschImage*)Image2)->Image),&Score,*(((PyHirschTuple*)CamParamRect1)->Tuple),*(((PyHirschTuple*)CamParamRect2)->Tuple),*(((PyHirschTuple*)RelPoseRect)->Tuple),*(((PyHirschTuple*)Method)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)TextureThresh)->Tuple),*(((PyHirschTuple*)MinDisparity)->Tuple),*(((PyHirschTuple*)MaxDisparity)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)ScoreThresh)->Tuple),*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)SubDistance)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinocularDistance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DualThreshold(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    long MinSize;
    double MinGray;
    
    try {
        if (PyArg_ParseTuple(args, "ldd", &MinSize,&MinGray,&Threshold)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->DualThreshold(MinSize,MinGray,Threshold));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DualThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageToWorldPlaneMap(PyHirschImage*self, PyObject *args)
{
    PyObject* HeightMapped;
    PyObject* Interpolation;
    PyObject* Scale;
    PyObject* WidthIn;
    PyObject* HeightIn;
    PyObject* WorldPose;
    PyObject* WidthMapped;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &CamParam,&WorldPose,&WidthIn,&HeightIn,&WidthMapped,&HeightMapped,&Scale,&Interpolation)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(WorldPose) && PyHirschTuple_Check(WidthIn) && PyHirschTuple_Check(HeightIn) && PyHirschTuple_Check(WidthMapped) && PyHirschTuple_Check(HeightMapped) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->GenImageToWorldPlaneMap(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)WorldPose)->Tuple),*(((PyHirschTuple*)WidthIn)->Tuple),*(((PyHirschTuple*)HeightIn)->Tuple),*(((PyHirschTuple*)WidthMapped)->Tuple),*(((PyHirschTuple*)HeightMapped)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageToWorldPlaneMap()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CoherenceEnhancingDiff(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    long Iterations;
    double Rho;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "dddl", &Sigma,&Rho,&Theta,&Iterations)) {
            return PyHirschImage_FromHImage(self->Image->CoherenceEnhancingDiff(Sigma,Rho,Theta,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CoherenceEnhancingDiff()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindDataCode2d(PyHirschImage*self, PyObject *args)
{
    char* GenParamNames;
    long GenParamValues;
    PyObject* DataCodeHandle;
    
    try {
        if (PyArg_ParseTuple(args, "Osl", &DataCodeHandle,&GenParamNames,&GenParamValues)) {
            if (PyHirschDataCode2D_Check(DataCodeHandle)) {
                Halcon::HTuple ResultHandles;
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->Image->FindDataCode2d(*(((PyHirschDataCode2D*)DataCodeHandle)->DataCode2D),GenParamNames,GenParamValues,&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindDataCode2d()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SimulateDefocus(PyHirschImage*self, PyObject *args)
{
    double Blurring;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Blurring)) {
            return PyHirschImage_FromHImage(self->Image->SimulateDefocus(Blurring));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SimulateDefocus()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayBothat(PyHirschImage*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImage_FromHImage(self->Image->GrayBothat(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayBothat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_OverpaintGray(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageSource;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageSource)) {
            if (PyHirschImage_Check(ImageSource)) {
                self->Image->OverpaintGray(*(((PyHirschImage*)ImageSource)->Image));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.OverpaintGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ImageToWorldPlane(PyHirschImage*self, PyObject *args)
{
    PyObject* Scale;
    PyObject* Interpolation;
    PyObject* Height;
    PyObject* WorldPose;
    PyObject* Width;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &CamParam,&WorldPose,&Width,&Height,&Scale,&Interpolation)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(WorldPose) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->ImageToWorldPlane(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)WorldPose)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ImageToWorldPlane()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CfaToRgb(PyHirschImage*self, PyObject *args)
{
    char* CFAType;
    char* Interpolation;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &CFAType,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->CfaToRgb(CFAType,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CfaToRgb()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenLowpass(PyHirschImage*self, PyObject *args)
{
    char* Norm;
    long Height;
    double Frequency;
    long Width;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dssll", &Frequency,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenLowpass(Frequency,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenLowpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_TrimmedMean(PyHirschImage*self, PyObject *args)
{
    PyObject* Number;
    PyObject* Mask;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Mask,&Number,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Number) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->TrimmedMean(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Number)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TrimmedMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BandpassImage(PyHirschImage*self, PyObject *args)
{
    char* FilterType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType)) {
            return PyHirschImage_FromHImage(self->Image->BandpassImage(FilterType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BandpassImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Width(PyHirschImage*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->Image->Width()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_TileChannels(PyHirschImage*self, PyObject *args)
{
    char* TileOrder;
    long NumColumns;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns,&TileOrder)) {
            return PyHirschImage_FromHImage(self->Image->TileChannels(NumColumns,TileOrder));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TileChannels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ClassDBID(PyHirschImage*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->Image->ClassDBID()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinomialFilter(PyHirschImage*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth,&MaskHeight)) {
            return PyHirschImage_FromHImage(self->Image->BinomialFilter(MaskWidth,MaskHeight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinomialFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_HighpassImage(PyHirschImage*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->HighpassImage(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HighpassImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PrincipalComp(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HTuple InfoPerComp;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->PrincipalComp(&InfoPerComp)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(InfoPerComp));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetGrayvalInterpolated(PyHirschImage*self, PyObject *args)
{
    double Column;
    char* Interpolation;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &Row,&Column,&Interpolation)) {
            return PyHirschTuple_FromHTuple(self->Image->GetGrayvalInterpolated(Row,Column,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetGrayvalInterpolated()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PlateausCenter(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->Image->PlateausCenter());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_NumData(PyHirschImage*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->Image->NumData()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ConnectGridPoints(PyHirschImage*self, PyObject *args)
{
    PyObject* Sigma;
    PyObject* Row;
    PyObject* Col;
    PyObject* MaxDist;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Col,&Sigma,&MaxDist)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(MaxDist)) {
                return PyHirschXLDArray_FromHXLDArray(self->Image->ConnectGridPoints(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)MaxDist)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConnectGridPoints()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PrewittAmp(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PrewittAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AbsImage(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->AbsImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DepthFromFocus(PyHirschImage*self, PyObject *args)
{
    PyObject* Selection;
    PyObject* Filter;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Filter,&Selection)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Selection)) {
                Halcon::HImage Confidence;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->DepthFromFocus(&Confidence,*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Selection)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Confidence));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DepthFromFocus()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PhotStereo(PyHirschImage*self, PyObject *args)
{
    PyObject* Slants;
    PyObject* Tilts;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Slants,&Tilts)) {
            if (PyHirschTuple_Check(Slants) && PyHirschTuple_Check(Tilts)) {
                return PyHirschImage_FromHImage(self->Image->PhotStereo(*(((PyHirschTuple*)Slants)->Tuple),*(((PyHirschTuple*)Tilts)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PhotStereo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ComplexToReal(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage ImageImaginary;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->ComplexToReal(&ImageImaginary)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageImaginary));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DetermineDeformableModelParams(PyHirschImage*self, PyObject *args)
{
    PyObject* MinContrast;
    PyObject* ScaleMin;
    PyObject* ParamValue;
    PyObject* NumLevels;
    PyObject* AngleExtent;
    PyObject* ParamName;
    PyObject* Contrast;
    PyObject* Metric;
    PyObject* AngleStart;
    PyObject* ScaleMax;
    PyObject* Parameters;
    PyObject* Optimization;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOO", &NumLevels,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&Optimization,&Metric,&Contrast,&MinContrast,&ParamName,&ParamValue,&Parameters)) {
            if (PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtent) && PyHirschTuple_Check(ScaleMin) && PyHirschTuple_Check(ScaleMax) && PyHirschTuple_Check(Optimization) && PyHirschTuple_Check(Metric) && PyHirschTuple_Check(Contrast) && PyHirschTuple_Check(MinContrast) && PyHirschTuple_Check(ParamName) && PyHirschTuple_Check(ParamValue) && PyHirschTuple_Check(Parameters)) {
                Halcon::HTuple ParameterValue;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetermineDeformableModelParams(*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)ScaleMin)->Tuple),*(((PyHirschTuple*)ScaleMax)->Tuple),*(((PyHirschTuple*)Optimization)->Tuple),*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)MinContrast)->Tuple),*(((PyHirschTuple*)ParamName)->Tuple),*(((PyHirschTuple*)ParamValue)->Tuple),*(((PyHirschTuple*)Parameters)->Tuple),&ParameterValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ParameterValue));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DetermineDeformableModelParams()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Find1dBarCodeScanline(PyHirschImage*self, PyObject *args)
{
    PyObject* StopIfFound;
    PyObject* GenericValue;
    PyObject* GenericName;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &BarCodeDescr,&GenericName,&GenericValue,&StopIfFound)) {
            if (PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(GenericName) && PyHirschTuple_Check(GenericValue) && PyHirschTuple_Check(StopIfFound)) {
                Halcon::HTuple BarcodeFound;
                Halcon::HTuple BarCodeElements;
                Halcon::HTuple Orientation;
                Halcon::HTuple ScanlineNumPoints;
                Halcon::HTuple ScanlineDecoded;
                Halcon::HTuple ScanlinePointsRow;
                Halcon::HTuple ScanlinePointsColumn;
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->Find1dBarCodeScanline(*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple),*(((PyHirschTuple*)StopIfFound)->Tuple),&BarcodeFound,&BarCodeElements,&Orientation,&ScanlineNumPoints,&ScanlineDecoded,&ScanlinePointsRow,&ScanlinePointsColumn)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BarcodeFound));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(BarCodeElements));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Orientation));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(ScanlineNumPoints));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(ScanlineDecoded));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(ScanlinePointsRow));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(ScanlinePointsColumn));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Find1dBarCodeScanline()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SmoothImage(PyHirschImage*self, PyObject *args)
{
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Filter,&Alpha)) {
            return PyHirschImage_FromHImage(self->Image->SmoothImage(Filter,Alpha));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SmoothImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FreiAmp(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FreiAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Class2dimUnsup(PyHirschImage*self, PyObject *args)
{
    long Threshold;
    PyObject* Image2;
    long NumClasses;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image2,&Threshold,&NumClasses)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->Class2dimUnsup(*(((PyHirschImage*)Image2)->Image),Threshold,NumClasses));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Class2dimUnsup()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_IsotropicDiffusion(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "dl", &Sigma,&Iterations)) {
            return PyHirschImage_FromHImage(self->Image->IsotropicDiffusion(Sigma,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.IsotropicDiffusion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Rectangle1Domain(PyHirschImage*self, PyObject *args)
{
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschImage_FromHImage(self->Image->Rectangle1Domain(Row1,Column1,Row2,Column2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Rectangle1Domain()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_TileImagesOffset(PyHirschImage*self, PyObject *args)
{
    long Col1;
    long Row1;
    long Width;
    long Col2;
    long OffsetRow;
    long OffsetCol;
    long Height;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llllllll", &OffsetRow,&OffsetCol,&Row1,&Col1,&Row2,&Col2,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->TileImagesOffset(OffsetRow,OffsetCol,Row1,Col1,Row2,Col2,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TileImagesOffset()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RobinsonAmp(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->RobinsonAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalMin(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->LocalMin());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Find1dBarCodeRegion(PyHirschImage*self, PyObject *args)
{
    PyObject* GenericValue;
    PyObject* GenericName;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &BarCodeDescr,&GenericName,&GenericValue)) {
            if (PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(GenericName) && PyHirschTuple_Check(GenericValue)) {
                Halcon::HTuple Orientation;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Image->Find1dBarCodeRegion(*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple),&Orientation)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Orientation));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Find1dBarCodeRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SqrtImage(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->SqrtImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBinocularProjRectification(PyHirschImage*self, PyObject *args)
{
    PyObject* SubSampling;
    PyObject* CovFMat;
    PyObject* Mapping;
    PyObject* Width2;
    PyObject* Height2;
    PyObject* Height1;
    PyObject* FMatrix;
    PyObject* Width1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &FMatrix,&CovFMat,&Width1,&Height1,&Width2,&Height2,&SubSampling,&Mapping)) {
            if (PyHirschTuple_Check(FMatrix) && PyHirschTuple_Check(CovFMat) && PyHirschTuple_Check(Width1) && PyHirschTuple_Check(Height1) && PyHirschTuple_Check(Width2) && PyHirschTuple_Check(Height2) && PyHirschTuple_Check(SubSampling) && PyHirschTuple_Check(Mapping)) {
                Halcon::HImage Map2;
                Halcon::HTuple CovFMatRect;
                Halcon::HTuple H1;
                Halcon::HTuple H2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBinocularProjRectification(&Map2,*(((PyHirschTuple*)FMatrix)->Tuple),*(((PyHirschTuple*)CovFMat)->Tuple),*(((PyHirschTuple*)Width1)->Tuple),*(((PyHirschTuple*)Height1)->Tuple),*(((PyHirschTuple*)Width2)->Tuple),*(((PyHirschTuple*)Height2)->Tuple),*(((PyHirschTuple*)SubSampling)->Tuple),*(((PyHirschTuple*)Mapping)->Tuple),&CovFMatRect,&H1,&H2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CovFMatRect));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(H1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(H2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBinocularProjRectification()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsHarris(PyHirschImage*self, PyObject *args)
{
    double SigmaGrad;
    double Threshold;
    double SigmaSmooth;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &SigmaGrad,&SigmaSmooth,&Alpha,&Threshold)) {
            {
            // with output params
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsHarris(SigmaGrad,SigmaSmooth,Alpha,Threshold,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsHarris()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CountChannels(PyHirschImage*self, PyObject *args)
{
    try {
        return PyInt_FromLong(long(self->Image->CountChannels()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageSurfaceFirstOrder(PyHirschImage*self, PyObject *args)
{
    double Row;
    char* Type;
    long Width;
    double Beta;
    long Height;
    double Alpha;
    double Gamma;
    double Col;
    
    try {
        if (PyArg_ParseTuple(args, "sdddddll", &Type,&Alpha,&Beta,&Gamma,&Row,&Col,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenImageSurfaceFirstOrder(Type,Alpha,Beta,Gamma,Row,Col,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageSurfaceFirstOrder()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_WienerFilterNi(PyHirschImage*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    PyObject* NoiseRegion;
    PyObject* Psf;
    
    try {
        if (PyArg_ParseTuple(args, "OOll", &Psf,&NoiseRegion,&MaskWidth,&MaskHeight)) {
            if (PyHirschImage_Check(Psf) && PyHirschRegion_Check(NoiseRegion)) {
                return PyHirschImage_FromHImage(self->Image->WienerFilterNi(*(((PyHirschImage*)Psf)->Image),*(((PyHirschRegion*)NoiseRegion)->Region),MaskWidth,MaskHeight));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WienerFilterNi()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Plateaus(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->Image->Plateaus());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindScaledShapeModels(PyHirschImage*self, PyObject *args)
{
    double MinScore;
    double MaxOverlap;
    double ScaleMax;
    double ScaleMin;
    char* SubPixel;
    double Greediness;
    double AngleStart;
    long NumMatches;
    double AngleExtent;
    long NumLevels;
    long ModelIDs;
    
    try {
        if (PyArg_ParseTuple(args, "ldddddldsld", &ModelIDs,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&MinScore,&NumMatches,&MaxOverlap,&SubPixel,&NumLevels,&Greediness)) {
            {
            // with output params
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Scale;
                Halcon::HTuple Score;
                Halcon::HTuple Model;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindScaledShapeModels(ModelIDs,AngleStart,AngleExtent,ScaleMin,ScaleMax,MinScore,NumMatches,MaxOverlap,SubPixel,NumLevels,Greediness,&Column,&Angle,&Scale,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Scale));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindScaledShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenPsfMotion(PyHirschImage*self, PyObject *args)
{
    long PSFwidth;
    long PSFheight;
    double Blurring;
    long Type;
    long Angle;
    
    try {
        if (PyArg_ParseTuple(args, "lldll", &PSFwidth,&PSFheight,&Blurring,&Angle,&Type)) {
            return PyHirschImage_FromHImage(self->Image->GenPsfMotion(PSFwidth,PSFheight,Blurring,Angle,Type));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenPsfMotion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SetGrayval(PyHirschImage*self, PyObject *args)
{
    double Grayval;
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &Row,&Column,&Grayval)) {
            self->Image->SetGrayval(Row,Column,Grayval);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SetGrayval()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ReduceDomain(PyHirschImage*self, PyObject *args)
{
    PyObject* Region;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->ReduceDomain(*(((PyHirschRegion*)Region)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReduceDomain()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Get1dBarCodeScanline(PyHirschImage*self, PyObject *args)
{
    PyObject* Orientation;
    PyObject* StopIfFound;
    PyObject* GenericValue;
    PyObject* GenericName;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &BarCodeDescr,&GenericName,&GenericValue,&Orientation,&StopIfFound)) {
            if (PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(GenericName) && PyHirschTuple_Check(GenericValue) && PyHirschTuple_Check(Orientation) && PyHirschTuple_Check(StopIfFound)) {
                Halcon::HTuple ScanlineNumPoints;
                Halcon::HTuple ScanlineDecoded;
                Halcon::HTuple ScanlinePointsRow;
                Halcon::HTuple ScanlinePointsColumn;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->Get1dBarCodeScanline(*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple),*(((PyHirschTuple*)Orientation)->Tuple),*(((PyHirschTuple*)StopIfFound)->Tuple),&ScanlineNumPoints,&ScanlineDecoded,&ScanlinePointsRow,&ScanlinePointsColumn)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ScanlineNumPoints));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(ScanlineDecoded));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ScanlinePointsRow));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(ScanlinePointsColumn));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Get1dBarCodeScanline()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayDilationShape(PyHirschImage*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImage_FromHImage(self->Image->GrayDilationShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayDilationShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MeanSp(PyHirschImage*self, PyObject *args)
{
    long MinThresh;
    long MaskWidth;
    long MaskHeight;
    long MaxThresh;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            return PyHirschImage_FromHImage(self->Image->MeanSp(MaskWidth,MaskHeight,MinThresh,MaxThresh));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanSp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_WriteOcrTrainfImage(PyHirschImage*self, PyObject *args)
{
    char* Class;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Class,&FileName)) {
            self->Image->WriteOcrTrainfImage(Class,FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WriteOcrTrainfImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayTophat(PyHirschImage*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImage_FromHImage(self->Image->GrayTophat(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayTophat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GaussImage(PyHirschImage*self, PyObject *args)
{
    long Size;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Size)) {
            return PyHirschImage_FromHImage(self->Image->GaussImage(Size));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GaussImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBandfilter(PyHirschImage*self, PyObject *args)
{
    double MinFrequency;
    long Width;
    char* Norm;
    long Height;
    double MaxFrequency;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency,&MaxFrequency,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenBandfilter(MinFrequency,MaxFrequency,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBandfilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AppendChannel(PyHirschImage*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->Image->AppendChannel(*(((PyHirschImage*)Image)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AppendChannel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindAnisoShapeModels(PyHirschImage*self, PyObject *args)
{
    char* SubPixel;
    double MinScore;
    double MaxOverlap;
    double ScaleRMax;
    double ScaleCMax;
    double ScaleRMin;
    double Greediness;
    double AngleStart;
    long NumMatches;
    double ScaleCMin;
    long NumLevels;
    double AngleExtent;
    long ModelIDs;
    
    try {
        if (PyArg_ParseTuple(args, "ldddddddldsld", &ModelIDs,&AngleStart,&AngleExtent,&ScaleRMin,&ScaleRMax,&ScaleCMin,&ScaleCMax,&MinScore,&NumMatches,&MaxOverlap,&SubPixel,&NumLevels,&Greediness)) {
            {
            // with output params
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple ScaleR;
                Halcon::HTuple ScaleC;
                Halcon::HTuple Score;
                Halcon::HTuple Model;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindAnisoShapeModels(ModelIDs,AngleStart,AngleExtent,ScaleRMin,ScaleRMax,ScaleCMin,ScaleCMax,MinScore,NumMatches,MaxOverlap,SubPixel,NumLevels,Greediness,&Column,&Angle,&ScaleR,&ScaleC,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ScaleR));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(ScaleC));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindAnisoShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenPsfDefocus(PyHirschImage*self, PyObject *args)
{
    long PSFwidth;
    long PSFheight;
    double Blurring;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &PSFwidth,&PSFheight,&Blurring)) {
            return PyHirschImage_FromHImage(self->Image->GenPsfDefocus(PSFwidth,PSFheight,Blurring));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenPsfDefocus()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ZoomImageFactor(PyHirschImage*self, PyObject *args)
{
    double ScaleWidth;
    double ScaleHeight;
    char* Interpolation;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &ScaleWidth,&ScaleHeight,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageFactor(ScaleWidth,ScaleHeight,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ZoomImageFactor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ExhaustiveMatch(PyHirschImage*self, PyObject *args)
{
    PyObject* RegionOfInterest;
    char* Mode;
    PyObject* ImageTemplate;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &RegionOfInterest,&ImageTemplate,&Mode)) {
            if (PyHirschRegion_Check(RegionOfInterest) && PyHirschImage_Check(ImageTemplate)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatch(*(((PyHirschRegion*)RegionOfInterest)->Region),*(((PyHirschImage*)ImageTemplate)->Image),Mode));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExhaustiveMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_WriteImage(PyHirschImage*self, PyObject *args)
{
    long FillColor;
    char* Format;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &Format,&FillColor,&FileName)) {
            self->Image->WriteImage(Format,FillColor,FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WriteImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ZeroCrossing(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->ZeroCrossing());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayClosingRect(PyHirschImage*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImage_FromHImage(self->Image->GrayClosingRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosingRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AffineTransImageSize(PyHirschImage*self, PyObject *args)
{
    PyObject* Height;
    PyObject* Interpolation;
    PyObject* Width;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &HomMat2D,&Interpolation,&Width,&Height)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImageSize(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AffineTransImageSize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenDiscSe(PyHirschImage*self, PyObject *args)
{
    long Height;
    long Width;
    char* Type;
    double Smax;
    
    try {
        if (PyArg_ParseTuple(args, "slld", &Type,&Width,&Height,&Smax)) {
            return PyHirschImage_FromHImage(self->Image->GenDiscSe(Type,Width,Height,Smax));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenDiscSe()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Find2dBarCode(PyHirschImage*self, PyObject *args)
{
    PyObject* GenParamNames;
    PyObject* GenParamValues;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &BarCodeDescr,&GenParamNames,&GenParamValues)) {
            if (PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                Halcon::HTuple CodeRegDescr;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Image->Find2dBarCode(*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple),&CodeRegDescr)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CodeRegDescr));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Find2dBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LinesFacet(PyHirschImage*self, PyObject *args)
{
    double High;
    char* LightDark;
    long MaskSize;
    double Low;
    
    try {
        if (PyArg_ParseTuple(args, "ldds", &MaskSize,&Low,&High,&LightDark)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesFacet(MaskSize,Low,High,LightDark));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinesFacet()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Find1dBarCode(PyHirschImage*self, PyObject *args)
{
    PyObject* GenericValue;
    PyObject* GenericName;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &BarCodeDescr,&GenericName,&GenericValue)) {
            if (PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(GenericName) && PyHirschTuple_Check(GenericValue)) {
                Halcon::HTuple BarcodeFound;
                Halcon::HTuple BarCodeElements;
                Halcon::HTuple Orientation;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->Find1dBarCode(*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple),&BarcodeFound,&BarCodeElements,&Orientation)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BarcodeFound));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(BarCodeElements));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Orientation));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Find1dBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FreiDir(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->FreiDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayDilationRect(PyHirschImage*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImage_FromHImage(self->Image->GrayDilationRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayDilationRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PixType(PyHirschImage*self, PyObject *args)
{
    try {
        return PyString_FromString(self->Image->PixType());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayOpening(PyHirschImage*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImage_FromHImage(self->Image->GrayOpening(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayOpening()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindMarksAndPose(PyHirschImage*self, PyObject *args)
{
    PyObject* StartThresh;
    PyObject* CalTabDescrFile;
    PyObject* Alpha;
    PyObject* MinThresh;
    PyObject* MinContLength;
    PyObject* CalTabRegion;
    PyObject* MaxDiamMarks;
    PyObject* StartCamParam;
    PyObject* DeltaThresh;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &CalTabRegion,&CalTabDescrFile,&StartCamParam,&StartThresh,&DeltaThresh,&MinThresh,&Alpha,&MinContLength,&MaxDiamMarks)) {
            if (PyHirschRegion_Check(CalTabRegion) && PyHirschTuple_Check(CalTabDescrFile) && PyHirschTuple_Check(StartCamParam) && PyHirschTuple_Check(StartThresh) && PyHirschTuple_Check(DeltaThresh) && PyHirschTuple_Check(MinThresh) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(MinContLength) && PyHirschTuple_Check(MaxDiamMarks)) {
                Halcon::HTuple CCoord;
                Halcon::HTuple StartPose;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindMarksAndPose(*(((PyHirschRegion*)CalTabRegion)->Region),*(((PyHirschTuple*)CalTabDescrFile)->Tuple),*(((PyHirschTuple*)StartCamParam)->Tuple),*(((PyHirschTuple*)StartThresh)->Tuple),*(((PyHirschTuple*)DeltaThresh)->Tuple),*(((PyHirschTuple*)MinThresh)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)MinContLength)->Tuple),*(((PyHirschTuple*)MaxDiamMarks)->Tuple),&CCoord,&StartPose)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CCoord));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(StartPose));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindMarksAndPose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ZoomImageSize(PyHirschImage*self, PyObject *args)
{
    char* Interpolation;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "lls", &Width,&Height,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageSize(Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ZoomImageSize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CharThreshold(PyHirschImage*self, PyObject *args)
{
    double Percent;
    PyObject* HistoRegion;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &HistoRegion,&Sigma,&Percent)) {
            if (PyHirschRegion_Check(HistoRegion)) {
                long Threshold;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->CharThreshold(*(((PyHirschRegion*)HistoRegion)->Region),Sigma,Percent,&Threshold)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Threshold)));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CharThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ScaleImageMax(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->ScaleImageMax());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitRshift(PyHirschImage*self, PyObject *args)
{
    long Shift;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift)) {
            return PyHirschImage_FromHImage(self->Image->BitRshift(Shift));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitRshift()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ExpandLine(PyHirschImage*self, PyObject *args)
{
    char* ExpandType;
    double Threshold;
    char* RowColumn;
    long Coordinate;
    
    try {
        if (PyArg_ParseTuple(args, "lssd", &Coordinate,&ExpandType,&RowColumn,&Threshold)) {
            return PyHirschRegion_FromHRegion(self->Image->ExpandLine(Coordinate,ExpandType,RowColumn,Threshold));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExpandLine()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsSojka(PyHirschImage*self, PyObject *args)
{
    double MinGrad;
    double SigmaW;
    double MinAngle;
    double MinApparentness;
    char* Subpix;
    long MaskSize;
    double SigmaD;
    
    try {
        if (PyArg_ParseTuple(args, "lddddds", &MaskSize,&SigmaW,&SigmaD,&MinGrad,&MinApparentness,&MinAngle,&Subpix)) {
            {
            // with output params
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsSojka(MaskSize,SigmaW,SigmaD,MinGrad,MinApparentness,MinAngle,Subpix,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsSojka()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageInterleaved(PyHirschImage*self, PyObject *args)
{
    long BitShift;
    long OriginalWidth;
    char* Type;
    long OriginalHeight;
    long ImageHeight;
    long Alignment;
    long PixelPointer;
    long StartRow;
    long BitsPerChannel;
    long ImageWidth;
    long StartColumn;
    char* ColorFormat;
    
    try {
        if (PyArg_ParseTuple(args, "lslllsllllll", &PixelPointer,&ColorFormat,&OriginalWidth,&OriginalHeight,&Alignment,&Type,&ImageWidth,&ImageHeight,&StartRow,&StartColumn,&BitsPerChannel,&BitShift)) {
            return PyHirschImage_FromHImage(self->Image->GenImageInterleaved(PixelPointer,ColorFormat,OriginalWidth,OriginalHeight,Alignment,Type,ImageWidth,ImageHeight,StartRow,StartColumn,BitsPerChannel,BitShift));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageInterleaved()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InpaintingAniso(PyHirschImage*self, PyObject *args)
{
    long Iterations;
    PyObject* Region;
    double Rho;
    double Contrast;
    char* Mode;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "Osddld", &Region,&Mode,&Contrast,&Theta,&Iterations,&Rho)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingAniso(*(((PyHirschRegion*)Region)->Region),Mode,Contrast,Theta,Iterations,Rho));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingAniso()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AbsDiffImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image2,&Mult)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->AbsDiffImage(*(((PyHirschImage*)Image2)->Image),Mult));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->AbsDiffImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AbsDiffImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PaintGray(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageDestination;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageDestination)) {
            if (PyHirschImage_Check(ImageDestination)) {
                return PyHirschImage_FromHImage(self->Image->PaintGray(*(((PyHirschImage*)ImageDestination)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PaintGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DynThreshold(PyHirschImage*self, PyObject *args)
{
    PyObject* ThresholdImage;
    double Offset;
    char* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &ThresholdImage,&Offset,&LightDark)) {
            if (PyHirschImage_Check(ThresholdImage)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImage*)ThresholdImage)->Image),Offset,LightDark));
            }
            if (PyHirschImageArray_Check(ThresholdImage)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImageArray*)ThresholdImage)->ImageArray),Offset,LightDark));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DynThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AutoThreshold(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->AutoThreshold(Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AutoThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateNoise(PyHirschImage*self, PyObject *args)
{
    double Percent;
    char* Method;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Method,&Percent)) {
            return PyFloat_FromDouble(self->Image->EstimateNoise(Method,Percent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EstimateNoise()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Threshold(PyHirschImage*self, PyObject *args)
{
    double MaxGray;
    double MinGray;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &MinGray,&MaxGray)) {
            return PyHirschRegion_FromHRegion(self->Image->Threshold(MinGray,MaxGray));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Threshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageProto(PyHirschImage*self, PyObject *args)
{
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Grayval)) {
            return PyHirschImage_FromHImage(self->Image->GenImageProto(Grayval));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageProto()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ClassNdimNorm(PyHirschImage*self, PyObject *args)
{
    double Radius;
    char* SingleMultiple;
    char* Metric;
    double Center;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Metric,&SingleMultiple,&Radius,&Center)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->ClassNdimNorm(Metric,SingleMultiple,Radius,Center));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ClassNdimNorm()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SobelAmp(PyHirschImage*self, PyObject *args)
{
    char* FilterType;
    long Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType,&Size)) {
            return PyHirschImage_FromHImage(self->Image->SobelAmp(FilterType,Size));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SobelAmp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SfsModLr(PyHirschImage*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Slant,&Tilt,&Albedo,&Ambient)) {
            return PyHirschImage_FromHImage(self->Image->SfsModLr(Slant,Tilt,Albedo,Ambient));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SfsModLr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsHarrisBinomial(PyHirschImage*self, PyObject *args)
{
    long MaskSizeGrd;
    double Threshold;
    char* Subpix;
    long MaskSizeSmooth;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskSizeGrd,&MaskSizeSmooth,&Alpha,&Threshold,&Subpix)) {
            {
            // with output params
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsHarrisBinomial(MaskSizeGrd,MaskSizeSmooth,Alpha,Threshold,Subpix,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsHarrisBinomial()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InspectShapeModel(PyHirschImage*self, PyObject *args)
{
    long NumLevels;
    long Contrast;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &NumLevels,&Contrast)) {
            {
            // with output params
                Halcon::HRegionArray ModelRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->Image->InspectShapeModel(&ModelRegions,NumLevels,Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(ModelRegions));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InspectShapeModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PolarTransImageInv(PyHirschImage*self, PyObject *args)
{
    double Column;
    double RadiusEnd;
    char* Interpolation;
    double Row;
    long Width;
    double RadiusStart;
    long Height;
    double AngleEnd;
    double AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlls", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageInv(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImageInv()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InpaintingTexture(PyHirschImage*self, PyObject *args)
{
    long SearchSize;
    PyObject* Region;
    double Anisotropy;
    double Smoothness;
    char* PostIteration;
    long MaskSize;
    
    try {
        if (PyArg_ParseTuple(args, "Olldsd", &Region,&MaskSize,&SearchSize,&Anisotropy,&PostIteration,&Smoothness)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingTexture(*(((PyHirschRegion*)Region)->Region),MaskSize,SearchSize,Anisotropy,PostIteration,Smoothness));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingTexture()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DispColor(PyHirschImage*self, PyObject *args)
{
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            self->Image->DispColor(WindowHandle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DispColor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EliminateSp(PyHirschImage*self, PyObject *args)
{
    long MinThresh;
    long MaskWidth;
    long MaskHeight;
    long MaxThresh;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            return PyHirschImage_FromHImage(self->Image->EliminateSp(MaskWidth,MaskHeight,MinThresh,MaxThresh));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EliminateSp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LowlandsCenter(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->Image->LowlandsCenter());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BestMatchRotMg(PyHirschImage*self, PyObject *args)
{
    double AngleExtend;
    PyObject* TemplateID;
    char* SubPixel;
    double MaxError;
    double AngleStart;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Odddsl", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                double Column;
                double Angle;
                double Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,SubPixel,NumLevels,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatchRotMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MinImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MinImage(*(((PyHirschImage*)Image2)->Image)));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MinImage(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MinImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CheckDifference(PyHirschImage*self, PyObject *args)
{
    long AddCol;
    long DiffUpperBound;
    char* Mode;
    long DiffLowerBound;
    long AddRow;
    PyObject* Pattern;
    long GrayOffset;
    
    try {
        if (PyArg_ParseTuple(args, "Oslllll", &Pattern,&Mode,&DiffLowerBound,&DiffUpperBound,&GrayOffset,&AddRow,&AddCol)) {
            if (PyHirschImage_Check(Pattern)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImage*)Pattern)->Image),Mode,DiffLowerBound,DiffUpperBound,GrayOffset,AddRow,AddCol));
            }
            if (PyHirschImageArray_Check(Pattern)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImageArray*)Pattern)->ImageArray),Mode,DiffLowerBound,DiffUpperBound,GrayOffset,AddRow,AddCol));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CheckDifference()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenStdBandpass(PyHirschImage*self, PyObject *args)
{
    char* Type;
    long Width;
    char* Norm;
    long Height;
    double Frequency;
    double Sigma;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddsssll", &Frequency,&Sigma,&Type,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenStdBandpass(Frequency,Sigma,Type,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenStdBandpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Roberts(PyHirschImage*self, PyObject *args)
{
    char* FilterType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType)) {
            return PyHirschImage_FromHImage(self->Image->Roberts(FilterType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Roberts()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MirrorImage(PyHirschImage*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->MirrorImage(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MirrorImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ChangeFormat(PyHirschImage*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->ChangeFormat(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ChangeFormat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PolarTransImageExt(PyHirschImage*self, PyObject *args)
{
    double Column;
    double RadiusEnd;
    char* Interpolation;
    double Row;
    long Width;
    double RadiusStart;
    long Height;
    double AngleEnd;
    double AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlls", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageExt(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImageExt()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadGraySe(PyHirschImage*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            return PyHirschImage_FromHImage(self->Image->ReadGraySe(FileName));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadGraySe()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ExpandDomainGray(PyHirschImage*self, PyObject *args)
{
    long ExpansionRange;
    
    try {
        if (PyArg_ParseTuple(args, "l", &ExpansionRange)) {
            return PyHirschImage_FromHImage(self->Image->ExpandDomainGray(ExpansionRange));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExpandDomainGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MeanImage(PyHirschImage*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth,&MaskHeight)) {
            return PyHirschImage_FromHImage(self->Image->MeanImage(MaskWidth,MaskHeight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EquHistoImage(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->EquHistoImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateAlAm(PyHirschImage*self, PyObject *args)
{
    try {
        double Ambient;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EstimateAlAm(&Ambient)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Ambient));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MidrangeImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Margin;
    PyObject* Mask;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mask,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->MidrangeImage(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MidrangeImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Rgb1ToGray(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->Rgb1ToGray());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitOr(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitOr(*(((PyHirschImage*)Image2)->Image)));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitOr(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitOr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_TextureLaws(PyHirschImage*self, PyObject *args)
{
    char* FilterTypes;
    long Shift;
    long FilterSize;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &FilterTypes,&Shift,&FilterSize)) {
            return PyHirschImage_FromHImage(self->Image->TextureLaws(FilterTypes,Shift,FilterSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TextureLaws()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_WienerFilter(PyHirschImage*self, PyObject *args)
{
    PyObject* FilteredImage;
    PyObject* Psf;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Psf,&FilteredImage)) {
            if (PyHirschImage_Check(Psf) && PyHirschImage_Check(FilteredImage)) {
                return PyHirschImage_FromHImage(self->Image->WienerFilter(*(((PyHirschImage*)Psf)->Image),*(((PyHirschImage*)FilteredImage)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WienerFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AddNoiseDistribution(PyHirschImage*self, PyObject *args)
{
    PyObject* Distribution;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Distribution)) {
            if (PyHirschTuple_Check(Distribution)) {
                return PyHirschImage_FromHImage(self->Image->AddNoiseDistribution(*(((PyHirschTuple*)Distribution)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddNoiseDistribution()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerByte(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PowerByte());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDisparityMg(PyHirschImage*self, PyObject *args)
{
    PyObject* MGParamValue;
    PyObject* GradientConstancy;
    PyObject* Image2;
    PyObject* Smoothness;
    PyObject* GrayConstancy;
    PyObject* MGParamName;
    PyObject* CalculateScore;
    PyObject* InitialGuess;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Image2,&GrayConstancy,&GradientConstancy,&Smoothness,&InitialGuess,&CalculateScore,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImage*)Image2)->Image),&Score,*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImageArray*)Image2)->ImageArray),&Score,*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinocularDisparityMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DivImage(PyHirschImage*self, PyObject *args)
{
    double Add;
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image2,&Mult,&Add)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->DivImage(*(((PyHirschImage*)Image2)->Image),Mult,Add));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->DivImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DivImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FftImageInv(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FftImageInv());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DispImage(PyHirschImage*self, PyObject *args)
{
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            self->Image->DispImage(WindowHandle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DispImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LinesGauss(PyHirschImage*self, PyObject *args)
{
    char* CorrectPositions;
    double Low;
    double High;
    char* LightDark;
    char* CompleteJunctions;
    char* ExtractWidth;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "dddssss", &Sigma,&Low,&High,&LightDark,&ExtractWidth,&CorrectPositions,&CompleteJunctions)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesGauss(Sigma,Low,High,LightDark,ExtractWidth,CorrectPositions,CompleteJunctions));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinesGauss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayClosing(PyHirschImage*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImage_FromHImage(self->Image->GrayClosing(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosing()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InstClassName(PyHirschImage*self, PyObject *args)
{
    try {
        return PyString_FromString(self->Image->InstClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenGridRectificationMap(PyHirschImage*self, PyObject *args)
{
    PyObject* Rotation;
    PyObject* ConnectingLines;
    PyObject* Row;
    PyObject* GridSpacing;
    PyObject* Col;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &ConnectingLines,&GridSpacing,&Rotation,&Row,&Col)) {
            if (PyHirschXLDArray_Check(ConnectingLines) && PyHirschTuple_Check(GridSpacing) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col)) {
                Halcon::HXLDArray Meshes;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenGridRectificationMap(*(((PyHirschXLDArray*)ConnectingLines)->XLDArray),&Meshes,*(((PyHirschTuple*)GridSpacing)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDArray_FromHXLDArray(Meshes));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGridRectificationMap()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDisparity(PyHirschImage*self, PyObject *args)
{
    long MinDisparity;
    char* Filter;
    long MaxDisparity;
    PyObject* Image2;
    char* Method;
    double TextureThresh;
    char* SubDisparity;
    long MaskWidth;
    long NumLevels;
    double ScoreThresh;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oslldllldss", &Image2,&Method,&MaskWidth,&MaskHeight,&TextureThresh,&MinDisparity,&MaxDisparity,&NumLevels,&ScoreThresh,&Filter,&SubDisparity)) {
            if (PyHirschImage_Check(Image2)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparity(*(((PyHirschImage*)Image2)->Image),&Score,Method,MaskWidth,MaskHeight,TextureThresh,MinDisparity,MaxDisparity,NumLevels,ScoreThresh,Filter,SubDisparity)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinocularDisparity()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitXor(PyHirschImage*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitXor(*(((PyHirschImage*)Image2)->Image)));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitXor(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitXor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_NonmaxSuppressionDir(PyHirschImage*self, PyObject *args)
{
    PyObject* ImgDir;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &ImgDir,&Mode)) {
            if (PyHirschImage_Check(ImgDir)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImage*)ImgDir)->Image),Mode));
            }
            if (PyHirschImageArray_Check(ImgDir)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImageArray*)ImgDir)->ImageArray),Mode));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.NonmaxSuppressionDir()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ConvolImage(PyHirschImage*self, PyObject *args)
{
    PyObject* FilterMask;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &FilterMask,&Margin)) {
            if (PyHirschTuple_Check(FilterMask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->ConvolImage(*(((PyHirschTuple*)FilterMask)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Shared(PyHirschImage*self, PyObject *args)
{
    try {
        return PyBool_FromLong(self->Image->Shared());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Class2dimSup(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageRow;
    PyObject* FeatureSpace;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageRow,&FeatureSpace)) {
            if (PyHirschImage_Check(ImageRow) && PyHirschRegion_Check(FeatureSpace)) {
                return PyHirschRegion_FromHRegion(self->Image->Class2dimSup(*(((PyHirschImage*)ImageRow)->Image),*(((PyHirschRegion*)FeatureSpace)->Region)));
            }
            if (PyHirschImageArray_Check(ImageRow) && PyHirschRegionArray_Check(FeatureSpace)) {
                return PyHirschRegion_FromHRegion(self->Image->Class2dimSup(*(((PyHirschImageArray*)ImageRow)->ImageArray),*(((PyHirschRegionArray*)FeatureSpace)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Class2dimSup()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EntropyImage(PyHirschImage*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->EntropyImage(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EntropyImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AddImage(PyHirschImage*self, PyObject *args)
{
    double Add;
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image2,&Mult,&Add)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->AddImage(*(((PyHirschImage*)Image2)->Image),Mult,Add));
            }
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->AddImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageGrayRamp(PyHirschImage*self, PyObject *args)
{
    long Row;
    long Width;
    double Beta;
    double Mean;
    long Height;
    double Alpha;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "dddllll", &Alpha,&Beta,&Mean,&Row,&Column,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenImageGrayRamp(Alpha,Beta,Mean,Row,Column,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageGrayRamp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_WatershedsThreshold(PyHirschImage*self, PyObject *args)
{
    long Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Threshold)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->WatershedsThreshold(Threshold));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WatershedsThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindCaltab(PyHirschImage*self, PyObject *args)
{
    long SizeGauss;
    char* CalTabDescrFile;
    long MinDiamMarks;
    long MarkThresh;
    
    try {
        if (PyArg_ParseTuple(args, "slll", &CalTabDescrFile,&SizeGauss,&MarkThresh,&MinDiamMarks)) {
            return PyHirschRegion_FromHRegion(self->Image->FindCaltab(CalTabDescrFile,SizeGauss,MarkThresh,MinDiamMarks));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindCaltab()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenPrincipalCompTrans(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HTuple TransInv;
        Halcon::HTuple Mean;
        Halcon::HTuple Cov;
        Halcon::HTuple InfoPerComp;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->GenPrincipalCompTrans(&TransInv,&Mean,&Cov,&InfoPerComp)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(TransInv));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Mean));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Cov));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(InfoPerComp));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenFilterMask(PyHirschImage*self, PyObject *args)
{
    PyObject* Height;
    PyObject* FilterMask;
    PyObject* Scale;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &FilterMask,&Scale,&Width,&Height)) {
            if (PyHirschTuple_Check(FilterMask) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->GenFilterMask(*(((PyHirschTuple*)FilterMask)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenFilterMask()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CheckMyObjClass(PyHirschImage*self, PyObject *args)
{
    try {
        self->Image->CheckMyObjClass();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BestMatchRot(PyHirschImage*self, PyObject *args)
{
    char* SubPixel;
    double AngleExtend;
    double AngleStart;
    double MaxError;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Oddds", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                double Column;
                double Angle;
                double Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchRot(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,SubPixel,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatchRot()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RftGeneric(PyHirschImage*self, PyObject *args)
{
    char* Direction;
    char* Norm;
    char* ResultType;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "sssl", &Direction,&Norm,&ResultType,&Width)) {
            return PyHirschImage_FromHImage(self->Image->RftGeneric(Direction,Norm,ResultType,Width));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RftGeneric()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayClosingShape(PyHirschImage*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImage_FromHImage(self->Image->GrayClosingShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosingShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenHighpass(PyHirschImage*self, PyObject *args)
{
    char* Norm;
    long Height;
    double Frequency;
    long Width;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dssll", &Frequency,&Norm,&Mode,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Image->GenHighpass(Frequency,Norm,Mode,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenHighpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CoocFeatureMatrix(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HTuple Correlation;
        Halcon::HTuple Homogeneity;
        Halcon::HTuple Contrast;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->CoocFeatureMatrix(&Correlation,&Homogeneity,&Contrast)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Correlation));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Homogeneity));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Contrast));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PrewittDir(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->PrewittDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BitSlice(PyHirschImage*self, PyObject *args)
{
    long Bit;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Bit)) {
            return PyHirschImage_FromHImage(self->Image->BitSlice(Bit));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitSlice()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_AnisotropicDiffusion(PyHirschImage*self, PyObject *args)
{
    double Contrast;
    long Iterations;
    char* Mode;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "sddl", &Mode,&Contrast,&Theta,&Iterations)) {
            return PyHirschImage_FromHImage(self->Image->AnisotropicDiffusion(Mode,Contrast,Theta,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AnisotropicDiffusion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBinocularRectificationMap(PyHirschImage*self, PyObject *args)
{
    PyObject* SubSampling;
    PyObject* CamParam2;
    PyObject* RelPose;
    PyObject* Interpolation;
    PyObject* CamParam1;
    PyObject* Method;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &CamParam1,&CamParam2,&RelPose,&SubSampling,&Method,&Interpolation)) {
            if (PyHirschTuple_Check(CamParam1) && PyHirschTuple_Check(CamParam2) && PyHirschTuple_Check(RelPose) && PyHirschTuple_Check(SubSampling) && PyHirschTuple_Check(Method) && PyHirschTuple_Check(Interpolation)) {
                Halcon::HImage Map2;
                Halcon::HTuple CamParamRect1;
                Halcon::HTuple CamParamRect2;
                Halcon::HTuple CamPoseRect1;
                Halcon::HTuple CamPoseRect2;
                Halcon::HTuple RelPoseRect;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBinocularRectificationMap(&Map2,*(((PyHirschTuple*)CamParam1)->Tuple),*(((PyHirschTuple*)CamParam2)->Tuple),*(((PyHirschTuple*)RelPose)->Tuple),*(((PyHirschTuple*)SubSampling)->Tuple),*(((PyHirschTuple*)Method)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),&CamParamRect1,&CamParamRect2,&CamPoseRect1,&CamPoseRect2,&RelPoseRect)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CamParamRect1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(CamParamRect2));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(CamPoseRect1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(CamPoseRect2));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(RelPoseRect));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBinocularRectificationMap()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadImage(PyHirschImage*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            return PyHirschImage_FromHImage(self->Image->ReadImage(FileName));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MatchRelPoseRansac(PyHirschImage*self, PyObject *args)
{
    PyObject* MaskSize;
    PyObject* ColMove;
    PyObject* RowTolerance;
    PyObject* CamPar1;
    PyObject* Cols2;
    PyObject* EstimationMethod;
    PyObject* Image2;
    PyObject* GrayMatchMethod;
    PyObject* Rotation;
    PyObject* Rows1;
    PyObject* Cols1;
    PyObject* ColTolerance;
    PyObject* RandSeed;
    PyObject* MatchThreshold;
    PyObject* CamPar2;
    PyObject* Rows2;
    PyObject* RowMove;
    PyObject* DistanceThreshold;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOOOOOOO", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&CamPar1,&CamPar2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(CamPar1) && PyHirschTuple_Check(CamPar2) && PyHirschTuple_Check(GrayMatchMethod) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(RowMove) && PyHirschTuple_Check(ColMove) && PyHirschTuple_Check(RowTolerance) && PyHirschTuple_Check(ColTolerance) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(EstimationMethod) && PyHirschTuple_Check(DistanceThreshold) && PyHirschTuple_Check(RandSeed)) {
                Halcon::HTuple CovRelPose;
                Halcon::HTuple Error;
                Halcon::HTuple Points1;
                Halcon::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->MatchRelPoseRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),*(((PyHirschTuple*)CamPar1)->Tuple),*(((PyHirschTuple*)CamPar2)->Tuple),*(((PyHirschTuple*)GrayMatchMethod)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)RowMove)->Tuple),*(((PyHirschTuple*)ColMove)->Tuple),*(((PyHirschTuple*)RowTolerance)->Tuple),*(((PyHirschTuple*)ColTolerance)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),*(((PyHirschTuple*)EstimationMethod)->Tuple),*(((PyHirschTuple*)DistanceThreshold)->Tuple),*(((PyHirschTuple*)RandSeed)->Tuple),&CovRelPose,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovRelPose));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MatchRelPoseRansac()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadSequence(PyHirschImage*self, PyObject *args)
{
    long DestWidth;
    long SourceWidth;
    char* FileName;
    char* PixelType;
    long StartRow;
    long Index;
    long SourceHeight;
    long DestHeight;
    char* Pad;
    char* BitOrder;
    long HeaderSize;
    long StartColumn;
    char* ByteOrder;
    
    try {
        if (PyArg_ParseTuple(args, "lllllllssssls", &HeaderSize,&SourceWidth,&SourceHeight,&StartRow,&StartColumn,&DestWidth,&DestHeight,&PixelType,&BitOrder,&ByteOrder,&Pad,&Index,&FileName)) {
            return PyHirschImage_FromHImage(self->Image->ReadSequence(HeaderSize,SourceWidth,SourceHeight,StartRow,StartColumn,DestWidth,DestHeight,PixelType,BitOrder,ByteOrder,Pad,Index,FileName));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadSequence()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_KirschDir(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->KirschDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalMinSubPix(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    double Sigma;
    char* Filter;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter,&Sigma,&Threshold)) {
            {
            // with output params
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->LocalMinSubPix(Filter,Sigma,Threshold,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LocalMinSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose5(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage Image2;
        Halcon::HImage Image3;
        Halcon::HImage Image4;
        Halcon::HImage Image5;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose5(&Image2,&Image3,&Image4,&Image5)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Image5));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayInside(PyHirschImage*self, PyObject *args)
{
    try {
        return PyHirschImage_FromHImage(self->Image->GrayInside());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RegiongrowingN(PyHirschImage*self, PyObject *args)
{
    double MaxTolerance;
    double MinTolerance;
    char* Metric;
    long MinSize;
    
    try {
        if (PyArg_ParseTuple(args, "sddl", &Metric,&MinTolerance,&MaxTolerance,&MinSize)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->RegiongrowingN(Metric,MinTolerance,MaxTolerance,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RegiongrowingN()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Illuminate(PyHirschImage*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    double Factor;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth,&MaskHeight,&Factor)) {
            return PyHirschImage_FromHImage(self->Image->Illuminate(MaskWidth,MaskHeight,Factor));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Illuminate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose3(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage Image2;
        Halcon::HImage Image3;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose3(&Image2,&Image3)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Watersheds(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HRegion Watersheds;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Image->Watersheds(&Watersheds)));
        PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(Watersheds));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FindShapeModels(PyHirschImage*self, PyObject *args)
{
    double MinScore;
    double MaxOverlap;
    char* SubPixel;
    double Greediness;
    double AngleStart;
    long NumMatches;
    double AngleExtent;
    long NumLevels;
    long ModelIDs;
    
    try {
        if (PyArg_ParseTuple(args, "ldddldsld", &ModelIDs,&AngleStart,&AngleExtent,&MinScore,&NumMatches,&MaxOverlap,&SubPixel,&NumLevels,&Greediness)) {
            {
            // with output params
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Score;
                Halcon::HTuple Model;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindShapeModels(ModelIDs,AngleStart,AngleExtent,MinScore,NumMatches,MaxOverlap,SubPixel,NumLevels,Greediness,&Column,&Angle,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RankN(PyHirschImage*self, PyObject *args)
{
    long RankIndex;
    
    try {
        if (PyArg_ParseTuple(args, "l", &RankIndex)) {
            return PyHirschImage_FromHImage(self->Image->RankN(RankIndex));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RankN()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose7(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage Image2;
        Halcon::HImage Image3;
        Halcon::HImage Image4;
        Halcon::HImage Image5;
        Halcon::HImage Image6;
        Halcon::HImage Image7;
        PyObject *ret = PyTuple_New(7);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose7(&Image2,&Image3,&Image4,&Image5,&Image6,&Image7)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Image5));
        PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Image6));
        PyTuple_SET_ITEM(ret, 6, PyHirschImage_FromHImage(Image7));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose6(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage Image2;
        Halcon::HImage Image3;
        Halcon::HImage Image4;
        Halcon::HImage Image5;
        Halcon::HImage Image6;
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose6(&Image2,&Image3,&Image4,&Image5,&Image6)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Image5));
        PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Image6));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SigmaImage(PyHirschImage*self, PyObject *args)
{
    long Sigma;
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &MaskHeight,&MaskWidth,&Sigma)) {
            return PyHirschImage_FromHImage(self->Image->SigmaImage(MaskHeight,MaskWidth,Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SigmaImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose4(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage Image2;
        Halcon::HImage Image3;
        Halcon::HImage Image4;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose4(&Image2,&Image3,&Image4)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Image4));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CornerResponse(PyHirschImage*self, PyObject *args)
{
    long Size;
    double Weight;
    
    try {
        if (PyArg_ParseTuple(args, "ld", &Size,&Weight)) {
            return PyHirschImage_FromHImage(self->Image->CornerResponse(Size,Weight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CornerResponse()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose2(PyHirschImage*self, PyObject *args)
{
    try {
        Halcon::HImage Image2;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose2(&Image2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
