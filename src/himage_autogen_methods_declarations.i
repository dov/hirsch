PyObject *
PyHirschImage_Pouring(PyHirschImage*self, PyObject *args)
{
    long MinGray;
    char* Mode;
    long MaxGray;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Mode,&MinGray,&MaxGray)) {
            return PyHirschRegion_FromHRegion(self->Image->Pouring(Mode,MinGray,MaxGray));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Pouring()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.VectorFieldLength()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SelectGrayvaluesFromChannels()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MapImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GaussFilter(PyHirschImage*self, PyObject *args)
{
    long Size;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Size)) {
            return PyHirschImage_FromHImage(self->Image->GaussFilter(Size));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GaussFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjMatchPointsRansac(PyHirschImage*self, PyObject *args)
{
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjMatchPointsRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MeanN(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->MeanN());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EnergyGabor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateTiltLr(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Image->EstimateTiltLr());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FuzzyPerimeter(PyHirschImage*self, PyObject *args)
{
    long Apar;
    PyObject* Regions;
    long Cpar;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Regions,&Apar,&Cpar)) {
            if (PyHirschRegion_Check(Regions)) {
                return PyHirschTuple_FromHTuple(self->Image->FuzzyPerimeter(*(((PyHirschRegion*)Regions)->Region),Apar,Cpar));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FuzzyPerimeter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayHistoRange(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions1;
    double Min1;
    PyObject* Max;
    long NumBins1;
    PyObject* Min;
    double Max1;
    long NumBins;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "OOOl", &Regions,&Min,&Max,&NumBins)) {
            if (PyHirschRegion_Check(Regions) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                double BinSize;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->GrayHistoRange(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple),NumBins,&BinSize)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(BinSize));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddl", &Regions1,&Min1,&Max1,&NumBins1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double BinSize1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GrayHistoRange(*(((PyHirschRegion*)Regions1)->Region),Min1,Max1,NumBins1,&BinSize1))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(BinSize1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayHistoRange()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose4()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose5()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose6()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose7()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose3()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HImage ImageGreen;
                HalconCpp::HImage ImageBlue;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImage*)ImageInput2)->Image),*(((PyHirschImage*)ImageInput3)->Image),&ImageGreen,&ImageBlue,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TransToRgb()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_TopographicSketch(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->TopographicSketch());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanCurvatureFlow()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GraySkeleton(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->GraySkeleton());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_KirschAmp(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->KirschAmp());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetGrayvalContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FillInterlace()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitAnd()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BandpassImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CreateTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SubImage(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageSubtrahend;
    PyObject* Add;
    double Mult1;
    PyObject* ImageSubtrahend1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ImageSubtrahend,&Mult,&Add)) {
            if (PyHirschImage_Check(ImageSubtrahend) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImage*)ImageSubtrahend)->Image),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &ImageSubtrahend1,&Mult1,&Add1)) {
            if (PyHirschImage_Check(ImageSubtrahend1)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImage*)ImageSubtrahend1)->Image),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SubImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ScaleImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Add;
    PyObject* Mult;
    double Add1;
    double Mult1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mult,&Add)) {
            if (PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImage_FromHImage(self->Image->ScaleImage(*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Mult1,&Add1)) {
            return PyHirschImage_FromHImage(self->Image->ScaleImage(Mult1,Add1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ScaleImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BilateralFilter(PyHirschImage*self, PyObject *args)
{
    double SigmaRange1;
    double SigmaSpatial1;
    double SigmaRange;
    PyObject* ImageJoint1;
    PyObject* GenParamName;
    double GenParamValue1;
    char* GenParamName1;
    PyObject* GenParamValue;
    double SigmaSpatial;
    PyObject* ImageJoint;
    
    try {
        if (PyArg_ParseTuple(args, "Oddsd", &ImageJoint1,&SigmaSpatial1,&SigmaRange1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschImage_Check(ImageJoint1)) {
                return PyHirschImage_FromHImage(self->Image->BilateralFilter(*(((PyHirschImage*)ImageJoint1)->Image),SigmaSpatial1,SigmaRange1,GenParamName1,GenParamValue1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OddOO", &ImageJoint,&SigmaSpatial,&SigmaRange,&GenParamName,&GenParamValue)) {
            if (PyHirschImage_Check(ImageJoint) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                return PyHirschImage_FromHImage(self->Image->BilateralFilter(*(((PyHirschImage*)ImageJoint)->Image),SigmaSpatial,SigmaRange,*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BilateralFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_DecodeBarCodeRectangle2(PyHirschImage*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    PyObject* Length1;
    PyObject* CodeType;
    PyObject* Length2;
    PyObject* Phi;
    PyObject* BarCodeHandle;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &BarCodeHandle,&CodeType,&Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschBarCode_Check(BarCodeHandle) && PyHirschTuple_Check(CodeType) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschTuple_FromHTuple(self->Image->DecodeBarCodeRectangle2(*(((PyHirschBarCode*)BarCodeHandle)->BarCode),*(((PyHirschTuple*)CodeType)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DecodeBarCodeRectangle2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Lowlands(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->Lowlands());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetDomain(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->GetDomain());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RealToVectorField(PyHirschImage*self, PyObject *args)
{
    PyObject* Col;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Col,&Type)) {
            if (PyHirschImage_Check(Col)) {
                return PyHirschImage_FromHImage(self->Image->RealToVectorField(*(((PyHirschImage*)Col)->Image),Type));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RealToVectorField()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer3(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HTuple PointerRed;
        HalconCpp::HTuple PointerGreen;
        HalconCpp::HTuple PointerBlue;
        HalconCpp::HTuple Type;
        HalconCpp::HTuple Width;
        HalconCpp::HTuple Height;
        self->Image->GetImagePointer3(&PointerRed,&PointerGreen,&PointerBlue,&Type,&Width,&Height);
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(PointerRed));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(PointerGreen));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(PointerBlue));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Type));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Width));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Height));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerLn(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PowerLn());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer1(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HTuple Type;
        HalconCpp::HTuple Width;
        HalconCpp::HTuple Height;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->GetImagePointer1(&Type,&Width,&Height)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Type));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Width));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Height));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Histo2dim(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageRow;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions,&ImageRow)) {
            if (PyHirschRegion_Check(Regions) && PyHirschImage_Check(ImageRow)) {
                return PyHirschImage_FromHImage(self->Image->Histo2dim(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschImage*)ImageRow)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Histo2dim()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SimulateMotion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CropDomainRel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple RowMin;
                HalconCpp::HTuple ColumnMin;
                HalconCpp::HTuple RowMax;
                HalconCpp::HTuple ColumnMax;
                HalconCpp::HTuple RowSaddle;
                HalconCpp::HTuple ColumnSaddle;
                self->Image->CriticalPointsSubPix(Filter,Sigma,Threshold,&RowMin,&ColumnMin,&RowMax,&ColumnMax,&RowSaddle,&ColumnSaddle);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(RowMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColumnMin));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(RowMax));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ColumnMax));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(RowSaddle));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(ColumnSaddle));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CriticalPointsSubPix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CreateTemplateRot()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CropPart(PyHirschImage*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Width1;
    long Height1;
    long Column1;
    PyObject* Height;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Column,&Width,&Height)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->CropPart(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->CropPart(Row1,Column1,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CropPart()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PaintXld(PyHirschImage*self, PyObject *args)
{
    PyObject* Grayval;
    PyObject* XLD;
    double Grayval1;
    PyObject* XLD1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &XLD1,&Grayval1)) {
            if (PyHirschXLD_Check(XLD1)) {
                return PyHirschImage_FromHImage(self->Image->PaintXld(*(((PyHirschXLD*)XLD1)->XLD),Grayval1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &XLD,&Grayval)) {
            if (PyHirschXLD_Check(XLD) && PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->Image->PaintXld(*(((PyHirschXLD*)XLD)->XLD),*(((PyHirschTuple*)Grayval)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PaintXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenDerivativeFilter(Derivative,Exponent,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenDerivativeFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayRangeRect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->SaddlePointsSubPix(Filter,Sigma,Threshold,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SaddlePointsSubPix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FindBarCode(PyHirschImage*self, PyObject *args)
{
    PyObject* CodeType;
    PyObject* BarCodeHandle;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &BarCodeHandle,&CodeType)) {
            if (PyHirschBarCode_Check(BarCodeHandle) && PyHirschTuple_Check(CodeType)) {
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->FindBarCode(*(((PyHirschBarCode*)BarCodeHandle)->BarCode),*(((PyHirschTuple*)CodeType)->Tuple),&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindBarCode()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AdaptTemplate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_HysteresisThreshold(PyHirschImage*self, PyObject *args)
{
    long MaxLength;
    PyObject* Low;
    PyObject* High;
    long MaxLength1;
    long Low1;
    long High1;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Low1,&High1,&MaxLength1)) {
            return PyHirschRegion_FromHRegion(self->Image->HysteresisThreshold(Low1,High1,MaxLength1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOl", &Low,&High,&MaxLength)) {
            if (PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschRegion_FromHRegion(self->Image->HysteresisThreshold(*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),MaxLength));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HysteresisThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PhaseDeg(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PhaseDeg());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CropDomain(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->CropDomain());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ThresholdSubPix(PyHirschImage*self, PyObject *args)
{
    double Threshold1;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Threshold)) {
            if (PyHirschTuple_Check(Threshold)) {
                return PyHirschXLDCont_FromHXLDCont(self->Image->ThresholdSubPix(*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "d", &Threshold1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->ThresholdSubPix(Threshold1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ThresholdSubPix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerReal(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PowerReal());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PhotometricStereo(PyHirschImage*self, PyObject *args)
{
    PyObject* ResultType;
    PyObject* Tilts;
    PyObject* GenParamName;
    PyObject* GenParamValue;
    PyObject* Slants;
    char* ReconstructionMethod;
    
    try {
        if (PyArg_ParseTuple(args, "OOOsOO", &Slants,&Tilts,&ResultType,&ReconstructionMethod,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(Slants) && PyHirschTuple_Check(Tilts) && PyHirschTuple_Check(ResultType) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HImage Gradient;
                HalconCpp::HImage Albedo;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->PhotometricStereo(&Gradient,&Albedo,*(((PyHirschTuple*)Slants)->Tuple),*(((PyHirschTuple*)Tilts)->Tuple),*(((PyHirschTuple*)ResultType)->Tuple),ReconstructionMethod,*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Gradient));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Albedo));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PhotometricStereo()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschRegion_FromHRegion(self->Image->DualThreshold(MinSize,MinGray,Threshold));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DualThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenBandpass(MinFrequency,MaxFrequency,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBandpass()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FftImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FftImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PlaneDeviation(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                return PyHirschTuple_FromHTuple(self->Image->PlaneDeviation(*(((PyHirschRegion*)Regions)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PlaneDeviation()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple ParameterValue;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetermineShapeModelParams(NumLevels,AngleStart,AngleExtent,ScaleMin,ScaleMax,Optimization,Metric,Contrast,MinContrast,Parameters,&ParameterValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ParameterValue));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DetermineShapeModelParams()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ShockFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DotsImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FullDomain(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FullDomain());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DerivateGauss()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetGrayval(PyHirschImage*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschTuple_FromHTuple(self->Image->GetGrayval(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyFloat_FromDouble(self->Image->GetGrayval(Row1,Column1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetGrayval()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FastMatchMg(PyHirschImage*self, PyObject *args)
{
    double MaxError1;
    PyObject* TemplateID;
    double MaxError;
    long NumLevel1;
    PyObject* NumLevel;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "Odl", &TemplateID1,&MaxError1,&NumLevel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                return PyHirschRegion_FromHRegion(self->Image->FastMatchMg(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,NumLevel1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OdO", &TemplateID,&MaxError,&NumLevel)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(NumLevel)) {
                return PyHirschRegion_FromHRegion(self->Image->FastMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,*(((PyHirschTuple*)NumLevel)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FastMatchMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DeviationImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.NonmaxSuppressionAmp()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AcosImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->AcosImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ZeroCrossingSubPix(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschXLDCont_FromHXLDCont(self->Image->ZeroCrossingSubPix());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenMeanFilter(MaskShape,Diameter1,Diameter2,Phi,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenMeanFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HarmonicInterpolation()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                double Row;
                double Column;
                double Angle;
                double Error;
                self->Image->BestMatchRot(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,SubPixel,&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatchRot()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BinThreshold(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->BinThreshold());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjectiveTransImage(PyHirschImage*self, PyObject *args)
{
    char* AdaptImageSize;
    char* Interpolation;
    PyObject* HomMat2D;
    char* TransformDomain;
    
    try {
        if (PyArg_ParseTuple(args, "Osss", &HomMat2D,&Interpolation,&AdaptImageSize,&TransformDomain)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImage(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),Interpolation,AdaptImageSize,TransformDomain));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjectiveTransImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RobinsonDir(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->RobinsonDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Laplace()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HRegion Lines;
                HalconCpp::HTuple Angle;
                HalconCpp::HTuple Dist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->HoughLinesDir(&Lines,DirectionUncertainty,AngleResolution,Smoothing,FilterSize,Threshold,AngleGap,DistGap,GenLines,&Angle,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(Lines));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Dist));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HoughLinesDir()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AffineTransImage(PyHirschImage*self, PyObject *args)
{
    char* AdaptImageSize;
    char* Interpolation;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &HomMat2D,&Interpolation,&AdaptImageSize)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImage(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),Interpolation,AdaptImageSize));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AffineTransImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Height(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Image->Height());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitMask()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->PointsSojka(MaskSize,SigmaW,SigmaD,MinGrad,MinApparentness,MinAngle,Subpix,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsSojka()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldToReal(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage Col;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->VectorFieldToReal(&Col)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Col));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LutTrans()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HImage ImageResult2;
                HalconCpp::HImage ImageResult3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImage*)ImageGreen)->Image),*(((PyHirschImage*)ImageBlue)->Image),&ImageResult2,&ImageResult3,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult3));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TransFromRgb()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_DualRank(PyHirschImage*self, PyObject *args)
{
    char* MaskType;
    long ModePercent;
    char* Margin;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "slls", &MaskType,&Radius,&ModePercent,&Margin)) {
            return PyHirschImage_FromHImage(self->Image->DualRank(MaskType,Radius,ModePercent,Margin));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DualRank()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CoocFeatureImage(PyHirschImage*self, PyObject *args)
{
    long Direction1;
    PyObject* Regions1;
    PyObject* Regions;
    long LdGray1;
    PyObject* Direction;
    long LdGray;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Regions1,&LdGray1,&Direction1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Correlation1;
                double Homogeneity1;
                double Contrast1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->CoocFeatureImage(*(((PyHirschRegion*)Regions1)->Region),LdGray1,Direction1,&Correlation1,&Homogeneity1,&Contrast1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Correlation1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Homogeneity1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Contrast1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlO", &Regions,&LdGray,&Direction)) {
            if (PyHirschRegion_Check(Regions) && PyHirschTuple_Check(Direction)) {
                HalconCpp::HTuple Correlation;
                HalconCpp::HTuple Homogeneity;
                HalconCpp::HTuple Contrast;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->CoocFeatureImage(*(((PyHirschRegion*)Regions)->Region),LdGray,*(((PyHirschTuple*)Direction)->Tuple),&Correlation,&Homogeneity,&Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Correlation));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Homogeneity));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Contrast));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CoocFeatureImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateSlAlLr(PyHirschImage*self, PyObject *)
{
    try {
        double Albedo1;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EstimateSlAlLr(&Albedo1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Albedo1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesImage(&ImaDir,Filter,Alpha,NMS,Low,High)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CopyImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->CopyImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CosImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->CosImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjMatchPointsDistortionRansacGuided(PyHirschImage*self, PyObject *args)
{
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    PyObject* HomMat2DGuide;
    char* EstimationMethod;
    PyObject* Rows1;
    PyObject* Cols1;
    long MaskSize;
    double KappaGuide;
    PyObject* Rows2;
    double DistanceTolerance;
    char* GrayMatchMethod;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOslOddlsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&HomMat2DGuide,&KappaGuide,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(HomMat2DGuide)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide)->HomMat2D)),KappaGuide,DistanceTolerance,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjMatchPointsDistortionRansacGuided()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RankImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Margin;
    char* Margin1;
    long Rank1;
    PyObject* Mask1;
    PyObject* Mask;
    long Rank;
    
    try {
        if (PyArg_ParseTuple(args, "OlO", &Mask,&Rank,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->RankImage(*(((PyHirschRegion*)Mask)->Region),Rank,*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &Mask1,&Rank1,&Margin1)) {
            if (PyHirschRegion_Check(Mask1)) {
                return PyHirschImage_FromHImage(self->Image->RankImage(*(((PyHirschRegion*)Mask1)->Region),Rank1,Margin1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RankImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple RowJunctions;
                HalconCpp::HTuple ColumnJunctions;
                HalconCpp::HTuple CoRRJunctions;
                HalconCpp::HTuple CoRCJunctions;
                HalconCpp::HTuple CoCCJunctions;
                HalconCpp::HTuple RowArea;
                HalconCpp::HTuple ColumnArea;
                HalconCpp::HTuple CoRRArea;
                HalconCpp::HTuple CoRCArea;
                HalconCpp::HTuple CoCCArea;
                self->Image->PointsFoerstner(SigmaGrad,SigmaInt,SigmaPoints,ThreshInhom,ThreshShape,Smoothing,EliminateDoublets,&RowJunctions,&ColumnJunctions,&CoRRJunctions,&CoRCJunctions,&CoCCJunctions,&RowArea,&ColumnArea,&CoRRArea,&CoRCArea,&CoCCArea);
                PyObject *ret = PyTuple_New(10);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(RowJunctions));
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsFoerstner()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayDilation()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenSinBandpass(Frequency,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenSinBandpass()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MatchFundamentalMatrixRansac(PyHirschImage*self, PyObject *args)
{
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                HalconCpp::HTuple CovFMat;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&CovFMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovFMat));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MatchFundamentalMatrixRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ShadeHeightField()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                double Row;
                double Column;
                double Error;
                self->Image->BestMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,NumLevels,WhichLevels,&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatchMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FastMatch()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HImage EdgeDirection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SobelDir(&EdgeDirection,FilterType,Size)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(EdgeDirection));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SobelDir()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjectiveTransImageSize(PyHirschImage*self, PyObject *args)
{
    long Height;
    char* Interpolation;
    long Width;
    PyObject* HomMat2D;
    char* TransformDomain;
    
    try {
        if (PyArg_ParseTuple(args, "Oslls", &HomMat2D,&Interpolation,&Width,&Height,&TransformDomain)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImageSize(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),Interpolation,Width,Height,TransformDomain));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjectiveTransImageSize()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayOpeningShape()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvertImageType()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FindRectificationGrid(PyHirschImage*self, PyObject *args)
{
    double Radius1;
    PyObject* MinContrast;
    PyObject* Radius;
    double MinContrast1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &MinContrast,&Radius)) {
            if (PyHirschTuple_Check(MinContrast) && PyHirschTuple_Check(Radius)) {
                return PyHirschRegion_FromHRegion(self->Image->FindRectificationGrid(*(((PyHirschTuple*)MinContrast)->Tuple),*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &MinContrast1,&Radius1)) {
            return PyHirschRegion_FromHRegion(self->Image->FindRectificationGrid(MinContrast1,Radius1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindRectificationGrid()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple BeginRow;
                HalconCpp::HTuple BeginCol;
                HalconCpp::HTuple EndRow;
                HalconCpp::HTuple EndCol;
                self->Image->DetectEdgeSegments(SobelSize,MinAmplitude,MaxDistance,MinLength,&BeginRow,&BeginCol,&EndRow,&EndCol);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(BeginRow));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DetectEdgeSegments()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenCubeMapMosaic(PyHirschImage*self, PyObject *args)
{
    long CubeMapDimension;
    char* Interpolation;
    PyObject* RotationMatrices;
    char* StackingOrder;
    PyObject* CameraMatrices;
    
    try {
        if (PyArg_ParseTuple(args, "OOlss", &CameraMatrices,&RotationMatrices,&CubeMapDimension,&StackingOrder,&Interpolation)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices) && PyHirschHomMat2DArray_Check(RotationMatrices)) {
                HalconCpp::HImage Rear;
                HalconCpp::HImage Left;
                HalconCpp::HImage Right;
                HalconCpp::HImage Top;
                HalconCpp::HImage Bottom;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenCubeMapMosaic(&Rear,&Left,&Right,&Top,&Bottom,HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices)->HomMat2DArray)),CubeMapDimension,StackingOrder,Interpolation)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Rear));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Left));
                PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Right));
                PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Top));
                PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Bottom));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenCubeMapMosaic()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->LocalMaxSubPix(Filter,Sigma,Threshold,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LocalMaxSubPix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalThreshold(PyHirschImage*self, PyObject *args)
{
    long GenParamValue;
    char* Method;
    char* GenParamName;
    char* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "sssl", &Method,&LightDark,&GenParamName,&GenParamValue)) {
            return PyHirschRegion_FromHRegion(self->Image->LocalThreshold(Method,LightDark,GenParamName,GenParamValue));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LocalThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesColor(&ImaDir,Filter,Alpha,NMS,Low,High)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesColor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LabelToRegion(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->LabelToRegion());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HImage ImageResultHilbert;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->ConvolGabor(*(((PyHirschImage*)GaborFilter)->Image),&ImageResultHilbert)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResultHilbert));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolGabor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.OverpaintRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayErosionShape()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_InvertImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->InvertImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Regiongrowing(PyHirschImage*self, PyObject *args)
{
    long Row;
    long MinSize;
    double Tolerance1;
    long Row1;
    PyObject* Tolerance;
    long MinSize1;
    long Column1;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "llOl", &Row,&Column,&Tolerance,&MinSize)) {
            if (PyHirschTuple_Check(Tolerance)) {
                return PyHirschRegion_FromHRegion(self->Image->Regiongrowing(Row,Column,*(((PyHirschTuple*)Tolerance)->Tuple),MinSize));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldl", &Row1,&Column1,&Tolerance1,&MinSize1)) {
            return PyHirschRegion_FromHRegion(self->Image->Regiongrowing(Row1,Column1,Tolerance1,MinSize1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Regiongrowing()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DiffOfGauss()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayErosion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayHistoAbs(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions1;
    double Quantization1;
    PyObject* Regions;
    PyObject* Quantization;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions,&Quantization)) {
            if (PyHirschRegion_Check(Regions) && PyHirschTuple_Check(Quantization)) {
                return PyHirschTuple_FromHTuple(self->Image->GrayHistoAbs(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschTuple*)Quantization)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Od", &Regions1,&Quantization1)) {
            if (PyHirschRegion_Check(Regions1)) {
                return PyHirschTuple_FromHTuple(self->Image->GrayHistoAbs(*(((PyHirschRegion*)Regions1)->Region),Quantization1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayHistoAbs()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageProto(PyHirschImage*self, PyObject *args)
{
    PyObject* Grayval;
    double Grayval1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Grayval1)) {
            return PyHirschImage_FromHImage(self->Image->GenImageProto(Grayval1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Grayval)) {
            if (PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->Image->GenImageProto(*(((PyHirschTuple*)Grayval)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageProto()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayErosionRect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Symmetry()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschImage_FromHImage(self->Image->GenGaussPyramid(Mode,Scale));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGaussPyramid()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateTiltZc(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Image->EstimateTiltZc());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MatchEssentialMatrixRansac(PyHirschImage*self, PyObject *args)
{
    long RowTolerance;
    PyObject* CamMat1;
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
        if (PyArg_ParseTuple(args, "OOOOOOOsllllldlsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&CamMat1,&CamMat2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(CamMat1) && PyHirschHomMat2D_Check(CamMat2)) {
                HalconCpp::HTuple CovEMat;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchEssentialMatrixRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat1)->HomMat2D)),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat2)->HomMat2D)),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&CovEMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovEMat));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MatchEssentialMatrixRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_DivImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Add;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Mult,&Add)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImage_FromHImage(self->Image->DivImage(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &Image21,&Mult1,&Add1)) {
            if (PyHirschImage_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->DivImage(*(((PyHirschImage*)Image21)->Image),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DivImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SfsPentland(PyHirschImage*self, PyObject *args)
{
    double Albedo1;
    double Tilt1;
    double Ambient1;
    PyObject* Tilt;
    PyObject* Slant;
    PyObject* Albedo;
    double Slant1;
    PyObject* Ambient;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Slant,&Tilt,&Albedo,&Ambient)) {
            if (PyHirschTuple_Check(Slant) && PyHirschTuple_Check(Tilt) && PyHirschTuple_Check(Albedo) && PyHirschTuple_Check(Ambient)) {
                return PyHirschImage_FromHImage(self->Image->SfsPentland(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Slant1,&Tilt1,&Albedo1,&Ambient1)) {
            return PyHirschImage_FromHImage(self->Image->SfsPentland(Slant1,Tilt1,Albedo1,Ambient1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SfsPentland()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayOpeningRect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PhaseRad(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PhaseRad());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FastThreshold(PyHirschImage*self, PyObject *args)
{
    long MinSize;
    PyObject* MaxGray;
    double MinGray1;
    PyObject* MinGray;
    double MaxGray1;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "ddl", &MinGray1,&MaxGray1,&MinSize1)) {
            return PyHirschRegion_FromHRegion(self->Image->FastThreshold(MinGray1,MaxGray1,MinSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOl", &MinGray,&MaxGray,&MinSize)) {
            if (PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(MaxGray)) {
                return PyHirschRegion_FromHRegion(self->Image->FastThreshold(*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)MaxGray)->Tuple),MinSize));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FastThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenImageConst(Type,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageConst()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddNoiseWhite()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalMax(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->LocalMax());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EliminateMinMax()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_OpticalFlowMg(PyHirschImage*self, PyObject *args)
{
    char* Algorithm;
    double IntegrationSigma;
    double FlowSmoothness;
    PyObject* ImageT2;
    char* MGParamName;
    char* MGParamValue;
    double SmoothingSigma;
    double GradientConstancy;
    
    try {
        if (PyArg_ParseTuple(args, "Osddddss", &ImageT2,&Algorithm,&SmoothingSigma,&IntegrationSigma,&FlowSmoothness,&GradientConstancy,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(ImageT2)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImage*)ImageT2)->Image),Algorithm,SmoothingSigma,IntegrationSigma,FlowSmoothness,GradientConstancy,MGParamName,MGParamValue));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.OpticalFlowMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RotateImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldToHomMat2d(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschHomMat2D_FromHHomMat2D(self->Image->VectorFieldToHomMat2d());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CorrelationFft()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.VarThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesColor(Sigma,Low,High,ExtractWidth,CompleteJunctions));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinesColor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenGabor(Angle,Frequency,Bandwidth,Orientation,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGabor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PaintRegion(PyHirschImage*self, PyObject *args)
{
    PyObject* Region;
    char* Type;
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Region,&Grayval,&Type)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->PaintRegion(*(((PyHirschRegion*)Region)->Region),Grayval,Type));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PaintRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BestMatchPreMg(PyHirschImage*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    long NumLevels;
    long WhichLevels;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                double Row;
                double Column;
                double Error;
                self->Image->BestMatchPreMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,NumLevels,WhichLevels,&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatchPreMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RealToComplex()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CropRectangle1(PyHirschImage*self, PyObject *args)
{
    PyObject* Row1;
    PyObject* Column1;
    PyObject* Column2;
    long Column21;
    long Row21;
    PyObject* Row2;
    long Column11;
    long Row11;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row1,&Column1,&Row2,&Column2)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Column1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Column2)) {
                return PyHirschImage_FromHImage(self->Image->CropRectangle1(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschImage_FromHImage(self->Image->CropRectangle1(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CropRectangle1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ChangeDomain()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_InpaintingCt(PyHirschImage*self, PyObject *args)
{
    double Epsilon1;
    double Kappa;
    double ChannelCoefficients1;
    double Kappa1;
    PyObject* Region1;
    double Epsilon;
    PyObject* Region;
    double Rho;
    double Sigma1;
    double Rho1;
    double Sigma;
    PyObject* ChannelCoefficients;
    
    try {
        if (PyArg_ParseTuple(args, "OddddO", &Region,&Epsilon,&Kappa,&Sigma,&Rho,&ChannelCoefficients)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(ChannelCoefficients)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCt(*(((PyHirschRegion*)Region)->Region),Epsilon,Kappa,Sigma,Rho,*(((PyHirschTuple*)ChannelCoefficients)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddddd", &Region1,&Epsilon1,&Kappa1,&Sigma1,&Rho1,&ChannelCoefficients1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCt(*(((PyHirschRegion*)Region1)->Region),Epsilon1,Kappa1,Sigma1,Rho1,ChannelCoefficients1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingCt()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MaxImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolFft()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ImageToChannels(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->ImageToChannels());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianWeighted()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesSubPix(Filter,Alpha,Low,High));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesSubPix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GammaImage(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    double Offset;
    double Gamma;
    char* Encode;
    double MaxGray;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Gamma,&Offset,&Threshold,&MaxGray,&Encode)) {
            return PyHirschImage_FromHImage(self->Image->GammaImage(Gamma,Offset,Threshold,MaxGray,Encode));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GammaImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Monotony(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->Monotony());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RegiongrowingMean(PyHirschImage*self, PyObject *args)
{
    long StartColumns1;
    double Tolerance1;
    PyObject* StartColumns;
    PyObject* StartRows;
    long MinSize;
    double Tolerance;
    long StartRows1;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "lldl", &StartRows1,&StartColumns1,&Tolerance1,&MinSize1)) {
            return PyHirschRegion_FromHRegion(self->Image->RegiongrowingMean(StartRows1,StartColumns1,Tolerance1,MinSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOdl", &StartRows,&StartColumns,&Tolerance,&MinSize)) {
            if (PyHirschTuple_Check(StartRows) && PyHirschTuple_Check(StartColumns)) {
                return PyHirschRegion_FromHRegion(self->Image->RegiongrowingMean(*(((PyHirschTuple*)StartRows)->Tuple),*(((PyHirschTuple*)StartColumns)->Tuple),Tolerance,MinSize));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RegiongrowingMean()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschRegion_FromHRegion(self->Image->GenInitialComponents(ContrastLow,ContrastHigh,MinSize,Mode,GenericName,GenericValue));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenInitialComponents()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SfsOrigLr(PyHirschImage*self, PyObject *args)
{
    double Albedo1;
    double Tilt1;
    double Ambient1;
    PyObject* Tilt;
    PyObject* Slant;
    PyObject* Albedo;
    double Slant1;
    PyObject* Ambient;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Slant,&Tilt,&Albedo,&Ambient)) {
            if (PyHirschTuple_Check(Slant) && PyHirschTuple_Check(Tilt) && PyHirschTuple_Check(Albedo) && PyHirschTuple_Check(Ambient)) {
                return PyHirschImage_FromHImage(self->Image->SfsOrigLr(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Slant1,&Tilt1,&Albedo1,&Ambient1)) {
            return PyHirschImage_FromHImage(self->Image->SfsOrigLr(Slant1,Tilt1,Albedo1,Ambient1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SfsOrigLr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExhaustiveMatchMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AccessChannel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateSlAlZc(PyHirschImage*self, PyObject *)
{
    try {
        double Albedo1;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EstimateSlAlZc(&Albedo1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Albedo1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageSurfaceSecondOrder(PyHirschImage*self, PyObject *args)
{
    double Column;
    double Zeta;
    double Row;
    char* Type;
    long Width;
    double Beta;
    double Epsilon;
    long Height;
    double Delta;
    double Gamma;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sddddddddll", &Type,&Alpha,&Beta,&Gamma,&Delta,&Epsilon,&Zeta,&Row,&Column,&Width,&Height)) {
            self->Image->GenImageSurfaceSecondOrder(Type,Alpha,Beta,Gamma,Delta,Epsilon,Zeta,Row,Column,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageSurfaceSecondOrder()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HoughLineTransDir()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_InterleaveChannels(PyHirschImage*self, PyObject *args)
{
    char* PixelFormat;
    long Alpha;
    char* RowBytes;
    
    try {
        if (PyArg_ParseTuple(args, "ssl", &PixelFormat,&RowBytes,&Alpha)) {
            return PyHirschImage_FromHImage(self->Image->InterleaveChannels(PixelFormat,RowBytes,Alpha));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InterleaveChannels()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MedianImage(PyHirschImage*self, PyObject *args)
{
    char* MaskType;
    char* Margin;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &MaskType,&Radius,&Margin)) {
            return PyHirschImage_FromHImage(self->Image->MedianImage(MaskType,Radius,Margin));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingMcf()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadOcrTrainf(PyHirschImage*self, PyObject *args)
{
    PyObject* TrainingFile;
    char* TrainingFile1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &TrainingFile)) {
            if (PyHirschTuple_Check(TrainingFile)) {
                return PyHirschTuple_FromHTuple(self->Image->ReadOcrTrainf(*(((PyHirschTuple*)TrainingFile)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &TrainingFile1)) {
            return PyHirschTuple_FromHTuple(self->Image->ReadOcrTrainf(TrainingFile1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadOcrTrainf()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Emphasize()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinearTransColor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingCed()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.UnwarpImageVectorField()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenGaussFilter(Sigma1,Sigma2,Phi,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGaussFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SelectObj(PyHirschImage*self, PyObject *args)
{
    long Index1;
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschImage_FromHImage(self->Image->SelectObj(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Index1)) {
            return PyHirschImage_FromHImage(self->Image->SelectObj(Index1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SelectObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MedianSeparate(PyHirschImage*self, PyObject *args)
{
    PyObject* Margin;
    char* Margin1;
    long MaskHeight1;
    long MaskWidth1;
    long MaskWidth;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lls", &MaskWidth1,&MaskHeight1,&Margin1)) {
            return PyHirschImage_FromHImage(self->Image->MedianSeparate(MaskWidth1,MaskHeight1,Margin1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llO", &MaskWidth,&MaskHeight,&Margin)) {
            if (PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->MedianSeparate(MaskWidth,MaskHeight,*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianSeparate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer1Rect(PyHirschImage*self, PyObject *)
{
    try {
        Hlong Width;
        Hlong Height;
        Hlong VerticalPitch;
        Hlong HorizontalBitPitch;
        Hlong BitsPerPixel;
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GetImagePointer1Rect(&Width,&Height,&VerticalPitch,&HorizontalBitPitch,&BitsPerPixel))));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Width)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Height)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(VerticalPitch)));
        PyTuple_SET_ITEM(ret, 4, PyInt_FromLong(long(HorizontalBitPitch)));
        PyTuple_SET_ITEM(ret, 5, PyInt_FromLong(long(BitsPerPixel)));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Clone(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CopyObj(PyHirschImage*self, PyObject *args)
{
    long NumObj;
    long Index;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Index,&NumObj)) {
            return PyHirschImage_FromHImage(self->Image->CopyObj(Index,NumObj));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CopyObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BitNot(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->BitNot());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FftGeneric()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitXor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RegionToMean(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                return PyHirschImage_FromHImage(self->Image->RegionToMean(*(((PyHirschRegion*)Regions)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RegionToMean()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CoherenceEnhancingDiff()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FindDataCode2d(PyHirschImage*self, PyObject *args)
{
    PyObject* DataCodeHandle;
    PyObject* GenParamValue;
    PyObject* GenParamName;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &DataCodeHandle,&GenParamName,&GenParamValue)) {
            if (PyHirschDataCode2D_Check(DataCodeHandle) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HTuple ResultHandles;
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->Image->FindDataCode2d(*(((PyHirschDataCode2D*)DataCodeHandle)->DataCode2D),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple),&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindDataCode2d()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SegmentImageMser(PyHirschImage*self, PyObject *args)
{
    long MaxArea;
    long Delta;
    PyObject* GenParamName;
    char* Polarity;
    PyObject* GenParamValue;
    long MinArea;
    
    try {
        if (PyArg_ParseTuple(args, "slllOO", &Polarity,&MinArea,&MaxArea,&Delta,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HRegion MSERLight;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->SegmentImageMser(&MSERLight,Polarity,MinArea,MaxArea,Delta,*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(MSERLight));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SegmentImageMser()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LogImage(PyHirschImage*self, PyObject *args)
{
    char* Base1;
    PyObject* Base;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Base)) {
            if (PyHirschTuple_Check(Base)) {
                return PyHirschImage_FromHImage(self->Image->LogImage(*(((PyHirschTuple*)Base)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Base1)) {
            return PyHirschImage_FromHImage(self->Image->LogImage(Base1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LogImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SimulateDefocus()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenFilterMask(PyHirschImage*self, PyObject *args)
{
    char* FilterMask1;
    long Width;
    long Width1;
    long Height;
    double Scale;
    long Height1;
    double Scale1;
    PyObject* FilterMask;
    
    try {
        if (PyArg_ParseTuple(args, "sdll", &FilterMask1,&Scale1,&Width1,&Height1)) {
            self->Image->GenFilterMask(FilterMask1,Scale1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odll", &FilterMask,&Scale,&Width,&Height)) {
            if (PyHirschTuple_Check(FilterMask)) {
                self->Image->GenFilterMask(*(((PyHirschTuple*)FilterMask)->Tuple),Scale,Width,Height);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenFilterMask()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.OverpaintGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CfaToRgb()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AsinImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->AsinImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenLowpass(Frequency,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenLowpass()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_TrimmedMean(PyHirschImage*self, PyObject *args)
{
    long Number;
    long Number1;
    PyObject* Mask;
    char* Margin1;
    PyObject* Mask1;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OlO", &Mask,&Number,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->TrimmedMean(*(((PyHirschRegion*)Mask)->Region),Number,*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &Mask1,&Number1,&Margin1)) {
            if (PyHirschRegion_Check(Mask1)) {
                return PyHirschImage_FromHImage(self->Image->TrimmedMean(*(((PyHirschRegion*)Mask1)->Region),Number1,Margin1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TrimmedMean()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjMatchPointsRansacGuided(PyHirschImage*self, PyObject *args)
{
    long RandSeed;
    double DistanceThreshold;
    long MatchThreshold;
    PyObject* Cols2;
    PyObject* Image2;
    PyObject* HomMat2DGuide;
    char* EstimationMethod;
    PyObject* Rows1;
    PyObject* Cols1;
    long MaskSize;
    PyObject* Rows2;
    double DistanceTolerance;
    char* GrayMatchMethod;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOslOdlsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&HomMat2DGuide,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(HomMat2DGuide)) {
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide)->HomMat2D)),DistanceTolerance,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjMatchPointsRansacGuided()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Width(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Image->Width());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AreaCenterGray(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions1;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Row1;
                double Column1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->AreaCenterGray(*(((PyHirschRegion*)Regions1)->Region),&Row1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->AreaCenterGray(*(((PyHirschRegion*)Regions)->Region),&Row,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AreaCenterGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TileChannels()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MomentsGrayPlane(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions1;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double MRow1;
                double MCol1;
                double Alpha1;
                double Beta1;
                double Mean1;
                self->Image->MomentsGrayPlane(*(((PyHirschRegion*)Regions1)->Region),&MRow1,&MCol1,&Alpha1,&Beta1,&Mean1);
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(MRow1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(MCol1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Alpha1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Beta1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Mean1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple MRow;
                HalconCpp::HTuple MCol;
                HalconCpp::HTuple Alpha;
                HalconCpp::HTuple Beta;
                HalconCpp::HTuple Mean;
                self->Image->MomentsGrayPlane(*(((PyHirschRegion*)Regions)->Region),&MRow,&MCol,&Alpha,&Beta,&Mean);
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(MRow));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(MCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Alpha));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Beta));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Mean));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MomentsGrayPlane()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MatchFundamentalMatrixDistortionRansac(PyHirschImage*self, PyObject *args)
{
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MatchFundamentalMatrixDistortionRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinomialFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HighpassImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PrincipalComp(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HTuple InfoPerComp;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->PrincipalComp(&InfoPerComp)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(InfoPerComp));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenSphericalMosaic(PyHirschImage*self, PyObject *args)
{
    double LongMax1;
    char* StackingOrder1;
    double LongMin1;
    PyObject* LatMin;
    PyObject* CameraMatrices1;
    double LatMin1;
    PyObject* RotationMatrices1;
    PyObject* Interpolation;
    PyObject* StackingOrder;
    PyObject* LongMin;
    PyObject* RotationMatrices;
    PyObject* LatMax;
    PyObject* LatLongStep;
    double LatMax1;
    double LatLongStep1;
    PyObject* LongMax;
    char* Interpolation1;
    PyObject* CameraMatrices;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &CameraMatrices,&RotationMatrices,&LatMin,&LatMax,&LongMin,&LongMax,&LatLongStep,&StackingOrder,&Interpolation)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices) && PyHirschHomMat2DArray_Check(RotationMatrices) && PyHirschTuple_Check(LatMin) && PyHirschTuple_Check(LatMax) && PyHirschTuple_Check(LongMin) && PyHirschTuple_Check(LongMax) && PyHirschTuple_Check(LatLongStep) && PyHirschTuple_Check(StackingOrder) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->GenSphericalMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices)->HomMat2DArray)),*(((PyHirschTuple*)LatMin)->Tuple),*(((PyHirschTuple*)LatMax)->Tuple),*(((PyHirschTuple*)LongMin)->Tuple),*(((PyHirschTuple*)LongMax)->Tuple),*(((PyHirschTuple*)LatLongStep)->Tuple),*(((PyHirschTuple*)StackingOrder)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOdddddss", &CameraMatrices1,&RotationMatrices1,&LatMin1,&LatMax1,&LongMin1,&LongMax1,&LatLongStep1,&StackingOrder1,&Interpolation1)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices1) && PyHirschHomMat2DArray_Check(RotationMatrices1)) {
                return PyHirschImage_FromHImage(self->Image->GenSphericalMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices1)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices1)->HomMat2DArray)),LatMin1,LatMax1,LongMin1,LongMax1,LatLongStep1,StackingOrder1,Interpolation1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenSphericalMosaic()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyFloat_FromDouble(self->Image->GetGrayvalInterpolated(Row,Column,Interpolation));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetGrayvalInterpolated()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PlateausCenter(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->PlateausCenter());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PowImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Exponent;
    double Exponent1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Exponent)) {
            if (PyHirschTuple_Check(Exponent)) {
                return PyHirschImage_FromHImage(self->Image->PowImage(*(((PyHirschTuple*)Exponent)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "d", &Exponent1)) {
            return PyHirschImage_FromHImage(self->Image->PowImage(Exponent1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PowImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ConnectGridPoints(PyHirschImage*self, PyObject *args)
{
    PyObject* Row1;
    PyObject* Column;
    PyObject* Row;
    PyObject* MaxDist;
    double MaxDist1;
    PyObject* Column1;
    long Sigma1;
    PyObject* Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Column,&Sigma,&MaxDist)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(MaxDist)) {
                return PyHirschXLD_FromHXLD(self->Image->ConnectGridPoints(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)MaxDist)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOld", &Row1,&Column1,&Sigma1,&MaxDist1)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Column1)) {
                return PyHirschXLD_FromHXLD(self->Image->ConnectGridPoints(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),Sigma1,MaxDist1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConnectGridPoints()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PrewittAmp(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PrewittAmp());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AbsImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->AbsImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_DepthFromFocus(PyHirschImage*self, PyObject *args)
{
    char* Selection1;
    PyObject* Selection;
    char* Filter1;
    PyObject* Filter;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Filter,&Selection)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Selection)) {
                HalconCpp::HImage Confidence;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->DepthFromFocus(&Confidence,*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Selection)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Confidence));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &Filter1,&Selection1)) {
            {
            // with output params
                HalconCpp::HImage Confidence1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->DepthFromFocus(&Confidence1,Filter1,Selection1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Confidence1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DepthFromFocus()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ComplexToReal(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage ImageImaginary;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->ComplexToReal(&ImageImaginary)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageImaginary));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_DetermineDeformableModelParams(PyHirschImage*self, PyObject *args)
{
    double ScaleMax;
    long MinContrast;
    double ScaleMin;
    char* Parameters;
    long Contrast;
    PyObject* GenParamName;
    char* Metric;
    PyObject* GenParamValue;
    double AngleStart;
    double AngleExtent;
    char* Optimization;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "lddddssllOOs", &NumLevels,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&Optimization,&Metric,&Contrast,&MinContrast,&GenParamName,&GenParamValue,&Parameters)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HTuple ParameterValue;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetermineDeformableModelParams(NumLevels,AngleStart,AngleExtent,ScaleMin,ScaleMax,Optimization,Metric,Contrast,MinContrast,*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple),Parameters,&ParameterValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ParameterValue));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DetermineDeformableModelParams()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenProjectiveMosaic(PyHirschImage*self, PyObject *args)
{
    PyObject* MappingDest;
    PyObject* HomMatrices2D;
    char* TransformDomain;
    PyObject* MappingSource;
    long StartImage;
    char* StackingOrder;
    
    try {
        if (PyArg_ParseTuple(args, "lOOOss", &StartImage,&MappingSource,&MappingDest,&HomMatrices2D,&StackingOrder,&TransformDomain)) {
            if (PyHirschTuple_Check(MappingSource) && PyHirschTuple_Check(MappingDest) && PyHirschHomMat2DArray_Check(HomMatrices2D)) {
                HalconCpp::HHomMat2DArray MosaicMatrices2D;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenProjectiveMosaic(StartImage,*(((PyHirschTuple*)MappingSource)->Tuple),*(((PyHirschTuple*)MappingDest)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),StackingOrder,TransformDomain,&MosaicMatrices2D)));
                PyTuple_SET_ITEM(ret, 1, PyHirschHomMat2DArray_FromHHomMat2DArray(MosaicMatrices2D));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenProjectiveMosaic()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SmoothImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FreiAmp(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FreiAmp());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Intensity(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions1;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Deviation1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->Intensity(*(((PyHirschRegion*)Regions1)->Region),&Deviation1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Deviation1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple Deviation;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->Intensity(*(((PyHirschRegion*)Regions)->Region),&Deviation)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Deviation));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Intensity()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                return PyHirschRegion_FromHRegion(self->Image->Class2dimUnsup(*(((PyHirschImage*)Image2)->Image),Threshold,NumClasses));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Class2dimUnsup()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.IsotropicDiffusion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Rectangle1Domain()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_TileImagesOffset(PyHirschImage*self, PyObject *args)
{
    PyObject* Row1;
    PyObject* Col2;
    long Col11;
    long Width;
    PyObject* Col1;
    long Row11;
    long Row21;
    long Width1;
    long OffsetRow1;
    long Height;
    long OffsetCol1;
    long Height1;
    PyObject* OffsetCol;
    PyObject* Row2;
    PyObject* OffsetRow;
    long Col21;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOll", &OffsetRow,&OffsetCol,&Row1,&Col1,&Row2,&Col2,&Width,&Height)) {
            if (PyHirschTuple_Check(OffsetRow) && PyHirschTuple_Check(OffsetCol) && PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Col1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Col2)) {
                return PyHirschImage_FromHImage(self->Image->TileImagesOffset(*(((PyHirschTuple*)OffsetRow)->Tuple),*(((PyHirschTuple*)OffsetCol)->Tuple),*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Col1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Col2)->Tuple),Width,Height));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llllllll", &OffsetRow1,&OffsetCol1,&Row11,&Col11,&Row21,&Col21,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->TileImagesOffset(OffsetRow1,OffsetCol1,Row11,Col11,Row21,Col21,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TileImagesOffset()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RobinsonAmp(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->RobinsonAmp());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalMin(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->LocalMin());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SqrtImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->SqrtImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImageTime(PyHirschImage*self, PyObject *)
{
    try {
        Hlong Second;
        Hlong Minute;
        Hlong Hour;
        Hlong Day;
        Hlong YDay;
        Hlong Month;
        Hlong Year;
        PyObject *ret = PyTuple_New(8);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GetImageTime(&Second,&Minute,&Hour,&Day,&YDay,&Month,&Year))));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Second)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Minute)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Hour)));
        PyTuple_SET_ITEM(ret, 4, PyInt_FromLong(long(Day)));
        PyTuple_SET_ITEM(ret, 5, PyInt_FromLong(long(YDay)));
        PyTuple_SET_ITEM(ret, 6, PyInt_FromLong(long(Month)));
        PyTuple_SET_ITEM(ret, 7, PyInt_FromLong(long(Year)));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBinocularProjRectification(PyHirschImage*self, PyObject *args)
{
    long Width1;
    PyObject* CovFMat;
    long SubSampling;
    long Height1;
    PyObject* FMatrix;
    long Height2;
    long Width2;
    char* Mapping;
    
    try {
        if (PyArg_ParseTuple(args, "OOllllls", &FMatrix,&CovFMat,&Width1,&Height1,&Width2,&Height2,&SubSampling,&Mapping)) {
            if (PyHirschHomMat2D_Check(FMatrix) && PyHirschTuple_Check(CovFMat)) {
                HalconCpp::HTuple CovFMatRect;
                HalconCpp::HHomMat2D H1;
                HalconCpp::HHomMat2D H2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBinocularProjRectification(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)FMatrix)->HomMat2D)),*(((PyHirschTuple*)CovFMat)->Tuple),Width1,Height1,Width2,Height2,SubSampling,Mapping,&CovFMatRect,&H1,&H2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovFMatRect));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2D_FromHHomMat2D(H1));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBinocularProjRectification()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsHarris(PyHirschImage*self, PyObject *args)
{
    double SigmaSmooth1;
    double Threshold1;
    double SigmaGrad1;
    double SigmaGrad;
    PyObject* Threshold;
    double SigmaSmooth;
    double Alpha1;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "dddO", &SigmaGrad,&SigmaSmooth,&Alpha,&Threshold)) {
            if (PyHirschTuple_Check(Threshold)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->PointsHarris(SigmaGrad,SigmaSmooth,Alpha,*(((PyHirschTuple*)Threshold)->Tuple),&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &SigmaGrad1,&SigmaSmooth1,&Alpha1,&Threshold1)) {
            {
            // with output params
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                self->Image->PointsHarris(SigmaGrad1,SigmaSmooth1,Alpha1,Threshold1,&Row1,&Column1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsHarris()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImageType(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Image->GetImageType());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CountChannels(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Image->CountChannels());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageSurfaceFirstOrder(PyHirschImage*self, PyObject *args)
{
    double Column;
    double Row;
    char* Type;
    long Width;
    double Beta;
    long Height;
    double Gamma;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdddddll", &Type,&Alpha,&Beta,&Gamma,&Row,&Column,&Width,&Height)) {
            self->Image->GenImageSurfaceFirstOrder(Type,Alpha,Beta,Gamma,Row,Column,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageSurfaceFirstOrder()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WienerFilterNi()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Plateaus(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->Plateaus());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenPsfMotion(PSFwidth,PSFheight,Blurring,Angle,Type);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenPsfMotion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SetGrayval(PyHirschImage*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    long Row1;
    double Grayval1;
    PyObject* Grayval;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Row,&Column,&Grayval)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Grayval)) {
                self->Image->SetGrayval(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Grayval)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lld", &Row1,&Column1,&Grayval1)) {
            self->Image->SetGrayval(Row1,Column1,Grayval1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SetGrayval()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReduceDomain()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ExpandGray(PyHirschImage*self, PyObject *args)
{
    char* Iterations;
    long Threshold;
    PyObject* ForbiddenArea;
    PyObject* Regions;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OOssl", &Regions,&ForbiddenArea,&Iterations,&Mode,&Threshold)) {
            if (PyHirschRegion_Check(Regions) && PyHirschRegion_Check(ForbiddenArea)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGray(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschRegion*)ForbiddenArea)->Region),Iterations,Mode,Threshold));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExpandGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBundleAdjustedMosaic(PyHirschImage*self, PyObject *args)
{
    char* TransformDomain;
    char* StackingOrder;
    PyObject* HomMatrices2D;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &HomMatrices2D,&StackingOrder,&TransformDomain)) {
            if (PyHirschHomMat2DArray_Check(HomMatrices2D)) {
                HalconCpp::HHomMat2D TransMat2D;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBundleAdjustedMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),StackingOrder,TransformDomain,&TransMat2D)));
                PyTuple_SET_ITEM(ret, 1, PyHirschHomMat2D_FromHHomMat2D(TransMat2D));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBundleAdjustedMosaic()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayDilationShape()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanSp()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_WriteOcrTrainfImage(PyHirschImage*self, PyObject *args)
{
    char* Class;
    char* TrainingFile;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Class,&TrainingFile)) {
            self->Image->WriteOcrTrainfImage(Class,TrainingFile);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WriteOcrTrainfImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayTophat()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GaussImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_DeviationN(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->DeviationN());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenBandfilter(MinFrequency,MaxFrequency,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBandfilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AppendChannel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenPsfDefocus(PSFwidth,PSFheight,Blurring);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenPsfDefocus()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ZoomImageFactor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExhaustiveMatch()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WriteImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ZeroCrossing(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->ZeroCrossing());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosingRect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AffineTransImageSize(PyHirschImage*self, PyObject *args)
{
    long Height;
    char* Interpolation;
    long Width;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &HomMat2D,&Interpolation,&Width,&Height)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImageSize(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),Interpolation,Width,Height));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AffineTransImageSize()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenDiscSe(Type,Width,Height,Smax);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenDiscSe()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BinaryThreshold(PyHirschImage*self, PyObject *args)
{
    char* Method;
    char* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Method,&LightDark)) {
            {
            // with output params
                Hlong UsedThreshold;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->BinaryThreshold(Method,LightDark,&UsedThreshold)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(UsedThreshold)));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinaryThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_KirschDir(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->KirschDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesFacet(MaskSize,Low,High,LightDark));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinesFacet()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FreiDir(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->FreiDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_TanImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->TanImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayDilationRect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayOpening()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ZoomImageSize()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CharThreshold(PyHirschImage*self, PyObject *args)
{
    double Sigma1;
    double Percent1;
    PyObject* Percent;
    PyObject* HistoRegion;
    double Sigma;
    PyObject* HistoRegion1;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &HistoRegion1,&Sigma1,&Percent1)) {
            if (PyHirschRegion_Check(HistoRegion1)) {
                Hlong Threshold1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->CharThreshold(*(((PyHirschRegion*)HistoRegion1)->Region),Sigma1,Percent1,&Threshold1)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Threshold1)));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OdO", &HistoRegion,&Sigma,&Percent)) {
            if (PyHirschRegion_Check(HistoRegion) && PyHirschTuple_Check(Percent)) {
                HalconCpp::HTuple Threshold;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->CharThreshold(*(((PyHirschRegion*)HistoRegion)->Region),Sigma,*(((PyHirschTuple*)Percent)->Tuple),&Threshold)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Threshold));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CharThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SinImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->SinImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SceneFlowUncalib(PyHirschImage*self, PyObject *args)
{
    char* GenParamValue1;
    PyObject* ImageRect2T2;
    PyObject* Disparity1;
    PyObject* ImageRect1T2;
    PyObject* ImageRect2T11;
    PyObject* GenParamName;
    double SmoothingFlow1;
    PyObject* Disparity;
    PyObject* ImageRect1T21;
    PyObject* GenParamValue;
    double SmoothingDisparity1;
    PyObject* ImageRect2T21;
    PyObject* SmoothingDisparity;
    char* GenParamName1;
    PyObject* ImageRect2T1;
    PyObject* SmoothingFlow;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &ImageRect2T1,&ImageRect1T2,&ImageRect2T2,&Disparity,&SmoothingFlow,&SmoothingDisparity,&GenParamName,&GenParamValue)) {
            if (PyHirschImage_Check(ImageRect2T1) && PyHirschImage_Check(ImageRect1T2) && PyHirschImage_Check(ImageRect2T2) && PyHirschImage_Check(Disparity) && PyHirschTuple_Check(SmoothingFlow) && PyHirschTuple_Check(SmoothingDisparity) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HImage DisparityChange;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SceneFlowUncalib(*(((PyHirschImage*)ImageRect2T1)->Image),*(((PyHirschImage*)ImageRect1T2)->Image),*(((PyHirschImage*)ImageRect2T2)->Image),*(((PyHirschImage*)Disparity)->Image),&DisparityChange,*(((PyHirschTuple*)SmoothingFlow)->Tuple),*(((PyHirschTuple*)SmoothingDisparity)->Tuple),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(DisparityChange));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOddss", &ImageRect2T11,&ImageRect1T21,&ImageRect2T21,&Disparity1,&SmoothingFlow1,&SmoothingDisparity1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschImage_Check(ImageRect2T11) && PyHirschImage_Check(ImageRect1T21) && PyHirschImage_Check(ImageRect2T21) && PyHirschImage_Check(Disparity1)) {
                HalconCpp::HImage DisparityChange1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SceneFlowUncalib(*(((PyHirschImage*)ImageRect2T11)->Image),*(((PyHirschImage*)ImageRect1T21)->Image),*(((PyHirschImage*)ImageRect2T21)->Image),*(((PyHirschImage*)Disparity1)->Image),&DisparityChange1,SmoothingFlow1,SmoothingDisparity1,GenParamName1,GenParamValue1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(DisparityChange1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SceneFlowUncalib()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AtanImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->AtanImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ScaleImageMax(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->ScaleImageMax());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitRshift()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExpandLine()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ChannelsToImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->ChannelsToImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                double Row;
                double Column;
                double Error;
                self->Image->BestMatch(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatch()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingAniso()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_NoiseDistributionMean(PyHirschImage*self, PyObject *args)
{
    PyObject* ConstRegion;
    long FilterSize;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &ConstRegion,&FilterSize)) {
            if (PyHirschRegion_Check(ConstRegion)) {
                return PyHirschTuple_FromHTuple(self->Image->NoiseDistributionMean(*(((PyHirschRegion*)ConstRegion)->Region),FilterSize));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.NoiseDistributionMean()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ReconstructHeightFieldFromGradient(PyHirschImage*self, PyObject *args)
{
    PyObject* GenParamValue;
    PyObject* GenParamName;
    char* ReconstructionMethod;
    
    try {
        if (PyArg_ParseTuple(args, "sOO", &ReconstructionMethod,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                return PyHirschImage_FromHImage(self->Image->ReconstructHeightFieldFromGradient(ReconstructionMethod,*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReconstructHeightFieldFromGradient()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AbsDiffImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Image21;
    PyObject* Mult;
    PyObject* Image2;
    double Mult1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image21,&Mult1)) {
            if (PyHirschImage_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->AbsDiffImage(*(((PyHirschImage*)Image21)->Image),Mult1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image2,&Mult)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Mult)) {
                return PyHirschImage_FromHImage(self->Image->AbsDiffImage(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Mult)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AbsDiffImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PhaseCorrelationFft(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageFFT2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageFFT2)) {
            if (PyHirschImage_Check(ImageFFT2)) {
                return PyHirschImage_FromHImage(self->Image->PhaseCorrelationFft(*(((PyHirschImage*)ImageFFT2)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PhaseCorrelationFft()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->PointsLepetit(Radius,CheckNeighbor,MinCheckNeighborDiff,MinScore,Subpix,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsLepetit()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PaintGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_DerivateVectorField(PyHirschImage*self, PyObject *args)
{
    double Sigma;
    char* Component;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Sigma,&Component)) {
            return PyHirschImage_FromHImage(self->Image->DerivateVectorField(Sigma,Component));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DerivateVectorField()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImageSize(PyHirschImage*self, PyObject *)
{
    try {
        Hlong Width1;
        Hlong Height1;
        self->Image->GetImageSize(&Width1,&Height1);
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(Width1)));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Height1)));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DynThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AutoThreshold(PyHirschImage*self, PyObject *args)
{
    PyObject* Sigma;
    double Sigma1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma1)) {
            return PyHirschRegion_FromHRegion(self->Image->AutoThreshold(Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Sigma)) {
            if (PyHirschTuple_Check(Sigma)) {
                return PyHirschRegion_FromHRegion(self->Image->AutoThreshold(*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AutoThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EstimateNoise()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GuidedFilter(PyHirschImage*self, PyObject *args)
{
    double Amplitude;
    PyObject* ImageGuide;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "Old", &ImageGuide,&Radius,&Amplitude)) {
            if (PyHirschImage_Check(ImageGuide)) {
                return PyHirschImage_FromHImage(self->Image->GuidedFilter(*(((PyHirschImage*)ImageGuide)->Image),Radius,Amplitude));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GuidedFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LaplaceOfGauss(PyHirschImage*self, PyObject *args)
{
    PyObject* Sigma;
    double Sigma1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma1)) {
            return PyHirschImage_FromHImage(self->Image->LaplaceOfGauss(Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Sigma)) {
            if (PyHirschTuple_Check(Sigma)) {
                return PyHirschImage_FromHImage(self->Image->LaplaceOfGauss(*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LaplaceOfGauss()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CompareObj(PyHirschImage*self, PyObject *args)
{
    PyObject* Objects21;
    double Epsilon1;
    PyObject* Objects2;
    PyObject* Epsilon;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Objects21,&Epsilon1)) {
            if (PyHirschImage_Check(Objects21)) {
                return PyInt_FromLong(long(self->Image->CompareObj(*(((PyHirschImage*)Objects21)->Image),Epsilon1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Objects2,&Epsilon)) {
            if (PyHirschImage_Check(Objects2) && PyHirschTuple_Check(Epsilon)) {
                return PyInt_FromLong(long(self->Image->CompareObj(*(((PyHirschImage*)Objects2)->Image),*(((PyHirschTuple*)Epsilon)->Tuple))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CompareObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Threshold(PyHirschImage*self, PyObject *args)
{
    double MaxGray1;
    PyObject* MaxGray;
    PyObject* MinGray;
    double MinGray1;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &MinGray1,&MaxGray1)) {
            return PyHirschRegion_FromHRegion(self->Image->Threshold(MinGray1,MaxGray1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MinGray,&MaxGray)) {
            if (PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(MaxGray)) {
                return PyHirschRegion_FromHRegion(self->Image->Threshold(*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)MaxGray)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Threshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadOcrTrainfSelect(PyHirschImage*self, PyObject *args)
{
    PyObject* TrainingFile;
    PyObject* SearchNames;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &TrainingFile,&SearchNames)) {
            if (PyHirschTuple_Check(TrainingFile) && PyHirschTuple_Check(SearchNames)) {
                return PyHirschTuple_FromHTuple(self->Image->ReadOcrTrainfSelect(*(((PyHirschTuple*)TrainingFile)->Tuple),*(((PyHirschTuple*)SearchNames)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadOcrTrainfSelect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschRegion_FromHRegion(self->Image->ClassNdimNorm(Metric,SingleMultiple,Radius,Center));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ClassNdimNorm()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenCoocMatrix(PyHirschImage*self, PyObject *args)
{
    long Direction;
    long LdGray;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Regions,&LdGray,&Direction)) {
            if (PyHirschRegion_Check(Regions)) {
                return PyHirschImage_FromHImage(self->Image->GenCoocMatrix(*(((PyHirschRegion*)Regions)->Region),LdGray,Direction));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenCoocMatrix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SobelAmp()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_SfsModLr(PyHirschImage*self, PyObject *args)
{
    double Albedo1;
    double Tilt1;
    double Ambient1;
    PyObject* Tilt;
    PyObject* Slant;
    PyObject* Albedo;
    double Slant1;
    PyObject* Ambient;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Slant,&Tilt,&Albedo,&Ambient)) {
            if (PyHirschTuple_Check(Slant) && PyHirschTuple_Check(Tilt) && PyHirschTuple_Check(Albedo) && PyHirschTuple_Check(Ambient)) {
                return PyHirschImage_FromHImage(self->Image->SfsModLr(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Slant1,&Tilt1,&Albedo1,&Ambient1)) {
            return PyHirschImage_FromHImage(self->Image->SfsModLr(Slant1,Tilt1,Albedo1,Ambient1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SfsModLr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsHarrisBinomial(PyHirschImage*self, PyObject *args)
{
    double Threshold;
    char* Subpix;
    long MaskSizeSmooth;
    long MaskSizeGrad;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskSizeGrad,&MaskSizeSmooth,&Alpha,&Threshold,&Subpix)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->PointsHarrisBinomial(MaskSizeGrad,MaskSizeSmooth,Alpha,Threshold,Subpix,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsHarrisBinomial()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MinMaxGray(PyHirschImage*self, PyObject *args)
{
    PyObject* Percent;
    double Percent1;
    PyObject* Regions1;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions,&Percent)) {
            if (PyHirschRegion_Check(Regions) && PyHirschTuple_Check(Percent)) {
                HalconCpp::HTuple Min;
                HalconCpp::HTuple Max;
                HalconCpp::HTuple Range;
                self->Image->MinMaxGray(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschTuple*)Percent)->Tuple),&Min,&Max,&Range);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Min));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Max));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Range));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Od", &Regions1,&Percent1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Min1;
                double Max1;
                double Range1;
                self->Image->MinMaxGray(*(((PyHirschRegion*)Regions1)->Region),Percent1,&Min1,&Max1,&Range1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Min1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Max1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Range1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MinMaxGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_InspectShapeModel(PyHirschImage*self, PyObject *args)
{
    PyObject* Contrast;
    long NumLevels1;
    long NumLevels;
    long Contrast1;
    
    try {
        if (PyArg_ParseTuple(args, "lO", &NumLevels,&Contrast)) {
            if (PyHirschTuple_Check(Contrast)) {
                HalconCpp::HRegion ModelRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->InspectShapeModel(&ModelRegions,NumLevels,*(((PyHirschTuple*)Contrast)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(ModelRegions));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &NumLevels1,&Contrast1)) {
            {
            // with output params
                HalconCpp::HRegion ModelRegions1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->InspectShapeModel(&ModelRegions1,NumLevels1,Contrast1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(ModelRegions1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InspectShapeModel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImageInv()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.InpaintingTexture()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EliminateSp()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LowlandsCenter(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Image->LowlandsCenter());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                double Row;
                double Column;
                double Angle;
                double Error;
                self->Image->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,SubPixel,NumLevels,&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatchRotMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MinImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayHisto(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->GrayHisto(*(((PyHirschRegion*)Regions)->Region),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayHisto()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CheckDifference()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenStdBandpass(Frequency,Sigma,Type,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenStdBandpass()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Roberts()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MirrorImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ChangeFormat()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AdjustMosaicImages(PyHirschImage*self, PyObject *args)
{
    PyObject* HomMatrices2D;
    long ReferenceImage;
    char* EstimateParameters;
    char* OECFModel;
    PyObject* To;
    PyObject* From;
    char* EstimationMethod;
    
    try {
        if (PyArg_ParseTuple(args, "OOlOsss", &From,&To,&ReferenceImage,&HomMatrices2D,&EstimationMethod,&EstimateParameters,&OECFModel)) {
            if (PyHirschTuple_Check(From) && PyHirschTuple_Check(To) && PyHirschTuple_Check(HomMatrices2D)) {
                return PyHirschImage_FromHImage(self->Image->AdjustMosaicImages(*(((PyHirschTuple*)From)->Tuple),*(((PyHirschTuple*)To)->Tuple),ReferenceImage,*(((PyHirschTuple*)HomMatrices2D)->Tuple),EstimationMethod,EstimateParameters,OECFModel));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AdjustMosaicImages()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImageExt()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadGraySe(PyHirschImage*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Image->ReadGraySe(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadGraySe()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FitSurfaceFirstOrder(PyHirschImage*self, PyObject *args)
{
    char* Algorithm;
    double ClippingFactor;
    long Iterations;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Regions,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschRegion_Check(Regions)) {
                double Beta;
                double Gamma;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->FitSurfaceFirstOrder(*(((PyHirschRegion*)Regions)->Region),Algorithm,Iterations,ClippingFactor,&Beta,&Gamma)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FitSurfaceFirstOrder()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RadiometricSelfCalibration(PyHirschImage*self, PyObject *args)
{
    long PolynomialDegree;
    char* FunctionType;
    double Smoothness;
    char* Features;
    double ExposureRatios;
    
    try {
        if (PyArg_ParseTuple(args, "dssdl", &ExposureRatios,&Features,&FunctionType,&Smoothness,&PolynomialDegree)) {
            return PyHirschTuple_FromHTuple(self->Image->RadiometricSelfCalibration(ExposureRatios,Features,FunctionType,Smoothness,PolynomialDegree));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RadiometricSelfCalibration()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExpandDomainGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EquHistoImage(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->EquHistoImage());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateAlAm(PyHirschImage*self, PyObject *)
{
    try {
        double Ambient1;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EstimateAlAm(&Ambient1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Ambient1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MidrangeImage(PyHirschImage*self, PyObject *args)
{
    char* Margin1;
    PyObject* Mask1;
    PyObject* Margin;
    PyObject* Mask;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mask,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->MidrangeImage(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Mask1,&Margin1)) {
            if (PyHirschRegion_Check(Mask1)) {
                return PyHirschImage_FromHImage(self->Image->MidrangeImage(*(((PyHirschRegion*)Mask1)->Region),Margin1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MidrangeImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Rgb1ToGray(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->Rgb1ToGray());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitOr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Atan2Image(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageX;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageX)) {
            if (PyHirschImage_Check(ImageX)) {
                return PyHirschImage_FromHImage(self->Image->Atan2Image(*(((PyHirschImage*)ImageX)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Atan2Image()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WienerFilter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddNoiseDistribution()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerByte(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->PowerByte());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_RankRect(PyHirschImage*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    long Rank;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &MaskWidth,&MaskHeight,&Rank)) {
            return PyHirschImage_FromHImage(self->Image->RankRect(MaskWidth,MaskHeight,Rank));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RankRect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDisparityMg(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageRect2;
    double GrayConstancy;
    char* MGParamName;
    char* CalculateScore;
    double Smoothness;
    char* MGParamValue;
    double InitialGuess;
    double GradientConstancy;
    
    try {
        if (PyArg_ParseTuple(args, "Oddddsss", &ImageRect2,&GrayConstancy,&GradientConstancy,&Smoothness,&InitialGuess,&CalculateScore,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(ImageRect2)) {
                HalconCpp::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImage*)ImageRect2)->Image),&Score,GrayConstancy,GradientConstancy,Smoothness,InitialGuess,CalculateScore,MGParamName,MGParamValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinocularDisparityMg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MultImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Add;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Mult,&Add)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImage_FromHImage(self->Image->MultImage(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &Image21,&Mult1,&Add1)) {
            if (PyHirschImage_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->MultImage(*(((PyHirschImage*)Image21)->Image),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MultImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FftImageInv(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->FftImageInv());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDisparityMs(PyHirschImage*self, PyObject *args)
{
    long MinDisparity;
    PyObject* ImageRect21;
    long MinDisparity1;
    long EdgeSmoothing;
    long SurfaceSmoothing;
    char* GenParamName1;
    PyObject* ImageRect2;
    long MaxDisparity;
    PyObject* GenParamName;
    long SurfaceSmoothing1;
    long MaxDisparity1;
    PyObject* GenParamValue;
    char* GenParamValue1;
    long EdgeSmoothing1;
    
    try {
        if (PyArg_ParseTuple(args, "Ollllss", &ImageRect21,&MinDisparity1,&MaxDisparity1,&SurfaceSmoothing1,&EdgeSmoothing1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschImage_Check(ImageRect21)) {
                HalconCpp::HImage Score1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMs(*(((PyHirschImage*)ImageRect21)->Image),&Score1,MinDisparity1,MaxDisparity1,SurfaceSmoothing1,EdgeSmoothing1,GenParamName1,GenParamValue1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OllllOO", &ImageRect2,&MinDisparity,&MaxDisparity,&SurfaceSmoothing,&EdgeSmoothing,&GenParamName,&GenParamValue)) {
            if (PyHirschImage_Check(ImageRect2) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMs(*(((PyHirschImage*)ImageRect2)->Image),&Score,MinDisparity,MaxDisparity,SurfaceSmoothing,EdgeSmoothing,*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinocularDisparityMs()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ObjDiff(PyHirschImage*self, PyObject *args)
{
    PyObject* ObjectsSub;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ObjectsSub)) {
            if (PyHirschImage_Check(ObjectsSub)) {
                return PyHirschImage_FromHImage(self->Image->ObjDiff(*(((PyHirschImage*)ObjectsSub)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ObjDiff()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesColorSubPix(Filter,Alpha,Low,High));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesColorSubPix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LinesGauss(PyHirschImage*self, PyObject *args)
{
    char* LineModel;
    double Low;
    double High;
    char* LightDark;
    char* CompleteJunctions;
    char* ExtractWidth;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "dddssss", &Sigma,&Low,&High,&LightDark,&ExtractWidth,&LineModel,&CompleteJunctions)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesGauss(Sigma,Low,High,LightDark,ExtractWidth,LineModel,CompleteJunctions));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinesGauss()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosing()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenGridRectificationMap(PyHirschImage*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    char* Rotation;
    PyObject* ConnectingLines;
    char* MapType;
    long GridSpacing;
    
    try {
        if (PyArg_ParseTuple(args, "OlsOOs", &ConnectingLines,&GridSpacing,&Rotation,&Row,&Column,&MapType)) {
            if (PyHirschXLD_Check(ConnectingLines) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                HalconCpp::HXLD Meshes;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenGridRectificationMap(*(((PyHirschXLD*)ConnectingLines)->XLD),&Meshes,GridSpacing,Rotation,*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),MapType)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLD_FromHXLD(Meshes));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenGridRectificationMap()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EllipticAxisGray(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions1;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Rb1;
                double Phi1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EllipticAxisGray(*(((PyHirschRegion*)Regions1)->Region),&Rb1,&Phi1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Rb1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple Rb;
                HalconCpp::HTuple Phi;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->EllipticAxisGray(*(((PyHirschRegion*)Regions)->Region),&Rb,&Phi)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rb));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EllipticAxisGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDisparity(PyHirschImage*self, PyObject *args)
{
    long MinDisparity;
    char* Filter;
    PyObject* ImageRect2;
    long MaxDisparity;
    char* Method;
    long NumLevels;
    double TextureThresh;
    char* SubDisparity;
    long MaskWidth;
    double ScoreThresh;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oslldllldss", &ImageRect2,&Method,&MaskWidth,&MaskHeight,&TextureThresh,&MinDisparity,&MaxDisparity,&NumLevels,&ScoreThresh,&Filter,&SubDisparity)) {
            if (PyHirschImage_Check(ImageRect2)) {
                HalconCpp::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparity(*(((PyHirschImage*)ImageRect2)->Image),&Score,Method,MaskWidth,MaskHeight,TextureThresh,MinDisparity,MaxDisparity,NumLevels,ScoreThresh,Filter,SubDisparity)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BinocularDisparity()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ProjMatchPointsDistortionRansac(PyHirschImage*self, PyObject *args)
{
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),GrayMatchMethod,MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,Rotation,MatchThreshold,EstimationMethod,DistanceThreshold,RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjMatchPointsDistortionRansac()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.NonmaxSuppressionDir()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ConvolImage(PyHirschImage*self, PyObject *args)
{
    char* Margin1;
    PyObject* FilterMask;
    char* FilterMask1;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &FilterMask1,&Margin1)) {
            return PyHirschImage_FromHImage(self->Image->ConvolImage(FilterMask1,Margin1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &FilterMask,&Margin)) {
            if (PyHirschTuple_Check(FilterMask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->ConvolImage(*(((PyHirschTuple*)FilterMask)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Class2dimSup()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EntropyImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_AddImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Add;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Mult,&Add)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImage_FromHImage(self->Image->AddImage(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &Image21,&Mult1,&Add1)) {
            if (PyHirschImage_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->AddImage(*(((PyHirschImage*)Image21)->Image),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_EntropyGray(PyHirschImage*self, PyObject *args)
{
    PyObject* Regions1;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Anisotropy1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->EntropyGray(*(((PyHirschRegion*)Regions1)->Region),&Anisotropy1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Anisotropy1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple Anisotropy;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->EntropyGray(*(((PyHirschRegion*)Regions)->Region),&Anisotropy)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Anisotropy));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EntropyGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FitSurfaceSecondOrder(PyHirschImage*self, PyObject *args)
{
    char* Algorithm;
    double ClippingFactor;
    long Iterations;
    PyObject* Regions;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Regions,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschRegion_Check(Regions)) {
                double Beta;
                double Gamma;
                double Delta;
                double Epsilon;
                double Zeta;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->FitSurfaceSecondOrder(*(((PyHirschRegion*)Regions)->Region),Algorithm,Iterations,ClippingFactor,&Beta,&Gamma,&Delta,&Epsilon,&Zeta)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FitSurfaceSecondOrder()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenImageGrayRamp(Alpha,Beta,Mean,Row,Column,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImageGrayRamp()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_TileImages(PyHirschImage*self, PyObject *args)
{
    char* TileOrder;
    long NumColumns;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns,&TileOrder)) {
            return PyHirschImage_FromHImage(self->Image->TileImages(NumColumns,TileOrder));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TileImages()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FuzzyEntropy(PyHirschImage*self, PyObject *args)
{
    long Apar;
    PyObject* Regions;
    long Cpar;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Regions,&Apar,&Cpar)) {
            if (PyHirschRegion_Check(Regions)) {
                return PyHirschTuple_FromHTuple(self->Image->FuzzyEntropy(*(((PyHirschRegion*)Regions)->Region),Apar,Cpar));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FuzzyEntropy()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_WatershedsThreshold(PyHirschImage*self, PyObject *args)
{
    PyObject* Threshold;
    long Threshold1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Threshold)) {
            if (PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Image->WatershedsThreshold(*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Threshold1)) {
            return PyHirschRegion_FromHRegion(self->Image->WatershedsThreshold(Threshold1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WatershedsThreshold()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_FindCaltab(PyHirschImage*self, PyObject *args)
{
    long SizeGauss;
    char* CalPlateDescr;
    long MinDiamMarks;
    long MarkThresh;
    
    try {
        if (PyArg_ParseTuple(args, "slll", &CalPlateDescr,&SizeGauss,&MarkThresh,&MinDiamMarks)) {
            return PyHirschRegion_FromHRegion(self->Image->FindCaltab(CalPlateDescr,SizeGauss,MarkThresh,MinDiamMarks));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindCaltab()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GenPrincipalCompTrans(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HTuple TransInv;
        HalconCpp::HTuple Mean;
        HalconCpp::HTuple Cov;
        HalconCpp::HTuple InfoPerComp;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->GenPrincipalCompTrans(&TransInv,&Mean,&Cov,&InfoPerComp)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(TransInv));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Mean));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Cov));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(InfoPerComp));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayBothat()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Rgb3ToGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RftGeneric()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ExpImage(PyHirschImage*self, PyObject *args)
{
    char* Base1;
    PyObject* Base;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Base)) {
            if (PyHirschTuple_Check(Base)) {
                return PyHirschImage_FromHImage(self->Image->ExpImage(*(((PyHirschTuple*)Base)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Base1)) {
            return PyHirschImage_FromHImage(self->Image->ExpImage(Base1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExpImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayProjections(PyHirschImage*self, PyObject *args)
{
    PyObject* Region;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Region,&Mode)) {
            if (PyHirschRegion_Check(Region)) {
                HalconCpp::HTuple VertProjection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->GrayProjections(*(((PyHirschRegion*)Region)->Region),Mode,&VertProjection)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(VertProjection));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayProjections()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ConcatObj(PyHirschImage*self, PyObject *args)
{
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschImage_Check(Objects2)) {
                return PyHirschImage_FromHImage(self->Image->ConcatObj(*(((PyHirschImage*)Objects2)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConcatObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_TestEqualObj(PyHirschImage*self, PyObject *args)
{
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschImage_Check(Objects2)) {
                return PyInt_FromLong(long(self->Image->TestEqualObj(*(((PyHirschImage*)Objects2)->Image))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TestEqualObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosingShape()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->GenHighpass(Frequency,Norm,Mode,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenHighpass()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_LearnNdimNorm(PyHirschImage*self, PyObject *args)
{
    PyObject* Foreground;
    char* Metric;
    double Distance;
    PyObject* Background;
    double MinNumberPercent;
    
    try {
        if (PyArg_ParseTuple(args, "OOsdd", &Foreground,&Background,&Metric,&Distance,&MinNumberPercent)) {
            if (PyHirschRegion_Check(Foreground) && PyHirschRegion_Check(Background)) {
                HalconCpp::HTuple Center;
                double Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->LearnNdimNorm(*(((PyHirschRegion*)Foreground)->Region),*(((PyHirschRegion*)Background)->Region),Metric,Distance,MinNumberPercent,&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LearnNdimNorm()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ConvertMapType(PyHirschImage*self, PyObject *args)
{
    long ImageWidth;
    char* NewType;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &NewType,&ImageWidth)) {
            return PyHirschImage_FromHImage(self->Image->ConvertMapType(NewType,ImageWidth));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvertMapType()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_CoocFeatureMatrix(PyHirschImage*self, PyObject *)
{
    try {
        double Correlation;
        double Homogeneity;
        double Contrast;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->CoocFeatureMatrix(&Correlation,&Homogeneity,&Contrast)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Correlation));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Homogeneity));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Contrast));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_PrewittDir(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->PrewittDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageEdgeDir));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitSlice()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AnisotropicDiffusion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_MedianRect(PyHirschImage*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth,&MaskHeight)) {
            return PyHirschImage_FromHImage(self->Image->MedianRect(MaskWidth,MaskHeight));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianRect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadImage(PyHirschImage*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Image->ReadImage(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->Image->ReadImage(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            self->Image->ReadSequence(HeaderSize,SourceWidth,SourceHeight,StartRow,StartColumn,DestWidth,DestHeight,PixelType,BitOrder,ByteOrder,Pad,Index,FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadSequence()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->LocalMinSubPix(Filter,Sigma,Threshold,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LocalMinSubPix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BitLshift()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose5(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage Image2;
        HalconCpp::HImage Image3;
        HalconCpp::HImage Image4;
        HalconCpp::HImage Image5;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose5(&Image2,&Image3,&Image4,&Image5)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Image5));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_GrayInside(PyHirschImage*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->Image->GrayInside());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
            return PyHirschRegion_FromHRegion(self->Image->RegiongrowingN(Metric,MinTolerance,MaxTolerance,MinSize));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RegiongrowingN()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Illuminate()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_ExpandGrayRef(PyHirschImage*self, PyObject *args)
{
    long Threshold;
    PyObject* ForbiddenArea;
    PyObject* Regions;
    char* Iterations;
    char* Mode;
    long RefGray;
    
    try {
        if (PyArg_ParseTuple(args, "OOssll", &Regions,&ForbiddenArea,&Iterations,&Mode,&RefGray,&Threshold)) {
            if (PyHirschRegion_Check(Regions) && PyHirschRegion_Check(ForbiddenArea)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGrayRef(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschRegion*)ForbiddenArea)->Region),Iterations,Mode,RefGray,Threshold));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ExpandGrayRef()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose3(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage Image2;
        HalconCpp::HImage Image3;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose3(&Image2,&Image3)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Watersheds(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HRegion Watersheds;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->Watersheds(&Watersheds)));
        PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(Watersheds));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RankN()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TextureLaws()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose7(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage Image2;
        HalconCpp::HImage Image3;
        HalconCpp::HImage Image4;
        HalconCpp::HImage Image5;
        HalconCpp::HImage Image6;
        HalconCpp::HImage Image7;
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
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose6(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage Image2;
        HalconCpp::HImage Image3;
        HalconCpp::HImage Image4;
        HalconCpp::HImage Image5;
        HalconCpp::HImage Image6;
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose6(&Image2,&Image3,&Image4,&Image5,&Image6)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Image5));
        PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Image6));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SigmaImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose4(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage Image2;
        HalconCpp::HImage Image3;
        HalconCpp::HImage Image4;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose4(&Image2,&Image3,&Image4)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Image4));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CornerResponse()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose2(PyHirschImage*self, PyObject *)
{
    try {
        HalconCpp::HImage Image2;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->Decompose2(&Image2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Image2));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
