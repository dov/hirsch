PyObject *
PyHirschImage_Pouring(PyHirschImage*self, PyObject *args)
{
    long MaxGray1;
    char* Mode1;
    long MinGray;
    long MaxGray;
    long MinGray1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Mode,&MinGray,&MaxGray)) {
            return PyHirschRegion_FromHRegion(self->Image->Pouring(HalconCpp::HString(Mode),MinGray,MaxGray));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &Mode1,&MinGray1,&MaxGray1)) {
            return PyHirschRegion_FromHRegion(self->Image->Pouring(Mode1,MinGray1,MaxGray1));
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
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->VectorFieldLength(HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->VectorFieldLength(Mode1));
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
    long ColMove1;
    long RowMove1;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansac(*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansac(*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslllllOOsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold)) {
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),DistanceThreshold,RandSeed,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points2));
                
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
        return PyHirschTuple_GetAsScalarIfOne(self->Image->EstimateTiltLr());
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
                return PyHirschTuple_GetAsScalarIfOne(self->Image->FuzzyPerimeter(*(((PyHirschRegion*)Regions)->Region),Apar,Cpar));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->GrayHistoRange(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple),NumBins,&BinSize)));
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
    char* ColorSpace1;
    char* ColorSpace;
    PyObject* ImageInput21;
    PyObject* ImageInput31;
    PyObject* ImageInput2;
    PyObject* ImageInput3;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &ImageInput2,&ImageInput3,&ColorSpace)) {
            if (PyHirschImage_Check(ImageInput2) && PyHirschImage_Check(ImageInput3)) {
                HalconCpp::HImage ImageGreen;
                HalconCpp::HImage ImageBlue;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImage*)ImageInput2)->Image),*(((PyHirschImage*)ImageInput3)->Image),&ImageGreen,&ImageBlue,HalconCpp::HString(ColorSpace))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageInput21,&ImageInput31,&ColorSpace1)) {
            if (PyHirschImage_Check(ImageInput21) && PyHirschImage_Check(ImageInput31)) {
                HalconCpp::HImage ImageGreen1;
                HalconCpp::HImage ImageBlue1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImage*)ImageInput21)->Image),*(((PyHirschImage*)ImageInput31)->Image),&ImageGreen1,&ImageBlue1,ColorSpace1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen1));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue1));
                
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
    PyObject* Contour1;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour1,&Interpolation1)) {
            if (PyHirschXLDCont_Check(Contour1)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->GetGrayvalContourXld(*(((PyHirschXLDCont*)Contour1)->XLDCont),Interpolation1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Contour,&Interpolation)) {
            if (PyHirschXLDCont_Check(Contour)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->GetGrayvalContourXld(*(((PyHirschXLDCont*)Contour)->XLDCont),HalconCpp::HString(Interpolation)));
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
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->FillInterlace(HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->FillInterlace(Mode1));
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
    char* FilterType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType)) {
            return PyHirschImage_FromHImage(self->Image->BandpassImage(HalconCpp::HString(FilterType)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FilterType1)) {
            return PyHirschImage_FromHImage(self->Image->BandpassImage(FilterType1));
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
    long NumLevel;
    char* Optimize1;
    char* GrayValues;
    long NumLevel1;
    char* GrayValues1;
    long FirstError;
    long FirstError1;
    
    try {
        if (PyArg_ParseTuple(args, "llss", &FirstError1,&NumLevel1,&Optimize1,&GrayValues1)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplate(FirstError1,NumLevel1,Optimize1,GrayValues1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llss", &FirstError,&NumLevel,&Optimize,&GrayValues)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplate(FirstError,NumLevel,HalconCpp::HString(Optimize),HalconCpp::HString(GrayValues)));
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
    PyObject* ImageJoint2;
    double SigmaSpatial2;
    double SigmaSpatial1;
    double SigmaRange;
    PyObject* ImageJoint1;
    PyObject* GenParamName;
    double GenParamValue1;
    char* GenParamName2;
    char* GenParamName1;
    PyObject* GenParamValue;
    double SigmaRange2;
    double GenParamValue2;
    double SigmaSpatial;
    PyObject* ImageJoint;
    
    try {
        if (PyArg_ParseTuple(args, "Oddsd", &ImageJoint1,&SigmaSpatial1,&SigmaRange1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschImage_Check(ImageJoint1)) {
                return PyHirschImage_FromHImage(self->Image->BilateralFilter(*(((PyHirschImage*)ImageJoint1)->Image),SigmaSpatial1,SigmaRange1,HalconCpp::HString(GenParamName1),GenParamValue1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OddOO", &ImageJoint,&SigmaSpatial,&SigmaRange,&GenParamName,&GenParamValue)) {
            if (PyHirschImage_Check(ImageJoint) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                return PyHirschImage_FromHImage(self->Image->BilateralFilter(*(((PyHirschImage*)ImageJoint)->Image),SigmaSpatial,SigmaRange,*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddsd", &ImageJoint2,&SigmaSpatial2,&SigmaRange2,&GenParamName2,&GenParamValue2)) {
            if (PyHirschImage_Check(ImageJoint2)) {
                return PyHirschImage_FromHImage(self->Image->BilateralFilter(*(((PyHirschImage*)ImageJoint2)->Image),SigmaSpatial2,SigmaRange2,GenParamName2,GenParamValue2));
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
    double Length21;
    PyObject* Column;
    PyObject* Row;
    PyObject* Length1;
    PyObject* BarCodeHandle1;
    double Phi1;
    PyObject* CodeType;
    PyObject* BarCodeHandle2;
    double Column2;
    double Length22;
    PyObject* Length2;
    double Phi2;
    char* CodeType2;
    double Length11;
    PyObject* Phi;
    double Row2;
    double Column1;
    double Row1;
    double Length12;
    char* CodeType1;
    PyObject* BarCodeHandle;
    
    try {
        if (PyArg_ParseTuple(args, "Osddddd", &BarCodeHandle2,&CodeType2,&Row2,&Column2,&Phi2,&Length12,&Length22)) {
            if (PyHirschBarCode_Check(BarCodeHandle2)) {
                return PyString_FromString(self->Image->DecodeBarCodeRectangle2(*(((PyHirschBarCode*)BarCodeHandle2)->BarCode),CodeType2,Row2,Column2,Phi2,Length12,Length22).Text());
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osddddd", &BarCodeHandle1,&CodeType1,&Row1,&Column1,&Phi1,&Length11,&Length21)) {
            if (PyHirschBarCode_Check(BarCodeHandle1)) {
                return PyString_FromString(self->Image->DecodeBarCodeRectangle2(*(((PyHirschBarCode*)BarCodeHandle1)->BarCode),HalconCpp::HString(CodeType1),Row1,Column1,Phi1,Length11,Length21).Text());
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &BarCodeHandle,&CodeType,&Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschBarCode_Check(BarCodeHandle) && PyHirschTuple_Check(CodeType) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->DecodeBarCodeRectangle2(*(((PyHirschBarCode*)BarCodeHandle)->BarCode),*(((PyHirschTuple*)CodeType)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
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
    char* Type1;
    PyObject* Col;
    char* Type;
    PyObject* Col1;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Col,&Type)) {
            if (PyHirschImage_Check(Col)) {
                return PyHirschImage_FromHImage(self->Image->RealToVectorField(*(((PyHirschImage*)Col)->Image),HalconCpp::HString(Type)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Col1,&Type1)) {
            if (PyHirschImage_Check(Col1)) {
                return PyHirschImage_FromHImage(self->Image->RealToVectorField(*(((PyHirschImage*)Col1)->Image),Type1));
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
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(PointerRed));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(PointerGreen));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(PointerBlue));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Type));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Width));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Height));
        
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
        HalconCpp::HString Type1;
        Hlong Width1;
        Hlong Height1;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Image->GetImagePointer1(&Type1,&Width1,&Height1))));
        PyTuple_SET_ITEM(ret, 1, PyString_FromString(Type1.Text()));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Width1)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Height1)));
        
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
    double Sigma1;
    char* Filter;
    double Threshold;
    double Threshold1;
    char* Filter1;
    double Sigma;
    
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
                self->Image->CriticalPointsSubPix(HalconCpp::HString(Filter),Sigma,Threshold,&RowMin,&ColumnMin,&RowMax,&ColumnMax,&RowSaddle,&ColumnSaddle);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColumnMin));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(RowMax));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(ColumnMax));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(RowSaddle));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(ColumnSaddle));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                HalconCpp::HTuple RowMin1;
                HalconCpp::HTuple ColumnMin1;
                HalconCpp::HTuple RowMax1;
                HalconCpp::HTuple ColumnMax1;
                HalconCpp::HTuple RowSaddle1;
                HalconCpp::HTuple ColumnSaddle1;
                self->Image->CriticalPointsSubPix(Filter1,Sigma1,Threshold1,&RowMin1,&ColumnMin1,&RowMax1,&ColumnMax1,&RowSaddle1,&ColumnSaddle1);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowMin1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColumnMin1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(RowMax1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(ColumnMax1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(RowSaddle1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(ColumnSaddle1));
                
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
    char* Optimize1;
    char* GrayValues;
    double AngleExtend;
    long NumLevel1;
    double AngleStep1;
    double AngleExtend1;
    double AngleStep;
    double AngleStart;
    char* GrayValues1;
    double AngleStart1;
    
    try {
        if (PyArg_ParseTuple(args, "ldddss", &NumLevel,&AngleStart,&AngleExtend,&AngleStep,&Optimize,&GrayValues)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplateRot(NumLevel,AngleStart,AngleExtend,AngleStep,HalconCpp::HString(Optimize),HalconCpp::HString(GrayValues)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldddss", &NumLevel1,&AngleStart1,&AngleExtend1,&AngleStep1,&Optimize1,&GrayValues1)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplateRot(NumLevel1,AngleStart1,AngleExtend1,AngleStep1,Optimize1,GrayValues1));
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
    long Exponent1;
    long Width1;
    char* Mode1;
    long Width;
    char* Norm;
    char* Norm1;
    long Height;
    char* Derivative;
    long Height1;
    char* Derivative1;
    long Exponent;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "slssll", &Derivative,&Exponent,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenDerivativeFilter(HalconCpp::HString(Derivative),Exponent,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slssll", &Derivative1,&Exponent1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenDerivativeFilter(Derivative1,Exponent1,Norm1,Mode1,Width1,Height1);
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
    double Sigma1;
    char* Filter;
    double Threshold;
    double Threshold1;
    char* Filter1;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter,&Sigma,&Threshold)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->SaddlePointsSubPix(HalconCpp::HString(Filter),Sigma,Threshold,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                self->Image->SaddlePointsSubPix(Filter1,Sigma1,Threshold1,&Row1,&Column1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column1));
                
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
    PyObject* BarCodeHandle1;
    PyObject* CodeType;
    PyObject* BarCodeHandle2;
    char* CodeType2;
    char* CodeType1;
    PyObject* BarCodeHandle;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &BarCodeHandle,&CodeType)) {
            if (PyHirschBarCode_Check(BarCodeHandle) && PyHirschTuple_Check(CodeType)) {
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->FindBarCode(*(((PyHirschBarCode*)BarCodeHandle)->BarCode),*(((PyHirschTuple*)CodeType)->Tuple),&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &BarCodeHandle1,&CodeType1)) {
            if (PyHirschBarCode_Check(BarCodeHandle1)) {
                HalconCpp::HString DecodedDataStrings1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->FindBarCode(*(((PyHirschBarCode*)BarCodeHandle1)->BarCode),HalconCpp::HString(CodeType1),&DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyString_FromString(DecodedDataStrings1.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &BarCodeHandle2,&CodeType2)) {
            if (PyHirschBarCode_Check(BarCodeHandle2)) {
                HalconCpp::HString DecodedDataStrings2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->FindBarCode(*(((PyHirschBarCode*)BarCodeHandle2)->BarCode),CodeType2,&DecodedDataStrings2)));
                PyTuple_SET_ITEM(ret, 1, PyString_FromString(DecodedDataStrings2.Text()));
                
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
    PyObject* GenParamValue1;
    PyObject* Tilts;
    PyObject* GenParamName;
    PyObject* Tilts1;
    PyObject* ResultType1;
    PyObject* Slants1;
    PyObject* GenParamValue;
    PyObject* Slants;
    PyObject* GenParamName1;
    char* ReconstructionMethod1;
    char* ReconstructionMethod;
    
    try {
        if (PyArg_ParseTuple(args, "OOOsOO", &Slants1,&Tilts1,&ResultType1,&ReconstructionMethod1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschTuple_Check(Slants1) && PyHirschTuple_Check(Tilts1) && PyHirschTuple_Check(ResultType1) && PyHirschTuple_Check(GenParamName1) && PyHirschTuple_Check(GenParamValue1)) {
                HalconCpp::HImage Gradient1;
                HalconCpp::HImage Albedo1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->PhotometricStereo(&Gradient1,&Albedo1,*(((PyHirschTuple*)Slants1)->Tuple),*(((PyHirschTuple*)Tilts1)->Tuple),*(((PyHirschTuple*)ResultType1)->Tuple),ReconstructionMethod1,*(((PyHirschTuple*)GenParamName1)->Tuple),*(((PyHirschTuple*)GenParamValue1)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Gradient1));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Albedo1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOsOO", &Slants,&Tilts,&ResultType,&ReconstructionMethod,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(Slants) && PyHirschTuple_Check(Tilts) && PyHirschTuple_Check(ResultType) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HImage Gradient;
                HalconCpp::HImage Albedo;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->PhotometricStereo(&Gradient,&Albedo,*(((PyHirschTuple*)Slants)->Tuple),*(((PyHirschTuple*)Tilts)->Tuple),*(((PyHirschTuple*)ResultType)->Tuple),HalconCpp::HString(ReconstructionMethod),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple))));
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
    char* Mode1;
    long Width;
    char* Norm;
    char* Norm1;
    long Width1;
    long Height;
    long Height1;
    double MaxFrequency;
    double MinFrequency1;
    double MaxFrequency1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency1,&MaxFrequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenBandpass(MinFrequency1,MaxFrequency1,Norm1,Mode1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency,&MaxFrequency,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenBandpass(MinFrequency,MaxFrequency,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
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
                return PyHirschTuple_GetAsScalarIfOne(self->Image->PlaneDeviation(*(((PyHirschRegion*)Regions)->Region)));
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
    char* Metric2;
    char* Optimization2;
    long Contrast2;
    char* Parameters1;
    double AngleExtent2;
    double ScaleMin2;
    char* Metric;
    PyObject* ScaleMax;
    long NumLevels2;
    char* Optimization;
    double ScaleMax2;
    double AngleStart1;
    PyObject* NumLevels;
    char* Optimization1;
    PyObject* Contrast;
    long MinContrast1;
    PyObject* MinContrast;
    long NumLevels1;
    double AngleExtent1;
    char* Metric1;
    long Contrast1;
    double ScaleMax1;
    PyObject* Parameters;
    double ScaleMin1;
    PyObject* ScaleMin;
    double AngleStart2;
    long MinContrast2;
    char* Parameters2;
    double AngleStart;
    double AngleExtent;
    
    try {
        if (PyArg_ParseTuple(args, "lddddsslls", &NumLevels2,&AngleStart2,&AngleExtent2,&ScaleMin2,&ScaleMax2,&Optimization2,&Metric2,&Contrast2,&MinContrast2,&Parameters2)) {
            {
            // with output params
                HalconCpp::HTuple ParameterValue2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->DetermineShapeModelParams(NumLevels2,AngleStart2,AngleExtent2,ScaleMin2,ScaleMax2,Optimization2,Metric2,Contrast2,MinContrast2,Parameters2,&ParameterValue2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ParameterValue2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lddddsslls", &NumLevels1,&AngleStart1,&AngleExtent1,&ScaleMin1,&ScaleMax1,&Optimization1,&Metric1,&Contrast1,&MinContrast1,&Parameters1)) {
            {
            // with output params
                HalconCpp::HTuple ParameterValue1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->DetermineShapeModelParams(NumLevels1,AngleStart1,AngleExtent1,ScaleMin1,ScaleMax1,HalconCpp::HString(Optimization1),HalconCpp::HString(Metric1),Contrast1,MinContrast1,HalconCpp::HString(Parameters1),&ParameterValue1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ParameterValue1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OddOOssOOO", &NumLevels,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&Optimization,&Metric,&Contrast,&MinContrast,&Parameters)) {
            if (PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(ScaleMin) && PyHirschTuple_Check(ScaleMax) && PyHirschTuple_Check(Contrast) && PyHirschTuple_Check(MinContrast) && PyHirschTuple_Check(Parameters)) {
                HalconCpp::HTuple ParameterValue;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->DetermineShapeModelParams(*(((PyHirschTuple*)NumLevels)->Tuple),AngleStart,AngleExtent,*(((PyHirschTuple*)ScaleMin)->Tuple),*(((PyHirschTuple*)ScaleMax)->Tuple),HalconCpp::HString(Optimization),HalconCpp::HString(Metric),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)MinContrast)->Tuple),*(((PyHirschTuple*)Parameters)->Tuple),&ParameterValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ParameterValue));
                
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
    char* Mode1;
    double Sigma1;
    long Iterations;
    char* Mode;
    long Iterations1;
    double Sigma;
    double Theta1;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "dlsd", &Theta,&Iterations,&Mode,&Sigma)) {
            return PyHirschImage_FromHImage(self->Image->ShockFilter(Theta,Iterations,HalconCpp::HString(Mode),Sigma));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dlsd", &Theta1,&Iterations1,&Mode1,&Sigma1)) {
            return PyHirschImage_FromHImage(self->Image->ShockFilter(Theta1,Iterations1,Mode1,Sigma1));
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
    long PixelShift;
    long Diameter;
    char* FilterType1;
    char* FilterType;
    long PixelShift1;
    long Diameter1;
    
    try {
        if (PyArg_ParseTuple(args, "lsl", &Diameter1,&FilterType1,&PixelShift1)) {
            return PyHirschImage_FromHImage(self->Image->DotsImage(Diameter1,FilterType1,PixelShift1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lsl", &Diameter,&FilterType,&PixelShift)) {
            return PyHirschImage_FromHImage(self->Image->DotsImage(Diameter,HalconCpp::HString(FilterType),PixelShift));
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
    double Sigma1;
    char* Component1;
    PyObject* Sigma;
    double Sigma2;
    char* Component;
    char* Component2;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Sigma1,&Component1)) {
            return PyHirschImage_FromHImage(self->Image->DerivateGauss(Sigma1,HalconCpp::HString(Component1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Sigma,&Component)) {
            if (PyHirschTuple_Check(Sigma)) {
                return PyHirschImage_FromHImage(self->Image->DerivateGauss(*(((PyHirschTuple*)Sigma)->Tuple),HalconCpp::HString(Component)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Sigma2,&Component2)) {
            return PyHirschImage_FromHImage(self->Image->DerivateGauss(Sigma2,Component2));
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
                return PyHirschTuple_GetAsScalarIfOne(self->Image->GetGrayval(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
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
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionAmp(HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionAmp(Mode1));
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
    long Width1;
    char* Mode1;
    double Diameter2;
    double Phi1;
    long Width;
    double Diameter11;
    char* MaskShape;
    char* Norm1;
    long Height;
    char* Norm;
    double Diameter21;
    long Height1;
    double Phi;
    char* MaskShape1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sdddssll", &MaskShape,&Diameter1,&Diameter2,&Phi,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenMeanFilter(HalconCpp::HString(MaskShape),Diameter1,Diameter2,Phi,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddssll", &MaskShape1,&Diameter11,&Diameter21,&Phi1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenMeanFilter(MaskShape1,Diameter11,Diameter21,Phi1,Norm1,Mode1,Width1,Height1);
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
    double MaxError1;
    double AngleStart1;
    char* SubPixel2;
    double AngleExtend;
    double AngleStart2;
    double MaxError2;
    PyObject* TemplateID2;
    PyObject* TemplateID;
    char* SubPixel;
    double MaxError;
    double AngleExtend1;
    double AngleStart;
    char* SubPixel1;
    PyObject* TemplateID1;
    double AngleExtend2;
    
    try {
        if (PyArg_ParseTuple(args, "Oddds", &TemplateID2,&AngleStart2,&AngleExtend2,&MaxError2,&SubPixel2)) {
            if (PyHirschTemplate_Check(TemplateID2)) {
                double Row2;
                double Column2;
                double Angle2;
                double Error2;
                self->Image->BestMatchRot(*(((PyHirschTemplate*)TemplateID2)->Template),AngleStart2,AngleExtend2,MaxError2,SubPixel2,&Row2,&Column2,&Angle2,&Error2);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Angle;
                HalconCpp::HTuple Error;
                self->Image->BestMatchRot(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,HalconCpp::HString(SubPixel),&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &TemplateID1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Row1;
                double Column1;
                double Angle1;
                double Error1;
                self->Image->BestMatchRot(*(((PyHirschTemplate*)TemplateID1)->Template),AngleStart1,AngleExtend1,MaxError1,HalconCpp::HString(SubPixel1),&Row1,&Column1,&Angle1,&Error1);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
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
    char* AdaptImageSize1;
    char* Interpolation;
    char* TransformDomain;
    char* AdaptImageSize;
    char* TransformDomain1;
    char* Interpolation1;
    PyObject* HomMat2D1;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "Osss", &HomMat2D1,&Interpolation1,&AdaptImageSize1,&TransformDomain1)) {
            if (PyHirschHomMat2D_Check(HomMat2D1)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImage(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D1)->HomMat2D)),Interpolation1,AdaptImageSize1,TransformDomain1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osss", &HomMat2D,&Interpolation,&AdaptImageSize,&TransformDomain)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImage(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),HalconCpp::HString(Interpolation),HalconCpp::HString(AdaptImageSize),HalconCpp::HString(TransformDomain)));
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
    PyObject* MaskSize;
    char* ResultType2;
    char* FilterMask2;
    char* FilterMask1;
    long MaskSize1;
    char* ResultType1;
    char* ResultType;
    long MaskSize2;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &ResultType2,&MaskSize2,&FilterMask2)) {
            return PyHirschImage_FromHImage(self->Image->Laplace(ResultType2,MaskSize2,FilterMask2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOs", &ResultType,&MaskSize,&FilterMask)) {
            if (PyHirschTuple_Check(MaskSize)) {
                return PyHirschImage_FromHImage(self->Image->Laplace(HalconCpp::HString(ResultType),*(((PyHirschTuple*)MaskSize)->Tuple),HalconCpp::HString(FilterMask)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sls", &ResultType1,&MaskSize1,&FilterMask1)) {
            return PyHirschImage_FromHImage(self->Image->Laplace(HalconCpp::HString(ResultType1),MaskSize1,HalconCpp::HString(FilterMask1)));
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
    long DistGap1;
    long AngleGap;
    char* Smoothing1;
    char* GenLines;
    long FilterSize1;
    long DirectionUncertainty1;
    long AngleGap1;
    long AngleResolution1;
    long AngleResolution;
    long FilterSize;
    long DirectionUncertainty;
    long Threshold1;
    char* GenLines1;
    long DistGap;
    
    try {
        if (PyArg_ParseTuple(args, "llslllls", &DirectionUncertainty1,&AngleResolution1,&Smoothing1,&FilterSize1,&Threshold1,&AngleGap1,&DistGap1,&GenLines1)) {
            {
            // with output params
                HalconCpp::HRegion Lines1;
                HalconCpp::HTuple Angle1;
                HalconCpp::HTuple Dist1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->HoughLinesDir(&Lines1,DirectionUncertainty1,AngleResolution1,Smoothing1,FilterSize1,Threshold1,AngleGap1,DistGap1,GenLines1,&Angle1,&Dist1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(Lines1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Dist1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llslllls", &DirectionUncertainty,&AngleResolution,&Smoothing,&FilterSize,&Threshold,&AngleGap,&DistGap,&GenLines)) {
            {
            // with output params
                HalconCpp::HRegion Lines;
                HalconCpp::HTuple Angle;
                HalconCpp::HTuple Dist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->HoughLinesDir(&Lines,DirectionUncertainty,AngleResolution,HalconCpp::HString(Smoothing),FilterSize,Threshold,AngleGap,DistGap,HalconCpp::HString(GenLines),&Angle,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(Lines));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Dist));
                
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
    char* AdaptImageSize1;
    char* Interpolation;
    char* AdaptImageSize;
    char* Interpolation1;
    PyObject* HomMat2D1;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &HomMat2D,&Interpolation,&AdaptImageSize)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImage(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),HalconCpp::HString(Interpolation),HalconCpp::HString(AdaptImageSize)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &HomMat2D1,&Interpolation1,&AdaptImageSize1)) {
            if (PyHirschHomMat2D_Check(HomMat2D1)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImage(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D1)->HomMat2D)),Interpolation1,AdaptImageSize1));
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
        return PyHirschTuple_GetAsScalarIfOne(self->Image->Height());
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
    char* Subpix2;
    double SigmaD1;
    double SigmaW1;
    double MinAngle;
    double MinApparentness2;
    char* Subpix1;
    PyObject* MinGrad;
    double MinApparentness1;
    double MinAngle2;
    char* Subpix;
    double MinGrad2;
    PyObject* SigmaD;
    double MinGrad1;
    PyObject* SigmaW;
    PyObject* MinApparentness;
    long MaskSize1;
    double SigmaW2;
    double SigmaD2;
    double MinAngle1;
    long MaskSize;
    long MaskSize2;
    
    try {
        if (PyArg_ParseTuple(args, "lOOOOds", &MaskSize,&SigmaW,&SigmaD,&MinGrad,&MinApparentness,&MinAngle,&Subpix)) {
            if (PyHirschTuple_Check(SigmaW) && PyHirschTuple_Check(SigmaD) && PyHirschTuple_Check(MinGrad) && PyHirschTuple_Check(MinApparentness)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->PointsSojka(MaskSize,*(((PyHirschTuple*)SigmaW)->Tuple),*(((PyHirschTuple*)SigmaD)->Tuple),*(((PyHirschTuple*)MinGrad)->Tuple),*(((PyHirschTuple*)MinApparentness)->Tuple),MinAngle,HalconCpp::HString(Subpix),&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lddddds", &MaskSize2,&SigmaW2,&SigmaD2,&MinGrad2,&MinApparentness2,&MinAngle2,&Subpix2)) {
            {
            // with output params
                HalconCpp::HTuple Row2;
                HalconCpp::HTuple Column2;
                self->Image->PointsSojka(MaskSize2,SigmaW2,SigmaD2,MinGrad2,MinApparentness2,MinAngle2,Subpix2,&Row2,&Column2);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row2));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lddddds", &MaskSize1,&SigmaW1,&SigmaD1,&MinGrad1,&MinApparentness1,&MinAngle1,&Subpix1)) {
            {
            // with output params
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                self->Image->PointsSojka(MaskSize1,SigmaW1,SigmaD1,MinGrad1,MinApparentness1,MinAngle1,HalconCpp::HString(Subpix1),&Row1,&Column1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column1));
                
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
    char* ColorSpace1;
    char* ColorSpace;
    PyObject* ImageGreen;
    PyObject* ImageBlue1;
    PyObject* ImageGreen1;
    PyObject* ImageBlue;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &ImageGreen1,&ImageBlue1,&ColorSpace1)) {
            if (PyHirschImage_Check(ImageGreen1) && PyHirschImage_Check(ImageBlue1)) {
                HalconCpp::HImage ImageResult21;
                HalconCpp::HImage ImageResult31;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImage*)ImageGreen1)->Image),*(((PyHirschImage*)ImageBlue1)->Image),&ImageResult21,&ImageResult31,ColorSpace1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult21));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult31));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageGreen,&ImageBlue,&ColorSpace)) {
            if (PyHirschImage_Check(ImageGreen) && PyHirschImage_Check(ImageBlue)) {
                HalconCpp::HImage ImageResult2;
                HalconCpp::HImage ImageResult3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImage*)ImageGreen)->Image),*(((PyHirschImage*)ImageBlue)->Image),&ImageResult2,&ImageResult3,HalconCpp::HString(ColorSpace))));
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
    char* Margin2;
    long ModePercent;
    char* Margin1;
    char* MaskType1;
    long ModePercent2;
    char* MaskType;
    long ModePercent1;
    PyObject* Margin;
    char* MaskType2;
    long Radius2;
    long Radius1;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "slls", &MaskType1,&Radius1,&ModePercent1,&Margin1)) {
            return PyHirschImage_FromHImage(self->Image->DualRank(HalconCpp::HString(MaskType1),Radius1,ModePercent1,HalconCpp::HString(Margin1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slls", &MaskType2,&Radius2,&ModePercent2,&Margin2)) {
            return PyHirschImage_FromHImage(self->Image->DualRank(MaskType2,Radius2,ModePercent2,Margin2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllO", &MaskType,&Radius,&ModePercent,&Margin)) {
            if (PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->DualRank(HalconCpp::HString(MaskType),Radius,ModePercent,*(((PyHirschTuple*)Margin)->Tuple)));
            }
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->CoocFeatureImage(*(((PyHirschRegion*)Regions)->Region),LdGray,*(((PyHirschTuple*)Direction)->Tuple),&Correlation,&Homogeneity,&Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Correlation));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Homogeneity));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Contrast));
                
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
    double Alpha2;
    PyObject* Low;
    PyObject* High;
    char* NMS2;
    double Alpha1;
    long High2;
    long Low1;
    char* Filter2;
    char* NMS;
    char* Filter1;
    long Low2;
    long High1;
    char* NMS1;
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdsll", &Filter2,&Alpha2,&NMS2,&Low2,&High2)) {
            {
            // with output params
                HalconCpp::HImage ImaDir2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesImage(&ImaDir2,Filter2,Alpha2,NMS2,Low2,High2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdsOO", &Filter,&Alpha,&NMS,&Low,&High)) {
            if (PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                HalconCpp::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesImage(&ImaDir,HalconCpp::HString(Filter),Alpha,HalconCpp::HString(NMS),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdsll", &Filter1,&Alpha1,&NMS1,&Low1,&High1)) {
            {
            // with output params
                HalconCpp::HImage ImaDir1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesImage(&ImaDir1,HalconCpp::HString(Filter1),Alpha1,HalconCpp::HString(NMS1),Low1,High1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir1));
                
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
    char* EstimationMethod1;
    PyObject* Rows11;
    PyObject* HomMat2DGuide;
    long MatchThreshold2;
    PyObject* Cols1;
    long MaskSize1;
    double KappaGuide;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* HomMat2DGuide1;
    double DistanceThreshold2;
    PyObject* DistanceThreshold;
    double DistanceTolerance2;
    double KappaGuide2;
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
    PyObject* Rows1;
    PyObject* HomMat2DGuide2;
    long RandSeed1;
    PyObject* Rows22;
    double KappaGuide1;
    long RandSeed2;
    long RandSeed;
    double DistanceThreshold1;
    double DistanceTolerance1;
    PyObject* Image2;
    double DistanceTolerance;
    PyObject* Cols11;
    PyObject* Rows12;
    PyObject* Cols22;
    char* GrayMatchMethod2;
    char* GrayMatchMethod1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOslOddlsdl", &Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&HomMat2DGuide2,&KappaGuide2,&DistanceTolerance2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22) && PyHirschHomMat2D_Check(HomMat2DGuide2)) {
                double Kappa2;
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide2)->HomMat2D)),KappaGuide2,DistanceTolerance2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Kappa2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslOddlsdl", &Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&HomMat2DGuide1,&KappaGuide1,&DistanceTolerance1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschHomMat2D_Check(HomMat2DGuide1)) {
                double Kappa1;
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide1)->HomMat2D)),KappaGuide1,DistanceTolerance1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Kappa1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslOddOsOl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&HomMat2DGuide,&KappaGuide,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(HomMat2DGuide) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansacGuided(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide)->HomMat2D)),KappaGuide,DistanceTolerance,*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points2));
                
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
    char* Margin2;
    PyObject* Margin;
    char* Margin1;
    long Rank1;
    long Rank2;
    PyObject* Mask1;
    PyObject* Mask;
    PyObject* Mask2;
    long Rank;
    
    try {
        if (PyArg_ParseTuple(args, "Ols", &Mask2,&Rank2,&Margin2)) {
            if (PyHirschRegion_Check(Mask2)) {
                return PyHirschImage_FromHImage(self->Image->RankImage(*(((PyHirschRegion*)Mask2)->Region),Rank2,Margin2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlO", &Mask,&Rank,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->RankImage(*(((PyHirschRegion*)Mask)->Region),Rank,*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &Mask1,&Rank1,&Margin1)) {
            if (PyHirschRegion_Check(Mask1)) {
                return PyHirschImage_FromHImage(self->Image->RankImage(*(((PyHirschRegion*)Mask1)->Region),Rank1,HalconCpp::HString(Margin1)));
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
    char* Smoothing1;
    double SigmaPoints2;
    char* Smoothing;
    char* Smoothing2;
    char* EliminateDoublets;
    double ThreshShape1;
    char* EliminateDoublets1;
    double SigmaGrad1;
    PyObject* SigmaGrad;
    double SigmaPoints1;
    double ThreshInhom1;
    double ThreshShape2;
    double ThreshInhom2;
    double SigmaGrad2;
    PyObject* ThreshInhom;
    PyObject* SigmaPoints;
    double SigmaInt2;
    PyObject* SigmaInt;
    double SigmaInt1;
    double ThreshShape;
    char* EliminateDoublets2;
    
    try {
        if (PyArg_ParseTuple(args, "dddddss", &SigmaGrad1,&SigmaInt1,&SigmaPoints1,&ThreshInhom1,&ThreshShape1,&Smoothing1,&EliminateDoublets1)) {
            {
            // with output params
                HalconCpp::HTuple RowJunctions1;
                HalconCpp::HTuple ColumnJunctions1;
                HalconCpp::HTuple CoRRJunctions1;
                HalconCpp::HTuple CoRCJunctions1;
                HalconCpp::HTuple CoCCJunctions1;
                HalconCpp::HTuple RowArea1;
                HalconCpp::HTuple ColumnArea1;
                HalconCpp::HTuple CoRRArea1;
                HalconCpp::HTuple CoRCArea1;
                HalconCpp::HTuple CoCCArea1;
                self->Image->PointsFoerstner(SigmaGrad1,SigmaInt1,SigmaPoints1,ThreshInhom1,ThreshShape1,HalconCpp::HString(Smoothing1),HalconCpp::HString(EliminateDoublets1),&RowJunctions1,&ColumnJunctions1,&CoRRJunctions1,&CoRCJunctions1,&CoCCJunctions1,&RowArea1,&ColumnArea1,&CoRRArea1,&CoRCArea1,&CoCCArea1);
                PyObject *ret = PyTuple_New(10);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowJunctions1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColumnJunctions1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(CoRRJunctions1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(CoRCJunctions1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(CoCCJunctions1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(RowArea1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(ColumnArea1));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_GetAsScalarIfOne(CoRRArea1));
                PyTuple_SET_ITEM(ret, 8, PyHirschTuple_GetAsScalarIfOne(CoRCArea1));
                PyTuple_SET_ITEM(ret, 9, PyHirschTuple_GetAsScalarIfOne(CoCCArea1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOdss", &SigmaGrad,&SigmaInt,&SigmaPoints,&ThreshInhom,&ThreshShape,&Smoothing,&EliminateDoublets)) {
            if (PyHirschTuple_Check(SigmaGrad) && PyHirschTuple_Check(SigmaInt) && PyHirschTuple_Check(SigmaPoints) && PyHirschTuple_Check(ThreshInhom)) {
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
                self->Image->PointsFoerstner(*(((PyHirschTuple*)SigmaGrad)->Tuple),*(((PyHirschTuple*)SigmaInt)->Tuple),*(((PyHirschTuple*)SigmaPoints)->Tuple),*(((PyHirschTuple*)ThreshInhom)->Tuple),ThreshShape,HalconCpp::HString(Smoothing),HalconCpp::HString(EliminateDoublets),&RowJunctions,&ColumnJunctions,&CoRRJunctions,&CoRCJunctions,&CoCCJunctions,&RowArea,&ColumnArea,&CoRRArea,&CoRCArea,&CoCCArea);
                PyObject *ret = PyTuple_New(10);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowJunctions));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColumnJunctions));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(CoRRJunctions));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(CoRCJunctions));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(CoCCJunctions));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(RowArea));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(ColumnArea));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_GetAsScalarIfOne(CoRRArea));
                PyTuple_SET_ITEM(ret, 8, PyHirschTuple_GetAsScalarIfOne(CoRCArea));
                PyTuple_SET_ITEM(ret, 9, PyHirschTuple_GetAsScalarIfOne(CoCCArea));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddss", &SigmaGrad2,&SigmaInt2,&SigmaPoints2,&ThreshInhom2,&ThreshShape2,&Smoothing2,&EliminateDoublets2)) {
            {
            // with output params
                HalconCpp::HTuple RowJunctions2;
                HalconCpp::HTuple ColumnJunctions2;
                HalconCpp::HTuple CoRRJunctions2;
                HalconCpp::HTuple CoRCJunctions2;
                HalconCpp::HTuple CoCCJunctions2;
                HalconCpp::HTuple RowArea2;
                HalconCpp::HTuple ColumnArea2;
                HalconCpp::HTuple CoRRArea2;
                HalconCpp::HTuple CoRCArea2;
                HalconCpp::HTuple CoCCArea2;
                self->Image->PointsFoerstner(SigmaGrad2,SigmaInt2,SigmaPoints2,ThreshInhom2,ThreshShape2,Smoothing2,EliminateDoublets2,&RowJunctions2,&ColumnJunctions2,&CoRRJunctions2,&CoRCJunctions2,&CoCCJunctions2,&RowArea2,&ColumnArea2,&CoRRArea2,&CoRCArea2,&CoCCArea2);
                PyObject *ret = PyTuple_New(10);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowJunctions2));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColumnJunctions2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(CoRRJunctions2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(CoRCJunctions2));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(CoCCJunctions2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(RowArea2));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(ColumnArea2));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_GetAsScalarIfOne(CoRRArea2));
                PyTuple_SET_ITEM(ret, 8, PyHirschTuple_GetAsScalarIfOne(CoRCArea2));
                PyTuple_SET_ITEM(ret, 9, PyHirschTuple_GetAsScalarIfOne(CoCCArea2));
                
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
    long Width1;
    double Frequency1;
    long Width;
    char* Norm;
    long Height1;
    char* Norm1;
    long Height;
    char* Mode1;
    double Frequency;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dssll", &Frequency,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenSinBandpass(Frequency,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssll", &Frequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenSinBandpass(Frequency1,Norm1,Mode1,Width1,Height1);
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
    long ColMove1;
    long RowMove1;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                HalconCpp::HTuple CovFMat1;
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&CovFMat1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovFMat1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                HalconCpp::HTuple CovFMat2;
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&CovFMat2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovFMat2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslllllOOsOl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                HalconCpp::HTuple CovFMat;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&CovFMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovFMat));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points2));
                
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
    double Tilt2;
    double Albedo1;
    char* Shadows2;
    double Slant2;
    PyObject* Tilt;
    double Ambient1;
    double Ambient2;
    char* Shadows1;
    PyObject* Slant;
    double Albedo2;
    PyObject* Albedo;
    char* Shadows;
    double Slant1;
    double Tilt1;
    PyObject* Ambient;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Slant2,&Tilt2,&Albedo2,&Ambient2,&Shadows2)) {
            return PyHirschImage_FromHImage(self->Image->ShadeHeightField(Slant2,Tilt2,Albedo2,Ambient2,Shadows2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddds", &Slant1,&Tilt1,&Albedo1,&Ambient1,&Shadows1)) {
            return PyHirschImage_FromHImage(self->Image->ShadeHeightField(Slant1,Tilt1,Albedo1,Ambient1,HalconCpp::HString(Shadows1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOs", &Slant,&Tilt,&Albedo,&Ambient,&Shadows)) {
            if (PyHirschTuple_Check(Slant) && PyHirschTuple_Check(Tilt) && PyHirschTuple_Check(Albedo) && PyHirschTuple_Check(Ambient)) {
                return PyHirschImage_FromHImage(self->Image->ShadeHeightField(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple),HalconCpp::HString(Shadows)));
            }
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
    double MaxError1;
    long NumLevels1;
    PyObject* WhichLevels;
    long WhichLevels2;
    double MaxError2;
    PyObject* TemplateID2;
    long NumLevels;
    char* SubPixel;
    double MaxError;
    long WhichLevels1;
    char* SubPixel2;
    char* SubPixel1;
    long NumLevels2;
    PyObject* TemplateID;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID2,&MaxError2,&SubPixel2,&NumLevels2,&WhichLevels2)) {
            if (PyHirschTemplate_Check(TemplateID2)) {
                double Row2;
                double Column2;
                double Error2;
                self->Image->BestMatchMg(*(((PyHirschTemplate*)TemplateID2)->Template),MaxError2,SubPixel2,NumLevels2,WhichLevels2,&Row2,&Column2,&Error2);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID1,&MaxError1,&SubPixel1,&NumLevels1,&WhichLevels1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Row1;
                double Column1;
                double Error1;
                self->Image->BestMatchMg(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,HalconCpp::HString(SubPixel1),NumLevels1,WhichLevels1,&Row1,&Column1,&Error1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OdslO", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(WhichLevels)) {
                double Row;
                double Column;
                double Error;
                self->Image->BestMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,HalconCpp::HString(SubPixel),NumLevels,*(((PyHirschTuple*)WhichLevels)->Tuple),&Row,&Column,&Error);
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
    long Size2;
    long Size1;
    PyObject* Size;
    char* FilterType1;
    char* FilterType;
    char* FilterType2;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType2,&Size2)) {
            {
            // with output params
                HalconCpp::HImage EdgeDirection2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SobelDir(&EdgeDirection2,FilterType2,Size2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(EdgeDirection2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sO", &FilterType,&Size)) {
            if (PyHirschTuple_Check(Size)) {
                HalconCpp::HImage EdgeDirection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SobelDir(&EdgeDirection,HalconCpp::HString(FilterType),*(((PyHirschTuple*)Size)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(EdgeDirection));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &FilterType1,&Size1)) {
            {
            // with output params
                HalconCpp::HImage EdgeDirection1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SobelDir(&EdgeDirection1,HalconCpp::HString(FilterType1),Size1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(EdgeDirection1));
                
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
    long Width1;
    char* Interpolation;
    long Width;
    long Height;
    char* TransformDomain;
    long Height1;
    char* Interpolation1;
    PyObject* HomMat2D1;
    PyObject* HomMat2D;
    char* TransformDomain1;
    
    try {
        if (PyArg_ParseTuple(args, "Oslls", &HomMat2D,&Interpolation,&Width,&Height,&TransformDomain)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImageSize(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),HalconCpp::HString(Interpolation),Width,Height,HalconCpp::HString(TransformDomain)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oslls", &HomMat2D1,&Interpolation1,&Width1,&Height1,&TransformDomain1)) {
            if (PyHirschHomMat2D_Check(HomMat2D1)) {
                return PyHirschImage_FromHImage(self->Image->ProjectiveTransImageSize(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D1)->HomMat2D)),Interpolation1,Width1,Height1,TransformDomain1));
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
    PyObject* MaskWidth;
    double MaskWidth1;
    char* MaskShape;
    double MaskWidth2;
    double MaskHeight2;
    char* MaskShape2;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayOpeningShape(MaskHeight1,MaskWidth1,HalconCpp::HString(MaskShape1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayOpeningShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),HalconCpp::HString(MaskShape)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight2,&MaskWidth2,&MaskShape2)) {
            return PyHirschImage_FromHImage(self->Image->GrayOpeningShape(MaskHeight2,MaskWidth2,MaskShape2));
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
    char* NewType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &NewType)) {
            return PyHirschImage_FromHImage(self->Image->ConvertImageType(HalconCpp::HString(NewType)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &NewType1)) {
            return PyHirschImage_FromHImage(self->Image->ConvertImageType(NewType1));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(BeginRow));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(EndCol));
                
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
    char* Interpolation2;
    char* Interpolation;
    PyObject* CameraMatrices1;
    long CubeMapDimension2;
    char* StackingOrder1;
    PyObject* RotationMatrices1;
    PyObject* CameraMatrices2;
    long CubeMapDimension;
    PyObject* StackingOrder;
    char* StackingOrder2;
    PyObject* RotationMatrices;
    PyObject* RotationMatrices2;
    char* Interpolation1;
    long CubeMapDimension1;
    PyObject* CameraMatrices;
    
    try {
        if (PyArg_ParseTuple(args, "OOlss", &CameraMatrices2,&RotationMatrices2,&CubeMapDimension2,&StackingOrder2,&Interpolation2)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices2) && PyHirschHomMat2DArray_Check(RotationMatrices2)) {
                HalconCpp::HImage Rear2;
                HalconCpp::HImage Left2;
                HalconCpp::HImage Right2;
                HalconCpp::HImage Top2;
                HalconCpp::HImage Bottom2;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenCubeMapMosaic(&Rear2,&Left2,&Right2,&Top2,&Bottom2,HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices2)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices2)->HomMat2DArray)),CubeMapDimension2,StackingOrder2,Interpolation2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Rear2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Left2));
                PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Right2));
                PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Top2));
                PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Bottom2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlOs", &CameraMatrices,&RotationMatrices,&CubeMapDimension,&StackingOrder,&Interpolation)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices) && PyHirschHomMat2DArray_Check(RotationMatrices) && PyHirschTuple_Check(StackingOrder)) {
                HalconCpp::HImage Rear;
                HalconCpp::HImage Left;
                HalconCpp::HImage Right;
                HalconCpp::HImage Top;
                HalconCpp::HImage Bottom;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenCubeMapMosaic(&Rear,&Left,&Right,&Top,&Bottom,HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices)->HomMat2DArray)),CubeMapDimension,*(((PyHirschTuple*)StackingOrder)->Tuple),HalconCpp::HString(Interpolation))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Rear));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Left));
                PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Right));
                PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Top));
                PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Bottom));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlss", &CameraMatrices1,&RotationMatrices1,&CubeMapDimension1,&StackingOrder1,&Interpolation1)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices1) && PyHirschHomMat2DArray_Check(RotationMatrices1)) {
                HalconCpp::HImage Rear1;
                HalconCpp::HImage Left1;
                HalconCpp::HImage Right1;
                HalconCpp::HImage Top1;
                HalconCpp::HImage Bottom1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenCubeMapMosaic(&Rear1,&Left1,&Right1,&Top1,&Bottom1,HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices1)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices1)->HomMat2DArray)),CubeMapDimension1,HalconCpp::HString(StackingOrder1),HalconCpp::HString(Interpolation1))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Rear1));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Left1));
                PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Right1));
                PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Top1));
                PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Bottom1));
                
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
    double Sigma1;
    char* Filter;
    double Threshold;
    double Threshold1;
    char* Filter1;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter,&Sigma,&Threshold)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->LocalMaxSubPix(HalconCpp::HString(Filter),Sigma,Threshold,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                self->Image->LocalMaxSubPix(Filter1,Sigma1,Threshold1,&Row1,&Column1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column1));
                
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
    long GenParamValue2;
    char* GenParamName1;
    char* Method1;
    char* Method;
    PyObject* GenParamName;
    char* LightDark1;
    char* LightDark;
    char* GenParamName2;
    PyObject* GenParamValue;
    char* LightDark2;
    char* Method2;
    long GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "sssl", &Method2,&LightDark2,&GenParamName2,&GenParamValue2)) {
            return PyHirschRegion_FromHRegion(self->Image->LocalThreshold(Method2,LightDark2,GenParamName2,GenParamValue2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssOO", &Method,&LightDark,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                return PyHirschRegion_FromHRegion(self->Image->LocalThreshold(HalconCpp::HString(Method),HalconCpp::HString(LightDark),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sssl", &Method1,&LightDark1,&GenParamName1,&GenParamValue1)) {
            return PyHirschRegion_FromHRegion(self->Image->LocalThreshold(HalconCpp::HString(Method1),HalconCpp::HString(LightDark1),HalconCpp::HString(GenParamName1),GenParamValue1));
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
    char* Filter;
    char* NMS1;
    long Low1;
    char* NMS;
    char* Filter1;
    long High1;
    double Alpha1;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdsll", &Filter,&Alpha,&NMS,&Low,&High)) {
            {
            // with output params
                HalconCpp::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesColor(&ImaDir,HalconCpp::HString(Filter),Alpha,HalconCpp::HString(NMS),Low,High)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdsll", &Filter1,&Alpha1,&NMS1,&Low1,&High1)) {
            {
            // with output params
                HalconCpp::HImage ImaDir1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesColor(&ImaDir1,Filter1,Alpha1,NMS1,Low1,High1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir1));
                
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
    double Grayval2;
    char* Type1;
    double Grayval1;
    char* Type;
    PyObject* Region;
    PyObject* Region1;
    PyObject* Grayval;
    PyObject* Region2;
    char* Type2;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Region1,&Grayval1,&Type1)) {
            if (PyHirschRegion_Check(Region1)) {
                self->Image->OverpaintRegion(*(((PyHirschRegion*)Region1)->Region),Grayval1,HalconCpp::HString(Type1));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Region2,&Grayval2,&Type2)) {
            if (PyHirschRegion_Check(Region2)) {
                self->Image->OverpaintRegion(*(((PyHirschRegion*)Region2)->Region),Grayval2,Type2);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &Region,&Grayval,&Type)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Grayval)) {
                self->Image->OverpaintRegion(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Grayval)->Tuple),HalconCpp::HString(Type));
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
    PyObject* MaskWidth;
    double MaskWidth1;
    char* MaskShape;
    double MaskWidth2;
    double MaskHeight2;
    char* MaskShape2;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayErosionShape(MaskHeight1,MaskWidth1,HalconCpp::HString(MaskShape1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayErosionShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),HalconCpp::HString(MaskShape)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight2,&MaskWidth2,&MaskShape2)) {
            return PyHirschImage_FromHImage(self->Image->GrayErosionShape(MaskHeight2,MaskWidth2,MaskShape2));
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
                return PyHirschTuple_GetAsScalarIfOne(self->Image->GrayHistoAbs(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschTuple*)Quantization)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Od", &Regions1,&Quantization1)) {
            if (PyHirschRegion_Check(Regions1)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->GrayHistoAbs(*(((PyHirschRegion*)Regions1)->Region),Quantization1));
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
    char* Mode1;
    char* Mode;
    double Scale1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode1,&Scale1)) {
            return PyHirschImage_FromHImage(self->Image->GenGaussPyramid(Mode1,Scale1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Mode,&Scale)) {
            return PyHirschImage_FromHImage(self->Image->GenGaussPyramid(HalconCpp::HString(Mode),Scale));
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
        return PyHirschTuple_GetAsScalarIfOne(self->Image->EstimateTiltZc());
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
    long ColMove1;
    long RowMove1;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    PyObject* CamMat2;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
    double DistanceThreshold2;
    PyObject* DistanceThreshold;
    PyObject* CamMat12;
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
    PyObject* CamMat1;
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
    PyObject* Rows22;
    long RowTolerance1;
    PyObject* CamMat22;
    PyObject* CamMat11;
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
        if (PyArg_ParseTuple(args, "OOOOOOOsllllldlsdl", &Image21,&Rows11,&Cols11,&Rows21,&Cols21,&CamMat11,&CamMat21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschHomMat2D_Check(CamMat11) && PyHirschHomMat2D_Check(CamMat21)) {
                HalconCpp::HTuple CovEMat1;
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchEssentialMatrixRansac(*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat11)->HomMat2D)),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat21)->HomMat2D)),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&CovEMat1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOslllllOOsOl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&CamMat1,&CamMat2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(CamMat1) && PyHirschHomMat2D_Check(CamMat2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                HalconCpp::HTuple CovEMat;
                HalconCpp::HTuple Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchEssentialMatrixRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat1)->HomMat2D)),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat2)->HomMat2D)),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&CovEMat,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOsllllldlsdl", &Image22,&Rows12,&Cols12,&Rows22,&Cols22,&CamMat12,&CamMat22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22) && PyHirschHomMat2D_Check(CamMat12) && PyHirschHomMat2D_Check(CamMat22)) {
                HalconCpp::HTuple CovEMat2;
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchEssentialMatrixRansac(*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat12)->HomMat2D)),HalconCpp::HHomMat2D((((PyHirschHomMat2D*)CamMat22)->HomMat2D)),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&CovEMat2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovEMat2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points22));
                
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
    char* Type1;
    char* Type;
    long Width;
    long Width1;
    long Height;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type1,&Width1,&Height1)) {
            self->Image->GenImageConst(Type1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &Type,&Width,&Height)) {
            self->Image->GenImageConst(HalconCpp::HString(Type),Width,Height);
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
    double SmoothingSigma2;
    char* Algorithm;
    PyObject* ImageT22;
    double IntegrationSigma2;
    char* MGParamValue1;
    char* MGParamName2;
    double SmoothingSigma1;
    PyObject* MGParamName;
    char* Algorithm1;
    double IntegrationSigma;
    double FlowSmoothness;
    double GradientConstancy2;
    double FlowSmoothness2;
    char* MGParamValue2;
    double FlowSmoothness1;
    PyObject* ImageT2;
    char* MGParamName1;
    char* Algorithm2;
    PyObject* MGParamValue;
    double GradientConstancy1;
    PyObject* ImageT21;
    double IntegrationSigma1;
    double SmoothingSigma;
    double GradientConstancy;
    
    try {
        if (PyArg_ParseTuple(args, "Osddddss", &ImageT22,&Algorithm2,&SmoothingSigma2,&IntegrationSigma2,&FlowSmoothness2,&GradientConstancy2,&MGParamName2,&MGParamValue2)) {
            if (PyHirschImage_Check(ImageT22)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImage*)ImageT22)->Image),Algorithm2,SmoothingSigma2,IntegrationSigma2,FlowSmoothness2,GradientConstancy2,MGParamName2,MGParamValue2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OsddddOO", &ImageT2,&Algorithm,&SmoothingSigma,&IntegrationSigma,&FlowSmoothness,&GradientConstancy,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(ImageT2) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImage*)ImageT2)->Image),HalconCpp::HString(Algorithm),SmoothingSigma,IntegrationSigma,FlowSmoothness,GradientConstancy,*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osddddss", &ImageT21,&Algorithm1,&SmoothingSigma1,&IntegrationSigma1,&FlowSmoothness1,&GradientConstancy1,&MGParamName1,&MGParamValue1)) {
            if (PyHirschImage_Check(ImageT21)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImage*)ImageT21)->Image),HalconCpp::HString(Algorithm1),SmoothingSigma1,IntegrationSigma1,FlowSmoothness1,GradientConstancy1,HalconCpp::HString(MGParamName1),HalconCpp::HString(MGParamValue1)));
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
    PyObject* Phi;
    char* Interpolation;
    double Phi1;
    char* Interpolation2;
    char* Interpolation1;
    double Phi2;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Phi2,&Interpolation2)) {
            return PyHirschImage_FromHImage(self->Image->RotateImage(Phi2,Interpolation2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Phi1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->RotateImage(Phi1,HalconCpp::HString(Interpolation1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Phi,&Interpolation)) {
            if (PyHirschTuple_Check(Phi)) {
                return PyHirschImage_FromHImage(self->Image->RotateImage(*(((PyHirschTuple*)Phi)->Tuple),HalconCpp::HString(Interpolation)));
            }
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
    long MaskHeight2;
    double AbsThreshold2;
    PyObject* AbsThreshold;
    double StdDevScale1;
    long MaskHeight1;
    double StdDevScale2;
    char* LightDark;
    char* LightDark2;
    PyObject* StdDevScale;
    long MaskWidth1;
    double AbsThreshold1;
    long MaskWidth;
    char* LightDark1;
    long MaskHeight;
    long MaskWidth2;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskWidth2,&MaskHeight2,&StdDevScale2,&AbsThreshold2,&LightDark2)) {
            return PyHirschRegion_FromHRegion(self->Image->VarThreshold(MaskWidth2,MaskHeight2,StdDevScale2,AbsThreshold2,LightDark2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldds", &MaskWidth1,&MaskHeight1,&StdDevScale1,&AbsThreshold1,&LightDark1)) {
            return PyHirschRegion_FromHRegion(self->Image->VarThreshold(MaskWidth1,MaskHeight1,StdDevScale1,AbsThreshold1,HalconCpp::HString(LightDark1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llOOs", &MaskWidth,&MaskHeight,&StdDevScale,&AbsThreshold,&LightDark)) {
            if (PyHirschTuple_Check(StdDevScale) && PyHirschTuple_Check(AbsThreshold)) {
                return PyHirschRegion_FromHRegion(self->Image->VarThreshold(MaskWidth,MaskHeight,*(((PyHirschTuple*)StdDevScale)->Tuple),*(((PyHirschTuple*)AbsThreshold)->Tuple),HalconCpp::HString(LightDark)));
            }
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
    char* CompleteJunctions2;
    char* ExtractWidth2;
    char* CompleteJunctions1;
    double Sigma1;
    PyObject* Low;
    PyObject* High;
    double High1;
    char* ExtractWidth1;
    double High2;
    char* CompleteJunctions;
    char* ExtractWidth;
    double Low2;
    PyObject* Sigma;
    double Sigma2;
    double Low1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOss", &Sigma,&Low,&High,&ExtractWidth,&CompleteJunctions)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschXLDCont_FromHXLDCont(self->Image->LinesColor(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),HalconCpp::HString(ExtractWidth),HalconCpp::HString(CompleteJunctions)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddss", &Sigma1,&Low1,&High1,&ExtractWidth1,&CompleteJunctions1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesColor(Sigma1,Low1,High1,HalconCpp::HString(ExtractWidth1),HalconCpp::HString(CompleteJunctions1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddss", &Sigma2,&Low2,&High2,&ExtractWidth2,&CompleteJunctions2)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesColor(Sigma2,Low2,High2,ExtractWidth2,CompleteJunctions2));
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
    double Orientation1;
    long Width1;
    double Orientation;
    char* Mode1;
    long Width;
    char* Norm;
    long Height1;
    char* Norm1;
    double Angle1;
    double Bandwidth;
    long Height;
    double Frequency1;
    double Frequency;
    double Bandwidth1;
    double Angle;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddddssll", &Angle,&Frequency,&Bandwidth,&Orientation,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenGabor(Angle,Frequency,Bandwidth,Orientation,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddssll", &Angle1,&Frequency1,&Bandwidth1,&Orientation1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenGabor(Angle1,Frequency1,Bandwidth1,Orientation1,Norm1,Mode1,Width1,Height1);
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
    double Grayval2;
    char* Type1;
    double Grayval1;
    char* Type;
    PyObject* Region;
    PyObject* Region1;
    PyObject* Grayval;
    PyObject* Region2;
    char* Type2;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Region1,&Grayval1,&Type1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->PaintRegion(*(((PyHirschRegion*)Region1)->Region),Grayval1,HalconCpp::HString(Type1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Region2,&Grayval2,&Type2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschImage_FromHImage(self->Image->PaintRegion(*(((PyHirschRegion*)Region2)->Region),Grayval2,Type2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &Region,&Grayval,&Type)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->Image->PaintRegion(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Grayval)->Tuple),HalconCpp::HString(Type)));
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
    double MaxError1;
    long NumLevels1;
    PyObject* WhichLevels;
    long WhichLevels2;
    double MaxError2;
    PyObject* TemplateID2;
    long NumLevels;
    char* SubPixel;
    double MaxError;
    long WhichLevels1;
    char* SubPixel2;
    char* SubPixel1;
    long NumLevels2;
    PyObject* TemplateID;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID2,&MaxError2,&SubPixel2,&NumLevels2,&WhichLevels2)) {
            if (PyHirschTemplate_Check(TemplateID2)) {
                double Row2;
                double Column2;
                double Error2;
                self->Image->BestMatchPreMg(*(((PyHirschTemplate*)TemplateID2)->Template),MaxError2,SubPixel2,NumLevels2,WhichLevels2,&Row2,&Column2,&Error2);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID1,&MaxError1,&SubPixel1,&NumLevels1,&WhichLevels1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Row1;
                double Column1;
                double Error1;
                self->Image->BestMatchPreMg(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,HalconCpp::HString(SubPixel1),NumLevels1,WhichLevels1,&Row1,&Column1,&Error1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OdslO", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(WhichLevels)) {
                double Row;
                double Column;
                double Error;
                self->Image->BestMatchPreMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,HalconCpp::HString(SubPixel),NumLevels,*(((PyHirschTuple*)WhichLevels)->Tuple),&Row,&Column,&Error);
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
    long MaskSize1;
    char* MaskType1;
    long MaskSize;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &MaskType1,&MaskSize1)) {
            return PyHirschImage_FromHImage(self->Image->MedianWeighted(MaskType1,MaskSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &MaskType,&MaskSize)) {
            return PyHirschImage_FromHImage(self->Image->MedianWeighted(HalconCpp::HString(MaskType),MaskSize));
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
    double Alpha2;
    PyObject* Low;
    PyObject* High;
    long High2;
    long Low1;
    char* Filter2;
    char* Filter1;
    long Low2;
    long High1;
    char* Filter;
    double Alpha1;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdll", &Filter2,&Alpha2,&Low2,&High2)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesSubPix(Filter2,Alpha2,Low2,High2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdOO", &Filter,&Alpha,&Low,&High)) {
            if (PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesSubPix(HalconCpp::HString(Filter),Alpha,*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdll", &Filter1,&Alpha1,&Low1,&High1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesSubPix(HalconCpp::HString(Filter1),Alpha1,Low1,High1));
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
    double Offset1;
    char* Encode1;
    double Threshold;
    double Gamma;
    char* Encode2;
    char* Encode;
    double Offset2;
    double Threshold1;
    double MaxGray2;
    double Gamma1;
    double Threshold2;
    double Offset;
    double MaxGray1;
    PyObject* MaxGray;
    double Gamma2;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Gamma1,&Offset1,&Threshold1,&MaxGray1,&Encode1)) {
            return PyHirschImage_FromHImage(self->Image->GammaImage(Gamma1,Offset1,Threshold1,MaxGray1,HalconCpp::HString(Encode1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddOs", &Gamma,&Offset,&Threshold,&MaxGray,&Encode)) {
            if (PyHirschTuple_Check(MaxGray)) {
                return PyHirschImage_FromHImage(self->Image->GammaImage(Gamma,Offset,Threshold,*(((PyHirschTuple*)MaxGray)->Tuple),HalconCpp::HString(Encode)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddds", &Gamma2,&Offset2,&Threshold2,&MaxGray2,&Encode2)) {
            return PyHirschImage_FromHImage(self->Image->GammaImage(Gamma2,Offset2,Threshold2,MaxGray2,Encode2));
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
    long ContrastLow2;
    char* Mode1;
    PyObject* GenericName;
    double GenericValue1;
    PyObject* ContrastLow;
    PyObject* ContrastHigh;
    long ContrastHigh2;
    char* GenericName1;
    PyObject* GenericValue;
    long MinSize2;
    char* Mode2;
    PyObject* MinSize;
    long ContrastHigh1;
    long ContrastLow1;
    char* GenericName2;
    double GenericValue2;
    char* Mode;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "lllssd", &ContrastLow2,&ContrastHigh2,&MinSize2,&Mode2,&GenericName2,&GenericValue2)) {
            return PyHirschRegion_FromHRegion(self->Image->GenInitialComponents(ContrastLow2,ContrastHigh2,MinSize2,Mode2,GenericName2,GenericValue2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lllssd", &ContrastLow1,&ContrastHigh1,&MinSize1,&Mode1,&GenericName1,&GenericValue1)) {
            return PyHirschRegion_FromHRegion(self->Image->GenInitialComponents(ContrastLow1,ContrastHigh1,MinSize1,HalconCpp::HString(Mode1),HalconCpp::HString(GenericName1),GenericValue1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOsOO", &ContrastLow,&ContrastHigh,&MinSize,&Mode,&GenericName,&GenericValue)) {
            if (PyHirschTuple_Check(ContrastLow) && PyHirschTuple_Check(ContrastHigh) && PyHirschTuple_Check(MinSize) && PyHirschTuple_Check(GenericName) && PyHirschTuple_Check(GenericValue)) {
                return PyHirschRegion_FromHRegion(self->Image->GenInitialComponents(*(((PyHirschTuple*)ContrastLow)->Tuple),*(((PyHirschTuple*)ContrastHigh)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple),HalconCpp::HString(Mode),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple)));
            }
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
    long Threshold;
    char* Mode1;
    long Threshold1;
    long Level;
    long Level1;
    PyObject* ImageTemplate;
    PyObject* ImageTemplate1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &ImageTemplate1,&Mode1,&Level1,&Threshold1)) {
            if (PyHirschImage_Check(ImageTemplate1)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate1)->Image),Mode1,Level1,Threshold1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osll", &ImageTemplate,&Mode,&Level,&Threshold)) {
            if (PyHirschImage_Check(ImageTemplate)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate)->Image),HalconCpp::HString(Mode),Level,Threshold));
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
    char* Type;
    double Beta;
    long Height1;
    double Beta1;
    double Zeta1;
    double Row;
    double Gamma1;
    double Column;
    long Width1;
    char* Type1;
    double Delta1;
    double Row1;
    double Alpha1;
    double Epsilon1;
    double Zeta;
    long Width;
    double Gamma;
    double Epsilon;
    long Height;
    double Column1;
    double Delta;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sddddddddll", &Type,&Alpha,&Beta,&Gamma,&Delta,&Epsilon,&Zeta,&Row,&Column,&Width,&Height)) {
            self->Image->GenImageSurfaceSecondOrder(HalconCpp::HString(Type),Alpha,Beta,Gamma,Delta,Epsilon,Zeta,Row,Column,Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddddddddll", &Type1,&Alpha1,&Beta1,&Gamma1,&Delta1,&Epsilon1,&Zeta1,&Row1,&Column1,&Width1,&Height1)) {
            self->Image->GenImageSurfaceSecondOrder(Type1,Alpha1,Beta1,Gamma1,Delta1,Epsilon1,Zeta1,Row1,Column1,Width1,Height1);
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
    char* PixelFormat2;
    PyObject* RowBytes;
    long Alpha2;
    char* PixelFormat1;
    char* RowBytes2;
    long Alpha1;
    long Alpha;
    char* RowBytes1;
    char* PixelFormat;
    
    try {
        if (PyArg_ParseTuple(args, "ssl", &PixelFormat2,&RowBytes2,&Alpha2)) {
            return PyHirschImage_FromHImage(self->Image->InterleaveChannels(PixelFormat2,RowBytes2,Alpha2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOl", &PixelFormat,&RowBytes,&Alpha)) {
            if (PyHirschTuple_Check(RowBytes)) {
                return PyHirschImage_FromHImage(self->Image->InterleaveChannels(HalconCpp::HString(PixelFormat),*(((PyHirschTuple*)RowBytes)->Tuple),Alpha));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssl", &PixelFormat1,&RowBytes1,&Alpha1)) {
            return PyHirschImage_FromHImage(self->Image->InterleaveChannels(HalconCpp::HString(PixelFormat1),HalconCpp::HString(RowBytes1),Alpha1));
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
    char* Margin2;
    char* Margin1;
    char* MaskType1;
    char* MaskType;
    PyObject* Margin;
    char* MaskType2;
    long Radius2;
    long Radius1;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &MaskType2,&Radius2,&Margin2)) {
            return PyHirschImage_FromHImage(self->Image->MedianImage(MaskType2,Radius2,Margin2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slO", &MaskType,&Radius,&Margin)) {
            if (PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->MedianImage(HalconCpp::HString(MaskType),Radius,*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sls", &MaskType1,&Radius1,&Margin1)) {
            return PyHirschImage_FromHImage(self->Image->MedianImage(HalconCpp::HString(MaskType1),Radius1,HalconCpp::HString(Margin1)));
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
    char* TrainingFile2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &TrainingFile)) {
            if (PyHirschTuple_Check(TrainingFile)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->ReadOcrTrainf(*(((PyHirschTuple*)TrainingFile)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &TrainingFile1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->Image->ReadOcrTrainf(HalconCpp::HString(TrainingFile1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &TrainingFile2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->Image->ReadOcrTrainf(TrainingFile2));
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
    long Width1;
    char* Mode1;
    double Sigma1;
    double Phi1;
    long Width;
    char* Norm;
    char* Norm1;
    long Height;
    char* Mode;
    double Sigma11;
    long Height1;
    double Phi;
    double Sigma2;
    double Sigma21;
    
    try {
        if (PyArg_ParseTuple(args, "dddssll", &Sigma1,&Sigma2,&Phi,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenGaussFilter(Sigma1,Sigma2,Phi,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddssll", &Sigma11,&Sigma21,&Phi1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenGaussFilter(Sigma11,Sigma21,Phi1,Norm1,Mode1,Width1,Height1);
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
    long MaskHeight2;
    PyObject* Margin;
    char* Margin1;
    long MaskHeight1;
    char* Margin2;
    long MaskWidth1;
    long MaskWidth;
    long MaskHeight;
    long MaskWidth2;
    
    try {
        if (PyArg_ParseTuple(args, "lls", &MaskWidth1,&MaskHeight1,&Margin1)) {
            return PyHirschImage_FromHImage(self->Image->MedianSeparate(MaskWidth1,MaskHeight1,HalconCpp::HString(Margin1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lls", &MaskWidth2,&MaskHeight2,&Margin2)) {
            return PyHirschImage_FromHImage(self->Image->MedianSeparate(MaskWidth2,MaskHeight2,Margin2));
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
    long Exponent1;
    char* Mode1;
    char* Norm;
    char* Norm1;
    char* Mode;
    char* Direction;
    char* Direction1;
    long Exponent;
    char* ResultType1;
    char* ResultType;
    
    try {
        if (PyArg_ParseTuple(args, "slsss", &Direction,&Exponent,&Norm,&Mode,&ResultType)) {
            return PyHirschImage_FromHImage(self->Image->FftGeneric(HalconCpp::HString(Direction),Exponent,HalconCpp::HString(Norm),HalconCpp::HString(Mode),HalconCpp::HString(ResultType)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slsss", &Direction1,&Exponent1,&Norm1,&Mode1,&ResultType1)) {
            return PyHirschImage_FromHImage(self->Image->FftGeneric(Direction1,Exponent1,Norm1,Mode1,ResultType1));
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
    long GenParamValue2;
    PyObject* DataCodeHandle1;
    char* GenParamName1;
    PyObject* DataCodeHandle;
    PyObject* GenParamName;
    PyObject* DataCodeHandle2;
    char* GenParamName2;
    PyObject* GenParamValue;
    long GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "Osl", &DataCodeHandle2,&GenParamName2,&GenParamValue2)) {
            if (PyHirschDataCode2D_Check(DataCodeHandle2)) {
                Hlong ResultHandles2;
                HalconCpp::HString DecodedDataStrings2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->Image->FindDataCode2d(*(((PyHirschDataCode2D*)DataCodeHandle2)->DataCode2D),GenParamName2,GenParamValue2,&ResultHandles2,&DecodedDataStrings2)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(ResultHandles2)));
                PyTuple_SET_ITEM(ret, 2, PyString_FromString(DecodedDataStrings2.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osl", &DataCodeHandle1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschDataCode2D_Check(DataCodeHandle1)) {
                Hlong ResultHandles1;
                HalconCpp::HString DecodedDataStrings1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->Image->FindDataCode2d(*(((PyHirschDataCode2D*)DataCodeHandle1)->DataCode2D),HalconCpp::HString(GenParamName1),GenParamValue1,&ResultHandles1,&DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(ResultHandles1)));
                PyTuple_SET_ITEM(ret, 2, PyString_FromString(DecodedDataStrings1.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &DataCodeHandle,&GenParamName,&GenParamValue)) {
            if (PyHirschDataCode2D_Check(DataCodeHandle) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HTuple ResultHandles;
                HalconCpp::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->Image->FindDataCode2d(*(((PyHirschDataCode2D*)DataCodeHandle)->DataCode2D),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple),&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(DecodedDataStrings));
                
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
    PyObject* MinArea;
    char* Polarity2;
    PyObject* GenParamValue1;
    char* Polarity1;
    PyObject* GenParamName;
    long Delta1;
    long MaxArea1;
    char* Polarity;
    PyObject* GenParamName2;
    PyObject* MaxArea;
    PyObject* GenParamValue;
    PyObject* Delta;
    long MaxArea2;
    PyObject* GenParamName1;
    long MinArea1;
    PyObject* GenParamValue2;
    long Delta2;
    long MinArea2;
    
    try {
        if (PyArg_ParseTuple(args, "slllOO", &Polarity1,&MinArea1,&MaxArea1,&Delta1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschTuple_Check(GenParamName1) && PyHirschTuple_Check(GenParamValue1)) {
                HalconCpp::HRegion MSERLight1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->SegmentImageMser(&MSERLight1,HalconCpp::HString(Polarity1),MinArea1,MaxArea1,Delta1,*(((PyHirschTuple*)GenParamName1)->Tuple),*(((PyHirschTuple*)GenParamValue1)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(MSERLight1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOOOO", &Polarity,&MinArea,&MaxArea,&Delta,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(MinArea) && PyHirschTuple_Check(MaxArea) && PyHirschTuple_Check(Delta) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                HalconCpp::HRegion MSERLight;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->SegmentImageMser(&MSERLight,HalconCpp::HString(Polarity),*(((PyHirschTuple*)MinArea)->Tuple),*(((PyHirschTuple*)MaxArea)->Tuple),*(((PyHirschTuple*)Delta)->Tuple),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(MSERLight));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slllOO", &Polarity2,&MinArea2,&MaxArea2,&Delta2,&GenParamName2,&GenParamValue2)) {
            if (PyHirschTuple_Check(GenParamName2) && PyHirschTuple_Check(GenParamValue2)) {
                HalconCpp::HRegion MSERLight2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->SegmentImageMser(&MSERLight2,Polarity2,MinArea2,MaxArea2,Delta2,*(((PyHirschTuple*)GenParamName2)->Tuple),*(((PyHirschTuple*)GenParamValue2)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(MSERLight2));
                
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
    char* Base2;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Base2)) {
            return PyHirschImage_FromHImage(self->Image->LogImage(Base2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Base)) {
            if (PyHirschTuple_Check(Base)) {
                return PyHirschImage_FromHImage(self->Image->LogImage(*(((PyHirschTuple*)Base)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Base1)) {
            return PyHirschImage_FromHImage(self->Image->LogImage(HalconCpp::HString(Base1)));
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
    char* FilterMask2;
    double Scale2;
    long Height2;
    long Width1;
    long Height;
    double Scale;
    long Height1;
    double Scale1;
    PyObject* FilterMask;
    long Width2;
    
    try {
        if (PyArg_ParseTuple(args, "sdll", &FilterMask1,&Scale1,&Width1,&Height1)) {
            self->Image->GenFilterMask(HalconCpp::HString(FilterMask1),Scale1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdll", &FilterMask2,&Scale2,&Width2,&Height2)) {
            self->Image->GenFilterMask(FilterMask2,Scale2,Width2,Height2);
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
    char* CFAType1;
    char* CFAType;
    char* Interpolation;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &CFAType1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->CfaToRgb(CFAType1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &CFAType,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->CfaToRgb(HalconCpp::HString(CFAType),HalconCpp::HString(Interpolation)));
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
    long Width1;
    double Frequency1;
    long Width;
    char* Norm;
    long Height1;
    char* Norm1;
    long Height;
    char* Mode1;
    double Frequency;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dssll", &Frequency,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenLowpass(Frequency,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssll", &Frequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenLowpass(Frequency1,Norm1,Mode1,Width1,Height1);
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
    char* Margin2;
    long Number1;
    PyObject* Mask;
    char* Margin1;
    PyObject* Mask1;
    PyObject* Margin;
    long Number2;
    PyObject* Mask2;
    
    try {
        if (PyArg_ParseTuple(args, "OlO", &Mask,&Number,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->TrimmedMean(*(((PyHirschRegion*)Mask)->Region),Number,*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &Mask1,&Number1,&Margin1)) {
            if (PyHirschRegion_Check(Mask1)) {
                return PyHirschImage_FromHImage(self->Image->TrimmedMean(*(((PyHirschRegion*)Mask1)->Region),Number1,HalconCpp::HString(Margin1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &Mask2,&Number2,&Margin2)) {
            if (PyHirschRegion_Check(Mask2)) {
                return PyHirschImage_FromHImage(self->Image->TrimmedMean(*(((PyHirschRegion*)Mask2)->Region),Number2,Margin2));
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
    char* EstimationMethod1;
    PyObject* Rows11;
    PyObject* HomMat2DGuide;
    long MatchThreshold2;
    PyObject* Cols1;
    long MaskSize1;
    char* GrayMatchMethod2;
    PyObject* Rows2;
    char* GrayMatchMethod;
    PyObject* HomMat2DGuide1;
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
    PyObject* HomMat2DGuide2;
    long RandSeed1;
    PyObject* Rows22;
    long RandSeed2;
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
        if (PyArg_ParseTuple(args, "OOOOOslOdOsdl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&HomMat2DGuide,&DistanceTolerance,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschHomMat2D_Check(HomMat2DGuide) && PyHirschTuple_Check(MatchThreshold)) {
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide)->HomMat2D)),DistanceTolerance,*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),DistanceThreshold,RandSeed,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslOdlsdl", &Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&HomMat2DGuide2,&DistanceTolerance2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22) && PyHirschHomMat2D_Check(HomMat2DGuide2)) {
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide2)->HomMat2D)),DistanceTolerance2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslOdlsdl", &Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&HomMat2DGuide1,&DistanceTolerance1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21) && PyHirschHomMat2D_Check(HomMat2DGuide1)) {
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsRansacGuided(*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2DGuide1)->HomMat2D)),DistanceTolerance1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Points21));
                
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
        return PyHirschTuple_GetAsScalarIfOne(self->Image->Width());
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->AreaCenterGray(*(((PyHirschRegion*)Regions)->Region),&Row,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Column));
                
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
    char* TileOrder1;
    long NumColumns1;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns,&TileOrder)) {
            return PyHirschImage_FromHImage(self->Image->TileChannels(NumColumns,HalconCpp::HString(TileOrder)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ls", &NumColumns1,&TileOrder1)) {
            return PyHirschImage_FromHImage(self->Image->TileChannels(NumColumns1,TileOrder1));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(MRow));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(MCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Alpha));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Beta));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Mean));
                
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
    long ColMove1;
    long RowMove1;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                double Kappa1;
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Kappa1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                double Kappa2;
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Kappa2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslllllOOsOl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->MatchFundamentalMatrixDistortionRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points2));
                
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
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(InfoPerComp));
        
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
    double LatMin1;
    double LongMin2;
    PyObject* RotationMatrices;
    PyObject* LatLongStep;
    double LongMax1;
    double LatLongStep2;
    char* Interpolation2;
    PyObject* CameraMatrices1;
    char* StackingOrder1;
    double LongMax2;
    PyObject* LongMin;
    PyObject* RotationMatrices2;
    char* Interpolation1;
    PyObject* LongMax;
    double LatMax2;
    PyObject* CameraMatrices;
    double LatMin2;
    double LongMin1;
    double LatMax1;
    PyObject* RotationMatrices1;
    PyObject* Interpolation;
    PyObject* CameraMatrices2;
    PyObject* StackingOrder;
    char* StackingOrder2;
    double LatLongStep1;
    PyObject* LatMax;
    PyObject* LatMin;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &CameraMatrices,&RotationMatrices,&LatMin,&LatMax,&LongMin,&LongMax,&LatLongStep,&StackingOrder,&Interpolation)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices) && PyHirschHomMat2DArray_Check(RotationMatrices) && PyHirschTuple_Check(LatMin) && PyHirschTuple_Check(LatMax) && PyHirschTuple_Check(LongMin) && PyHirschTuple_Check(LongMax) && PyHirschTuple_Check(LatLongStep) && PyHirschTuple_Check(StackingOrder) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->GenSphericalMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices)->HomMat2DArray)),*(((PyHirschTuple*)LatMin)->Tuple),*(((PyHirschTuple*)LatMax)->Tuple),*(((PyHirschTuple*)LongMin)->Tuple),*(((PyHirschTuple*)LongMax)->Tuple),*(((PyHirschTuple*)LatLongStep)->Tuple),*(((PyHirschTuple*)StackingOrder)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOdddddss", &CameraMatrices1,&RotationMatrices1,&LatMin1,&LatMax1,&LongMin1,&LongMax1,&LatLongStep1,&StackingOrder1,&Interpolation1)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices1) && PyHirschHomMat2DArray_Check(RotationMatrices1)) {
                return PyHirschImage_FromHImage(self->Image->GenSphericalMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices1)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices1)->HomMat2DArray)),LatMin1,LatMax1,LongMin1,LongMax1,LatLongStep1,HalconCpp::HString(StackingOrder1),HalconCpp::HString(Interpolation1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOdddddss", &CameraMatrices2,&RotationMatrices2,&LatMin2,&LatMax2,&LongMin2,&LongMax2,&LatLongStep2,&StackingOrder2,&Interpolation2)) {
            if (PyHirschHomMat2DArray_Check(CameraMatrices2) && PyHirschHomMat2DArray_Check(RotationMatrices2)) {
                return PyHirschImage_FromHImage(self->Image->GenSphericalMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)CameraMatrices2)->HomMat2DArray)),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)RotationMatrices2)->HomMat2DArray)),LatMin2,LatMax2,LongMin2,LongMax2,LatLongStep2,StackingOrder2,Interpolation2));
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
    double Column2;
    PyObject* Column;
    PyObject* Row;
    double Row2;
    char* Interpolation;
    char* Interpolation2;
    double Column1;
    char* Interpolation1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &Row2,&Column2,&Interpolation2)) {
            return PyFloat_FromDouble(self->Image->GetGrayvalInterpolated(Row2,Column2,Interpolation2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &Row,&Column,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->GetGrayvalInterpolated(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),HalconCpp::HString(Interpolation)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &Row1,&Column1,&Interpolation1)) {
            return PyFloat_FromDouble(self->Image->GetGrayvalInterpolated(Row1,Column1,HalconCpp::HString(Interpolation1)));
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
    PyObject* Selection;
    char* Selection1;
    char* Selection2;
    PyObject* Filter;
    char* Filter2;
    char* Filter1;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Filter2,&Selection2)) {
            {
            // with output params
                HalconCpp::HImage Confidence2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->DepthFromFocus(&Confidence2,Filter2,Selection2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Confidence2));
                
                return ret;
            }
        }
        PyErr_Clear();
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
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->DepthFromFocus(&Confidence1,HalconCpp::HString(Filter1),HalconCpp::HString(Selection1))));
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
    char* Metric2;
    char* Optimization2;
    long Contrast2;
    char* Parameters1;
    double AngleExtent2;
    double ScaleMin2;
    char* Metric;
    PyObject* ScaleMax;
    PyObject* GenParamValue1;
    long NumLevels2;
    char* Optimization;
    double ScaleMax2;
    double AngleStart1;
    PyObject* NumLevels;
    char* Optimization1;
    PyObject* Contrast;
    PyObject* GenParamName2;
    PyObject* GenParamValue;
    PyObject* GenParamName1;
    long MinContrast1;
    PyObject* MinContrast;
    long NumLevels1;
    double AngleExtent1;
    char* Metric1;
    PyObject* GenParamValue2;
    long Contrast1;
    double ScaleMax1;
    PyObject* Parameters;
    double ScaleMin1;
    PyObject* ScaleMin;
    double AngleStart2;
    PyObject* GenParamName;
    long MinContrast2;
    char* Parameters2;
    double AngleStart;
    double AngleExtent;
    
    try {
        if (PyArg_ParseTuple(args, "lddddssllOOs", &NumLevels1,&AngleStart1,&AngleExtent1,&ScaleMin1,&ScaleMax1,&Optimization1,&Metric1,&Contrast1,&MinContrast1,&GenParamName1,&GenParamValue1,&Parameters1)) {
            if (PyHirschTuple_Check(GenParamName1) && PyHirschTuple_Check(GenParamValue1)) {
                HalconCpp::HTuple ParameterValue1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->DetermineDeformableModelParams(NumLevels1,AngleStart1,AngleExtent1,ScaleMin1,ScaleMax1,HalconCpp::HString(Optimization1),HalconCpp::HString(Metric1),Contrast1,MinContrast1,*(((PyHirschTuple*)GenParamName1)->Tuple),*(((PyHirschTuple*)GenParamValue1)->Tuple),HalconCpp::HString(Parameters1),&ParameterValue1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ParameterValue1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OddOOssOOOOO", &NumLevels,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&Optimization,&Metric,&Contrast,&MinContrast,&GenParamName,&GenParamValue,&Parameters)) {
            if (PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(ScaleMin) && PyHirschTuple_Check(ScaleMax) && PyHirschTuple_Check(Contrast) && PyHirschTuple_Check(MinContrast) && PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue) && PyHirschTuple_Check(Parameters)) {
                HalconCpp::HTuple ParameterValue;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->DetermineDeformableModelParams(*(((PyHirschTuple*)NumLevels)->Tuple),AngleStart,AngleExtent,*(((PyHirschTuple*)ScaleMin)->Tuple),*(((PyHirschTuple*)ScaleMax)->Tuple),HalconCpp::HString(Optimization),HalconCpp::HString(Metric),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)MinContrast)->Tuple),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple),*(((PyHirschTuple*)Parameters)->Tuple),&ParameterValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ParameterValue));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lddddssllOOs", &NumLevels2,&AngleStart2,&AngleExtent2,&ScaleMin2,&ScaleMax2,&Optimization2,&Metric2,&Contrast2,&MinContrast2,&GenParamName2,&GenParamValue2,&Parameters2)) {
            if (PyHirschTuple_Check(GenParamName2) && PyHirschTuple_Check(GenParamValue2)) {
                HalconCpp::HTuple ParameterValue2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->DetermineDeformableModelParams(NumLevels2,AngleStart2,AngleExtent2,ScaleMin2,ScaleMax2,Optimization2,Metric2,Contrast2,MinContrast2,*(((PyHirschTuple*)GenParamName2)->Tuple),*(((PyHirschTuple*)GenParamValue2)->Tuple),Parameters2,&ParameterValue2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ParameterValue2));
                
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
    PyObject* HomMatrices2D2;
    char* StackingOrder1;
    PyObject* MappingDest2;
    PyObject* MappingSource2;
    PyObject* MappingDest;
    PyObject* HomMatrices2D;
    char* TransformDomain2;
    PyObject* MappingDest1;
    PyObject* StackingOrder;
    char* StackingOrder2;
    char* TransformDomain;
    PyObject* HomMatrices2D1;
    char* TransformDomain1;
    long StartImage1;
    PyObject* MappingSource;
    long StartImage;
    PyObject* MappingSource1;
    long StartImage2;
    
    try {
        if (PyArg_ParseTuple(args, "lOOOss", &StartImage1,&MappingSource1,&MappingDest1,&HomMatrices2D1,&StackingOrder1,&TransformDomain1)) {
            if (PyHirschTuple_Check(MappingSource1) && PyHirschTuple_Check(MappingDest1) && PyHirschHomMat2DArray_Check(HomMatrices2D1)) {
                HalconCpp::HHomMat2DArray MosaicMatrices2D1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenProjectiveMosaic(StartImage1,*(((PyHirschTuple*)MappingSource1)->Tuple),*(((PyHirschTuple*)MappingDest1)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D1)->HomMat2DArray)),HalconCpp::HString(StackingOrder1),HalconCpp::HString(TransformDomain1),&MosaicMatrices2D1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschHomMat2DArray_FromHHomMat2DArray(MosaicMatrices2D1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lOOOss", &StartImage2,&MappingSource2,&MappingDest2,&HomMatrices2D2,&StackingOrder2,&TransformDomain2)) {
            if (PyHirschTuple_Check(MappingSource2) && PyHirschTuple_Check(MappingDest2) && PyHirschHomMat2DArray_Check(HomMatrices2D2)) {
                HalconCpp::HHomMat2DArray MosaicMatrices2D2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenProjectiveMosaic(StartImage2,*(((PyHirschTuple*)MappingSource2)->Tuple),*(((PyHirschTuple*)MappingDest2)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D2)->HomMat2DArray)),StackingOrder2,TransformDomain2,&MosaicMatrices2D2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschHomMat2DArray_FromHHomMat2DArray(MosaicMatrices2D2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lOOOOs", &StartImage,&MappingSource,&MappingDest,&HomMatrices2D,&StackingOrder,&TransformDomain)) {
            if (PyHirschTuple_Check(MappingSource) && PyHirschTuple_Check(MappingDest) && PyHirschHomMat2DArray_Check(HomMatrices2D) && PyHirschTuple_Check(StackingOrder)) {
                HalconCpp::HHomMat2DArray MosaicMatrices2D;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenProjectiveMosaic(StartImage,*(((PyHirschTuple*)MappingSource)->Tuple),*(((PyHirschTuple*)MappingDest)->Tuple),HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),*(((PyHirschTuple*)StackingOrder)->Tuple),HalconCpp::HString(TransformDomain),&MosaicMatrices2D)));
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
    double Alpha1;
    char* Filter1;
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Filter,&Alpha)) {
            return PyHirschImage_FromHImage(self->Image->SmoothImage(HalconCpp::HString(Filter),Alpha));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Filter1,&Alpha1)) {
            return PyHirschImage_FromHImage(self->Image->SmoothImage(Filter1,Alpha1));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->Intensity(*(((PyHirschRegion*)Regions)->Region),&Deviation)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Deviation));
                
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
    PyObject* CovFMat2;
    long Height22;
    PyObject* FMatrix1;
    long Height1;
    PyObject* FMatrix;
    long Width2;
    long SubSampling1;
    char* Mapping1;
    long Width21;
    PyObject* CovFMat;
    long Height21;
    long Height12;
    long Height2;
    long Width1;
    PyObject* FMatrix2;
    long Width12;
    long SubSampling2;
    PyObject* CovFMat1;
    char* Mapping2;
    PyObject* SubSampling;
    long Width22;
    long Height11;
    long Width11;
    char* Mapping;
    
    try {
        if (PyArg_ParseTuple(args, "OOllllOs", &FMatrix,&CovFMat,&Width1,&Height1,&Width2,&Height2,&SubSampling,&Mapping)) {
            if (PyHirschHomMat2D_Check(FMatrix) && PyHirschTuple_Check(CovFMat) && PyHirschTuple_Check(SubSampling)) {
                HalconCpp::HTuple CovFMatRect;
                HalconCpp::HHomMat2D H1;
                HalconCpp::HHomMat2D H2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBinocularProjRectification(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)FMatrix)->HomMat2D)),*(((PyHirschTuple*)CovFMat)->Tuple),Width1,Height1,Width2,Height2,*(((PyHirschTuple*)SubSampling)->Tuple),HalconCpp::HString(Mapping),&CovFMatRect,&H1,&H2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovFMatRect));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2D_FromHHomMat2D(H1));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOllllls", &FMatrix1,&CovFMat1,&Width11,&Height11,&Width21,&Height21,&SubSampling1,&Mapping1)) {
            if (PyHirschHomMat2D_Check(FMatrix1) && PyHirschTuple_Check(CovFMat1)) {
                HalconCpp::HTuple CovFMatRect1;
                HalconCpp::HHomMat2D H11;
                HalconCpp::HHomMat2D H21;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBinocularProjRectification(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)FMatrix1)->HomMat2D)),*(((PyHirschTuple*)CovFMat1)->Tuple),Width11,Height11,Width21,Height21,SubSampling1,HalconCpp::HString(Mapping1),&CovFMatRect1,&H11,&H21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovFMatRect1));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2D_FromHHomMat2D(H11));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOllllls", &FMatrix2,&CovFMat2,&Width12,&Height12,&Width22,&Height22,&SubSampling2,&Mapping2)) {
            if (PyHirschHomMat2D_Check(FMatrix2) && PyHirschTuple_Check(CovFMat2)) {
                HalconCpp::HTuple CovFMatRect2;
                HalconCpp::HHomMat2D H12;
                HalconCpp::HHomMat2D H22;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBinocularProjRectification(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)FMatrix2)->HomMat2D)),*(((PyHirschTuple*)CovFMat2)->Tuple),Width12,Height12,Width22,Height22,SubSampling2,Mapping2,&CovFMatRect2,&H12,&H22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(CovFMatRect2));
                PyTuple_SET_ITEM(ret, 2, PyHirschHomMat2D_FromHHomMat2D(H12));
                PyTuple_SET_ITEM(ret, 3, PyHirschHomMat2D_FromHHomMat2D(H22));
                
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column1));
                
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
        return PyHirschTuple_GetAsScalarIfOne(self->Image->GetImageType());
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
        return PyHirschTuple_GetAsScalarIfOne(self->Image->CountChannels());
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
    char* Type1;
    double Row;
    char* Type;
    long Width;
    double Beta;
    long Width1;
    double Gamma1;
    long Height;
    double Alpha1;
    double Beta1;
    long Height1;
    double Column1;
    double Row1;
    double Gamma;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sdddddll", &Type1,&Alpha1,&Beta1,&Gamma1,&Row1,&Column1,&Width1,&Height1)) {
            self->Image->GenImageSurfaceFirstOrder(Type1,Alpha1,Beta1,Gamma1,Row1,Column1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddddll", &Type,&Alpha,&Beta,&Gamma,&Row,&Column,&Width,&Height)) {
            self->Image->GenImageSurfaceFirstOrder(HalconCpp::HString(Type),Alpha,Beta,Gamma,Row,Column,Width,Height);
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
    PyObject* Iterations;
    char* Iterations1;
    PyObject* Regions1;
    char* Mode1;
    PyObject* ForbiddenArea2;
    long Threshold1;
    char* Iterations2;
    char* Mode2;
    PyObject* ForbiddenArea;
    PyObject* Regions2;
    PyObject* Regions;
    PyObject* Threshold;
    char* Mode;
    long Threshold2;
    PyObject* ForbiddenArea1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOsO", &Regions,&ForbiddenArea,&Iterations,&Mode,&Threshold)) {
            if (PyHirschRegion_Check(Regions) && PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGray(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),HalconCpp::HString(Mode),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssl", &Regions1,&ForbiddenArea1,&Iterations1,&Mode1,&Threshold1)) {
            if (PyHirschRegion_Check(Regions1) && PyHirschRegion_Check(ForbiddenArea1)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGray(*(((PyHirschRegion*)Regions1)->Region),*(((PyHirschRegion*)ForbiddenArea1)->Region),HalconCpp::HString(Iterations1),HalconCpp::HString(Mode1),Threshold1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssl", &Regions2,&ForbiddenArea2,&Iterations2,&Mode2,&Threshold2)) {
            if (PyHirschRegion_Check(Regions2) && PyHirschRegion_Check(ForbiddenArea2)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGray(*(((PyHirschRegion*)Regions2)->Region),*(((PyHirschRegion*)ForbiddenArea2)->Region),Iterations2,Mode2,Threshold2));
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
    PyObject* HomMatrices2D2;
    char* StackingOrder1;
    PyObject* HomMatrices2D;
    PyObject* StackingOrder;
    char* StackingOrder2;
    char* TransformDomain;
    char* TransformDomain1;
    char* TransformDomain2;
    PyObject* HomMatrices2D1;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &HomMatrices2D1,&StackingOrder1,&TransformDomain1)) {
            if (PyHirschHomMat2DArray_Check(HomMatrices2D1)) {
                HalconCpp::HHomMat2D TransMat2D1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBundleAdjustedMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D1)->HomMat2DArray)),HalconCpp::HString(StackingOrder1),HalconCpp::HString(TransformDomain1),&TransMat2D1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschHomMat2D_FromHHomMat2D(TransMat2D1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &HomMatrices2D2,&StackingOrder2,&TransformDomain2)) {
            if (PyHirschHomMat2DArray_Check(HomMatrices2D2)) {
                HalconCpp::HHomMat2D TransMat2D2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBundleAdjustedMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D2)->HomMat2DArray)),StackingOrder2,TransformDomain2,&TransMat2D2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschHomMat2D_FromHHomMat2D(TransMat2D2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &HomMatrices2D,&StackingOrder,&TransformDomain)) {
            if (PyHirschHomMat2DArray_Check(HomMatrices2D) && PyHirschTuple_Check(StackingOrder)) {
                HalconCpp::HHomMat2D TransMat2D;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenBundleAdjustedMosaic(HalconCpp::HHomMat2DArray((((PyHirschHomMat2DArray*)HomMatrices2D)->HomMat2DArray)),*(((PyHirschTuple*)StackingOrder)->Tuple),HalconCpp::HString(TransformDomain),&TransMat2D)));
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
    PyObject* MaskWidth;
    double MaskWidth1;
    char* MaskShape;
    double MaskWidth2;
    double MaskHeight2;
    char* MaskShape2;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayDilationShape(MaskHeight1,MaskWidth1,HalconCpp::HString(MaskShape1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayDilationShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),HalconCpp::HString(MaskShape)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight2,&MaskWidth2,&MaskShape2)) {
            return PyHirschImage_FromHImage(self->Image->GrayDilationShape(MaskHeight2,MaskWidth2,MaskShape2));
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
    char* Class1;
    char* TrainingFile1;
    PyObject* Class;
    char* TrainingFile;
    char* TrainingFile2;
    char* Class2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Class,&TrainingFile)) {
            if (PyHirschTuple_Check(Class)) {
                self->Image->WriteOcrTrainfImage(*(((PyHirschTuple*)Class)->Tuple),HalconCpp::HString(TrainingFile));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &Class2,&TrainingFile2)) {
            self->Image->WriteOcrTrainfImage(Class2,TrainingFile2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &Class1,&TrainingFile1)) {
            self->Image->WriteOcrTrainfImage(HalconCpp::HString(Class1),HalconCpp::HString(TrainingFile1));
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
    char* Mode1;
    long Width;
    char* Norm;
    char* Norm1;
    long Width1;
    long Height;
    long Height1;
    double MaxFrequency;
    double MinFrequency1;
    double MaxFrequency1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency1,&MaxFrequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenBandfilter(MinFrequency1,MaxFrequency1,Norm1,Mode1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency,&MaxFrequency,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenBandfilter(MinFrequency,MaxFrequency,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
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
    double ScaleWidth1;
    char* Interpolation;
    double ScaleHeight;
    double ScaleHeight1;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &ScaleWidth,&ScaleHeight,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageFactor(ScaleWidth,ScaleHeight,HalconCpp::HString(Interpolation)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &ScaleWidth1,&ScaleHeight1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageFactor(ScaleWidth1,ScaleHeight1,Interpolation1));
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
    char* Mode1;
    PyObject* ImageTemplate;
    PyObject* ImageTemplate1;
    PyObject* RegionOfInterest;
    char* Mode;
    PyObject* RegionOfInterest1;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &RegionOfInterest,&ImageTemplate,&Mode)) {
            if (PyHirschRegion_Check(RegionOfInterest) && PyHirschImage_Check(ImageTemplate)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatch(*(((PyHirschRegion*)RegionOfInterest)->Region),*(((PyHirschImage*)ImageTemplate)->Image),HalconCpp::HString(Mode)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &RegionOfInterest1,&ImageTemplate1,&Mode1)) {
            if (PyHirschRegion_Check(RegionOfInterest1) && PyHirschImage_Check(ImageTemplate1)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatch(*(((PyHirschRegion*)RegionOfInterest1)->Region),*(((PyHirschImage*)ImageTemplate1)->Image),Mode1));
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
    char* Format2;
    char* Format;
    PyObject* FillColor;
    long FillColor1;
    long FillColor2;
    char* FileName2;
    char* Format1;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "sOO", &Format,&FillColor,&FileName)) {
            if (PyHirschTuple_Check(FillColor) && PyHirschTuple_Check(FileName)) {
                self->Image->WriteImage(HalconCpp::HString(Format),*(((PyHirschTuple*)FillColor)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sls", &Format1,&FillColor1,&FileName1)) {
            self->Image->WriteImage(HalconCpp::HString(Format1),FillColor1,HalconCpp::HString(FileName1));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sls", &Format2,&FillColor2,&FileName2)) {
            self->Image->WriteImage(Format2,FillColor2,FileName2);
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
    long Width1;
    char* Interpolation;
    long Width;
    long Height;
    long Height1;
    char* Interpolation1;
    PyObject* HomMat2D1;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &HomMat2D,&Interpolation,&Width,&Height)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImageSize(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),HalconCpp::HString(Interpolation),Width,Height));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osll", &HomMat2D1,&Interpolation1,&Width1,&Height1)) {
            if (PyHirschHomMat2D_Check(HomMat2D1)) {
                return PyHirschImage_FromHImage(self->Image->AffineTransImageSize(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D1)->HomMat2D)),Interpolation1,Width1,Height1));
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
    char* Type1;
    long Width2;
    char* Type;
    long Width;
    PyObject* Smax;
    double Smax1;
    long Width1;
    long Height;
    long Height1;
    long Height2;
    char* Type2;
    double Smax2;
    
    try {
        if (PyArg_ParseTuple(args, "slld", &Type2,&Width2,&Height2,&Smax2)) {
            self->Image->GenDiscSe(Type2,Width2,Height2,Smax2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllO", &Type,&Width,&Height,&Smax)) {
            if (PyHirschTuple_Check(Smax)) {
                self->Image->GenDiscSe(HalconCpp::HString(Type),Width,Height,*(((PyHirschTuple*)Smax)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slld", &Type1,&Width1,&Height1,&Smax1)) {
            self->Image->GenDiscSe(HalconCpp::HString(Type1),Width1,Height1,Smax1);
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
    char* Method1;
    char* Method;
    char* Method2;
    char* LightDark1;
    char* LightDark;
    char* LightDark2;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Method2,&LightDark2)) {
            {
            // with output params
                Hlong UsedThreshold2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->BinaryThreshold(Method2,LightDark2,&UsedThreshold2)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(UsedThreshold2)));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &Method1,&LightDark1)) {
            {
            // with output params
                Hlong UsedThreshold1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->BinaryThreshold(HalconCpp::HString(Method1),HalconCpp::HString(LightDark1),&UsedThreshold1)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(UsedThreshold1)));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &Method,&LightDark)) {
            {
            // with output params
                HalconCpp::HTuple UsedThreshold;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->BinaryThreshold(HalconCpp::HString(Method),HalconCpp::HString(LightDark),&UsedThreshold)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(UsedThreshold));
                
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
    double High2;
    double Low1;
    PyObject* High;
    double High1;
    char* LightDark;
    char* LightDark1;
    char* LightDark2;
    double Low2;
    long MaskSize1;
    long MaskSize2;
    long MaskSize;
    PyObject* Low;
    
    try {
        if (PyArg_ParseTuple(args, "lOOs", &MaskSize,&Low,&High,&LightDark)) {
            if (PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschXLDCont_FromHXLDCont(self->Image->LinesFacet(MaskSize,*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),HalconCpp::HString(LightDark)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldds", &MaskSize2,&Low2,&High2,&LightDark2)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesFacet(MaskSize2,Low2,High2,LightDark2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldds", &MaskSize1,&Low1,&High1,&LightDark1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesFacet(MaskSize1,Low1,High1,HalconCpp::HString(LightDark1)));
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
    long Width1;
    char* Interpolation;
    long Width;
    long Height1;
    long Height;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "lls", &Width1,&Height1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageSize(Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lls", &Width,&Height,&Interpolation)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageSize(Width,Height,HalconCpp::HString(Interpolation)));
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
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Threshold));
                
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
    PyObject* ImageRect2T12;
    PyObject* ImageRect1T21;
    PyObject* ImageRect2T21;
    PyObject* ImageRect2T2;
    PyObject* Disparity1;
    PyObject* Disparity;
    double SmoothingFlow2;
    char* GenParamName2;
    PyObject* GenParamValue;
    double SmoothingDisparity1;
    PyObject* SmoothingDisparity;
    char* GenParamName1;
    char* GenParamValue1;
    PyObject* ImageRect2T11;
    PyObject* ImageRect1T22;
    double SmoothingFlow1;
    PyObject* ImageRect2T22;
    PyObject* SmoothingFlow;
    char* GenParamValue2;
    PyObject* ImageRect1T2;
    PyObject* Disparity2;
    PyObject* GenParamName;
    double SmoothingDisparity2;
    PyObject* ImageRect2T1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOddss", &ImageRect2T12,&ImageRect1T22,&ImageRect2T22,&Disparity2,&SmoothingFlow2,&SmoothingDisparity2,&GenParamName2,&GenParamValue2)) {
            if (PyHirschImage_Check(ImageRect2T12) && PyHirschImage_Check(ImageRect1T22) && PyHirschImage_Check(ImageRect2T22) && PyHirschImage_Check(Disparity2)) {
                HalconCpp::HImage DisparityChange2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SceneFlowUncalib(*(((PyHirschImage*)ImageRect2T12)->Image),*(((PyHirschImage*)ImageRect1T22)->Image),*(((PyHirschImage*)ImageRect2T22)->Image),*(((PyHirschImage*)Disparity2)->Image),&DisparityChange2,SmoothingFlow2,SmoothingDisparity2,GenParamName2,GenParamValue2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(DisparityChange2));
                
                return ret;
            }
        }
        PyErr_Clear();
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
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SceneFlowUncalib(*(((PyHirschImage*)ImageRect2T11)->Image),*(((PyHirschImage*)ImageRect1T21)->Image),*(((PyHirschImage*)ImageRect2T21)->Image),*(((PyHirschImage*)Disparity1)->Image),&DisparityChange1,SmoothingFlow1,SmoothingDisparity1,HalconCpp::HString(GenParamName1),HalconCpp::HString(GenParamValue1))));
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
    long Coordinate2;
    double Threshold1;
    char* ExpandType;
    long Coordinate1;
    char* ExpandType1;
    char* RowColumn1;
    char* RowColumn;
    char* RowColumn2;
    double Threshold2;
    long Coordinate;
    char* ExpandType2;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "lssd", &Coordinate1,&ExpandType1,&RowColumn1,&Threshold1)) {
            return PyHirschRegion_FromHRegion(self->Image->ExpandLine(Coordinate1,HalconCpp::HString(ExpandType1),HalconCpp::HString(RowColumn1),Threshold1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lssd", &Coordinate2,&ExpandType2,&RowColumn2,&Threshold2)) {
            return PyHirschRegion_FromHRegion(self->Image->ExpandLine(Coordinate2,ExpandType2,RowColumn2,Threshold2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lssO", &Coordinate,&ExpandType,&RowColumn,&Threshold)) {
            if (PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandLine(Coordinate,HalconCpp::HString(ExpandType),HalconCpp::HString(RowColumn),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
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
    double MaxError1;
    char* SubPixel2;
    double MaxError2;
    PyObject* TemplateID2;
    PyObject* TemplateID;
    char* SubPixel;
    char* SubPixel1;
    double MaxError;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &TemplateID,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Error;
                self->Image->BestMatch(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,HalconCpp::HString(SubPixel),&Row,&Column,&Error);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &TemplateID2,&MaxError2,&SubPixel2)) {
            if (PyHirschTemplate_Check(TemplateID2)) {
                double Row2;
                double Column2;
                double Error2;
                self->Image->BestMatch(*(((PyHirschTemplate*)TemplateID2)->Template),MaxError2,SubPixel2,&Row2,&Column2,&Error2);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &TemplateID1,&MaxError1,&SubPixel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Row1;
                double Column1;
                double Error1;
                self->Image->BestMatch(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,HalconCpp::HString(SubPixel1),&Row1,&Column1,&Error1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
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
    char* Mode1;
    long Iterations;
    double Rho1;
    PyObject* Region1;
    double Contrast1;
    PyObject* Region;
    double Rho;
    double Theta1;
    long Iterations1;
    double Contrast;
    char* Mode;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "Osddld", &Region1,&Mode1,&Contrast1,&Theta1,&Iterations1,&Rho1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingAniso(*(((PyHirschRegion*)Region1)->Region),Mode1,Contrast1,Theta1,Iterations1,Rho1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osddld", &Region,&Mode,&Contrast,&Theta,&Iterations,&Rho)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingAniso(*(((PyHirschRegion*)Region)->Region),HalconCpp::HString(Mode),Contrast,Theta,Iterations,Rho));
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
                return PyHirschTuple_GetAsScalarIfOne(self->Image->NoiseDistributionMean(*(((PyHirschRegion*)ConstRegion)->Region),FilterSize));
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
    char* ReconstructionMethod1;
    PyObject* GenParamName;
    PyObject* GenParamValue;
    PyObject* GenParamValue1;
    PyObject* GenParamName1;
    char* ReconstructionMethod;
    
    try {
        if (PyArg_ParseTuple(args, "sOO", &ReconstructionMethod1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschTuple_Check(GenParamName1) && PyHirschTuple_Check(GenParamValue1)) {
                return PyHirschImage_FromHImage(self->Image->ReconstructHeightFieldFromGradient(ReconstructionMethod1,*(((PyHirschTuple*)GenParamName1)->Tuple),*(((PyHirschTuple*)GenParamValue1)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOO", &ReconstructionMethod,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                return PyHirschImage_FromHImage(self->Image->ReconstructHeightFieldFromGradient(HalconCpp::HString(ReconstructionMethod),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple)));
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
    long MinScore1;
    long MinCheckNeighborDiff1;
    long CheckNeighbor;
    long MinScore;
    long MinCheckNeighborDiff;
    char* Subpix;
    char* Subpix1;
    long CheckNeighbor1;
    long Radius1;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "lllls", &Radius,&CheckNeighbor,&MinCheckNeighborDiff,&MinScore,&Subpix)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->PointsLepetit(Radius,CheckNeighbor,MinCheckNeighborDiff,MinScore,HalconCpp::HString(Subpix),&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lllls", &Radius1,&CheckNeighbor1,&MinCheckNeighborDiff1,&MinScore1,&Subpix1)) {
            {
            // with output params
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                self->Image->PointsLepetit(Radius1,CheckNeighbor1,MinCheckNeighborDiff1,MinScore1,Subpix1,&Row1,&Column1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column1));
                
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
    double Sigma1;
    char* Component1;
    PyObject* Sigma;
    double Sigma2;
    char* Component;
    char* Component2;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Sigma1,&Component1)) {
            return PyHirschImage_FromHImage(self->Image->DerivateVectorField(Sigma1,HalconCpp::HString(Component1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Sigma,&Component)) {
            if (PyHirschTuple_Check(Sigma)) {
                return PyHirschImage_FromHImage(self->Image->DerivateVectorField(*(((PyHirschTuple*)Sigma)->Tuple),HalconCpp::HString(Component)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Sigma2,&Component2)) {
            return PyHirschImage_FromHImage(self->Image->DerivateVectorField(Sigma2,Component2));
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
    double Offset1;
    PyObject* ThresholdImage;
    PyObject* ThresholdImage2;
    char* LightDark;
    double Offset2;
    char* LightDark1;
    PyObject* ThresholdImage1;
    char* LightDark2;
    PyObject* Offset;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &ThresholdImage1,&Offset1,&LightDark1)) {
            if (PyHirschImage_Check(ThresholdImage1)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImage*)ThresholdImage1)->Image),Offset1,HalconCpp::HString(LightDark1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &ThresholdImage2,&Offset2,&LightDark2)) {
            if (PyHirschImage_Check(ThresholdImage2)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImage*)ThresholdImage2)->Image),Offset2,LightDark2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ThresholdImage,&Offset,&LightDark)) {
            if (PyHirschImage_Check(ThresholdImage) && PyHirschTuple_Check(Offset)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImage*)ThresholdImage)->Image),*(((PyHirschTuple*)Offset)->Tuple),HalconCpp::HString(LightDark)));
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
    double Percent2;
    char* Method1;
    double Percent1;
    char* Method;
    char* Method2;
    PyObject* Percent;
    
    try {
        if (PyArg_ParseTuple(args, "sO", &Method,&Percent)) {
            if (PyHirschTuple_Check(Percent)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->EstimateNoise(HalconCpp::HString(Method),*(((PyHirschTuple*)Percent)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Method2,&Percent2)) {
            return PyFloat_FromDouble(self->Image->EstimateNoise(Method2,Percent2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Method1,&Percent1)) {
            return PyFloat_FromDouble(self->Image->EstimateNoise(HalconCpp::HString(Method1),Percent1));
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
    char* SearchNames1;
    PyObject* SearchNames;
    char* SearchNames2;
    char* TrainingFile1;
    char* TrainingFile2;
    PyObject* TrainingFile;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &TrainingFile2,&SearchNames2)) {
            return PyString_FromString(self->Image->ReadOcrTrainfSelect(TrainingFile2,SearchNames2).Text());
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &TrainingFile,&SearchNames)) {
            if (PyHirschTuple_Check(TrainingFile) && PyHirschTuple_Check(SearchNames)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->ReadOcrTrainfSelect(*(((PyHirschTuple*)TrainingFile)->Tuple),*(((PyHirschTuple*)SearchNames)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &TrainingFile1,&SearchNames1)) {
            return PyString_FromString(self->Image->ReadOcrTrainfSelect(HalconCpp::HString(TrainingFile1),HalconCpp::HString(SearchNames1)).Text());
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
    double Center2;
    PyObject* Radius;
    char* Metric2;
    double Radius2;
    double Radius1;
    char* SingleMultiple1;
    char* Metric1;
    char* SingleMultiple2;
    char* SingleMultiple;
    PyObject* Center;
    char* Metric;
    double Center1;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Metric2,&SingleMultiple2,&Radius2,&Center2)) {
            return PyHirschRegion_FromHRegion(self->Image->ClassNdimNorm(Metric2,SingleMultiple2,Radius2,Center2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Metric1,&SingleMultiple1,&Radius1,&Center1)) {
            return PyHirschRegion_FromHRegion(self->Image->ClassNdimNorm(HalconCpp::HString(Metric1),HalconCpp::HString(SingleMultiple1),Radius1,Center1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssOO", &Metric,&SingleMultiple,&Radius,&Center)) {
            if (PyHirschTuple_Check(Radius) && PyHirschTuple_Check(Center)) {
                return PyHirschRegion_FromHRegion(self->Image->ClassNdimNorm(HalconCpp::HString(Metric),HalconCpp::HString(SingleMultiple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)Center)->Tuple)));
            }
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
    long Size2;
    long Size1;
    PyObject* Size;
    char* FilterType1;
    char* FilterType;
    char* FilterType2;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType2,&Size2)) {
            return PyHirschImage_FromHImage(self->Image->SobelAmp(FilterType2,Size2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sO", &FilterType,&Size)) {
            if (PyHirschTuple_Check(Size)) {
                return PyHirschImage_FromHImage(self->Image->SobelAmp(HalconCpp::HString(FilterType),*(((PyHirschTuple*)Size)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &FilterType1,&Size1)) {
            return PyHirschImage_FromHImage(self->Image->SobelAmp(HalconCpp::HString(FilterType1),Size1));
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
    char* Subpix2;
    double Alpha2;
    long MaskSizeSmooth1;
    long MaskSizeSmooth;
    char* Subpix1;
    long MaskSizeGrad1;
    long MaskSizeGrad;
    double Threshold1;
    char* Subpix;
    long MaskSizeGrad2;
    double Threshold2;
    PyObject* Threshold;
    long MaskSizeSmooth2;
    double Alpha1;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskSizeGrad1,&MaskSizeSmooth1,&Alpha1,&Threshold1,&Subpix1)) {
            {
            // with output params
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                self->Image->PointsHarrisBinomial(MaskSizeGrad1,MaskSizeSmooth1,Alpha1,Threshold1,HalconCpp::HString(Subpix1),&Row1,&Column1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldOs", &MaskSizeGrad,&MaskSizeSmooth,&Alpha,&Threshold,&Subpix)) {
            if (PyHirschTuple_Check(Threshold)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->PointsHarrisBinomial(MaskSizeGrad,MaskSizeSmooth,Alpha,*(((PyHirschTuple*)Threshold)->Tuple),HalconCpp::HString(Subpix),&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldds", &MaskSizeGrad2,&MaskSizeSmooth2,&Alpha2,&Threshold2,&Subpix2)) {
            {
            // with output params
                HalconCpp::HTuple Row2;
                HalconCpp::HTuple Column2;
                self->Image->PointsHarrisBinomial(MaskSizeGrad2,MaskSizeSmooth2,Alpha2,Threshold2,Subpix2,&Row2,&Column2);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row2));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column2));
                
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Min));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Max));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Range));
                
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
    double Row2;
    char* Interpolation;
    long Width1;
    long Height1;
    double RadiusStart2;
    double AngleEnd1;
    double RadiusEnd1;
    long Width2;
    double Column2;
    double AngleStart1;
    long Height2;
    char* Interpolation1;
    double RadiusEnd2;
    PyObject* Column;
    PyObject* Row;
    double AngleEnd2;
    PyObject* RadiusEnd;
    double RadiusStart1;
    PyObject* RadiusStart;
    double Row1;
    long Width;
    double AngleStart2;
    long Height;
    double AngleEnd;
    char* Interpolation2;
    double AngleStart;
    double Column1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlls", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&Width1,&Height1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,HalconCpp::HString(Interpolation1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddlls", &Row2,&Column2,&AngleStart2,&AngleEnd2,&RadiusStart2,&RadiusEnd2,&Width2,&Height2,&Interpolation2)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageInv(Row2,Column2,AngleStart2,AngleEnd2,RadiusStart2,RadiusEnd2,Width2,Height2,Interpolation2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOddOOlls", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd)) {
                return PyHirschImage_FromHImage(self->Image->PolarTransImageInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),AngleStart,AngleEnd,*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),Width,Height,HalconCpp::HString(Interpolation)));
            }
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
    long SearchSize1;
    PyObject* Region1;
    PyObject* Region;
    double Anisotropy;
    double Smoothness;
    double Anisotropy1;
    double Smoothness1;
    char* PostIteration;
    long MaskSize1;
    char* PostIteration1;
    long MaskSize;
    
    try {
        if (PyArg_ParseTuple(args, "Olldsd", &Region,&MaskSize,&SearchSize,&Anisotropy,&PostIteration,&Smoothness)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingTexture(*(((PyHirschRegion*)Region)->Region),MaskSize,SearchSize,Anisotropy,HalconCpp::HString(PostIteration),Smoothness));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olldsd", &Region1,&MaskSize1,&SearchSize1,&Anisotropy1,&PostIteration1,&Smoothness1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingTexture(*(((PyHirschRegion*)Region1)->Region),MaskSize1,SearchSize1,Anisotropy1,PostIteration1,Smoothness1));
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
    double MaxError1;
    long NumLevels1;
    double AngleStart1;
    PyObject* TemplateID1;
    char* SubPixel2;
    double AngleExtend;
    double AngleStart2;
    double MaxError2;
    PyObject* TemplateID2;
    PyObject* TemplateID;
    char* SubPixel;
    double MaxError;
    double AngleExtend1;
    double AngleStart;
    char* SubPixel1;
    long NumLevels2;
    long NumLevels;
    double AngleExtend2;
    
    try {
        if (PyArg_ParseTuple(args, "Odddsl", &TemplateID1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1,&NumLevels1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Row1;
                double Column1;
                double Angle1;
                double Error1;
                self->Image->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID1)->Template),AngleStart1,AngleExtend1,MaxError1,HalconCpp::HString(SubPixel1),NumLevels1,&Row1,&Column1,&Angle1,&Error1);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odddsl", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Angle;
                HalconCpp::HTuple Error;
                self->Image->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,HalconCpp::HString(SubPixel),NumLevels,&Row,&Column,&Angle,&Error);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odddsl", &TemplateID2,&AngleStart2,&AngleExtend2,&MaxError2,&SubPixel2,&NumLevels2)) {
            if (PyHirschTemplate_Check(TemplateID2)) {
                double Row2;
                double Column2;
                double Angle2;
                double Error2;
                self->Image->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID2)->Template),AngleStart2,AngleExtend2,MaxError2,SubPixel2,NumLevels2,&Row2,&Column2,&Angle2,&Error2);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error2));
                
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->GrayHisto(*(((PyHirschRegion*)Regions)->Region),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RelativeHisto));
                
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
    char* Mode1;
    PyObject* Pattern1;
    long AddRow1;
    long DiffUpperBound;
    char* Mode;
    long DiffLowerBound;
    long AddRow;
    PyObject* Pattern;
    long AddCol1;
    long DiffLowerBound1;
    long GrayOffset;
    long DiffUpperBound1;
    long GrayOffset1;
    
    try {
        if (PyArg_ParseTuple(args, "Oslllll", &Pattern1,&Mode1,&DiffLowerBound1,&DiffUpperBound1,&GrayOffset1,&AddRow1,&AddCol1)) {
            if (PyHirschImage_Check(Pattern1)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImage*)Pattern1)->Image),Mode1,DiffLowerBound1,DiffUpperBound1,GrayOffset1,AddRow1,AddCol1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oslllll", &Pattern,&Mode,&DiffLowerBound,&DiffUpperBound,&GrayOffset,&AddRow,&AddCol)) {
            if (PyHirschImage_Check(Pattern)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImage*)Pattern)->Image),HalconCpp::HString(Mode),DiffLowerBound,DiffUpperBound,GrayOffset,AddRow,AddCol));
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
    char* Type1;
    double Frequency1;
    double Sigma1;
    char* Type;
    long Width;
    char* Norm;
    long Height1;
    char* Norm1;
    long Width1;
    long Height;
    char* Mode1;
    double Frequency;
    double Sigma;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ddsssll", &Frequency1,&Sigma1,&Type1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenStdBandpass(Frequency1,Sigma1,Type1,Norm1,Mode1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddsssll", &Frequency,&Sigma,&Type,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenStdBandpass(Frequency,Sigma,HalconCpp::HString(Type),HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
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
    char* FilterType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType)) {
            return PyHirschImage_FromHImage(self->Image->Roberts(HalconCpp::HString(FilterType)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FilterType1)) {
            return PyHirschImage_FromHImage(self->Image->Roberts(FilterType1));
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
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImage_FromHImage(self->Image->MirrorImage(HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->MirrorImage(Mode1));
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
    char* EstimationMethod1;
    PyObject* HomMatrices2D2;
    PyObject* To2;
    char* EstimateParameters2;
    char* EstimateParameters1;
    PyObject* HomMatrices2D;
    char* OECFModel2;
    long ReferenceImage;
    long ReferenceImage2;
    char* EstimationMethod2;
    char* OECFModel;
    long ReferenceImage1;
    char* OECFModel1;
    PyObject* From1;
    PyObject* To;
    PyObject* From;
    PyObject* To1;
    char* EstimationMethod;
    PyObject* HomMatrices2D1;
    PyObject* EstimateParameters;
    PyObject* From2;
    
    try {
        if (PyArg_ParseTuple(args, "OOlOsss", &From1,&To1,&ReferenceImage1,&HomMatrices2D1,&EstimationMethod1,&EstimateParameters1,&OECFModel1)) {
            if (PyHirschTuple_Check(From1) && PyHirschTuple_Check(To1) && PyHirschTuple_Check(HomMatrices2D1)) {
                return PyHirschImage_FromHImage(self->Image->AdjustMosaicImages(*(((PyHirschTuple*)From1)->Tuple),*(((PyHirschTuple*)To1)->Tuple),ReferenceImage1,*(((PyHirschTuple*)HomMatrices2D1)->Tuple),HalconCpp::HString(EstimationMethod1),HalconCpp::HString(EstimateParameters1),HalconCpp::HString(OECFModel1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlOsOs", &From,&To,&ReferenceImage,&HomMatrices2D,&EstimationMethod,&EstimateParameters,&OECFModel)) {
            if (PyHirschTuple_Check(From) && PyHirschTuple_Check(To) && PyHirschTuple_Check(HomMatrices2D) && PyHirschTuple_Check(EstimateParameters)) {
                return PyHirschImage_FromHImage(self->Image->AdjustMosaicImages(*(((PyHirschTuple*)From)->Tuple),*(((PyHirschTuple*)To)->Tuple),ReferenceImage,*(((PyHirschTuple*)HomMatrices2D)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)EstimateParameters)->Tuple),HalconCpp::HString(OECFModel)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlOsss", &From2,&To2,&ReferenceImage2,&HomMatrices2D2,&EstimationMethod2,&EstimateParameters2,&OECFModel2)) {
            if (PyHirschTuple_Check(From2) && PyHirschTuple_Check(To2) && PyHirschTuple_Check(HomMatrices2D2)) {
                return PyHirschImage_FromHImage(self->Image->AdjustMosaicImages(*(((PyHirschTuple*)From2)->Tuple),*(((PyHirschTuple*)To2)->Tuple),ReferenceImage2,*(((PyHirschTuple*)HomMatrices2D2)->Tuple),EstimationMethod2,EstimateParameters2,OECFModel2));
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
    double Row2;
    char* Interpolation;
    long Width1;
    long Height1;
    double RadiusStart2;
    double AngleEnd1;
    double RadiusEnd1;
    long Width2;
    double Column2;
    double AngleStart1;
    long Height2;
    char* Interpolation1;
    double RadiusEnd2;
    PyObject* Column;
    PyObject* Row;
    double AngleEnd2;
    PyObject* RadiusEnd;
    double RadiusStart1;
    PyObject* RadiusStart;
    double Row1;
    long Width;
    double AngleStart2;
    long Height;
    double AngleEnd;
    char* Interpolation2;
    double AngleStart;
    double Column1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlls", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&Width1,&Height1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageExt(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,HalconCpp::HString(Interpolation1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddlls", &Row2,&Column2,&AngleStart2,&AngleEnd2,&RadiusStart2,&RadiusEnd2,&Width2,&Height2,&Interpolation2)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageExt(Row2,Column2,AngleStart2,AngleEnd2,RadiusStart2,RadiusEnd2,Width2,Height2,Interpolation2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOddOOlls", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd)) {
                return PyHirschImage_FromHImage(self->Image->PolarTransImageExt(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),AngleStart,AngleEnd,*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),Width,Height,HalconCpp::HString(Interpolation)));
            }
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
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Image->ReadGraySe(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Image->ReadGraySe(HalconCpp::HString(FileName));
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
    PyObject* Regions1;
    long Iterations;
    char* Algorithm;
    double ClippingFactor1;
    double ClippingFactor;
    PyObject* Regions2;
    double ClippingFactor2;
    PyObject* Regions;
    long Iterations1;
    char* Algorithm2;
    char* Algorithm1;
    long Iterations2;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Regions,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple Beta;
                HalconCpp::HTuple Gamma;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->FitSurfaceFirstOrder(*(((PyHirschRegion*)Regions)->Region),HalconCpp::HString(Algorithm),Iterations,ClippingFactor,&Beta,&Gamma)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Gamma));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Regions2,&Algorithm2,&Iterations2,&ClippingFactor2)) {
            if (PyHirschRegion_Check(Regions2)) {
                double Beta2;
                double Gamma2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->FitSurfaceFirstOrder(*(((PyHirschRegion*)Regions2)->Region),Algorithm2,Iterations2,ClippingFactor2,&Beta2,&Gamma2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Regions1,&Algorithm1,&Iterations1,&ClippingFactor1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Beta1;
                double Gamma1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->FitSurfaceFirstOrder(*(((PyHirschRegion*)Regions1)->Region),HalconCpp::HString(Algorithm1),Iterations1,ClippingFactor1,&Beta1,&Gamma1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma1));
                
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
    char* FunctionType;
    long PolynomialDegree1;
    char* Features;
    long PolynomialDegree2;
    char* FunctionType2;
    double Smoothness1;
    char* Features1;
    PyObject* ExposureRatios;
    double ExposureRatios1;
    double Smoothness2;
    long PolynomialDegree;
    double Smoothness;
    double ExposureRatios2;
    char* Features2;
    char* FunctionType1;
    
    try {
        if (PyArg_ParseTuple(args, "Ossdl", &ExposureRatios,&Features,&FunctionType,&Smoothness,&PolynomialDegree)) {
            if (PyHirschTuple_Check(ExposureRatios)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Image->RadiometricSelfCalibration(*(((PyHirschTuple*)ExposureRatios)->Tuple),HalconCpp::HString(Features),HalconCpp::HString(FunctionType),Smoothness,PolynomialDegree));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssdl", &ExposureRatios1,&Features1,&FunctionType1,&Smoothness1,&PolynomialDegree1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->Image->RadiometricSelfCalibration(ExposureRatios1,HalconCpp::HString(Features1),HalconCpp::HString(FunctionType1),Smoothness1,PolynomialDegree1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssdl", &ExposureRatios2,&Features2,&FunctionType2,&Smoothness2,&PolynomialDegree2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->Image->RadiometricSelfCalibration(ExposureRatios2,Features2,FunctionType2,Smoothness2,PolynomialDegree2));
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
    char* Margin2;
    PyObject* Mask;
    char* Margin1;
    PyObject* Mask1;
    PyObject* Margin;
    PyObject* Mask2;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mask,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImage_FromHImage(self->Image->MidrangeImage(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Mask1,&Margin1)) {
            if (PyHirschRegion_Check(Mask1)) {
                return PyHirschImage_FromHImage(self->Image->MidrangeImage(*(((PyHirschRegion*)Mask1)->Region),HalconCpp::HString(Margin1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Mask2,&Margin2)) {
            if (PyHirschRegion_Check(Mask2)) {
                return PyHirschImage_FromHImage(self->Image->MidrangeImage(*(((PyHirschRegion*)Mask2)->Region),Margin2));
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
    char* CalculateScore2;
    double GrayConstancy;
    char* MGParamValue1;
    char* CalculateScore;
    double Smoothness;
    char* MGParamName2;
    PyObject* MGParamName;
    PyObject* ImageRect21;
    double InitialGuess1;
    double GradientConstancy2;
    double Smoothness2;
    char* MGParamValue2;
    double InitialGuess;
    PyObject* ImageRect2;
    double Smoothness1;
    char* CalculateScore1;
    double InitialGuess2;
    double GrayConstancy1;
    char* MGParamName1;
    PyObject* MGParamValue;
    double GradientConstancy1;
    double GrayConstancy2;
    PyObject* ImageRect22;
    double GradientConstancy;
    
    try {
        if (PyArg_ParseTuple(args, "Oddddsss", &ImageRect21,&GrayConstancy1,&GradientConstancy1,&Smoothness1,&InitialGuess1,&CalculateScore1,&MGParamName1,&MGParamValue1)) {
            if (PyHirschImage_Check(ImageRect21)) {
                HalconCpp::HImage Score1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImage*)ImageRect21)->Image),&Score1,GrayConstancy1,GradientConstancy1,Smoothness1,InitialGuess1,HalconCpp::HString(CalculateScore1),HalconCpp::HString(MGParamName1),HalconCpp::HString(MGParamValue1))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OddddsOO", &ImageRect2,&GrayConstancy,&GradientConstancy,&Smoothness,&InitialGuess,&CalculateScore,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(ImageRect2) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                HalconCpp::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImage*)ImageRect2)->Image),&Score,GrayConstancy,GradientConstancy,Smoothness,InitialGuess,HalconCpp::HString(CalculateScore),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddddsss", &ImageRect22,&GrayConstancy2,&GradientConstancy2,&Smoothness2,&InitialGuess2,&CalculateScore2,&MGParamName2,&MGParamValue2)) {
            if (PyHirschImage_Check(ImageRect22)) {
                HalconCpp::HImage Score2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImage*)ImageRect22)->Image),&Score2,GrayConstancy2,GradientConstancy2,Smoothness2,InitialGuess2,CalculateScore2,MGParamName2,MGParamValue2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score2));
                
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
    long MinDisparity2;
    PyObject* ImageRect21;
    long MinDisparity1;
    long EdgeSmoothing;
    long SurfaceSmoothing;
    long SurfaceSmoothing2;
    char* GenParamName1;
    PyObject* ImageRect2;
    long MaxDisparity;
    long MaxDisparity2;
    PyObject* GenParamName;
    long SurfaceSmoothing1;
    char* GenParamValue2;
    char* GenParamName2;
    long MaxDisparity1;
    PyObject* GenParamValue;
    long EdgeSmoothing2;
    char* GenParamValue1;
    PyObject* ImageRect22;
    long EdgeSmoothing1;
    
    try {
        if (PyArg_ParseTuple(args, "Ollllss", &ImageRect21,&MinDisparity1,&MaxDisparity1,&SurfaceSmoothing1,&EdgeSmoothing1,&GenParamName1,&GenParamValue1)) {
            if (PyHirschImage_Check(ImageRect21)) {
                HalconCpp::HImage Score1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMs(*(((PyHirschImage*)ImageRect21)->Image),&Score1,MinDisparity1,MaxDisparity1,SurfaceSmoothing1,EdgeSmoothing1,HalconCpp::HString(GenParamName1),HalconCpp::HString(GenParamValue1))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ollllss", &ImageRect22,&MinDisparity2,&MaxDisparity2,&SurfaceSmoothing2,&EdgeSmoothing2,&GenParamName2,&GenParamValue2)) {
            if (PyHirschImage_Check(ImageRect22)) {
                HalconCpp::HImage Score2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMs(*(((PyHirschImage*)ImageRect22)->Image),&Score2,MinDisparity2,MaxDisparity2,SurfaceSmoothing2,EdgeSmoothing2,GenParamName2,GenParamValue2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score2));
                
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
    double Alpha2;
    PyObject* Low;
    PyObject* High;
    double High1;
    double High2;
    char* Filter2;
    double Low1;
    char* Filter1;
    double Low2;
    char* Filter;
    double Alpha1;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sddd", &Filter2,&Alpha2,&Low2,&High2)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesColorSubPix(Filter2,Alpha2,Low2,High2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdOO", &Filter,&Alpha,&Low,&High)) {
            if (PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesColorSubPix(HalconCpp::HString(Filter),Alpha,*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddd", &Filter1,&Alpha1,&Low1,&High1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->EdgesColorSubPix(HalconCpp::HString(Filter1),Alpha1,Low1,High1));
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
    char* CompleteJunctions2;
    char* LineModel;
    char* CompleteJunctions1;
    double Sigma1;
    PyObject* Low;
    PyObject* High;
    double High1;
    char* ExtractWidth1;
    char* LightDark;
    char* LightDark1;
    char* ExtractWidth2;
    char* CompleteJunctions;
    char* LineModel1;
    char* ExtractWidth;
    char* LightDark2;
    double Low2;
    PyObject* Sigma;
    char* LineModel2;
    double Sigma2;
    double High2;
    double Low1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOssss", &Sigma,&Low,&High,&LightDark,&ExtractWidth,&LineModel,&CompleteJunctions)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschXLDCont_FromHXLDCont(self->Image->LinesGauss(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),HalconCpp::HString(LightDark),HalconCpp::HString(ExtractWidth),HalconCpp::HString(LineModel),HalconCpp::HString(CompleteJunctions)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddssss", &Sigma2,&Low2,&High2,&LightDark2,&ExtractWidth2,&LineModel2,&CompleteJunctions2)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesGauss(Sigma2,Low2,High2,LightDark2,ExtractWidth2,LineModel2,CompleteJunctions2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddssss", &Sigma1,&Low1,&High1,&LightDark1,&ExtractWidth1,&LineModel1,&CompleteJunctions1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Image->LinesGauss(Sigma1,Low1,High1,HalconCpp::HString(LightDark1),HalconCpp::HString(ExtractWidth1),HalconCpp::HString(LineModel1),HalconCpp::HString(CompleteJunctions1)));
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
    PyObject* Row1;
    PyObject* Column;
    PyObject* Row;
    long GridSpacing2;
    char* Rotation2;
    PyObject* ConnectingLines;
    PyObject* ConnectingLines2;
    char* Rotation1;
    char* MapType;
    PyObject* ConnectingLines1;
    PyObject* Column1;
    PyObject* Rotation;
    long GridSpacing1;
    long GridSpacing;
    PyObject* Row2;
    char* MapType1;
    PyObject* Column2;
    char* MapType2;
    
    try {
        if (PyArg_ParseTuple(args, "OlsOOs", &ConnectingLines2,&GridSpacing2,&Rotation2,&Row2,&Column2,&MapType2)) {
            if (PyHirschXLD_Check(ConnectingLines2) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Column2)) {
                HalconCpp::HXLD Meshes2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenGridRectificationMap(*(((PyHirschXLD*)ConnectingLines2)->XLD),&Meshes2,GridSpacing2,Rotation2,*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),MapType2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLD_FromHXLD(Meshes2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlsOOs", &ConnectingLines1,&GridSpacing1,&Rotation1,&Row1,&Column1,&MapType1)) {
            if (PyHirschXLD_Check(ConnectingLines1) && PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Column1)) {
                HalconCpp::HXLD Meshes1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenGridRectificationMap(*(((PyHirschXLD*)ConnectingLines1)->XLD),&Meshes1,GridSpacing1,HalconCpp::HString(Rotation1),*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),HalconCpp::HString(MapType1))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLD_FromHXLD(Meshes1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlOOOs", &ConnectingLines,&GridSpacing,&Rotation,&Row,&Column,&MapType)) {
            if (PyHirschXLD_Check(ConnectingLines) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                HalconCpp::HXLD Meshes;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->GenGridRectificationMap(*(((PyHirschXLD*)ConnectingLines)->XLD),&Meshes,GridSpacing,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),HalconCpp::HString(MapType))));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->EllipticAxisGray(*(((PyHirschRegion*)Regions)->Region),&Rb,&Phi)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Rb));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Phi));
                
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
    double TextureThresh2;
    double TextureThresh1;
    PyObject* ScoreThresh;
    char* Method2;
    char* Filter2;
    long MaskWidth1;
    long NumLevels2;
    double ScoreThresh1;
    PyObject* ImageRect21;
    long MinDisparity1;
    char* SubDisparity1;
    char* Method;
    char* SubDisparity;
    long MinDisparity;
    long NumLevels1;
    PyObject* ImageRect2;
    char* Method1;
    long MaxDisparity;
    long MaskHeight2;
    long MaxDisparity1;
    char* Filter1;
    long MaskHeight;
    double ScoreThresh2;
    long MaskWidth2;
    char* SubDisparity2;
    long MinDisparity2;
    long MaskHeight1;
    PyObject* TextureThresh;
    long MaxDisparity2;
    PyObject* Filter;
    long MaskWidth;
    PyObject* ImageRect22;
    long NumLevels;
    
    try {
        if (PyArg_ParseTuple(args, "Oslldllldss", &ImageRect22,&Method2,&MaskWidth2,&MaskHeight2,&TextureThresh2,&MinDisparity2,&MaxDisparity2,&NumLevels2,&ScoreThresh2,&Filter2,&SubDisparity2)) {
            if (PyHirschImage_Check(ImageRect22)) {
                HalconCpp::HImage Score2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparity(*(((PyHirschImage*)ImageRect22)->Image),&Score2,Method2,MaskWidth2,MaskHeight2,TextureThresh2,MinDisparity2,MaxDisparity2,NumLevels2,ScoreThresh2,Filter2,SubDisparity2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oslldllldss", &ImageRect21,&Method1,&MaskWidth1,&MaskHeight1,&TextureThresh1,&MinDisparity1,&MaxDisparity1,&NumLevels1,&ScoreThresh1,&Filter1,&SubDisparity1)) {
            if (PyHirschImage_Check(ImageRect21)) {
                HalconCpp::HImage Score1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparity(*(((PyHirschImage*)ImageRect21)->Image),&Score1,HalconCpp::HString(Method1),MaskWidth1,MaskHeight1,TextureThresh1,MinDisparity1,MaxDisparity1,NumLevels1,ScoreThresh1,HalconCpp::HString(Filter1),HalconCpp::HString(SubDisparity1))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OsllOlllOOs", &ImageRect2,&Method,&MaskWidth,&MaskHeight,&TextureThresh,&MinDisparity,&MaxDisparity,&NumLevels,&ScoreThresh,&Filter,&SubDisparity)) {
            if (PyHirschImage_Check(ImageRect2) && PyHirschTuple_Check(TextureThresh) && PyHirschTuple_Check(ScoreThresh) && PyHirschTuple_Check(Filter)) {
                HalconCpp::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparity(*(((PyHirschImage*)ImageRect2)->Image),&Score,HalconCpp::HString(Method),MaskWidth,MaskHeight,*(((PyHirschTuple*)TextureThresh)->Tuple),MinDisparity,MaxDisparity,NumLevels,*(((PyHirschTuple*)ScoreThresh)->Tuple),*(((PyHirschTuple*)Filter)->Tuple),HalconCpp::HString(SubDisparity))));
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
    long ColMove1;
    long RowMove1;
    PyObject* Rows11;
    long ColTolerance2;
    long MatchThreshold2;
    PyObject* Cols1;
    long RowMove;
    long MaskSize1;
    PyObject* Rows2;
    char* GrayMatchMethod;
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
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image21,&Rows11,&Cols11,&Rows21,&Cols21,&GrayMatchMethod1,&MaskSize1,&RowMove1,&ColMove1,&RowTolerance1,&ColTolerance1,&Rotation1,&MatchThreshold1,&EstimationMethod1,&DistanceThreshold1,&RandSeed1)) {
            if (PyHirschImage_Check(Image21) && PyHirschTuple_Check(Rows11) && PyHirschTuple_Check(Cols11) && PyHirschTuple_Check(Rows21) && PyHirschTuple_Check(Cols21)) {
                double Kappa1;
                double Error1;
                HalconCpp::HTuple Points11;
                HalconCpp::HTuple Points21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image21)->Image),*(((PyHirschTuple*)Rows11)->Tuple),*(((PyHirschTuple*)Cols11)->Tuple),*(((PyHirschTuple*)Rows21)->Tuple),*(((PyHirschTuple*)Cols21)->Tuple),HalconCpp::HString(GrayMatchMethod1),MaskSize1,RowMove1,ColMove1,RowTolerance1,ColTolerance1,Rotation1,MatchThreshold1,HalconCpp::HString(EstimationMethod1),DistanceThreshold1,RandSeed1,&Kappa1,&Error1,&Points11,&Points21)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOsllllldlsdl", &Image22,&Rows12,&Cols12,&Rows22,&Cols22,&GrayMatchMethod2,&MaskSize2,&RowMove2,&ColMove2,&RowTolerance2,&ColTolerance2,&Rotation2,&MatchThreshold2,&EstimationMethod2,&DistanceThreshold2,&RandSeed2)) {
            if (PyHirschImage_Check(Image22) && PyHirschTuple_Check(Rows12) && PyHirschTuple_Check(Cols12) && PyHirschTuple_Check(Rows22) && PyHirschTuple_Check(Cols22)) {
                double Kappa2;
                double Error2;
                HalconCpp::HTuple Points12;
                HalconCpp::HTuple Points22;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image22)->Image),*(((PyHirschTuple*)Rows12)->Tuple),*(((PyHirschTuple*)Cols12)->Tuple),*(((PyHirschTuple*)Rows22)->Tuple),*(((PyHirschTuple*)Cols22)->Tuple),GrayMatchMethod2,MaskSize2,RowMove2,ColMove2,RowTolerance2,ColTolerance2,Rotation2,MatchThreshold2,EstimationMethod2,DistanceThreshold2,RandSeed2,&Kappa2,&Error2,&Points12,&Points22)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error2));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points12));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points22));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOslllllOOsOl", &Image2,&Rows1,&Cols1,&Rows2,&Cols2,&GrayMatchMethod,&MaskSize,&RowMove,&ColMove,&RowTolerance,&ColTolerance,&Rotation,&MatchThreshold,&EstimationMethod,&DistanceThreshold,&RandSeed)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1) && PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(MatchThreshold) && PyHirschTuple_Check(DistanceThreshold)) {
                double Kappa;
                double Error;
                HalconCpp::HTuple Points1;
                HalconCpp::HTuple Points2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschHomMat2D_FromHHomMat2D(self->Image->ProjMatchPointsDistortionRansac(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),HalconCpp::HString(GrayMatchMethod),MaskSize,RowMove,ColMove,RowTolerance,ColTolerance,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)MatchThreshold)->Tuple),HalconCpp::HString(EstimationMethod),*(((PyHirschTuple*)DistanceThreshold)->Tuple),RandSeed,&Kappa,&Error,&Points1,&Points2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Kappa));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Points1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Points2));
                
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
    PyObject* ImgDir1;
    PyObject* ImgDir;
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &ImgDir,&Mode)) {
            if (PyHirschImage_Check(ImgDir)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImage*)ImgDir)->Image),HalconCpp::HString(Mode)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &ImgDir1,&Mode1)) {
            if (PyHirschImage_Check(ImgDir1)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImage*)ImgDir1)->Image),Mode1));
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
    char* FilterMask1;
    char* Margin2;
    char* Margin1;
    char* FilterMask2;
    PyObject* Margin;
    PyObject* FilterMask;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &FilterMask1,&Margin1)) {
            return PyHirschImage_FromHImage(self->Image->ConvolImage(HalconCpp::HString(FilterMask1),HalconCpp::HString(Margin1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &FilterMask2,&Margin2)) {
            return PyHirschImage_FromHImage(self->Image->ConvolImage(FilterMask2,Margin2));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->EntropyGray(*(((PyHirschRegion*)Regions)->Region),&Anisotropy)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Anisotropy));
                
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
    PyObject* Regions1;
    long Iterations;
    char* Algorithm;
    double ClippingFactor1;
    double ClippingFactor;
    PyObject* Regions2;
    double ClippingFactor2;
    PyObject* Regions;
    long Iterations1;
    char* Algorithm2;
    char* Algorithm1;
    long Iterations2;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Regions,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschRegion_Check(Regions)) {
                HalconCpp::HTuple Beta;
                HalconCpp::HTuple Gamma;
                HalconCpp::HTuple Delta;
                HalconCpp::HTuple Epsilon;
                HalconCpp::HTuple Zeta;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->FitSurfaceSecondOrder(*(((PyHirschRegion*)Regions)->Region),HalconCpp::HString(Algorithm),Iterations,ClippingFactor,&Beta,&Gamma,&Delta,&Epsilon,&Zeta)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Gamma));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Delta));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Epsilon));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Zeta));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Regions2,&Algorithm2,&Iterations2,&ClippingFactor2)) {
            if (PyHirschRegion_Check(Regions2)) {
                double Beta2;
                double Gamma2;
                double Delta2;
                double Epsilon2;
                double Zeta2;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->FitSurfaceSecondOrder(*(((PyHirschRegion*)Regions2)->Region),Algorithm2,Iterations2,ClippingFactor2,&Beta2,&Gamma2,&Delta2,&Epsilon2,&Zeta2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta2));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon2));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Regions1,&Algorithm1,&Iterations1,&ClippingFactor1)) {
            if (PyHirschRegion_Check(Regions1)) {
                double Beta1;
                double Gamma1;
                double Delta1;
                double Epsilon1;
                double Zeta1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->FitSurfaceSecondOrder(*(((PyHirschRegion*)Regions1)->Region),HalconCpp::HString(Algorithm1),Iterations1,ClippingFactor1,&Beta1,&Gamma1,&Delta1,&Epsilon1,&Zeta1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon1));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta1));
                
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
    char* TileOrder1;
    long NumColumns1;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns,&TileOrder)) {
            return PyHirschImage_FromHImage(self->Image->TileImages(NumColumns,HalconCpp::HString(TileOrder)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ls", &NumColumns1,&TileOrder1)) {
            return PyHirschImage_FromHImage(self->Image->TileImages(NumColumns1,TileOrder1));
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
                return PyHirschTuple_GetAsScalarIfOne(self->Image->FuzzyEntropy(*(((PyHirschRegion*)Regions)->Region),Apar,Cpar));
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
    long MinDiamMarks1;
    PyObject* MarkThresh;
    long SizeGauss1;
    long MinDiamMarks2;
    char* CalPlateDescr1;
    char* CalPlateDescr;
    char* CalPlateDescr2;
    long MinDiamMarks;
    long MarkThresh2;
    long SizeGauss2;
    PyObject* SizeGauss;
    long MarkThresh1;
    
    try {
        if (PyArg_ParseTuple(args, "slll", &CalPlateDescr1,&SizeGauss1,&MarkThresh1,&MinDiamMarks1)) {
            return PyHirschRegion_FromHRegion(self->Image->FindCaltab(HalconCpp::HString(CalPlateDescr1),SizeGauss1,MarkThresh1,MinDiamMarks1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOl", &CalPlateDescr,&SizeGauss,&MarkThresh,&MinDiamMarks)) {
            if (PyHirschTuple_Check(SizeGauss) && PyHirschTuple_Check(MarkThresh)) {
                return PyHirschRegion_FromHRegion(self->Image->FindCaltab(HalconCpp::HString(CalPlateDescr),*(((PyHirschTuple*)SizeGauss)->Tuple),*(((PyHirschTuple*)MarkThresh)->Tuple),MinDiamMarks));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slll", &CalPlateDescr2,&SizeGauss2,&MarkThresh2,&MinDiamMarks2)) {
            return PyHirschRegion_FromHRegion(self->Image->FindCaltab(CalPlateDescr2,SizeGauss2,MarkThresh2,MinDiamMarks2));
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
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->GenPrincipalCompTrans(&TransInv,&Mean,&Cov,&InfoPerComp)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(TransInv));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Mean));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Cov));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(InfoPerComp));
        
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
    long Width1;
    long Width;
    char* Norm;
    char* Norm1;
    char* Direction;
    char* Direction1;
    char* ResultType1;
    char* ResultType;
    
    try {
        if (PyArg_ParseTuple(args, "sssl", &Direction1,&Norm1,&ResultType1,&Width1)) {
            return PyHirschImage_FromHImage(self->Image->RftGeneric(Direction1,Norm1,ResultType1,Width1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sssl", &Direction,&Norm,&ResultType,&Width)) {
            return PyHirschImage_FromHImage(self->Image->RftGeneric(HalconCpp::HString(Direction),HalconCpp::HString(Norm),HalconCpp::HString(ResultType),Width));
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
    char* Base2;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Base2)) {
            return PyHirschImage_FromHImage(self->Image->ExpImage(Base2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Base)) {
            if (PyHirschTuple_Check(Base)) {
                return PyHirschImage_FromHImage(self->Image->ExpImage(*(((PyHirschTuple*)Base)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Base1)) {
            return PyHirschImage_FromHImage(self->Image->ExpImage(HalconCpp::HString(Base1)));
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
    PyObject* Region1;
    char* Mode1;
    PyObject* Region;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Region1,&Mode1)) {
            if (PyHirschRegion_Check(Region1)) {
                HalconCpp::HTuple VertProjection1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->GrayProjections(*(((PyHirschRegion*)Region1)->Region),Mode1,&VertProjection1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(VertProjection1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Region,&Mode)) {
            if (PyHirschRegion_Check(Region)) {
                HalconCpp::HTuple VertProjection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->GrayProjections(*(((PyHirschRegion*)Region)->Region),HalconCpp::HString(Mode),&VertProjection)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(VertProjection));
                
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
    PyObject* MaskWidth;
    double MaskWidth1;
    char* MaskShape;
    double MaskWidth2;
    double MaskHeight2;
    char* MaskShape2;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayClosingShape(MaskHeight1,MaskWidth1,HalconCpp::HString(MaskShape1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayClosingShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),HalconCpp::HString(MaskShape)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight2,&MaskWidth2,&MaskShape2)) {
            return PyHirschImage_FromHImage(self->Image->GrayClosingShape(MaskHeight2,MaskWidth2,MaskShape2));
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
    long Width1;
    double Frequency1;
    long Width;
    char* Norm;
    long Height1;
    char* Norm1;
    long Height;
    char* Mode1;
    double Frequency;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dssll", &Frequency,&Norm,&Mode,&Width,&Height)) {
            self->Image->GenHighpass(Frequency,HalconCpp::HString(Norm),HalconCpp::HString(Mode),Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssll", &Frequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            self->Image->GenHighpass(Frequency1,Norm1,Mode1,Width1,Height1);
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
    PyObject* Background;
    PyObject* Background2;
    PyObject* MinNumberPercent;
    PyObject* Foreground;
    double MinNumberPercent2;
    char* Metric1;
    double MinNumberPercent1;
    PyObject* Foreground1;
    PyObject* Foreground2;
    char* Metric;
    PyObject* Distance;
    double Distance1;
    double Distance2;
    PyObject* Background1;
    char* Metric2;
    
    try {
        if (PyArg_ParseTuple(args, "OOsdd", &Foreground1,&Background1,&Metric1,&Distance1,&MinNumberPercent1)) {
            if (PyHirschRegion_Check(Foreground1) && PyHirschRegion_Check(Background1)) {
                HalconCpp::HTuple Center1;
                double Quality1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->LearnNdimNorm(*(((PyHirschRegion*)Foreground1)->Region),*(((PyHirschRegion*)Background1)->Region),HalconCpp::HString(Metric1),Distance1,MinNumberPercent1,&Center1,&Quality1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Center1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsOO", &Foreground,&Background,&Metric,&Distance,&MinNumberPercent)) {
            if (PyHirschRegion_Check(Foreground) && PyHirschRegion_Check(Background) && PyHirschTuple_Check(Distance) && PyHirschTuple_Check(MinNumberPercent)) {
                HalconCpp::HTuple Center;
                double Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->LearnNdimNorm(*(((PyHirschRegion*)Foreground)->Region),*(((PyHirschRegion*)Background)->Region),HalconCpp::HString(Metric),*(((PyHirschTuple*)Distance)->Tuple),*(((PyHirschTuple*)MinNumberPercent)->Tuple),&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Center));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsdd", &Foreground2,&Background2,&Metric2,&Distance2,&MinNumberPercent2)) {
            if (PyHirschRegion_Check(Foreground2) && PyHirschRegion_Check(Background2)) {
                HalconCpp::HTuple Center2;
                double Quality2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Image->LearnNdimNorm(*(((PyHirschRegion*)Foreground2)->Region),*(((PyHirschRegion*)Background2)->Region),Metric2,Distance2,MinNumberPercent2,&Center2,&Quality2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Center2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality2));
                
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
    long ImageWidth2;
    long ImageWidth1;
    char* NewType2;
    PyObject* ImageWidth;
    char* NewType;
    char* NewType1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &NewType2,&ImageWidth2)) {
            return PyHirschImage_FromHImage(self->Image->ConvertMapType(NewType2,ImageWidth2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &NewType1,&ImageWidth1)) {
            return PyHirschImage_FromHImage(self->Image->ConvertMapType(HalconCpp::HString(NewType1),ImageWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sO", &NewType,&ImageWidth)) {
            if (PyHirschTuple_Check(ImageWidth)) {
                return PyHirschImage_FromHImage(self->Image->ConvertMapType(HalconCpp::HString(NewType),*(((PyHirschTuple*)ImageWidth)->Tuple)));
            }
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
    char* Mode1;
    long Iterations;
    double Contrast1;
    double Theta1;
    long Iterations1;
    double Contrast;
    char* Mode;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "sddl", &Mode,&Contrast,&Theta,&Iterations)) {
            return PyHirschImage_FromHImage(self->Image->AnisotropicDiffusion(HalconCpp::HString(Mode),Contrast,Theta,Iterations));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddl", &Mode1,&Contrast1,&Theta1,&Iterations1)) {
            return PyHirschImage_FromHImage(self->Image->AnisotropicDiffusion(Mode1,Contrast1,Theta1,Iterations1));
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
    char* FileName2;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Image->ReadImage(HalconCpp::HString(FileName1));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName2)) {
            self->Image->ReadImage(FileName2);
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
    long SourceWidth;
    long StartRow;
    long SourceHeight1;
    long Index1;
    long DestWidth1;
    char* ByteOrder;
    long DestWidth;
    long SourceHeight;
    long DestHeight;
    char* PixelType1;
    long HeaderSize1;
    long StartColumn1;
    char* BitOrder;
    long Index;
    long DestHeight1;
    long StartRow1;
    long SourceWidth1;
    char* ByteOrder1;
    char* PixelType;
    char* Pad1;
    char* FileName1;
    char* Pad;
    char* FileName;
    long HeaderSize;
    long StartColumn;
    char* BitOrder1;
    
    try {
        if (PyArg_ParseTuple(args, "lllllllssssls", &HeaderSize,&SourceWidth,&SourceHeight,&StartRow,&StartColumn,&DestWidth,&DestHeight,&PixelType,&BitOrder,&ByteOrder,&Pad,&Index,&FileName)) {
            self->Image->ReadSequence(HeaderSize,SourceWidth,SourceHeight,StartRow,StartColumn,DestWidth,DestHeight,HalconCpp::HString(PixelType),HalconCpp::HString(BitOrder),HalconCpp::HString(ByteOrder),HalconCpp::HString(Pad),Index,HalconCpp::HString(FileName));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lllllllssssls", &HeaderSize1,&SourceWidth1,&SourceHeight1,&StartRow1,&StartColumn1,&DestWidth1,&DestHeight1,&PixelType1,&BitOrder1,&ByteOrder1,&Pad1,&Index1,&FileName1)) {
            self->Image->ReadSequence(HeaderSize1,SourceWidth1,SourceHeight1,StartRow1,StartColumn1,DestWidth1,DestHeight1,PixelType1,BitOrder1,ByteOrder1,Pad1,Index1,FileName1);
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
    double Sigma1;
    char* Filter;
    double Threshold;
    double Threshold1;
    char* Filter1;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter,&Sigma,&Threshold)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                self->Image->LocalMinSubPix(HalconCpp::HString(Filter),Sigma,Threshold,&Row,&Column);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                self->Image->LocalMinSubPix(Filter1,Sigma1,Threshold1,&Row1,&Column1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column1));
                
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
    double MinTolerance2;
    char* Metric2;
    long MinSize;
    char* Metric1;
    PyObject* MaxTolerance;
    long MinSize2;
    double MaxTolerance1;
    char* Metric;
    double MinTolerance1;
    double MaxTolerance2;
    PyObject* MinTolerance;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "sddl", &Metric1,&MinTolerance1,&MaxTolerance1,&MinSize1)) {
            return PyHirschRegion_FromHRegion(self->Image->RegiongrowingN(HalconCpp::HString(Metric1),MinTolerance1,MaxTolerance1,MinSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddl", &Metric2,&MinTolerance2,&MaxTolerance2,&MinSize2)) {
            return PyHirschRegion_FromHRegion(self->Image->RegiongrowingN(Metric2,MinTolerance2,MaxTolerance2,MinSize2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOl", &Metric,&MinTolerance,&MaxTolerance,&MinSize)) {
            if (PyHirschTuple_Check(MinTolerance) && PyHirschTuple_Check(MaxTolerance)) {
                return PyHirschRegion_FromHRegion(self->Image->RegiongrowingN(HalconCpp::HString(Metric),*(((PyHirschTuple*)MinTolerance)->Tuple),*(((PyHirschTuple*)MaxTolerance)->Tuple),MinSize));
            }
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
    PyObject* Iterations;
    PyObject* RefGray;
    PyObject* Regions1;
    char* Mode1;
    PyObject* ForbiddenArea2;
    long Threshold1;
    char* Iterations1;
    char* Mode2;
    PyObject* ForbiddenArea;
    PyObject* Regions2;
    long Threshold2;
    PyObject* Regions;
    char* Iterations2;
    PyObject* Threshold;
    long RefGray2;
    char* Mode;
    long RefGray1;
    PyObject* ForbiddenArea1;
    
    try {
        if (PyArg_ParseTuple(args, "OOssll", &Regions2,&ForbiddenArea2,&Iterations2,&Mode2,&RefGray2,&Threshold2)) {
            if (PyHirschRegion_Check(Regions2) && PyHirschRegion_Check(ForbiddenArea2)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGrayRef(*(((PyHirschRegion*)Regions2)->Region),*(((PyHirschRegion*)ForbiddenArea2)->Region),Iterations2,Mode2,RefGray2,Threshold2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOsOO", &Regions,&ForbiddenArea,&Iterations,&Mode,&RefGray,&Threshold)) {
            if (PyHirschRegion_Check(Regions) && PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(RefGray) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGrayRef(*(((PyHirschRegion*)Regions)->Region),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),HalconCpp::HString(Mode),*(((PyHirschTuple*)RefGray)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssll", &Regions1,&ForbiddenArea1,&Iterations1,&Mode1,&RefGray1,&Threshold1)) {
            if (PyHirschRegion_Check(Regions1) && PyHirschRegion_Check(ForbiddenArea1)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandGrayRef(*(((PyHirschRegion*)Regions1)->Region),*(((PyHirschRegion*)ForbiddenArea1)->Region),HalconCpp::HString(Iterations1),HalconCpp::HString(Mode1),RefGray1,Threshold1));
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
    long FilterSize1;
    long Shift;
    long Shift1;
    long FilterSize;
    char* FilterTypes1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &FilterTypes,&Shift,&FilterSize)) {
            return PyHirschImage_FromHImage(self->Image->TextureLaws(HalconCpp::HString(FilterTypes),Shift,FilterSize));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &FilterTypes1,&Shift1,&FilterSize1)) {
            return PyHirschImage_FromHImage(self->Image->TextureLaws(FilterTypes1,Shift1,FilterSize1));
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
