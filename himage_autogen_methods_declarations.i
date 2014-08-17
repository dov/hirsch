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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldLength(PyHirschImage*self, PyObject *args)
{
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImage_FromHImage(self->Image->VectorFieldLength(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->VectorFieldLength(Mode1));
        }
        PyErr_Clear();
        
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
    PyObject* IndexImage1;
    PyObject* IndexImage;
    
    try {
        if (PyArg_ParseTuple(args, "O", &IndexImage)) {
            if (PyHirschImage_Check(IndexImage)) {
                return PyHirschImage_FromHImage(self->Image->SelectGrayvaluesFromChannels(*(((PyHirschImage*)IndexImage)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &IndexImage1)) {
            if (PyHirschImageArray_Check(IndexImage1)) {
                return PyHirschImage_FromHImage(self->Image->SelectGrayvaluesFromChannels(*(((PyHirschImageArray*)IndexImage1)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* MaxGray;
    long MaxGray1;
    PyObject* Mode;
    long MinGray1;
    PyObject* MinGray;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Mode,&MinGray,&MaxGray)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(MaxGray)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->Pouring(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)MaxGray)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &Mode1,&MinGray1,&MaxGray1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->Pouring(Mode1,MinGray1,MaxGray1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ProjMatchPointsRansac()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MeanN(PyHirschImage*self, PyObject *)
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
PyHirschImage_RobinsonDir(PyHirschImage*self, PyObject *)
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
PyHirschImage_EstimateTiltLr(PyHirschImage*self, PyObject *)
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
    PyObject* Image21;
    PyObject* Image2;
    PyObject* Image3;
    PyObject* Image31;
    PyObject* Image41;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Image3,&Image4)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4)) {
                return PyHirschImage_FromHImage(self->Image->Compose4(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Image21,&Image31,&Image41)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschImageArray_Check(Image31) && PyHirschImageArray_Check(Image41)) {
                return PyHirschImage_FromHImage(self->Image->Compose4(*(((PyHirschImageArray*)Image21)->ImageArray),*(((PyHirschImageArray*)Image31)->ImageArray),*(((PyHirschImageArray*)Image41)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image51;
    PyObject* Image21;
    PyObject* Image2;
    PyObject* Image3;
    PyObject* Image5;
    PyObject* Image31;
    PyObject* Image41;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Image21,&Image31,&Image41,&Image51)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschImageArray_Check(Image31) && PyHirschImageArray_Check(Image41) && PyHirschImageArray_Check(Image51)) {
                return PyHirschImage_FromHImage(self->Image->Compose5(*(((PyHirschImageArray*)Image21)->ImageArray),*(((PyHirschImageArray*)Image31)->ImageArray),*(((PyHirschImageArray*)Image41)->ImageArray),*(((PyHirschImageArray*)Image51)->ImageArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Image2,&Image3,&Image4,&Image5)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4) && PyHirschImage_Check(Image5)) {
                return PyHirschImage_FromHImage(self->Image->Compose5(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image),*(((PyHirschImage*)Image5)->Image)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image4;
    PyObject* Image51;
    PyObject* Image21;
    PyObject* Image2;
    PyObject* Image3;
    PyObject* Image6;
    PyObject* Image5;
    PyObject* Image31;
    PyObject* Image61;
    PyObject* Image41;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image2,&Image3,&Image4,&Image5,&Image6)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4) && PyHirschImage_Check(Image5) && PyHirschImage_Check(Image6)) {
                return PyHirschImage_FromHImage(self->Image->Compose6(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image),*(((PyHirschImage*)Image5)->Image),*(((PyHirschImage*)Image6)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Image21,&Image31,&Image41,&Image51,&Image61)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschImageArray_Check(Image31) && PyHirschImageArray_Check(Image41) && PyHirschImageArray_Check(Image51) && PyHirschImageArray_Check(Image61)) {
                return PyHirschImage_FromHImage(self->Image->Compose6(*(((PyHirschImageArray*)Image21)->ImageArray),*(((PyHirschImageArray*)Image31)->ImageArray),*(((PyHirschImageArray*)Image41)->ImageArray),*(((PyHirschImageArray*)Image51)->ImageArray),*(((PyHirschImageArray*)Image61)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image21;
    PyObject* Image51;
    PyObject* Image4;
    PyObject* Image2;
    PyObject* Image3;
    PyObject* Image6;
    PyObject* Image7;
    PyObject* Image71;
    PyObject* Image5;
    PyObject* Image31;
    PyObject* Image61;
    PyObject* Image41;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Image21,&Image31,&Image41,&Image51,&Image61,&Image71)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschImageArray_Check(Image31) && PyHirschImageArray_Check(Image41) && PyHirschImageArray_Check(Image51) && PyHirschImageArray_Check(Image61) && PyHirschImageArray_Check(Image71)) {
                return PyHirschImage_FromHImage(self->Image->Compose7(*(((PyHirschImageArray*)Image21)->ImageArray),*(((PyHirschImageArray*)Image31)->ImageArray),*(((PyHirschImageArray*)Image41)->ImageArray),*(((PyHirschImageArray*)Image51)->ImageArray),*(((PyHirschImageArray*)Image61)->ImageArray),*(((PyHirschImageArray*)Image71)->ImageArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Image2,&Image3,&Image4,&Image5,&Image6,&Image7)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3) && PyHirschImage_Check(Image4) && PyHirschImage_Check(Image5) && PyHirschImage_Check(Image6) && PyHirschImage_Check(Image7)) {
                return PyHirschImage_FromHImage(self->Image->Compose7(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image),*(((PyHirschImage*)Image4)->Image),*(((PyHirschImage*)Image5)->Image),*(((PyHirschImage*)Image6)->Image),*(((PyHirschImage*)Image7)->Image)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image21;
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->Compose2(*(((PyHirschImage*)Image2)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image21)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->Compose2(*(((PyHirschImageArray*)Image21)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image31;
    PyObject* Image21;
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image21,&Image31)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschImageArray_Check(Image31)) {
                return PyHirschImage_FromHImage(self->Image->Compose3(*(((PyHirschImageArray*)Image21)->ImageArray),*(((PyHirschImageArray*)Image31)->ImageArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image2,&Image3)) {
            if (PyHirschImage_Check(Image2) && PyHirschImage_Check(Image3)) {
                return PyHirschImage_FromHImage(self->Image->Compose3(*(((PyHirschImage*)Image2)->Image),*(((PyHirschImage*)Image3)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Compose3()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinThreshold(PyHirschImage*self, PyObject *)
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
PyHirschImage_TopographicSketch(PyHirschImage*self, PyObject *)
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
    PyObject* Iterations;
    double Sigma1;
    PyObject* Theta;
    long Iterations1;
    PyObject* Sigma;
    double Theta1;
    
    try {
        if (PyArg_ParseTuple(args, "ddl", &Sigma1,&Theta1,&Iterations1)) {
            return PyHirschImage_FromHImage(self->Image->MeanCurvatureFlow(Sigma1,Theta1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Sigma,&Theta,&Iterations)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImage_FromHImage(self->Image->MeanCurvatureFlow(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanCurvatureFlow()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GraySkeleton(PyHirschImage*self, PyObject *)
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
PyHirschImage_KirschAmp(PyHirschImage*self, PyObject *)
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
    PyObject* Interpolation;
    PyObject* Contour1;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Contour,&Interpolation)) {
            if (PyHirschXLDCont_Check(Contour) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschTuple_FromHTuple(self->Image->GetGrayvalContourXld(*(((PyHirschXLDCont*)Contour)->XLDCont),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Contour1,&Interpolation1)) {
            if (PyHirschXLDCont_Check(Contour1)) {
                return PyHirschTuple_FromHTuple(self->Image->GetGrayvalContourXld(*(((PyHirschXLDCont*)Contour1)->XLDCont),Interpolation1));
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImage_FromHImage(self->Image->FillInterlace(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->FillInterlace(Mode1));
        }
        PyErr_Clear();
        
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
    PyObject* Image21;
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitAnd(*(((PyHirschImage*)Image2)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image21)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->BitAnd(*(((PyHirschImageArray*)Image21)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Optimize;
    PyObject* GrayValues;
    char* Optimize1;
    PyObject* NumLevel;
    long NumLevel1;
    PyObject* FirstError;
    char* GrayValues1;
    long FirstError1;
    
    try {
        if (PyArg_ParseTuple(args, "llss", &FirstError1,&NumLevel1,&Optimize1,&GrayValues1)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplate(FirstError1,NumLevel1,Optimize1,GrayValues1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &FirstError,&NumLevel,&Optimize,&GrayValues)) {
            if (PyHirschTuple_Check(FirstError) && PyHirschTuple_Check(NumLevel) && PyHirschTuple_Check(Optimize) && PyHirschTuple_Check(GrayValues)) {
                return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplate(*(((PyHirschTuple*)FirstError)->Tuple),*(((PyHirschTuple*)NumLevel)->Tuple),*(((PyHirschTuple*)Optimize)->Tuple),*(((PyHirschTuple*)GrayValues)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Add;
    double Mult3;
    double Mult1;
    PyObject* Add2;
    PyObject* ImageSubtrahend1;
    PyObject* Mult;
    PyObject* ImageSubtrahend3;
    PyObject* ImageSubtrahend2;
    double Add3;
    PyObject* Mult2;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ImageSubtrahend,&Mult,&Add)) {
            if (PyHirschImage_Check(ImageSubtrahend) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImage*)ImageSubtrahend)->Image),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &ImageSubtrahend3,&Mult3,&Add3)) {
            if (PyHirschImageArray_Check(ImageSubtrahend3)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImageArray*)ImageSubtrahend3)->ImageArray),Mult3,Add3));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &ImageSubtrahend1,&Mult1,&Add1)) {
            if (PyHirschImage_Check(ImageSubtrahend1)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImage*)ImageSubtrahend1)->Image),Mult1,Add1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &ImageSubtrahend2,&Mult2,&Add2)) {
            if (PyHirschImageArray_Check(ImageSubtrahend2) && PyHirschTuple_Check(Mult2) && PyHirschTuple_Check(Add2)) {
                return PyHirschImage_FromHImage(self->Image->SubImage(*(((PyHirschImageArray*)ImageSubtrahend2)->ImageArray),*(((PyHirschTuple*)Mult2)->Tuple),*(((PyHirschTuple*)Add2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImage1Extern(PyHirschImage*, PyObject *args)
{
    char* Type1;
    long PixelPointer1;
    PyObject* PixelPointer;
    long Width1;
    PyObject* Type;
    PyObject* Height;
    PyObject* ClearProc;
    long Height1;
    PyObject* Width;
    long ClearProc1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Type,&Width,&Height,&PixelPointer,&ClearProc)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(PixelPointer) && PyHirschTuple_Check(ClearProc)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImage1Extern(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)PixelPointer)->Tuple),*(((PyHirschTuple*)ClearProc)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllll", &Type1,&Width1,&Height1,&PixelPointer1,&ClearProc1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImage1Extern(Type1,Width1,Height1,PixelPointer1,ClearProc1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenImage1Extern()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Lowlands(PyHirschImage*self, PyObject *)
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
PyHirschImage_GetDomain(PyHirschImage*self, PyObject *)
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
    PyObject* Col1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Col)) {
            if (PyHirschImage_Check(Col)) {
                return PyHirschImage_FromHImage(self->Image->RealToVectorField(*(((PyHirschImage*)Col)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Col1)) {
            if (PyHirschImageArray_Check(Col1)) {
                return PyHirschImage_FromHImage(self->Image->RealToVectorField(*(((PyHirschImageArray*)Col1)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Get1dBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerLn(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenImage1(PyHirschImage*, PyObject *args)
{
    char* Type1;
    long PixelPointer1;
    PyObject* PixelPointer;
    long Width1;
    PyObject* Type;
    PyObject* Height;
    long Height1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "slll", &Type1,&Width1,&Height1,&PixelPointer1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImage1(Type1,Width1,Height1,PixelPointer1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Type,&Width,&Height,&PixelPointer)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(PixelPointer)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImage1(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)PixelPointer)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double Blurring1;
    PyObject* Angle;
    PyObject* Type;
    long Type1;
    PyObject* Blurring;
    long Angle1;
    
    try {
        if (PyArg_ParseTuple(args, "dll", &Blurring1,&Angle1,&Type1)) {
            return PyHirschImage_FromHImage(self->Image->SimulateMotion(Blurring1,Angle1,Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Blurring,&Angle,&Type)) {
            if (PyHirschTuple_Check(Blurring) && PyHirschTuple_Check(Angle) && PyHirschTuple_Check(Type)) {
                return PyHirschImage_FromHImage(self->Image->SimulateMotion(*(((PyHirschTuple*)Blurring)->Tuple),*(((PyHirschTuple*)Angle)->Tuple),*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Mode1;
    long Iteration1;
    PyObject* Iteration;
    long Percent1;
    PyObject* NeighborhoodType;
    long NeighborhoodType1;
    PyObject* Percent;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Percent,&Mode,&Iteration,&NeighborhoodType)) {
            if (PyHirschTuple_Check(Percent) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Iteration) && PyHirschTuple_Check(NeighborhoodType)) {
                return PyHirschImage_FromHImage(self->Image->AnisotropeDiff(*(((PyHirschTuple*)Percent)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Iteration)->Tuple),*(((PyHirschTuple*)NeighborhoodType)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Percent1,&Mode1,&Iteration1,&NeighborhoodType1)) {
            return PyHirschImage_FromHImage(self->Image->AnisotropeDiff(Percent1,Mode1,Iteration1,NeighborhoodType1));
        }
        PyErr_Clear();
        
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
    PyObject* Bottom;
    PyObject* Top;
    long Right1;
    long Bottom1;
    long Left1;
    PyObject* Left;
    long Top1;
    PyObject* Right;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Top1,&Left1,&Bottom1,&Right1)) {
            return PyHirschImage_FromHImage(self->Image->CropDomainRel(Top1,Left1,Bottom1,Right1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Top,&Left,&Bottom,&Right)) {
            if (PyHirschTuple_Check(Top) && PyHirschTuple_Check(Left) && PyHirschTuple_Check(Bottom) && PyHirschTuple_Check(Right)) {
                return PyHirschImage_FromHImage(self->Image->CropDomainRel(*(((PyHirschTuple*)Top)->Tuple),*(((PyHirschTuple*)Left)->Tuple),*(((PyHirschTuple*)Bottom)->Tuple),*(((PyHirschTuple*)Right)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double Sigma1;
    PyObject* Filter;
    double Threshold1;
    char* Filter1;
    PyObject* Sigma;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                Halcon::HTuple ColumnMin1;
                Halcon::HTuple RowMax1;
                Halcon::HTuple ColumnMax1;
                Halcon::HTuple RowSaddle1;
                Halcon::HTuple ColumnSaddle1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->CriticalPointsSubPix(Filter1,Sigma1,Threshold1,&ColumnMin1,&RowMax1,&ColumnMax1,&RowSaddle1,&ColumnSaddle1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColumnMin1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(RowMax1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ColumnMax1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(RowSaddle1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(ColumnSaddle1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Filter,&Sigma,&Threshold)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Threshold)) {
                Halcon::HTuple ColumnMin;
                Halcon::HTuple RowMax;
                Halcon::HTuple ColumnMax;
                Halcon::HTuple RowSaddle;
                Halcon::HTuple ColumnSaddle;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->CriticalPointsSubPix(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),&ColumnMin,&RowMax,&ColumnMax,&RowSaddle,&ColumnSaddle)));
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SimCaltab(PyHirschImage*, PyObject *args)
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
                return PyHirschImage_FromHImage(Halcon::HImage::SimCaltab(*(((PyHirschTuple*)CalTabDescrFile)->Tuple),*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)CaltabPose)->Tuple),*(((PyHirschTuple*)GrayBackground)->Tuple),*(((PyHirschTuple*)GrayCaltab)->Tuple),*(((PyHirschTuple*)GrayMarks)->Tuple),*(((PyHirschTuple*)ScaleFac)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Optimize;
    double AngleStart1;
    PyObject* GrayValues;
    char* Optimize1;
    double AngleStep1;
    PyObject* AngleExtend;
    PyObject* AngleStart;
    double AngleExtend1;
    long NumLevel1;
    PyObject* NumLevel;
    PyObject* AngleStep;
    char* GrayValues1;
    
    try {
        if (PyArg_ParseTuple(args, "ldddss", &NumLevel1,&AngleStart1,&AngleExtend1,&AngleStep1,&Optimize1,&GrayValues1)) {
            return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplateRot(NumLevel1,AngleStart1,AngleExtend1,AngleStep1,Optimize1,GrayValues1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &NumLevel,&AngleStart,&AngleExtend,&AngleStep,&Optimize,&GrayValues)) {
            if (PyHirschTuple_Check(NumLevel) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtend) && PyHirschTuple_Check(AngleStep) && PyHirschTuple_Check(Optimize) && PyHirschTuple_Check(GrayValues)) {
                return PyHirschTemplate_FromHTemplate(self->Image->CreateTemplateRot(*(((PyHirschTuple*)NumLevel)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)AngleStep)->Tuple),*(((PyHirschTuple*)Optimize)->Tuple),*(((PyHirschTuple*)GrayValues)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenDerivativeFilter(PyHirschImage*, PyObject *args)
{
    long Exponent1;
    long Width1;
    char* Mode1;
    PyObject* Exponent;
    char* Norm1;
    long Height1;
    PyObject* Norm;
    PyObject* Derivative;
    PyObject* Height;
    PyObject* Mode;
    char* Derivative1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Derivative,&Exponent,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(Derivative) && PyHirschTuple_Check(Exponent) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenDerivativeFilter(*(((PyHirschTuple*)Derivative)->Tuple),*(((PyHirschTuple*)Exponent)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slssll", &Derivative1,&Exponent1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenDerivativeFilter(Derivative1,Exponent1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImage_FromHImage(self->Image->GrayRangeRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayRangeRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double Sigma1;
    PyObject* Filter;
    double Threshold1;
    char* Filter1;
    PyObject* Sigma;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->SaddlePointsSubPix(Filter1,Sigma1,Threshold1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Filter,&Sigma,&Threshold)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Threshold)) {
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->SaddlePointsSubPix(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    char* CodeType1;
    PyObject* CodeType;
    PyObject* BarCodeHandle1;
    PyObject* BarCodeHandle;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &BarCodeHandle,&CodeType)) {
            if (PyHirschBarCode_Check(BarCodeHandle) && PyHirschTuple_Check(CodeType)) {
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Image->FindBarCode(*(((PyHirschBarCode*)BarCodeHandle)->BarCode),*(((PyHirschTuple*)CodeType)->Tuple),&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &BarCodeHandle1,&CodeType1)) {
            if (PyHirschBarCode_Check(BarCodeHandle1)) {
                Halcon::HTuple DecodedDataStrings1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Image->FindBarCode(*(((PyHirschBarCode*)BarCodeHandle1)->BarCode),CodeType1,&DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DecodedDataStrings1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Low;
    PyObject* High;
    long MaxLength1;
    long Low1;
    long High1;
    PyObject* MaxLength;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Low1,&High1,&MaxLength1)) {
            return PyHirschRegion_FromHRegion(self->Image->HysteresisThreshold(Low1,High1,MaxLength1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Low,&High,&MaxLength)) {
            if (PyHirschTuple_Check(Low) && PyHirschTuple_Check(High) && PyHirschTuple_Check(MaxLength)) {
                return PyHirschRegion_FromHRegion(self->Image->HysteresisThreshold(*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),*(((PyHirschTuple*)MaxLength)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HysteresisThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PhaseDeg(PyHirschImage*self, PyObject *)
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
PyHirschImage_CropDomain(PyHirschImage*self, PyObject *)
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
    PyObject* val1;
    PyObject* val;
    int y;
    int x;
    long k;
    
    try {
        if (PyArg_ParseTuple(args, "lO", &k,&val1)) {
            if (PyHirschPixVal_Check(val1)) {
                self->Image->SetPixVal(k,*(((PyHirschPixVal*)val1)->PixVal));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "iiO", &x,&y,&val)) {
            if (PyHirschPixVal_Check(val)) {
                self->Image->SetPixVal(x,y,*(((PyHirschPixVal*)val)->PixVal));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    double Threshold1;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Threshold)) {
            if (PyHirschTuple_Check(Threshold)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->Image->ThresholdSubPix(*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "d", &Threshold1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->ThresholdSubPix(Threshold1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ThresholdSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerReal(PyHirschImage*self, PyObject *)
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
    PyObject* Radius;
    PyObject* CheckNeighbor;
    long MinCheckNeighborDiff1;
    char* Subpix1;
    PyObject* Subpix;
    long MinScore1;
    PyObject* MinScore;
    PyObject* MinCheckNeighborDiff;
    long CheckNeighbor1;
    long Radius1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Radius,&CheckNeighbor,&MinCheckNeighborDiff,&MinScore,&Subpix)) {
            if (PyHirschTuple_Check(Radius) && PyHirschTuple_Check(CheckNeighbor) && PyHirschTuple_Check(MinCheckNeighborDiff) && PyHirschTuple_Check(MinScore) && PyHirschTuple_Check(Subpix)) {
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsLepetit(*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)CheckNeighbor)->Tuple),*(((PyHirschTuple*)MinCheckNeighborDiff)->Tuple),*(((PyHirschTuple*)MinScore)->Tuple),*(((PyHirschTuple*)Subpix)->Tuple),&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lllls", &Radius1,&CheckNeighbor1,&MinCheckNeighborDiff1,&MinScore1,&Subpix1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsLepetit(Radius1,CheckNeighbor1,MinCheckNeighborDiff1,MinScore1,Subpix1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsLepetit()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBandpass(PyHirschImage*, PyObject *args)
{
    long Width1;
    char* Mode1;
    char* Norm1;
    PyObject* MinFrequency;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Mode;
    PyObject* MaxFrequency;
    double MinFrequency1;
    double MaxFrequency1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &MinFrequency,&MaxFrequency,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(MinFrequency) && PyHirschTuple_Check(MaxFrequency) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenBandpass(*(((PyHirschTuple*)MinFrequency)->Tuple),*(((PyHirschTuple*)MaxFrequency)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency1,&MaxFrequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenBandpass(MinFrequency1,MaxFrequency1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBandpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FftImage(PyHirschImage*self, PyObject *)
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
    char* Metric1;
    PyObject* MinContrast;
    char* Parameters1;
    long NumLevels1;
    PyObject* ScaleMin;
    double AngleStart1;
    PyObject* NumLevels;
    PyObject* AngleExtent;
    char* Optimization1;
    double AngleExtent1;
    long Contrast1;
    PyObject* Contrast;
    double ScaleMax1;
    PyObject* Metric;
    PyObject* AngleStart;
    PyObject* ScaleMax;
    PyObject* Parameters;
    double ScaleMin1;
    PyObject* Optimization;
    long MinContrast1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOO", &NumLevels,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&Optimization,&Metric,&Contrast,&MinContrast,&Parameters)) {
            if (PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtent) && PyHirschTuple_Check(ScaleMin) && PyHirschTuple_Check(ScaleMax) && PyHirschTuple_Check(Optimization) && PyHirschTuple_Check(Metric) && PyHirschTuple_Check(Contrast) && PyHirschTuple_Check(MinContrast) && PyHirschTuple_Check(Parameters)) {
                Halcon::HTuple ParameterValue;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetermineShapeModelParams(*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)ScaleMin)->Tuple),*(((PyHirschTuple*)ScaleMax)->Tuple),*(((PyHirschTuple*)Optimization)->Tuple),*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)MinContrast)->Tuple),*(((PyHirschTuple*)Parameters)->Tuple),&ParameterValue)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ParameterValue));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lddddsslls", &NumLevels1,&AngleStart1,&AngleExtent1,&ScaleMin1,&ScaleMax1,&Optimization1,&Metric1,&Contrast1,&MinContrast1,&Parameters1)) {
            {
            // with output params
                Halcon::HTuple ParameterValue1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetermineShapeModelParams(NumLevels1,AngleStart1,AngleExtent1,ScaleMin1,ScaleMax1,Optimization1,Metric1,Contrast1,MinContrast1,Parameters1,&ParameterValue1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ParameterValue1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* Mode1;
    double Sigma1;
    PyObject* Theta;
    PyObject* Mode;
    long Iterations1;
    PyObject* Sigma;
    double Theta1;
    
    try {
        if (PyArg_ParseTuple(args, "dlsd", &Theta1,&Iterations1,&Mode1,&Sigma1)) {
            return PyHirschImage_FromHImage(self->Image->ShockFilter(Theta1,Iterations1,Mode1,Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Theta,&Iterations,&Mode,&Sigma)) {
            if (PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Sigma)) {
                return PyHirschImage_FromHImage(self->Image->ShockFilter(*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* PixelShift;
    PyObject* Diameter;
    PyObject* FilterType;
    char* FilterType1;
    long PixelShift1;
    long Diameter1;
    
    try {
        if (PyArg_ParseTuple(args, "lsl", &Diameter1,&FilterType1,&PixelShift1)) {
            return PyHirschImage_FromHImage(self->Image->DotsImage(Diameter1,FilterType1,PixelShift1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Diameter,&FilterType,&PixelShift)) {
            if (PyHirschTuple_Check(Diameter) && PyHirschTuple_Check(FilterType) && PyHirschTuple_Check(PixelShift)) {
                return PyHirschImage_FromHImage(self->Image->DotsImage(*(((PyHirschTuple*)Diameter)->Tuple),*(((PyHirschTuple*)FilterType)->Tuple),*(((PyHirschTuple*)PixelShift)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Low;
    PyObject* High;
    double High1;
    PyObject* Alpha;
    PyObject* Filter;
    char* Filter1;
    double Alpha1;
    double Low1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Filter,&Alpha,&Low,&High)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->Image->EdgesColorSubPix(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddd", &Filter1,&Alpha1,&Low1,&High1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->EdgesColorSubPix(Filter1,Alpha1,Low1,High1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesColorSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer3(PyHirschImage*self, PyObject *)
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
PyHirschImage_FullDomain(PyHirschImage*self, PyObject *)
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
    PyObject* Sigma;
    double Sigma1;
    char* Component1;
    PyObject* Component;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Sigma,&Component)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Component)) {
                return PyHirschImage_FromHImage(self->Image->DerivateGauss(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Component)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Sigma1,&Component1)) {
            return PyHirschImage_FromHImage(self->Image->DerivateGauss(Sigma1,Component1));
        }
        PyErr_Clear();
        
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
            return PyHirschTuple_FromHTuple(self->Image->GetGrayval(Row1,Column1));
        }
        PyErr_Clear();
        
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
    double MaxError1;
    PyObject* TemplateID;
    PyObject* MaxError;
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
        if (PyArg_ParseTuple(args, "OOO", &TemplateID,&MaxError,&NumLevel)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(NumLevel)) {
                return PyHirschRegion_FromHRegion(self->Image->FastMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)NumLevel)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Channel;
    long WindowHandle1;
    PyObject* WindowHandle;
    long Channel1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &WindowHandle1,&Channel1)) {
            self->Image->DispChannel(WindowHandle1,Channel1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &WindowHandle,&Channel)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Channel)) {
                self->Image->DispChannel(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Channel)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionAmp(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionAmp(Mode1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.NonmaxSuppressionAmp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ZeroCrossingSubPix(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenMeanFilter(PyHirschImage*, PyObject *args)
{
    PyObject* MaskShape;
    long Width1;
    char* Mode1;
    double Phi1;
    PyObject* Diameter1;
    double Diameter11;
    char* Norm1;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Phi;
    PyObject* Mode;
    double Diameter21;
    char* MaskShape1;
    PyObject* Width;
    PyObject* Diameter2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &MaskShape,&Diameter1,&Diameter2,&Phi,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(MaskShape) && PyHirschTuple_Check(Diameter1) && PyHirschTuple_Check(Diameter2) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenMeanFilter(*(((PyHirschTuple*)MaskShape)->Tuple),*(((PyHirschTuple*)Diameter1)->Tuple),*(((PyHirschTuple*)Diameter2)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddssll", &MaskShape1,&Diameter11,&Diameter21,&Phi1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenMeanFilter(MaskShape1,Diameter11,Diameter21,Phi1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    PyObject* Precision;
    PyObject* Region;
    PyObject* Region1;
    double Precision1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Region1,&Precision1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->HarmonicInterpolation(*(((PyHirschRegion*)Region1)->Region),Precision1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Region,&Precision)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Precision)) {
                return PyHirschImage_FromHImage(self->Image->HarmonicInterpolation(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Precision)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* ColorSpace1;
    char* ColorSpace3;
    PyObject* ColorSpace;
    PyObject* ImageInput23;
    PyObject* ImageInput22;
    PyObject* ImageInput21;
    PyObject* ImageInput33;
    PyObject* ImageInput31;
    PyObject* ImageInput2;
    PyObject* ColorSpace2;
    PyObject* ImageInput32;
    PyObject* ImageInput3;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ImageInput2,&ImageInput3,&ColorSpace)) {
            if (PyHirschImage_Check(ImageInput2) && PyHirschImage_Check(ImageInput3) && PyHirschTuple_Check(ColorSpace)) {
                Halcon::HImage ImageGreen;
                Halcon::HImage ImageBlue;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImage*)ImageInput2)->Image),*(((PyHirschImage*)ImageInput3)->Image),&ImageGreen,&ImageBlue,*(((PyHirschTuple*)ColorSpace)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &ImageInput22,&ImageInput32,&ColorSpace2)) {
            if (PyHirschImageArray_Check(ImageInput22) && PyHirschImageArray_Check(ImageInput32) && PyHirschTuple_Check(ColorSpace2)) {
                Halcon::HImage ImageGreen2;
                Halcon::HImage ImageBlue2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImageArray*)ImageInput22)->ImageArray),*(((PyHirschImageArray*)ImageInput32)->ImageArray),&ImageGreen2,&ImageBlue2,*(((PyHirschTuple*)ColorSpace2)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageInput23,&ImageInput33,&ColorSpace3)) {
            if (PyHirschImageArray_Check(ImageInput23) && PyHirschImageArray_Check(ImageInput33)) {
                Halcon::HImage ImageGreen3;
                Halcon::HImage ImageBlue3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransToRgb(*(((PyHirschImageArray*)ImageInput23)->ImageArray),*(((PyHirschImageArray*)ImageInput33)->ImageArray),&ImageGreen3,&ImageBlue3,ColorSpace3)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageGreen3));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageBlue3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageInput21,&ImageInput31,&ColorSpace1)) {
            if (PyHirschImage_Check(ImageInput21) && PyHirschImage_Check(ImageInput31)) {
                Halcon::HImage ImageGreen1;
                Halcon::HImage ImageBlue1;
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
        PyErr_Clear();
        
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
    PyObject* ImageHilbert1;
    PyObject* ImageHilbert;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageHilbert1)) {
            if (PyHirschImageArray_Check(ImageHilbert1)) {
                return PyHirschImage_FromHImage(self->Image->EnergyGabor(*(((PyHirschImageArray*)ImageHilbert1)->ImageArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &ImageHilbert)) {
            if (PyHirschImage_Check(ImageHilbert)) {
                return PyHirschImage_FromHImage(self->Image->EnergyGabor(*(((PyHirschImage*)ImageHilbert)->Image)));
            }
        }
        PyErr_Clear();
        
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
    char* FilterMask1;
    PyObject* MaskSize;
    PyObject* ResultType;
    PyObject* FilterMask;
    char* ResultType1;
    long MaskSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ResultType,&MaskSize,&FilterMask)) {
            if (PyHirschTuple_Check(ResultType) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(FilterMask)) {
                return PyHirschImage_FromHImage(self->Image->Laplace(*(((PyHirschTuple*)ResultType)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)FilterMask)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sls", &ResultType1,&MaskSize1,&FilterMask1)) {
            return PyHirschImage_FromHImage(self->Image->Laplace(ResultType1,MaskSize1,FilterMask1));
        }
        PyErr_Clear();
        
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
    PyObject* DistGap;
    char* Smoothing1;
    PyObject* AngleGap;
    long AngleResolution1;
    long Threshold1;
    PyObject* GenLines;
    long FilterSize1;
    PyObject* DirectionUncertainty;
    long AngleGap1;
    PyObject* FilterSize;
    long DirectionUncertainty1;
    long DistGap1;
    PyObject* AngleResolution;
    PyObject* Smoothing;
    char* GenLines1;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &DirectionUncertainty,&AngleResolution,&Smoothing,&FilterSize,&Threshold,&AngleGap,&DistGap,&GenLines)) {
            if (PyHirschTuple_Check(DirectionUncertainty) && PyHirschTuple_Check(AngleResolution) && PyHirschTuple_Check(Smoothing) && PyHirschTuple_Check(FilterSize) && PyHirschTuple_Check(Threshold) && PyHirschTuple_Check(AngleGap) && PyHirschTuple_Check(DistGap) && PyHirschTuple_Check(GenLines)) {
                Halcon::HRegionArray Lines;
                Halcon::HTuple Angle;
                Halcon::HTuple Dist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->HoughLinesDir(&Lines,*(((PyHirschTuple*)DirectionUncertainty)->Tuple),*(((PyHirschTuple*)AngleResolution)->Tuple),*(((PyHirschTuple*)Smoothing)->Tuple),*(((PyHirschTuple*)FilterSize)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),*(((PyHirschTuple*)AngleGap)->Tuple),*(((PyHirschTuple*)DistGap)->Tuple),*(((PyHirschTuple*)GenLines)->Tuple),&Angle,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(Lines));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Dist));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llslllls", &DirectionUncertainty1,&AngleResolution1,&Smoothing1,&FilterSize1,&Threshold1,&AngleGap1,&DistGap1,&GenLines1)) {
            {
            // with output params
                Halcon::HRegionArray Lines1;
                Halcon::HTuple Angle1;
                Halcon::HTuple Dist1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->HoughLinesDir(&Lines1,DirectionUncertainty1,AngleResolution1,Smoothing1,FilterSize1,Threshold1,AngleGap1,DistGap1,GenLines1,&Angle1,&Dist1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(Lines1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Dist1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AffineTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenRadialDistortionMap(PyHirschImage*, PyObject *args)
{
    PyObject* Interpolation;
    PyObject* CamParamOut;
    PyObject* CamParamIn;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParamIn,&CamParamOut,&Interpolation)) {
            if (PyHirschTuple_Check(CamParamIn) && PyHirschTuple_Check(CamParamOut) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenRadialDistortionMap(*(((PyHirschTuple*)CamParamIn)->Tuple),*(((PyHirschTuple*)CamParamOut)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenRadialDistortionMap()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_HClassName(PyHirschImage*self, PyObject *)
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
PyHirschImage_Height(PyHirschImage*self, PyObject *)
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
    PyObject* BitMask;
    long BitMask1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &BitMask)) {
            if (PyHirschTuple_Check(BitMask)) {
                return PyHirschImage_FromHImage(self->Image->BitMask(*(((PyHirschTuple*)BitMask)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &BitMask1)) {
            return PyHirschImage_FromHImage(self->Image->BitMask(BitMask1));
        }
        PyErr_Clear();
        
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
    double MaxError1;
    PyObject* SubPixel;
    PyObject* TemplateID;
    PyObject* MaxError;
    char* SubPixel1;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &TemplateID,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel)) {
                double Column;
                double Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatch(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &TemplateID1,&MaxError1,&SubPixel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Column1;
                double Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatch(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,SubPixel1,&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BestMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldToReal(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
    char* ColorSpace1;
    PyObject* ColorSpace;
    PyObject* ImageGreen2;
    PyObject* ImageGreen;
    char* ColorSpace3;
    PyObject* ImageBlue1;
    PyObject* ImageGreen1;
    PyObject* ImageGreen3;
    PyObject* ColorSpace2;
    PyObject* ImageBlue;
    PyObject* ImageBlue2;
    PyObject* ImageBlue3;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ImageGreen2,&ImageBlue2,&ColorSpace2)) {
            if (PyHirschImageArray_Check(ImageGreen2) && PyHirschImageArray_Check(ImageBlue2) && PyHirschTuple_Check(ColorSpace2)) {
                Halcon::HImage ImageResult22;
                Halcon::HImage ImageResult32;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImageArray*)ImageGreen2)->ImageArray),*(((PyHirschImageArray*)ImageBlue2)->ImageArray),&ImageResult22,&ImageResult32,*(((PyHirschTuple*)ColorSpace2)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult22));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult32));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageGreen3,&ImageBlue3,&ColorSpace3)) {
            if (PyHirschImageArray_Check(ImageGreen3) && PyHirschImageArray_Check(ImageBlue3)) {
                Halcon::HImage ImageResult23;
                Halcon::HImage ImageResult33;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImageArray*)ImageGreen3)->ImageArray),*(((PyHirschImageArray*)ImageBlue3)->ImageArray),&ImageResult23,&ImageResult33,ColorSpace3)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult23));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult33));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &ImageGreen,&ImageBlue,&ColorSpace)) {
            if (PyHirschImage_Check(ImageGreen) && PyHirschImage_Check(ImageBlue) && PyHirschTuple_Check(ColorSpace)) {
                Halcon::HImage ImageResult2;
                Halcon::HImage ImageResult3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImage*)ImageGreen)->Image),*(((PyHirschImage*)ImageBlue)->Image),&ImageResult2,&ImageResult3,*(((PyHirschTuple*)ColorSpace)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageGreen1,&ImageBlue1,&ColorSpace1)) {
            if (PyHirschImage_Check(ImageGreen1) && PyHirschImage_Check(ImageBlue1)) {
                Halcon::HImage ImageResult21;
                Halcon::HImage ImageResult31;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->TransFromRgb(*(((PyHirschImage*)ImageGreen1)->Image),*(((PyHirschImage*)ImageBlue1)->Image),&ImageResult21,&ImageResult31,ColorSpace1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImageResult21));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(ImageResult31));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DualRank()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateSlAlLr(PyHirschImage*self, PyObject *)
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
    PyObject* Low;
    PyObject* High;
    PyObject* Alpha;
    PyObject* Filter;
    char* NMS1;
    long Low1;
    PyObject* NMS;
    char* Filter1;
    long High1;
    double Alpha1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Filter,&Alpha,&NMS,&Low,&High)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(NMS) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                Halcon::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesImage(&ImaDir,*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)NMS)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdsll", &Filter1,&Alpha1,&NMS1,&Low1,&High1)) {
            {
            // with output params
                Halcon::HImage ImaDir1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesImage(&ImaDir1,Filter1,Alpha1,NMS1,Low1,High1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CopyImage(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
    char* Smoothing1;
    double ThreshShape1;
    char* EliminateDoublets1;
    PyObject* ThreshShape;
    PyObject* SigmaGrad;
    double SigmaPoints1;
    double ThreshInhom1;
    double SigmaGrad1;
    PyObject* ThreshInhom;
    PyObject* EliminateDoublets;
    PyObject* SigmaPoints;
    PyObject* SigmaInt;
    PyObject* Smoothing;
    double SigmaInt1;
    
    try {
        if (PyArg_ParseTuple(args, "dddddss", &SigmaGrad1,&SigmaInt1,&SigmaPoints1,&ThreshInhom1,&ThreshShape1,&Smoothing1,&EliminateDoublets1)) {
            {
            // with output params
                Halcon::HTuple ColumnJunctions1;
                Halcon::HTuple CoRRJunctions1;
                Halcon::HTuple CoRCJunctions1;
                Halcon::HTuple CoCCJunctions1;
                Halcon::HTuple RowArea1;
                Halcon::HTuple ColumnArea1;
                Halcon::HTuple CoRRArea1;
                Halcon::HTuple CoRCArea1;
                Halcon::HTuple CoCCArea1;
                PyObject *ret = PyTuple_New(10);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsFoerstner(SigmaGrad1,SigmaInt1,SigmaPoints1,ThreshInhom1,ThreshShape1,Smoothing1,EliminateDoublets1,&ColumnJunctions1,&CoRRJunctions1,&CoRCJunctions1,&CoCCJunctions1,&RowArea1,&ColumnArea1,&CoRRArea1,&CoRCArea1,&CoCCArea1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColumnJunctions1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CoRRJunctions1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(CoRCJunctions1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(CoCCJunctions1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(RowArea1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(ColumnArea1));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(CoRRArea1));
                PyTuple_SET_ITEM(ret, 8, PyHirschTuple_FromHTuple(CoRCArea1));
                PyTuple_SET_ITEM(ret, 9, PyHirschTuple_FromHTuple(CoCCArea1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &SigmaGrad,&SigmaInt,&SigmaPoints,&ThreshInhom,&ThreshShape,&Smoothing,&EliminateDoublets)) {
            if (PyHirschTuple_Check(SigmaGrad) && PyHirschTuple_Check(SigmaInt) && PyHirschTuple_Check(SigmaPoints) && PyHirschTuple_Check(ThreshInhom) && PyHirschTuple_Check(ThreshShape) && PyHirschTuple_Check(Smoothing) && PyHirschTuple_Check(EliminateDoublets)) {
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsFoerstner(*(((PyHirschTuple*)SigmaGrad)->Tuple),*(((PyHirschTuple*)SigmaInt)->Tuple),*(((PyHirschTuple*)SigmaPoints)->Tuple),*(((PyHirschTuple*)ThreshInhom)->Tuple),*(((PyHirschTuple*)ThreshShape)->Tuple),*(((PyHirschTuple*)Smoothing)->Tuple),*(((PyHirschTuple*)EliminateDoublets)->Tuple),&ColumnJunctions,&CoRRJunctions,&CoRCJunctions,&CoCCJunctions,&RowArea,&ColumnArea,&CoRRArea,&CoRCArea,&CoCCArea)));
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
        PyErr_Clear();
        
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
    PyObject* ImageImaginary1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageImaginary1)) {
            if (PyHirschImageArray_Check(ImageImaginary1)) {
                return PyHirschImage_FromHImage(self->Image->RealToComplex(*(((PyHirschImageArray*)ImageImaginary1)->ImageArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &ImageImaginary)) {
            if (PyHirschImage_Check(ImageImaginary)) {
                return PyHirschImage_FromHImage(self->Image->RealToComplex(*(((PyHirschImage*)ImageImaginary)->Image)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    double Albedo1;
    PyObject* Tilt;
    double Ambient1;
    char* Shadows1;
    PyObject* Slant;
    PyObject* Albedo;
    PyObject* Shadows;
    double Slant1;
    double Tilt1;
    PyObject* Ambient;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Slant,&Tilt,&Albedo,&Ambient,&Shadows)) {
            if (PyHirschTuple_Check(Slant) && PyHirschTuple_Check(Tilt) && PyHirschTuple_Check(Albedo) && PyHirschTuple_Check(Ambient) && PyHirschTuple_Check(Shadows)) {
                return PyHirschImage_FromHImage(self->Image->ShadeHeightField(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple),*(((PyHirschTuple*)Shadows)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddds", &Slant1,&Tilt1,&Albedo1,&Ambient1,&Shadows1)) {
            return PyHirschImage_FromHImage(self->Image->ShadeHeightField(Slant1,Tilt1,Albedo1,Ambient1,Shadows1));
        }
        PyErr_Clear();
        
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
    double MaxError1;
    long NumLevels1;
    PyObject* NumLevels;
    PyObject* SubPixel;
    PyObject* WhichLevels;
    PyObject* TemplateID;
    PyObject* MaxError;
    char* SubPixel1;
    long WhichLevels1;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID1,&MaxError1,&SubPixel1,&NumLevels1,&WhichLevels1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Column1;
                double Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchMg(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,SubPixel1,NumLevels1,WhichLevels1,&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(WhichLevels)) {
                double Column;
                double Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)WhichLevels)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double MaxError1;
    PyObject* MaxError;
    PyObject* TemplateID1;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &TemplateID1,&MaxError1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                return PyHirschRegion_FromHRegion(self->Image->FastMatch(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &TemplateID,&MaxError)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError)) {
                return PyHirschRegion_FromHRegion(self->Image->FastMatch(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->DeviationImage(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->DeviationImage(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType1,&Size1)) {
            {
            // with output params
                Halcon::HImage EdgeDirection1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SobelDir(&EdgeDirection1,FilterType1,Size1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(EdgeDirection1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &FilterType,&Size)) {
            if (PyHirschTuple_Check(FilterType) && PyHirschTuple_Check(Size)) {
                Halcon::HImage EdgeDirection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->SobelDir(&EdgeDirection,*(((PyHirschTuple*)FilterType)->Tuple),*(((PyHirschTuple*)Size)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(EdgeDirection));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImage_FromHImage(self->Image->GrayOpeningShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayOpeningShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
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
    PyObject* NewType;
    char* NewType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &NewType1)) {
            return PyHirschImage_FromHImage(self->Image->ConvertImageType(NewType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &NewType)) {
            if (PyHirschTuple_Check(NewType)) {
                return PyHirschImage_FromHImage(self->Image->ConvertImageType(*(((PyHirschTuple*)NewType)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_DetectEdgeSegments(PyHirschImage*self, PyObject *args)
{
    long SobelSize1;
    PyObject* MinAmplitude;
    PyObject* MaxDistance;
    long MaxDistance1;
    long MinAmplitude1;
    PyObject* MinLength;
    long MinLength1;
    PyObject* SobelSize;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &SobelSize1,&MinAmplitude1,&MaxDistance1,&MinLength1)) {
            {
            // with output params
                Halcon::HTuple BeginCol1;
                Halcon::HTuple EndRow1;
                Halcon::HTuple EndCol1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetectEdgeSegments(SobelSize1,MinAmplitude1,MaxDistance1,MinLength1,&BeginCol1,&EndRow1,&EndCol1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &SobelSize,&MinAmplitude,&MaxDistance,&MinLength)) {
            if (PyHirschTuple_Check(SobelSize) && PyHirschTuple_Check(MinAmplitude) && PyHirschTuple_Check(MaxDistance) && PyHirschTuple_Check(MinLength)) {
                Halcon::HTuple BeginCol;
                Halcon::HTuple EndRow;
                Halcon::HTuple EndCol;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->DetectEdgeSegments(*(((PyHirschTuple*)SobelSize)->Tuple),*(((PyHirschTuple*)MinAmplitude)->Tuple),*(((PyHirschTuple*)MaxDistance)->Tuple),*(((PyHirschTuple*)MinLength)->Tuple),&BeginCol,&EndRow,&EndCol)));
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Rgb3ToGray(PyHirschImage*self, PyObject *args)
{
    PyObject* ImageGreen;
    PyObject* ImageGreen1;
    PyObject* ImageBlue;
    PyObject* ImageBlue1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageGreen,&ImageBlue)) {
            if (PyHirschImage_Check(ImageGreen) && PyHirschImage_Check(ImageBlue)) {
                return PyHirschImage_FromHImage(self->Image->Rgb3ToGray(*(((PyHirschImage*)ImageGreen)->Image),*(((PyHirschImage*)ImageBlue)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &ImageGreen1,&ImageBlue1)) {
            if (PyHirschImageArray_Check(ImageGreen1) && PyHirschImageArray_Check(ImageBlue1)) {
                return PyHirschImage_FromHImage(self->Image->Rgb3ToGray(*(((PyHirschImageArray*)ImageGreen1)->ImageArray),*(((PyHirschImageArray*)ImageBlue1)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    double Sigma1;
    PyObject* Filter;
    double Threshold1;
    char* Filter1;
    PyObject* Sigma;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->LocalMaxSubPix(Filter1,Sigma1,Threshold1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Filter,&Sigma,&Threshold)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Threshold)) {
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->LocalMaxSubPix(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LocalMaxSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImageTime(PyHirschImage*self, PyObject *)
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
    PyObject* Low;
    PyObject* High;
    PyObject* Alpha;
    PyObject* Filter;
    char* NMS1;
    long Low1;
    PyObject* NMS;
    char* Filter1;
    long High1;
    double Alpha1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Filter,&Alpha,&NMS,&Low,&High)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(NMS) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                Halcon::HImage ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->EdgesColor(&ImaDir,*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)NMS)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdsll", &Filter1,&Alpha1,&NMS1,&Low1,&High1)) {
            {
            // with output params
                Halcon::HImage ImaDir1;
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LabelToRegion(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
    PyObject* Image21;
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MaxImage(*(((PyHirschImage*)Image2)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image21)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->MaxImage(*(((PyHirschImageArray*)Image21)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImage_FromHImage(self->Image->GrayErosionShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayErosionShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayErosionShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InvertImage(PyHirschImage*self, PyObject *)
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    double Tolerance1;
    PyObject* MinSize;
    PyObject* Tolerance;
    long Column1;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Column,&Tolerance,&MinSize)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Tolerance) && PyHirschTuple_Check(MinSize)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->Regiongrowing(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Tolerance)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldl", &Row1,&Column1,&Tolerance1,&MinSize1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->Regiongrowing(Row1,Column1,Tolerance1,MinSize1));
        }
        PyErr_Clear();
        
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
    PyObject* Sigma;
    PyObject* SigFactor;
    double Sigma1;
    double SigFactor1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Sigma,&SigFactor)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(SigFactor)) {
                return PyHirschImage_FromHImage(self->Image->DiffOfGauss(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)SigFactor)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Sigma1,&SigFactor1)) {
            return PyHirschImage_FromHImage(self->Image->DiffOfGauss(Sigma1,SigFactor1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Shift;
    long Shift1;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift1)) {
            return PyHirschImage_FromHImage(self->Image->BitLshift(Shift1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Shift)) {
            if (PyHirschTuple_Check(Shift)) {
                return PyHirschImage_FromHImage(self->Image->BitLshift(*(((PyHirschTuple*)Shift)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImage_FromHImage(self->Image->GrayErosionRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayErosionRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskSize;
    double Exponent1;
    PyObject* Direction;
    long MaskSize1;
    double Direction1;
    PyObject* Exponent;
    
    try {
        if (PyArg_ParseTuple(args, "ldd", &MaskSize1,&Direction1,&Exponent1)) {
            return PyHirschImage_FromHImage(self->Image->Symmetry(MaskSize1,Direction1,Exponent1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskSize,&Direction,&Exponent)) {
            if (PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(Direction) && PyHirschTuple_Check(Exponent)) {
                return PyHirschImage_FromHImage(self->Image->Symmetry(*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)Direction)->Tuple),*(((PyHirschTuple*)Exponent)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Scale;
    char* Mode1;
    PyObject* Mode;
    double Scale1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mode,&Scale)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Scale)) {
                return PyHirschImageArray_FromHImageArray(self->Image->GenGaussPyramid(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Scale)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Mode1,&Scale1)) {
            return PyHirschImageArray_FromHImageArray(self->Image->GenGaussPyramid(Mode1,Scale1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CreateCalibDescriptorModel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateTiltZc(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenImage1Rect(PyHirschImage*, PyObject *args)
{
    long Width1;
    PyObject* DoCopy;
    long BitsPerPixel1;
    long HorizontalBitPitch1;
    PyObject* BitsPerPixel;
    long PixelPointer1;
    PyObject* PixelPointer;
    char* DoCopy1;
    long Height1;
    PyObject* Height;
    PyObject* ClearProc;
    PyObject* VerticalPitch;
    long VerticalPitch1;
    PyObject* HorizontalBitPitch;
    PyObject* Width;
    long ClearProc1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &PixelPointer,&Width,&Height,&VerticalPitch,&HorizontalBitPitch,&BitsPerPixel,&DoCopy,&ClearProc)) {
            if (PyHirschTuple_Check(PixelPointer) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(VerticalPitch) && PyHirschTuple_Check(HorizontalBitPitch) && PyHirschTuple_Check(BitsPerPixel) && PyHirschTuple_Check(DoCopy) && PyHirschTuple_Check(ClearProc)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImage1Rect(*(((PyHirschTuple*)PixelPointer)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)VerticalPitch)->Tuple),*(((PyHirschTuple*)HorizontalBitPitch)->Tuple),*(((PyHirschTuple*)BitsPerPixel)->Tuple),*(((PyHirschTuple*)DoCopy)->Tuple),*(((PyHirschTuple*)ClearProc)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llllllsl", &PixelPointer1,&Width1,&Height1,&VerticalPitch1,&HorizontalBitPitch1,&BitsPerPixel1,&DoCopy1,&ClearProc1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImage1Rect(PixelPointer1,Width1,Height1,VerticalPitch1,HorizontalBitPitch1,BitsPerPixel1,DoCopy1,ClearProc1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Add;
    double Mult3;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Add2;
    PyObject* Mult;
    PyObject* Image23;
    PyObject* Image22;
    double Add3;
    PyObject* Mult2;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image23,&Mult3,&Add3)) {
            if (PyHirschImageArray_Check(Image23)) {
                return PyHirschImage_FromHImage(self->Image->MultImage(*(((PyHirschImageArray*)Image23)->ImageArray),Mult3,Add3));
            }
        }
        PyErr_Clear();
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
        if (PyArg_ParseTuple(args, "OOO", &Image22,&Mult2,&Add2)) {
            if (PyHirschImageArray_Check(Image22) && PyHirschTuple_Check(Mult2) && PyHirschTuple_Check(Add2)) {
                return PyHirschImage_FromHImage(self->Image->MultImage(*(((PyHirschImageArray*)Image22)->ImageArray),*(((PyHirschTuple*)Mult2)->Tuple),*(((PyHirschTuple*)Add2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_BinocularDistanceMg(PyHirschImage*self, PyObject *args)
{
    PyObject* InitialGuess1;
    PyObject* Smoothness1;
    PyObject* CamParamRect1;
    PyObject* Smoothness;
    PyObject* MGParamValue1;
    PyObject* MGParamName;
    PyObject* GradientConstancy;
    PyObject* CamParamRect21;
    PyObject* GrayConstancy;
    PyObject* CalculateScore1;
    PyObject* RelPoseRect;
    PyObject* Image21;
    PyObject* GrayConstancy1;
    PyObject* CamParamRect2;
    PyObject* CalculateScore;
    PyObject* MGParamValue;
    PyObject* MGParamName1;
    PyObject* Image2;
    PyObject* RelPoseRect1;
    PyObject* CamParamRect11;
    PyObject* InitialGuess;
    PyObject* GradientConstancy1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &Image2,&CamParamRect1,&CamParamRect2,&RelPoseRect,&GrayConstancy,&GradientConstancy,&Smoothness,&InitialGuess,&CalculateScore,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(CamParamRect1) && PyHirschTuple_Check(CamParamRect2) && PyHirschTuple_Check(RelPoseRect) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDistanceMg(*(((PyHirschImage*)Image2)->Image),&Score,*(((PyHirschTuple*)CamParamRect1)->Tuple),*(((PyHirschTuple*)CamParamRect2)->Tuple),*(((PyHirschTuple*)RelPoseRect)->Tuple),*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &Image21,&CamParamRect11,&CamParamRect21,&RelPoseRect1,&GrayConstancy1,&GradientConstancy1,&Smoothness1,&InitialGuess1,&CalculateScore1,&MGParamName1,&MGParamValue1)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschTuple_Check(CamParamRect11) && PyHirschTuple_Check(CamParamRect21) && PyHirschTuple_Check(RelPoseRect1) && PyHirschTuple_Check(GrayConstancy1) && PyHirschTuple_Check(GradientConstancy1) && PyHirschTuple_Check(Smoothness1) && PyHirschTuple_Check(InitialGuess1) && PyHirschTuple_Check(CalculateScore1) && PyHirschTuple_Check(MGParamName1) && PyHirschTuple_Check(MGParamValue1)) {
                Halcon::HImage Score1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDistanceMg(*(((PyHirschImageArray*)Image21)->ImageArray),&Score1,*(((PyHirschTuple*)CamParamRect11)->Tuple),*(((PyHirschTuple*)CamParamRect21)->Tuple),*(((PyHirschTuple*)RelPoseRect1)->Tuple),*(((PyHirschTuple*)GrayConstancy1)->Tuple),*(((PyHirschTuple*)GradientConstancy1)->Tuple),*(((PyHirschTuple*)Smoothness1)->Tuple),*(((PyHirschTuple*)InitialGuess1)->Tuple),*(((PyHirschTuple*)CalculateScore1)->Tuple),*(((PyHirschTuple*)MGParamName1)->Tuple),*(((PyHirschTuple*)MGParamValue1)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImage_FromHImage(self->Image->GrayOpeningRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayOpeningRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayOpeningRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PhaseRad(PyHirschImage*self, PyObject *)
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
    PyObject* MinSize;
    PyObject* MinGray;
    PyObject* MaxGray;
    double MinGray1;
    double MaxGray1;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MinGray,&MaxGray,&MinSize)) {
            if (PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(MaxGray) && PyHirschTuple_Check(MinSize)) {
                return PyHirschRegion_FromHRegion(self->Image->FastThreshold(*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)MaxGray)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddl", &MinGray1,&MaxGray1,&MinSize1)) {
            return PyHirschRegion_FromHRegion(self->Image->FastThreshold(MinGray1,MaxGray1,MinSize1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FastThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageConst(PyHirschImage*, PyObject *args)
{
    char* Type1;
    long Width1;
    long Height1;
    PyObject* Height;
    PyObject* Type;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImageConst(Type1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Type,&Width,&Height)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImageConst(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Amp;
    double Amp1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Amp)) {
            if (PyHirschTuple_Check(Amp)) {
                return PyHirschImage_FromHImage(self->Image->AddNoiseWhite(*(((PyHirschTuple*)Amp)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "d", &Amp1)) {
            return PyHirschImage_FromHImage(self->Image->AddNoiseWhite(Amp1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddNoiseWhite()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LocalMax(PyHirschImage*self, PyObject *)
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
    long Mode1;
    PyObject* MaskWidth;
    PyObject* Gap;
    long MaskHeight1;
    double Gap1;
    PyObject* Mode;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &MaskWidth,&MaskHeight,&Gap,&Mode)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(Gap) && PyHirschTuple_Check(Mode)) {
                return PyHirschImage_FromHImage(self->Image->EliminateMinMax(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)Gap)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldl", &MaskWidth1,&MaskHeight1,&Gap1,&Mode1)) {
            return PyHirschImage_FromHImage(self->Image->EliminateMinMax(MaskWidth1,MaskHeight1,Gap1,Mode1));
        }
        PyErr_Clear();
        
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
    PyObject* MGParamName1;
    PyObject* GradientConstancy;
    PyObject* Algorithm;
    PyObject* Image21;
    PyObject* Algorithm1;
    PyObject* Image2;
    PyObject* IntegrationSigma1;
    PyObject* GradientConstancy1;
    PyObject* SmoothingSigma1;
    PyObject* MGParamValue1;
    PyObject* SmoothingSigma;
    PyObject* MGParamName;
    PyObject* FlowSmoothness;
    PyObject* FlowSmoothness1;
    PyObject* IntegrationSigma;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Image21,&Algorithm1,&SmoothingSigma1,&IntegrationSigma1,&FlowSmoothness1,&GradientConstancy1,&MGParamName1,&MGParamValue1)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschTuple_Check(Algorithm1) && PyHirschTuple_Check(SmoothingSigma1) && PyHirschTuple_Check(IntegrationSigma1) && PyHirschTuple_Check(FlowSmoothness1) && PyHirschTuple_Check(GradientConstancy1) && PyHirschTuple_Check(MGParamName1) && PyHirschTuple_Check(MGParamValue1)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImageArray*)Image21)->ImageArray),*(((PyHirschTuple*)Algorithm1)->Tuple),*(((PyHirschTuple*)SmoothingSigma1)->Tuple),*(((PyHirschTuple*)IntegrationSigma1)->Tuple),*(((PyHirschTuple*)FlowSmoothness1)->Tuple),*(((PyHirschTuple*)GradientConstancy1)->Tuple),*(((PyHirschTuple*)MGParamName1)->Tuple),*(((PyHirschTuple*)MGParamValue1)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Image2,&Algorithm,&SmoothingSigma,&IntegrationSigma,&FlowSmoothness,&GradientConstancy,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(SmoothingSigma) && PyHirschTuple_Check(IntegrationSigma) && PyHirschTuple_Check(FlowSmoothness) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                return PyHirschImage_FromHImage(self->Image->OpticalFlowMg(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)SmoothingSigma)->Tuple),*(((PyHirschTuple*)IntegrationSigma)->Tuple),*(((PyHirschTuple*)FlowSmoothness)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Interpolation1;
    PyObject* Interpolation;
    PyObject* Phi;
    double Phi1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Phi,&Interpolation)) {
            if (PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->RotateImage(*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Phi1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->RotateImage(Phi1,Interpolation1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RotateImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_VectorFieldToHomMat2d(PyHirschImage*self, PyObject *)
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
    PyObject* ImageFFT21;
    PyObject* ImageFFT2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageFFT2)) {
            if (PyHirschImage_Check(ImageFFT2)) {
                return PyHirschImage_FromHImage(self->Image->CorrelationFft(*(((PyHirschImage*)ImageFFT2)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &ImageFFT21)) {
            if (PyHirschImageArray_Check(ImageFFT21)) {
                return PyHirschImage_FromHImage(self->Image->CorrelationFft(*(((PyHirschImageArray*)ImageFFT21)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    PyObject* AbsThreshold;
    double StdDevScale1;
    long MaskHeight1;
    PyObject* StdDevScale;
    char* LightDark1;
    long MaskWidth1;
    double AbsThreshold1;
    PyObject* LightDark;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskWidth1,&MaskHeight1,&StdDevScale1,&AbsThreshold1,&LightDark1)) {
            return PyHirschRegion_FromHRegion(self->Image->VarThreshold(MaskWidth1,MaskHeight1,StdDevScale1,AbsThreshold1,LightDark1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &MaskWidth,&MaskHeight,&StdDevScale,&AbsThreshold,&LightDark)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(StdDevScale) && PyHirschTuple_Check(AbsThreshold) && PyHirschTuple_Check(LightDark)) {
                return PyHirschRegion_FromHRegion(self->Image->VarThreshold(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)StdDevScale)->Tuple),*(((PyHirschTuple*)AbsThreshold)->Tuple),*(((PyHirschTuple*)LightDark)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* CompleteJunctions1;
    double Sigma1;
    PyObject* Low;
    PyObject* High;
    double High1;
    char* ExtractWidth1;
    PyObject* ExtractWidth;
    PyObject* CompleteJunctions;
    PyObject* Sigma;
    double Low1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Sigma,&Low,&High,&ExtractWidth,&CompleteJunctions)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High) && PyHirschTuple_Check(ExtractWidth) && PyHirschTuple_Check(CompleteJunctions)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesColor(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),*(((PyHirschTuple*)ExtractWidth)->Tuple),*(((PyHirschTuple*)CompleteJunctions)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddss", &Sigma1,&Low1,&High1,&ExtractWidth1,&CompleteJunctions1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesColor(Sigma1,Low1,High1,ExtractWidth1,CompleteJunctions1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LinesColor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenGabor(PyHirschImage*, PyObject *args)
{
    PyObject* Orientation;
    PyObject* Angle;
    PyObject* Frequency;
    char* Mode1;
    double Bandwidth1;
    double Orientation1;
    double Angle1;
    char* Norm1;
    long Width1;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Bandwidth;
    PyObject* Mode;
    double Frequency1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Angle,&Frequency,&Bandwidth,&Orientation,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(Angle) && PyHirschTuple_Check(Frequency) && PyHirschTuple_Check(Bandwidth) && PyHirschTuple_Check(Orientation) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenGabor(*(((PyHirschTuple*)Angle)->Tuple),*(((PyHirschTuple*)Frequency)->Tuple),*(((PyHirschTuple*)Bandwidth)->Tuple),*(((PyHirschTuple*)Orientation)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddssll", &Angle1,&Frequency1,&Bandwidth1,&Orientation1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenGabor(Angle1,Frequency1,Bandwidth1,Orientation1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ChangeRadialDistortionImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenSinBandpass(PyHirschImage*, PyObject *args)
{
    long Width1;
    PyObject* Frequency;
    char* Mode1;
    char* Norm1;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Mode;
    double Frequency1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Frequency,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(Frequency) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenSinBandpass(*(((PyHirschTuple*)Frequency)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssll", &Frequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenSinBandpass(Frequency1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenSinBandpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_NumImageRefs(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
    double Epsilon1;
    double Sigma1;
    PyObject* Rho;
    PyObject* Region1;
    PyObject* Region;
    PyObject* Epsilon;
    PyObject* Kappa;
    double ChannelCoefficients1;
    PyObject* Sigma;
    double Kappa1;
    double Rho1;
    PyObject* ChannelCoefficients;
    
    try {
        if (PyArg_ParseTuple(args, "Oddddd", &Region1,&Epsilon1,&Kappa1,&Sigma1,&Rho1,&ChannelCoefficients1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCt(*(((PyHirschRegion*)Region1)->Region),Epsilon1,Kappa1,Sigma1,Rho1,ChannelCoefficients1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Region,&Epsilon,&Kappa,&Sigma,&Rho,&ChannelCoefficients)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Epsilon) && PyHirschTuple_Check(Kappa) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Rho) && PyHirschTuple_Check(ChannelCoefficients)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCt(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Epsilon)->Tuple),*(((PyHirschTuple*)Kappa)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Rho)->Tuple),*(((PyHirschTuple*)ChannelCoefficients)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Type1;
    double Grayval3;
    double Grayval1;
    PyObject* Region;
    PyObject* Region1;
    PyObject* Type;
    PyObject* Region3;
    PyObject* Grayval;
    PyObject* Type2;
    PyObject* Region2;
    PyObject* Grayval2;
    char* Type3;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Region1,&Grayval1,&Type1)) {
            if (PyHirschRegion_Check(Region1)) {
                self->Image->OverpaintRegion(*(((PyHirschRegion*)Region1)->Region),Grayval1,Type1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Region3,&Grayval3,&Type3)) {
            if (PyHirschRegionArray_Check(Region3)) {
                self->Image->OverpaintRegion(*(((PyHirschRegionArray*)Region3)->RegionArray),Grayval3,Type3);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Region,&Grayval,&Type)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Grayval) && PyHirschTuple_Check(Type)) {
                self->Image->OverpaintRegion(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Grayval)->Tuple),*(((PyHirschTuple*)Type)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Region2,&Grayval2,&Type2)) {
            if (PyHirschRegionArray_Check(Region2) && PyHirschTuple_Check(Grayval2) && PyHirschTuple_Check(Type2)) {
                self->Image->OverpaintRegion(*(((PyHirschRegionArray*)Region2)->RegionArray),*(((PyHirschTuple*)Grayval2)->Tuple),*(((PyHirschTuple*)Type2)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolFft()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ImageToChannels(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenImage3(PyHirschImage*, PyObject *args)
{
    long PixelPointerRed1;
    char* Type1;
    PyObject* PixelPointerGreen;
    long PixelPointerBlue1;
    long Height1;
    long Width1;
    PyObject* Type;
    PyObject* PixelPointerBlue;
    PyObject* Height;
    PyObject* Width;
    long PixelPointerGreen1;
    PyObject* PixelPointerRed;
    
    try {
        if (PyArg_ParseTuple(args, "slllll", &Type1,&Width1,&Height1,&PixelPointerRed1,&PixelPointerGreen1,&PixelPointerBlue1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImage3(Type1,Width1,Height1,PixelPointerRed1,PixelPointerGreen1,PixelPointerBlue1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Type,&Width,&Height,&PixelPointerRed,&PixelPointerGreen,&PixelPointerBlue)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(PixelPointerRed) && PyHirschTuple_Check(PixelPointerGreen) && PyHirschTuple_Check(PixelPointerBlue)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImage3(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)PixelPointerRed)->Tuple),*(((PyHirschTuple*)PixelPointerGreen)->Tuple),*(((PyHirschTuple*)PixelPointerBlue)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskType;
    PyObject* MaskSize;
    long MaskSize1;
    char* MaskType1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &MaskType1,&MaskSize1)) {
            return PyHirschImage_FromHImage(self->Image->MedianWeighted(MaskType1,MaskSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskType,&MaskSize)) {
            if (PyHirschTuple_Check(MaskType) && PyHirschTuple_Check(MaskSize)) {
                return PyHirschImage_FromHImage(self->Image->MedianWeighted(*(((PyHirschTuple*)MaskType)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianWeighted()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImage3Extern(PyHirschImage*, PyObject *args)
{
    char* Type1;
    long PointerBlue1;
    PyObject* PointerRed;
    long PointerGreen1;
    long Width1;
    PyObject* Type;
    PyObject* PointerBlue;
    PyObject* Height;
    PyObject* ClearProc;
    long Height1;
    PyObject* PointerGreen;
    long PointerRed1;
    PyObject* Width;
    long ClearProc1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Type,&Width,&Height,&PointerRed,&PointerGreen,&PointerBlue,&ClearProc)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(PointerRed) && PyHirschTuple_Check(PointerGreen) && PyHirschTuple_Check(PointerBlue) && PyHirschTuple_Check(ClearProc)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImage3Extern(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)PointerRed)->Tuple),*(((PyHirschTuple*)PointerGreen)->Tuple),*(((PyHirschTuple*)PointerBlue)->Tuple),*(((PyHirschTuple*)ClearProc)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllllll", &Type1,&Width1,&Height1,&PointerRed1,&PointerGreen1,&PointerBlue1,&ClearProc1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImage3Extern(Type1,Width1,Height1,PointerRed1,PointerGreen1,PointerBlue1,ClearProc1));
        }
        PyErr_Clear();
        
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
    PyObject* Low;
    PyObject* High;
    PyObject* Alpha;
    PyObject* Filter;
    long Low1;
    char* Filter1;
    long High1;
    double Alpha1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Filter,&Alpha,&Low,&High)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->Image->EdgesSubPix(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdll", &Filter1,&Alpha1,&Low1,&High1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->EdgesSubPix(Filter1,Alpha1,Low1,High1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EdgesSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer1(PyHirschImage*self, PyObject *)
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
PyHirschImage_Monotony(PyHirschImage*self, PyObject *)
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
    long StartColumns1;
    PyObject* StartColumns;
    PyObject* StartRows;
    long StartRows1;
    double Tolerance1;
    PyObject* MinSize;
    PyObject* Tolerance;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &StartRows,&StartColumns,&Tolerance,&MinSize)) {
            if (PyHirschTuple_Check(StartRows) && PyHirschTuple_Check(StartColumns) && PyHirschTuple_Check(Tolerance) && PyHirschTuple_Check(MinSize)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->RegiongrowingMean(*(((PyHirschTuple*)StartRows)->Tuple),*(((PyHirschTuple*)StartColumns)->Tuple),*(((PyHirschTuple*)Tolerance)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldl", &StartRows1,&StartColumns1,&Tolerance1,&MinSize1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->RegiongrowingMean(StartRows1,StartColumns1,Tolerance1,MinSize1));
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* GenericName;
    double GenericValue1;
    PyObject* ContrastLow;
    PyObject* ContrastHigh;
    char* GenericName1;
    PyObject* GenericValue;
    PyObject* Mode;
    PyObject* MinSize;
    long ContrastHigh1;
    long ContrastLow1;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &ContrastLow,&ContrastHigh,&MinSize,&Mode,&GenericName,&GenericValue)) {
            if (PyHirschTuple_Check(ContrastLow) && PyHirschTuple_Check(ContrastHigh) && PyHirschTuple_Check(MinSize) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(GenericName) && PyHirschTuple_Check(GenericValue)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->GenInitialComponents(*(((PyHirschTuple*)ContrastLow)->Tuple),*(((PyHirschTuple*)ContrastHigh)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lllssd", &ContrastLow1,&ContrastHigh1,&MinSize1,&Mode1,&GenericName1,&GenericValue1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->GenInitialComponents(ContrastLow1,ContrastHigh1,MinSize1,Mode1,GenericName1,GenericValue1));
        }
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ExhaustiveMatchMg(PyHirschImage*self, PyObject *args)
{
    char* Mode1;
    long Threshold1;
    long Level1;
    PyObject* ImageTemplate;
    PyObject* Level;
    PyObject* Mode;
    PyObject* ImageTemplate1;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &ImageTemplate1,&Mode1,&Level1,&Threshold1)) {
            if (PyHirschImage_Check(ImageTemplate1)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate1)->Image),Mode1,Level1,Threshold1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &ImageTemplate,&Mode,&Level,&Threshold)) {
            if (PyHirschImage_Check(ImageTemplate) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Level) && PyHirschTuple_Check(Threshold)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate)->Image),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Level)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Channel1;
    PyObject* Channel;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Channel)) {
            if (PyHirschTuple_Check(Channel)) {
                return PyHirschImage_FromHImage(self->Image->AccessChannel(*(((PyHirschTuple*)Channel)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Channel1)) {
            return PyHirschImage_FromHImage(self->Image->AccessChannel(Channel1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AccessChannel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EstimateSlAlZc(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenImageSurfaceSecondOrder(PyHirschImage*, PyObject *args)
{
    long Height1;
    double Beta1;
    double Zeta1;
    PyObject* Beta;
    PyObject* Alpha;
    double Gamma1;
    PyObject* Height;
    PyObject* Delta;
    double Col1;
    PyObject* Width;
    long Width1;
    PyObject* Row;
    PyObject* Gamma;
    PyObject* Epsilon;
    PyObject* Type;
    double Delta1;
    double Row1;
    double Alpha1;
    double Epsilon1;
    char* Type1;
    PyObject* Zeta;
    PyObject* Col;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &Type,&Alpha,&Beta,&Gamma,&Delta,&Epsilon,&Zeta,&Row,&Col,&Width,&Height)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(Beta) && PyHirschTuple_Check(Gamma) && PyHirschTuple_Check(Delta) && PyHirschTuple_Check(Epsilon) && PyHirschTuple_Check(Zeta) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImageSurfaceSecondOrder(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)Beta)->Tuple),*(((PyHirschTuple*)Gamma)->Tuple),*(((PyHirschTuple*)Delta)->Tuple),*(((PyHirschTuple*)Epsilon)->Tuple),*(((PyHirschTuple*)Zeta)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddddddddll", &Type1,&Alpha1,&Beta1,&Gamma1,&Delta1,&Epsilon1,&Zeta1,&Row1,&Col1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImageSurfaceSecondOrder(Type1,Alpha1,Beta1,Gamma1,Delta1,Epsilon1,Zeta1,Row1,Col1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    long DirectionUncertainty1;
    PyObject* AngleResolution;
    long AngleResolution1;
    PyObject* DirectionUncertainty;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &DirectionUncertainty,&AngleResolution)) {
            if (PyHirschTuple_Check(DirectionUncertainty) && PyHirschTuple_Check(AngleResolution)) {
                return PyHirschImage_FromHImage(self->Image->HoughLineTransDir(*(((PyHirschTuple*)DirectionUncertainty)->Tuple),*(((PyHirschTuple*)AngleResolution)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &DirectionUncertainty1,&AngleResolution1)) {
            return PyHirschImage_FromHImage(self->Image->HoughLineTransDir(DirectionUncertainty1,AngleResolution1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HoughLineTransDir()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Creator(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    double Sigma1;
    PyObject* Region1;
    PyObject* Theta;
    PyObject* Region;
    long Iterations1;
    PyObject* Sigma;
    double Theta1;
    
    try {
        if (PyArg_ParseTuple(args, "Oddl", &Region1,&Sigma1,&Theta1,&Iterations1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingMcf(*(((PyHirschRegion*)Region1)->Region),Sigma1,Theta1,Iterations1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Region,&Sigma,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingMcf(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    double Factor1;
    long MaskWidth1;
    PyObject* Factor;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth1,&MaskHeight1,&Factor1)) {
            return PyHirschImage_FromHImage(self->Image->Emphasize(MaskWidth1,MaskHeight1,Factor1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskWidth,&MaskHeight,&Factor)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(Factor)) {
                return PyHirschImage_FromHImage(self->Image->Emphasize(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)Factor)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    double Sigma1;
    PyObject* Region1;
    PyObject* Rho;
    PyObject* Theta;
    PyObject* Region;
    double Theta1;
    long Iterations1;
    PyObject* Sigma;
    double Rho1;
    
    try {
        if (PyArg_ParseTuple(args, "Odddl", &Region1,&Sigma1,&Rho1,&Theta1,&Iterations1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCed(*(((PyHirschRegion*)Region1)->Region),Sigma1,Rho1,Theta1,Iterations1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Region,&Sigma,&Rho,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Rho) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingCed(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Rho)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* VectorField1;
    PyObject* VectorField;
    
    try {
        if (PyArg_ParseTuple(args, "O", &VectorField1)) {
            if (PyHirschImageArray_Check(VectorField1)) {
                return PyHirschImage_FromHImage(self->Image->UnwarpImageVectorField(*(((PyHirschImageArray*)VectorField1)->ImageArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &VectorField)) {
            if (PyHirschImage_Check(VectorField)) {
                return PyHirschImage_FromHImage(self->Image->UnwarpImageVectorField(*(((PyHirschImage*)VectorField)->Image)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImage_FromHImage(self->Image->PolarTransImage(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImage(Row1,Column1,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenGaussFilter(PyHirschImage*, PyObject *args)
{
    long Width1;
    PyObject* Sigma2;
    char* Mode1;
    double Phi1;
    PyObject* Sigma1;
    char* Norm1;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Phi;
    PyObject* Mode;
    double Sigma11;
    PyObject* Width;
    double Sigma21;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Sigma1,&Sigma2,&Phi,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(Sigma1) && PyHirschTuple_Check(Sigma2) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenGaussFilter(*(((PyHirschTuple*)Sigma1)->Tuple),*(((PyHirschTuple*)Sigma2)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddssll", &Sigma11,&Sigma21,&Phi1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenGaussFilter(Sigma11,Sigma21,Phi1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MedianSeparate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GetImagePointer1Rect(PyHirschImage*self, PyObject *)
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
PyHirschImage_BitNot(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &k)) {
            return PyHirschPixVal_FromHPixVal(self->Image->GetPixVal(k));
        }
        PyErr_Clear();
        
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
    long Exponent1;
    PyObject* Norm;
    char* Mode1;
    PyObject* Exponent;
    char* Norm1;
    PyObject* Direction;
    char* Direction1;
    PyObject* ResultType;
    char* ResultType1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Direction,&Exponent,&Norm,&Mode,&ResultType)) {
            if (PyHirschTuple_Check(Direction) && PyHirschTuple_Check(Exponent) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(ResultType)) {
                return PyHirschImage_FromHImage(self->Image->FftGeneric(*(((PyHirschTuple*)Direction)->Tuple),*(((PyHirschTuple*)Exponent)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)ResultType)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slsss", &Direction1,&Exponent1,&Norm1,&Mode1,&ResultType1)) {
            return PyHirschImage_FromHImage(self->Image->FftGeneric(Direction1,Exponent1,Norm1,Mode1,ResultType1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MinSize;
    double Threshold1;
    double MinGray1;
    PyObject* Threshold;
    PyObject* MinGray;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MinSize,&MinGray,&Threshold)) {
            if (PyHirschTuple_Check(MinSize) && PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->DualThreshold(*(((PyHirschTuple*)MinSize)->Tuple),*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldd", &MinSize1,&MinGray1,&Threshold1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->DualThreshold(MinSize1,MinGray1,Threshold1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DualThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageToWorldPlaneMap(PyHirschImage*, PyObject *args)
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
                return PyHirschImage_FromHImage(Halcon::HImage::GenImageToWorldPlaneMap(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)WorldPose)->Tuple),*(((PyHirschTuple*)WidthIn)->Tuple),*(((PyHirschTuple*)HeightIn)->Tuple),*(((PyHirschTuple*)WidthMapped)->Tuple),*(((PyHirschTuple*)HeightMapped)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    double Sigma1;
    PyObject* Rho;
    PyObject* Theta;
    double Theta1;
    long Iterations1;
    PyObject* Sigma;
    double Rho1;
    
    try {
        if (PyArg_ParseTuple(args, "dddl", &Sigma1,&Rho1,&Theta1,&Iterations1)) {
            return PyHirschImage_FromHImage(self->Image->CoherenceEnhancingDiff(Sigma1,Rho1,Theta1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Sigma,&Rho,&Theta,&Iterations)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Rho) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImage_FromHImage(self->Image->CoherenceEnhancingDiff(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Rho)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* GenParamNames1;
    PyObject* DataCodeHandle1;
    PyObject* DataCodeHandle;
    PyObject* GenParamValues;
    PyObject* GenParamNames;
    long GenParamValues1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &DataCodeHandle,&GenParamNames,&GenParamValues)) {
            if (PyHirschDataCode2D_Check(DataCodeHandle) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                Halcon::HTuple ResultHandles;
                Halcon::HTuple DecodedDataStrings;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->Image->FindDataCode2d(*(((PyHirschDataCode2D*)DataCodeHandle)->DataCode2D),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple),&ResultHandles,&DecodedDataStrings)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osl", &DataCodeHandle1,&GenParamNames1,&GenParamValues1)) {
            if (PyHirschDataCode2D_Check(DataCodeHandle1)) {
                Halcon::HTuple ResultHandles1;
                Halcon::HTuple DecodedDataStrings1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->Image->FindDataCode2d(*(((PyHirschDataCode2D*)DataCodeHandle1)->DataCode2D),GenParamNames1,GenParamValues1,&ResultHandles1,&DecodedDataStrings1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ResultHandles1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DecodedDataStrings1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double Blurring1;
    PyObject* Blurring;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Blurring1)) {
            return PyHirschImage_FromHImage(self->Image->SimulateDefocus(Blurring1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Blurring)) {
            if (PyHirschTuple_Check(Blurring)) {
                return PyHirschImage_FromHImage(self->Image->SimulateDefocus(*(((PyHirschTuple*)Blurring)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Interpolation;
    PyObject* CFAType;
    char* Interpolation1;
    char* CFAType1;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &CFAType1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->CfaToRgb(CFAType1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &CFAType,&Interpolation)) {
            if (PyHirschTuple_Check(CFAType) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->CfaToRgb(*(((PyHirschTuple*)CFAType)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CfaToRgb()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenLowpass(PyHirschImage*, PyObject *args)
{
    long Width1;
    PyObject* Frequency;
    char* Mode1;
    char* Norm1;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Mode;
    double Frequency1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Frequency,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(Frequency) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenLowpass(*(((PyHirschTuple*)Frequency)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssll", &Frequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenLowpass(Frequency1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType1)) {
            return PyHirschImage_FromHImage(self->Image->BandpassImage(FilterType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FilterType)) {
            if (PyHirschTuple_Check(FilterType)) {
                return PyHirschImage_FromHImage(self->Image->BandpassImage(*(((PyHirschTuple*)FilterType)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.BandpassImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Width(PyHirschImage*self, PyObject *)
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
    PyObject* TileOrder;
    long NumColumns1;
    char* TileOrder1;
    PyObject* NumColumns;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns1,&TileOrder1)) {
            return PyHirschImage_FromHImage(self->Image->TileChannels(NumColumns1,TileOrder1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &NumColumns,&TileOrder)) {
            if (PyHirschTuple_Check(NumColumns) && PyHirschTuple_Check(TileOrder)) {
                return PyHirschImage_FromHImage(self->Image->TileChannels(*(((PyHirschTuple*)NumColumns)->Tuple),*(((PyHirschTuple*)TileOrder)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TileChannels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ClassDBID(PyHirschImage*self, PyObject *)
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth1,&MaskHeight1)) {
            return PyHirschImage_FromHImage(self->Image->BinomialFilter(MaskWidth1,MaskHeight1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskWidth,&MaskHeight)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight)) {
                return PyHirschImage_FromHImage(self->Image->BinomialFilter(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->HighpassImage(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->HighpassImage(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.HighpassImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PrincipalComp(PyHirschImage*self, PyObject *)
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
    PyObject* Column;
    PyObject* Row;
    PyObject* Interpolation;
    double Column1;
    char* Interpolation1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Row,&Column,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschTuple_FromHTuple(self->Image->GetGrayvalInterpolated(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &Row1,&Column1,&Interpolation1)) {
            return PyHirschTuple_FromHTuple(self->Image->GetGrayvalInterpolated(Row1,Column1,Interpolation1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GetGrayvalInterpolated()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PlateausCenter(PyHirschImage*self, PyObject *)
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
PyHirschImage_NumData(PyHirschImage*, PyObject *)
{
    try {
        return PyInt_FromLong(long(Halcon::HImage::NumData()));
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConnectGridPoints()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PrewittAmp(PyHirschImage*self, PyObject *)
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
PyHirschImage_AbsImage(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PhotStereo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ComplexToReal(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Alpha;
    char* Filter1;
    PyObject* Filter;
    double Alpha1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Filter1,&Alpha1)) {
            return PyHirschImage_FromHImage(self->Image->SmoothImage(Filter1,Alpha1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Filter,&Alpha)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Alpha)) {
                return PyHirschImage_FromHImage(self->Image->SmoothImage(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SmoothImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FreiAmp(PyHirschImage*self, PyObject *)
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
    long NumClasses1;
    long Threshold1;
    PyObject* Image21;
    PyObject* Image2;
    PyObject* Threshold;
    PyObject* NumClasses;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Threshold,&NumClasses)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Threshold) && PyHirschTuple_Check(NumClasses)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->Class2dimUnsup(*(((PyHirschImage*)Image2)->Image),*(((PyHirschTuple*)Threshold)->Tuple),*(((PyHirschTuple*)NumClasses)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image21,&Threshold1,&NumClasses1)) {
            if (PyHirschImage_Check(Image21)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->Class2dimUnsup(*(((PyHirschImage*)Image21)->Image),Threshold1,NumClasses1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* Sigma;
    double Sigma1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "dl", &Sigma1,&Iterations1)) {
            return PyHirschImage_FromHImage(self->Image->IsotropicDiffusion(Sigma1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Sigma,&Iterations)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImage_FromHImage(self->Image->IsotropicDiffusion(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImage_FromHImage(self->Image->Rectangle1Domain(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschImage_FromHImage(self->Image->Rectangle1Domain(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
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
    PyObject* Row1;
    PyObject* Col2;
    long Col11;
    PyObject* Col1;
    long Row11;
    long Row21;
    long Width1;
    long OffsetRow1;
    long Height1;
    long OffsetCol1;
    PyObject* Height;
    PyObject* OffsetCol;
    PyObject* Row2;
    PyObject* OffsetRow;
    PyObject* Width;
    long Col21;
    
    try {
        if (PyArg_ParseTuple(args, "llllllll", &OffsetRow1,&OffsetCol1,&Row11,&Col11,&Row21,&Col21,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->TileImagesOffset(OffsetRow1,OffsetCol1,Row11,Col11,Row21,Col21,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &OffsetRow,&OffsetCol,&Row1,&Col1,&Row2,&Col2,&Width,&Height)) {
            if (PyHirschTuple_Check(OffsetRow) && PyHirschTuple_Check(OffsetCol) && PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Col1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Col2) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->TileImagesOffset(*(((PyHirschTuple*)OffsetRow)->Tuple),*(((PyHirschTuple*)OffsetCol)->Tuple),*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Col1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Col2)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.TileImagesOffset()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RobinsonAmp(PyHirschImage*self, PyObject *)
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
PyHirschImage_LocalMin(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Find1dBarCodeRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_SqrtImage(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenBinocularProjRectification(PyHirschImage*, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(Halcon::HImage::GenBinocularProjRectification(&Map2,*(((PyHirschTuple*)FMatrix)->Tuple),*(((PyHirschTuple*)CovFMat)->Tuple),*(((PyHirschTuple*)Width1)->Tuple),*(((PyHirschTuple*)Height1)->Tuple),*(((PyHirschTuple*)Width2)->Tuple),*(((PyHirschTuple*)Height2)->Tuple),*(((PyHirschTuple*)SubSampling)->Tuple),*(((PyHirschTuple*)Mapping)->Tuple),&CovFMatRect,&H1,&H2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CovFMatRect));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(H1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(H2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double SigmaSmooth1;
    PyObject* SigmaSmooth;
    double SigmaGrad1;
    PyObject* Alpha;
    PyObject* SigmaGrad;
    double Threshold1;
    PyObject* Threshold;
    double Alpha1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &SigmaGrad,&SigmaSmooth,&Alpha,&Threshold)) {
            if (PyHirschTuple_Check(SigmaGrad) && PyHirschTuple_Check(SigmaSmooth) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(Threshold)) {
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsHarris(*(((PyHirschTuple*)SigmaGrad)->Tuple),*(((PyHirschTuple*)SigmaSmooth)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &SigmaGrad1,&SigmaSmooth1,&Alpha1,&Threshold1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsHarris(SigmaGrad1,SigmaSmooth1,Alpha1,Threshold1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsHarris()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CountChannels(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenImageSurfaceFirstOrder(PyHirschImage*, PyObject *args)
{
    char* Type1;
    PyObject* Row;
    PyObject* Gamma;
    PyObject* Alpha;
    long Height1;
    long Width1;
    double Gamma1;
    PyObject* Type;
    double Alpha1;
    double Beta1;
    PyObject* Height;
    PyObject* Col;
    double Col1;
    double Row1;
    PyObject* Beta;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Type,&Alpha,&Beta,&Gamma,&Row,&Col,&Width,&Height)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(Beta) && PyHirschTuple_Check(Gamma) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImageSurfaceFirstOrder(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)Beta)->Tuple),*(((PyHirschTuple*)Gamma)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddddll", &Type1,&Alpha1,&Beta1,&Gamma1,&Row1,&Col1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImageSurfaceFirstOrder(Type1,Alpha1,Beta1,Gamma1,Row1,Col1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    PyObject* Psf1;
    PyObject* NoiseRegion;
    PyObject* NoiseRegion1;
    long MaskHeight1;
    PyObject* Psf;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "OOll", &Psf1,&NoiseRegion1,&MaskWidth1,&MaskHeight1)) {
            if (PyHirschImage_Check(Psf1) && PyHirschRegion_Check(NoiseRegion1)) {
                return PyHirschImage_FromHImage(self->Image->WienerFilterNi(*(((PyHirschImage*)Psf1)->Image),*(((PyHirschRegion*)NoiseRegion1)->Region),MaskWidth1,MaskHeight1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Psf,&NoiseRegion,&MaskWidth,&MaskHeight)) {
            if (PyHirschImage_Check(Psf) && PyHirschRegion_Check(NoiseRegion) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight)) {
                return PyHirschImage_FromHImage(self->Image->WienerFilterNi(*(((PyHirschImage*)Psf)->Image),*(((PyHirschRegion*)NoiseRegion)->Region),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WienerFilterNi()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Plateaus(PyHirschImage*self, PyObject *)
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
    double MinScore1;
    PyObject* ModelIDs;
    PyObject* MinScore;
    PyObject* ScaleMax;
    PyObject* NumMatches;
    double AngleStart1;
    PyObject* NumLevels;
    double Greediness1;
    long ModelIDs1;
    long NumLevels1;
    double AngleExtent1;
    PyObject* SubPixel;
    double ScaleMax1;
    PyObject* MaxOverlap;
    char* SubPixel1;
    PyObject* AngleStart;
    double ScaleMin1;
    PyObject* ScaleMin;
    PyObject* Greediness;
    PyObject* AngleExtent;
    long NumMatches1;
    double MaxOverlap1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &ModelIDs,&AngleStart,&AngleExtent,&ScaleMin,&ScaleMax,&MinScore,&NumMatches,&MaxOverlap,&SubPixel,&NumLevels,&Greediness)) {
            if (PyHirschTuple_Check(ModelIDs) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtent) && PyHirschTuple_Check(ScaleMin) && PyHirschTuple_Check(ScaleMax) && PyHirschTuple_Check(MinScore) && PyHirschTuple_Check(NumMatches) && PyHirschTuple_Check(MaxOverlap) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(Greediness)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Scale;
                Halcon::HTuple Score;
                Halcon::HTuple Model;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindScaledShapeModels(*(((PyHirschTuple*)ModelIDs)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)ScaleMin)->Tuple),*(((PyHirschTuple*)ScaleMax)->Tuple),*(((PyHirschTuple*)MinScore)->Tuple),*(((PyHirschTuple*)NumMatches)->Tuple),*(((PyHirschTuple*)MaxOverlap)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)Greediness)->Tuple),&Column,&Angle,&Scale,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Scale));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldddddldsld", &ModelIDs1,&AngleStart1,&AngleExtent1,&ScaleMin1,&ScaleMax1,&MinScore1,&NumMatches1,&MaxOverlap1,&SubPixel1,&NumLevels1,&Greediness1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                Halcon::HTuple Angle1;
                Halcon::HTuple Scale1;
                Halcon::HTuple Score1;
                Halcon::HTuple Model1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindScaledShapeModels(ModelIDs1,AngleStart1,AngleExtent1,ScaleMin1,ScaleMax1,MinScore1,NumMatches1,MaxOverlap1,SubPixel1,NumLevels1,Greediness1,&Column1,&Angle1,&Scale1,&Score1,&Model1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Scale1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Score1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Model1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindScaledShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenPsfMotion(PyHirschImage*, PyObject *args)
{
    double Blurring1;
    PyObject* Angle;
    PyObject* PSFheight;
    PyObject* Type;
    long Type1;
    PyObject* Blurring;
    long PSFwidth1;
    long PSFheight1;
    PyObject* PSFwidth;
    long Angle1;
    
    try {
        if (PyArg_ParseTuple(args, "lldll", &PSFwidth1,&PSFheight1,&Blurring1,&Angle1,&Type1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenPsfMotion(PSFwidth1,PSFheight1,Blurring1,Angle1,Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &PSFwidth,&PSFheight,&Blurring,&Angle,&Type)) {
            if (PyHirschTuple_Check(PSFwidth) && PyHirschTuple_Check(PSFheight) && PyHirschTuple_Check(Blurring) && PyHirschTuple_Check(Angle) && PyHirschTuple_Check(Type)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenPsfMotion(*(((PyHirschTuple*)PSFwidth)->Tuple),*(((PyHirschTuple*)PSFheight)->Tuple),*(((PyHirschTuple*)Blurring)->Tuple),*(((PyHirschTuple*)Angle)->Tuple),*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImage_FromHImage(self->Image->GrayDilationShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayDilationShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaxThresh1;
    long MaskHeight1;
    PyObject* MinThresh;
    long MinThresh1;
    long MaskWidth1;
    PyObject* MaxThresh;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &MaskWidth1,&MaskHeight1,&MinThresh1,&MaxThresh1)) {
            return PyHirschImage_FromHImage(self->Image->MeanSp(MaskWidth1,MaskHeight1,MinThresh1,MaxThresh1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MinThresh) && PyHirschTuple_Check(MaxThresh)) {
                return PyHirschImage_FromHImage(self->Image->MeanSp(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MinThresh)->Tuple),*(((PyHirschTuple*)MaxThresh)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Class;
    char* Class1;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Class1,&FileName1)) {
            self->Image->WriteOcrTrainfImage(Class1,FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Class,&FileName)) {
            if (PyHirschTuple_Check(Class) && PyHirschTuple_Check(FileName)) {
                self->Image->WriteOcrTrainfImage(*(((PyHirschTuple*)Class)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Size1)) {
            return PyHirschImage_FromHImage(self->Image->GaussImage(Size1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Size)) {
            if (PyHirschTuple_Check(Size)) {
                return PyHirschImage_FromHImage(self->Image->GaussImage(*(((PyHirschTuple*)Size)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GaussImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBandfilter(PyHirschImage*, PyObject *args)
{
    long Width1;
    char* Mode1;
    char* Norm1;
    PyObject* MinFrequency;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Mode;
    PyObject* MaxFrequency;
    double MinFrequency1;
    double MaxFrequency1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &MinFrequency,&MaxFrequency,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(MinFrequency) && PyHirschTuple_Check(MaxFrequency) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenBandfilter(*(((PyHirschTuple*)MinFrequency)->Tuple),*(((PyHirschTuple*)MaxFrequency)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddssll", &MinFrequency1,&MaxFrequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenBandfilter(MinFrequency1,MaxFrequency1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    double MinScore1;
    PyObject* ModelIDs;
    long NumMatches1;
    PyObject* ScaleCMax;
    PyObject* MinScore;
    double Greediness1;
    PyObject* NumMatches;
    double AngleStart1;
    PyObject* NumLevels;
    double ScaleCMax1;
    PyObject* ScaleRMin;
    PyObject* ScaleRMax;
    long ModelIDs1;
    long NumLevels1;
    double AngleExtent1;
    PyObject* SubPixel;
    PyObject* MaxOverlap;
    char* SubPixel1;
    PyObject* AngleStart;
    double ScaleRMax1;
    PyObject* Greediness;
    PyObject* AngleExtent;
    double ScaleCMin1;
    PyObject* ScaleCMin;
    double ScaleRMin1;
    double MaxOverlap1;
    
    try {
        if (PyArg_ParseTuple(args, "ldddddddldsld", &ModelIDs1,&AngleStart1,&AngleExtent1,&ScaleRMin1,&ScaleRMax1,&ScaleCMin1,&ScaleCMax1,&MinScore1,&NumMatches1,&MaxOverlap1,&SubPixel1,&NumLevels1,&Greediness1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                Halcon::HTuple Angle1;
                Halcon::HTuple ScaleR1;
                Halcon::HTuple ScaleC1;
                Halcon::HTuple Score1;
                Halcon::HTuple Model1;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindAnisoShapeModels(ModelIDs1,AngleStart1,AngleExtent1,ScaleRMin1,ScaleRMax1,ScaleCMin1,ScaleCMax1,MinScore1,NumMatches1,MaxOverlap1,SubPixel1,NumLevels1,Greediness1,&Column1,&Angle1,&ScaleR1,&ScaleC1,&Score1,&Model1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ScaleR1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(ScaleC1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Score1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Model1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOO", &ModelIDs,&AngleStart,&AngleExtent,&ScaleRMin,&ScaleRMax,&ScaleCMin,&ScaleCMax,&MinScore,&NumMatches,&MaxOverlap,&SubPixel,&NumLevels,&Greediness)) {
            if (PyHirschTuple_Check(ModelIDs) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtent) && PyHirschTuple_Check(ScaleRMin) && PyHirschTuple_Check(ScaleRMax) && PyHirschTuple_Check(ScaleCMin) && PyHirschTuple_Check(ScaleCMax) && PyHirschTuple_Check(MinScore) && PyHirschTuple_Check(NumMatches) && PyHirschTuple_Check(MaxOverlap) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(Greediness)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple ScaleR;
                Halcon::HTuple ScaleC;
                Halcon::HTuple Score;
                Halcon::HTuple Model;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindAnisoShapeModels(*(((PyHirschTuple*)ModelIDs)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)ScaleRMin)->Tuple),*(((PyHirschTuple*)ScaleRMax)->Tuple),*(((PyHirschTuple*)ScaleCMin)->Tuple),*(((PyHirschTuple*)ScaleCMax)->Tuple),*(((PyHirschTuple*)MinScore)->Tuple),*(((PyHirschTuple*)NumMatches)->Tuple),*(((PyHirschTuple*)MaxOverlap)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)Greediness)->Tuple),&Column,&Angle,&ScaleR,&ScaleC,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ScaleR));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(ScaleC));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindAnisoShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenPsfDefocus(PyHirschImage*, PyObject *args)
{
    double Blurring1;
    PyObject* PSFheight;
    PyObject* Blurring;
    long PSFwidth1;
    long PSFheight1;
    PyObject* PSFwidth;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &PSFwidth,&PSFheight,&Blurring)) {
            if (PyHirschTuple_Check(PSFwidth) && PyHirschTuple_Check(PSFheight) && PyHirschTuple_Check(Blurring)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenPsfDefocus(*(((PyHirschTuple*)PSFwidth)->Tuple),*(((PyHirschTuple*)PSFheight)->Tuple),*(((PyHirschTuple*)Blurring)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lld", &PSFwidth1,&PSFheight1,&Blurring1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenPsfDefocus(PSFwidth1,PSFheight1,Blurring1));
        }
        PyErr_Clear();
        
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
    double ScaleWidth1;
    PyObject* Interpolation;
    PyObject* ScaleWidth;
    double ScaleHeight1;
    PyObject* ScaleHeight;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ScaleWidth,&ScaleHeight,&Interpolation)) {
            if (PyHirschTuple_Check(ScaleWidth) && PyHirschTuple_Check(ScaleHeight) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->ZoomImageFactor(*(((PyHirschTuple*)ScaleWidth)->Tuple),*(((PyHirschTuple*)ScaleHeight)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &ScaleWidth1,&ScaleHeight1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageFactor(ScaleWidth1,ScaleHeight1,Interpolation1));
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* ImageTemplate;
    PyObject* Mode;
    PyObject* ImageTemplate1;
    PyObject* RegionOfInterest;
    PyObject* RegionOfInterest1;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &RegionOfInterest1,&ImageTemplate1,&Mode1)) {
            if (PyHirschRegion_Check(RegionOfInterest1) && PyHirschImage_Check(ImageTemplate1)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatch(*(((PyHirschRegion*)RegionOfInterest1)->Region),*(((PyHirschImage*)ImageTemplate1)->Image),Mode1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &RegionOfInterest,&ImageTemplate,&Mode)) {
            if (PyHirschRegion_Check(RegionOfInterest) && PyHirschImage_Check(ImageTemplate) && PyHirschTuple_Check(Mode)) {
                return PyHirschImage_FromHImage(self->Image->ExhaustiveMatch(*(((PyHirschRegion*)RegionOfInterest)->Region),*(((PyHirschImage*)ImageTemplate)->Image),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* FillColor;
    long FillColor1;
    PyObject* Format;
    char* Format1;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &Format1,&FillColor1,&FileName1)) {
            self->Image->WriteImage(Format1,FillColor1,FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Format,&FillColor,&FileName)) {
            if (PyHirschTuple_Check(Format) && PyHirschTuple_Check(FillColor) && PyHirschTuple_Check(FileName)) {
                self->Image->WriteImage(*(((PyHirschTuple*)Format)->Tuple),*(((PyHirschTuple*)FillColor)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.WriteImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ZeroCrossing(PyHirschImage*self, PyObject *)
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImage_FromHImage(self->Image->GrayClosingRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayClosingRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AffineTransImageSize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenDiscSe(PyHirschImage*, PyObject *args)
{
    char* Type1;
    PyObject* Smax;
    double Smax1;
    long Width1;
    PyObject* Type;
    PyObject* Height;
    long Height1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "slld", &Type1,&Width1,&Height1,&Smax1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenDiscSe(Type1,Width1,Height1,Smax1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Type,&Width,&Height,&Smax)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Smax)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenDiscSe(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Smax)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskSize;
    double Low1;
    PyObject* High;
    double High1;
    char* LightDark1;
    long MaskSize1;
    PyObject* LightDark;
    PyObject* Low;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &MaskSize,&Low,&High,&LightDark)) {
            if (PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High) && PyHirschTuple_Check(LightDark)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesFacet(*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),*(((PyHirschTuple*)LightDark)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldds", &MaskSize1,&Low1,&High1,&LightDark1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesFacet(MaskSize1,Low1,High1,LightDark1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Find1dBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FreiDir(PyHirschImage*self, PyObject *)
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImage_FromHImage(self->Image->GrayDilationRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImage_FromHImage(self->Image->GrayDilationRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayDilationRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PixType(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Interpolation;
    long Height1;
    PyObject* Height;
    char* Interpolation1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->ZoomImageSize(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lls", &Width1,&Height1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->ZoomImageSize(Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        
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
    double Sigma1;
    double Percent1;
    PyObject* Percent;
    PyObject* HistoRegion;
    PyObject* Sigma;
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
        if (PyArg_ParseTuple(args, "OOO", &HistoRegion,&Sigma,&Percent)) {
            if (PyHirschRegion_Check(HistoRegion) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Percent)) {
                Hlong Threshold;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Image->CharThreshold(*(((PyHirschRegion*)HistoRegion)->Region),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Percent)->Tuple),&Threshold)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Threshold)));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CharThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ScaleImageMax(PyHirschImage*self, PyObject *)
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
    PyObject* Shift;
    long Shift1;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift1)) {
            return PyHirschImage_FromHImage(self->Image->BitRshift(Shift1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Shift)) {
            if (PyHirschTuple_Check(Shift)) {
                return PyHirschImage_FromHImage(self->Image->BitRshift(*(((PyHirschTuple*)Shift)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* ExpandType1;
    PyObject* RowColumn;
    long Coordinate1;
    PyObject* ExpandType;
    char* RowColumn1;
    PyObject* Coordinate;
    PyObject* Threshold;
    double Threshold1;
    
    try {
        if (PyArg_ParseTuple(args, "lssd", &Coordinate1,&ExpandType1,&RowColumn1,&Threshold1)) {
            return PyHirschRegion_FromHRegion(self->Image->ExpandLine(Coordinate1,ExpandType1,RowColumn1,Threshold1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Coordinate,&ExpandType,&RowColumn,&Threshold)) {
            if (PyHirschTuple_Check(Coordinate) && PyHirschTuple_Check(ExpandType) && PyHirschTuple_Check(RowColumn) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Image->ExpandLine(*(((PyHirschTuple*)Coordinate)->Tuple),*(((PyHirschTuple*)ExpandType)->Tuple),*(((PyHirschTuple*)RowColumn)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskSize;
    double SigmaD1;
    double SigmaW1;
    PyObject* MinGrad;
    char* Subpix1;
    PyObject* Subpix;
    double MinApparentness1;
    double MinAngle1;
    PyObject* SigmaD;
    double MinGrad1;
    PyObject* SigmaW;
    PyObject* MinApparentness;
    long MaskSize1;
    PyObject* MinAngle;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &MaskSize,&SigmaW,&SigmaD,&MinGrad,&MinApparentness,&MinAngle,&Subpix)) {
            if (PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(SigmaW) && PyHirschTuple_Check(SigmaD) && PyHirschTuple_Check(MinGrad) && PyHirschTuple_Check(MinApparentness) && PyHirschTuple_Check(MinAngle) && PyHirschTuple_Check(Subpix)) {
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsSojka(*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)SigmaW)->Tuple),*(((PyHirschTuple*)SigmaD)->Tuple),*(((PyHirschTuple*)MinGrad)->Tuple),*(((PyHirschTuple*)MinApparentness)->Tuple),*(((PyHirschTuple*)MinAngle)->Tuple),*(((PyHirschTuple*)Subpix)->Tuple),&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lddddds", &MaskSize1,&SigmaW1,&SigmaD1,&MinGrad1,&MinApparentness1,&MinAngle1,&Subpix1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsSojka(MaskSize1,SigmaW1,SigmaD1,MinGrad1,MinApparentness1,MinAngle1,Subpix1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PointsSojka()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageInterleaved(PyHirschImage*, PyObject *args)
{
    PyObject* OriginalHeight;
    long BitShift1;
    PyObject* OriginalWidth;
    long ImageWidth1;
    PyObject* ImageHeight;
    long ImageHeight1;
    long OriginalWidth1;
    PyObject* ColorFormat;
    PyObject* PixelPointer;
    PyObject* Alignment;
    PyObject* BitsPerChannel;
    long PixelPointer1;
    PyObject* BitShift;
    long StartColumn1;
    PyObject* Type;
    long BitsPerChannel1;
    PyObject* StartRow;
    long StartRow1;
    long Alignment1;
    char* Type1;
    long OriginalHeight1;
    PyObject* StartColumn;
    PyObject* ImageWidth;
    char* ColorFormat1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOO", &PixelPointer,&ColorFormat,&OriginalWidth,&OriginalHeight,&Alignment,&Type,&ImageWidth,&ImageHeight,&StartRow,&StartColumn,&BitsPerChannel,&BitShift)) {
            if (PyHirschTuple_Check(PixelPointer) && PyHirschTuple_Check(ColorFormat) && PyHirschTuple_Check(OriginalWidth) && PyHirschTuple_Check(OriginalHeight) && PyHirschTuple_Check(Alignment) && PyHirschTuple_Check(Type) && PyHirschTuple_Check(ImageWidth) && PyHirschTuple_Check(ImageHeight) && PyHirschTuple_Check(StartRow) && PyHirschTuple_Check(StartColumn) && PyHirschTuple_Check(BitsPerChannel) && PyHirschTuple_Check(BitShift)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImageInterleaved(*(((PyHirschTuple*)PixelPointer)->Tuple),*(((PyHirschTuple*)ColorFormat)->Tuple),*(((PyHirschTuple*)OriginalWidth)->Tuple),*(((PyHirschTuple*)OriginalHeight)->Tuple),*(((PyHirschTuple*)Alignment)->Tuple),*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)ImageWidth)->Tuple),*(((PyHirschTuple*)ImageHeight)->Tuple),*(((PyHirschTuple*)StartRow)->Tuple),*(((PyHirschTuple*)StartColumn)->Tuple),*(((PyHirschTuple*)BitsPerChannel)->Tuple),*(((PyHirschTuple*)BitShift)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lslllsllllll", &PixelPointer1,&ColorFormat1,&OriginalWidth1,&OriginalHeight1,&Alignment1,&Type1,&ImageWidth1,&ImageHeight1,&StartRow1,&StartColumn1,&BitsPerChannel1,&BitShift1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImageInterleaved(PixelPointer1,ColorFormat1,OriginalWidth1,OriginalHeight1,Alignment1,Type1,ImageWidth1,ImageHeight1,StartRow1,StartColumn1,BitsPerChannel1,BitShift1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* Mode1;
    PyObject* Region1;
    PyObject* Rho;
    PyObject* Theta;
    double Contrast1;
    PyObject* Region;
    PyObject* Contrast;
    PyObject* Mode;
    long Iterations1;
    double Rho1;
    double Theta1;
    
    try {
        if (PyArg_ParseTuple(args, "Osddld", &Region1,&Mode1,&Contrast1,&Theta1,&Iterations1,&Rho1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingAniso(*(((PyHirschRegion*)Region1)->Region),Mode1,Contrast1,Theta1,Iterations1,Rho1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Region,&Mode,&Contrast,&Theta,&Iterations,&Rho)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Contrast) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Rho)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingAniso(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Rho)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double Mult3;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Mult;
    PyObject* Image23;
    PyObject* Image22;
    PyObject* Mult2;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image23,&Mult3)) {
            if (PyHirschImageArray_Check(Image23)) {
                return PyHirschImage_FromHImage(self->Image->AbsDiffImage(*(((PyHirschImageArray*)Image23)->ImageArray),Mult3));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image22,&Mult2)) {
            if (PyHirschImageArray_Check(Image22) && PyHirschTuple_Check(Mult2)) {
                return PyHirschImage_FromHImage(self->Image->AbsDiffImage(*(((PyHirschImageArray*)Image22)->ImageArray),*(((PyHirschTuple*)Mult2)->Tuple)));
            }
        }
        PyErr_Clear();
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
        PyErr_Clear();
        
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
    double Offset1;
    PyObject* Offset2;
    PyObject* ThresholdImage;
    PyObject* ThresholdImage2;
    PyObject* ThresholdImage3;
    PyObject* LightDark2;
    char* LightDark1;
    PyObject* ThresholdImage1;
    char* LightDark3;
    PyObject* Offset;
    double Offset3;
    PyObject* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ThresholdImage,&Offset,&LightDark)) {
            if (PyHirschImage_Check(ThresholdImage) && PyHirschTuple_Check(Offset) && PyHirschTuple_Check(LightDark)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImage*)ThresholdImage)->Image),*(((PyHirschTuple*)Offset)->Tuple),*(((PyHirschTuple*)LightDark)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &ThresholdImage1,&Offset1,&LightDark1)) {
            if (PyHirschImage_Check(ThresholdImage1)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImage*)ThresholdImage1)->Image),Offset1,LightDark1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &ThresholdImage3,&Offset3,&LightDark3)) {
            if (PyHirschImageArray_Check(ThresholdImage3)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImageArray*)ThresholdImage3)->ImageArray),Offset3,LightDark3));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &ThresholdImage2,&Offset2,&LightDark2)) {
            if (PyHirschImageArray_Check(ThresholdImage2) && PyHirschTuple_Check(Offset2) && PyHirschTuple_Check(LightDark2)) {
                return PyHirschRegion_FromHRegion(self->Image->DynThreshold(*(((PyHirschImageArray*)ThresholdImage2)->ImageArray),*(((PyHirschTuple*)Offset2)->Tuple),*(((PyHirschTuple*)LightDark2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Sigma;
    double Sigma1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->AutoThreshold(Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Sigma)) {
            if (PyHirschTuple_Check(Sigma)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->AutoThreshold(*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Percent;
    char* Method1;
    double Percent1;
    PyObject* Method;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Method,&Percent)) {
            if (PyHirschTuple_Check(Method) && PyHirschTuple_Check(Percent)) {
                return PyFloat_FromDouble(self->Image->EstimateNoise(*(((PyHirschTuple*)Method)->Tuple),*(((PyHirschTuple*)Percent)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Method1,&Percent1)) {
            return PyFloat_FromDouble(self->Image->EstimateNoise(Method1,Percent1));
        }
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ClassNdimNorm(PyHirschImage*self, PyObject *args)
{
    PyObject* Radius;
    double Radius1;
    char* SingleMultiple1;
    char* Metric1;
    PyObject* Metric;
    PyObject* Center;
    PyObject* SingleMultiple;
    double Center1;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Metric1,&SingleMultiple1,&Radius1,&Center1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->ClassNdimNorm(Metric1,SingleMultiple1,Radius1,Center1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Metric,&SingleMultiple,&Radius,&Center)) {
            if (PyHirschTuple_Check(Metric) && PyHirschTuple_Check(SingleMultiple) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(Center)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->ClassNdimNorm(*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)SingleMultiple)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)Center)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType1,&Size1)) {
            return PyHirschImage_FromHImage(self->Image->SobelAmp(FilterType1,Size1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &FilterType,&Size)) {
            if (PyHirschTuple_Check(FilterType) && PyHirschTuple_Check(Size)) {
                return PyHirschImage_FromHImage(self->Image->SobelAmp(*(((PyHirschTuple*)FilterType)->Tuple),*(((PyHirschTuple*)Size)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PointsHarrisBinomial(PyHirschImage*self, PyObject *args)
{
    long MaskSizeGrd1;
    PyObject* Subpix;
    long MaskSizeSmooth1;
    PyObject* Alpha;
    PyObject* MaskSizeSmooth;
    double Threshold1;
    char* Subpix1;
    PyObject* Threshold;
    double Alpha1;
    PyObject* MaskSizeGrd;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskSizeGrd1,&MaskSizeSmooth1,&Alpha1,&Threshold1,&Subpix1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsHarrisBinomial(MaskSizeGrd1,MaskSizeSmooth1,Alpha1,Threshold1,Subpix1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &MaskSizeGrd,&MaskSizeSmooth,&Alpha,&Threshold,&Subpix)) {
            if (PyHirschTuple_Check(MaskSizeGrd) && PyHirschTuple_Check(MaskSizeSmooth) && PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(Threshold) && PyHirschTuple_Check(Subpix)) {
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->PointsHarrisBinomial(*(((PyHirschTuple*)MaskSizeGrd)->Tuple),*(((PyHirschTuple*)MaskSizeSmooth)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),*(((PyHirschTuple*)Subpix)->Tuple),&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Contrast;
    long NumLevels1;
    PyObject* NumLevels;
    long Contrast1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &NumLevels1,&Contrast1)) {
            {
            // with output params
                Halcon::HRegionArray ModelRegions1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->Image->InspectShapeModel(&ModelRegions1,NumLevels1,Contrast1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(ModelRegions1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &NumLevels,&Contrast)) {
            if (PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(Contrast)) {
                Halcon::HRegionArray ModelRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->Image->InspectShapeModel(&ModelRegions,*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(ModelRegions));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    double AngleStart1;
    PyObject* AngleEnd;
    PyObject* Interpolation;
    long Width1;
    long Height1;
    double RadiusEnd1;
    PyObject* RadiusEnd;
    PyObject* Height;
    double AngleEnd1;
    PyObject* AngleStart;
    char* Interpolation1;
    double Column1;
    PyObject* RadiusStart;
    double Row1;
    PyObject* Width;
    double RadiusStart1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlls", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&Width1,&Height1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->PolarTransImageInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskSize;
    long SearchSize1;
    PyObject* SearchSize;
    PyObject* PostIteration;
    PyObject* Region1;
    PyObject* Region;
    PyObject* Smoothness;
    double Anisotropy1;
    double Smoothness1;
    PyObject* Anisotropy;
    long MaskSize1;
    char* PostIteration1;
    
    try {
        if (PyArg_ParseTuple(args, "Olldsd", &Region1,&MaskSize1,&SearchSize1,&Anisotropy1,&PostIteration1,&Smoothness1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingTexture(*(((PyHirschRegion*)Region1)->Region),MaskSize1,SearchSize1,Anisotropy1,PostIteration1,Smoothness1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Region,&MaskSize,&SearchSize,&Anisotropy,&PostIteration,&Smoothness)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(SearchSize) && PyHirschTuple_Check(Anisotropy) && PyHirschTuple_Check(PostIteration) && PyHirschTuple_Check(Smoothness)) {
                return PyHirschImage_FromHImage(self->Image->InpaintingTexture(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)SearchSize)->Tuple),*(((PyHirschTuple*)Anisotropy)->Tuple),*(((PyHirschTuple*)PostIteration)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                self->Image->DispColor(*(((PyHirschTuple*)WindowHandle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            self->Image->DispColor(WindowHandle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaxThresh1;
    long MaskHeight1;
    PyObject* MinThresh;
    long MinThresh1;
    long MaskWidth1;
    PyObject* MaxThresh;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &MaskWidth1,&MaskHeight1,&MinThresh1,&MaxThresh1)) {
            return PyHirschImage_FromHImage(self->Image->EliminateSp(MaskWidth1,MaskHeight1,MinThresh1,MaxThresh1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MinThresh) && PyHirschTuple_Check(MaxThresh)) {
                return PyHirschImage_FromHImage(self->Image->EliminateSp(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MinThresh)->Tuple),*(((PyHirschTuple*)MaxThresh)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.EliminateSp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_LowlandsCenter(PyHirschImage*self, PyObject *)
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
    double MaxError1;
    long NumLevels1;
    double AngleStart1;
    PyObject* NumLevels;
    PyObject* SubPixel;
    PyObject* TemplateID;
    PyObject* MaxError;
    char* SubPixel1;
    PyObject* AngleStart;
    double AngleExtend1;
    PyObject* AngleExtend;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "Odddsl", &TemplateID1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1,&NumLevels1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Column1;
                double Angle1;
                double Error1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID1)->Template),AngleStart1,AngleExtend1,MaxError1,SubPixel1,NumLevels1,&Column1,&Angle1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtend) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels)) {
                double Column;
                double Angle;
                double Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),&Column,&Angle,&Error)));
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_MinImage(PyHirschImage*self, PyObject *args)
{
    PyObject* Image21;
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->MinImage(*(((PyHirschImage*)Image2)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image21)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->MinImage(*(((PyHirschImageArray*)Image21)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Pattern3;
    char* Mode1;
    PyObject* Pattern1;
    char* Mode3;
    long DiffUpperBound3;
    PyObject* DiffLowerBound;
    PyObject* DiffUpperBound2;
    long DiffUpperBound1;
    long GrayOffset3;
    long DiffLowerBound3;
    PyObject* DiffLowerBound2;
    PyObject* Mode;
    PyObject* GrayOffset;
    PyObject* Pattern;
    long DiffLowerBound1;
    PyObject* GrayOffset2;
    PyObject* DiffUpperBound;
    long AddCol3;
    PyObject* AddRow;
    PyObject* Pattern2;
    long AddCol1;
    PyObject* AddCol2;
    long GrayOffset1;
    long AddRow3;
    long AddRow1;
    PyObject* Mode2;
    PyObject* AddRow2;
    PyObject* AddCol;
    
    try {
        if (PyArg_ParseTuple(args, "Oslllll", &Pattern1,&Mode1,&DiffLowerBound1,&DiffUpperBound1,&GrayOffset1,&AddRow1,&AddCol1)) {
            if (PyHirschImage_Check(Pattern1)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImage*)Pattern1)->Image),Mode1,DiffLowerBound1,DiffUpperBound1,GrayOffset1,AddRow1,AddCol1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oslllll", &Pattern3,&Mode3,&DiffLowerBound3,&DiffUpperBound3,&GrayOffset3,&AddRow3,&AddCol3)) {
            if (PyHirschImageArray_Check(Pattern3)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImageArray*)Pattern3)->ImageArray),Mode3,DiffLowerBound3,DiffUpperBound3,GrayOffset3,AddRow3,AddCol3));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Pattern,&Mode,&DiffLowerBound,&DiffUpperBound,&GrayOffset,&AddRow,&AddCol)) {
            if (PyHirschImage_Check(Pattern) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(DiffLowerBound) && PyHirschTuple_Check(DiffUpperBound) && PyHirschTuple_Check(GrayOffset) && PyHirschTuple_Check(AddRow) && PyHirschTuple_Check(AddCol)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImage*)Pattern)->Image),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)DiffLowerBound)->Tuple),*(((PyHirschTuple*)DiffUpperBound)->Tuple),*(((PyHirschTuple*)GrayOffset)->Tuple),*(((PyHirschTuple*)AddRow)->Tuple),*(((PyHirschTuple*)AddCol)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Pattern2,&Mode2,&DiffLowerBound2,&DiffUpperBound2,&GrayOffset2,&AddRow2,&AddCol2)) {
            if (PyHirschImageArray_Check(Pattern2) && PyHirschTuple_Check(Mode2) && PyHirschTuple_Check(DiffLowerBound2) && PyHirschTuple_Check(DiffUpperBound2) && PyHirschTuple_Check(GrayOffset2) && PyHirschTuple_Check(AddRow2) && PyHirschTuple_Check(AddCol2)) {
                return PyHirschRegion_FromHRegion(self->Image->CheckDifference(*(((PyHirschImageArray*)Pattern2)->ImageArray),*(((PyHirschTuple*)Mode2)->Tuple),*(((PyHirschTuple*)DiffLowerBound2)->Tuple),*(((PyHirschTuple*)DiffUpperBound2)->Tuple),*(((PyHirschTuple*)GrayOffset2)->Tuple),*(((PyHirschTuple*)AddRow2)->Tuple),*(((PyHirschTuple*)AddCol2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CheckDifference()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenStdBandpass(PyHirschImage*, PyObject *args)
{
    char* Type1;
    PyObject* Frequency;
    double Sigma1;
    char* Mode1;
    long Height1;
    char* Norm1;
    long Width1;
    PyObject* Type;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Mode;
    double Frequency1;
    PyObject* Sigma;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "ddsssll", &Frequency1,&Sigma1,&Type1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenStdBandpass(Frequency1,Sigma1,Type1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Frequency,&Sigma,&Type,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(Frequency) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Type) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenStdBandpass(*(((PyHirschTuple*)Frequency)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType1)) {
            return PyHirschImage_FromHImage(self->Image->Roberts(FilterType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FilterType)) {
            if (PyHirschTuple_Check(FilterType)) {
                return PyHirschImage_FromHImage(self->Image->Roberts(*(((PyHirschTuple*)FilterType)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImage_FromHImage(self->Image->MirrorImage(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImage_FromHImage(self->Image->MirrorImage(Mode1));
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->ChangeFormat(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->ChangeFormat(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    double AngleStart1;
    PyObject* AngleEnd;
    PyObject* Interpolation;
    long Width1;
    long Height1;
    double RadiusEnd1;
    PyObject* RadiusEnd;
    PyObject* Height;
    double AngleEnd1;
    PyObject* AngleStart;
    char* Interpolation1;
    double Column1;
    PyObject* RadiusStart;
    double Row1;
    PyObject* Width;
    double RadiusStart1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlls", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&Width1,&Height1,&Interpolation1)) {
            return PyHirschImage_FromHImage(self->Image->PolarTransImageExt(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->Image->PolarTransImageExt(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.PolarTransImageExt()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadGraySe(PyHirschImage*, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::ReadGraySe(FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschImage_FromHImage(Halcon::HImage::ReadGraySe(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* ExpansionRange;
    long ExpansionRange1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ExpansionRange)) {
            if (PyHirschTuple_Check(ExpansionRange)) {
                return PyHirschImage_FromHImage(self->Image->ExpandDomainGray(*(((PyHirschTuple*)ExpansionRange)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &ExpansionRange1)) {
            return PyHirschImage_FromHImage(self->Image->ExpandDomainGray(ExpansionRange1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth1,&MaskHeight1)) {
            return PyHirschImage_FromHImage(self->Image->MeanImage(MaskWidth1,MaskHeight1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskWidth,&MaskHeight)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight)) {
                return PyHirschImage_FromHImage(self->Image->MeanImage(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MeanImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_EquHistoImage(PyHirschImage*self, PyObject *)
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
PyHirschImage_EstimateAlAm(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MidrangeImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Rgb1ToGray(PyHirschImage*self, PyObject *)
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
    PyObject* Image21;
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitOr(*(((PyHirschImage*)Image2)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image21)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->BitOr(*(((PyHirschImageArray*)Image21)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Shift;
    long FilterSize1;
    PyObject* FilterTypes;
    PyObject* FilterSize;
    long Shift1;
    char* FilterTypes1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &FilterTypes1,&Shift1,&FilterSize1)) {
            return PyHirschImage_FromHImage(self->Image->TextureLaws(FilterTypes1,Shift1,FilterSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &FilterTypes,&Shift,&FilterSize)) {
            if (PyHirschTuple_Check(FilterTypes) && PyHirschTuple_Check(Shift) && PyHirschTuple_Check(FilterSize)) {
                return PyHirschImage_FromHImage(self->Image->TextureLaws(*(((PyHirschTuple*)FilterTypes)->Tuple),*(((PyHirschTuple*)Shift)->Tuple),*(((PyHirschTuple*)FilterSize)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddNoiseDistribution()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_PowerByte(PyHirschImage*self, PyObject *)
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
    PyObject* InitialGuess1;
    PyObject* MGParamName1;
    PyObject* GradientConstancy;
    PyObject* MGParamValue1;
    PyObject* Smoothness1;
    PyObject* Image21;
    PyObject* Image2;
    PyObject* GrayConstancy1;
    PyObject* Smoothness;
    PyObject* GrayConstancy;
    PyObject* MGParamName;
    PyObject* CalculateScore;
    PyObject* GradientConstancy1;
    PyObject* CalculateScore1;
    PyObject* InitialGuess;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Image21,&GrayConstancy1,&GradientConstancy1,&Smoothness1,&InitialGuess1,&CalculateScore1,&MGParamName1,&MGParamValue1)) {
            if (PyHirschImageArray_Check(Image21) && PyHirschTuple_Check(GrayConstancy1) && PyHirschTuple_Check(GradientConstancy1) && PyHirschTuple_Check(Smoothness1) && PyHirschTuple_Check(InitialGuess1) && PyHirschTuple_Check(CalculateScore1) && PyHirschTuple_Check(MGParamName1) && PyHirschTuple_Check(MGParamValue1)) {
                Halcon::HImage Score1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImageArray*)Image21)->ImageArray),&Score1,*(((PyHirschTuple*)GrayConstancy1)->Tuple),*(((PyHirschTuple*)GradientConstancy1)->Tuple),*(((PyHirschTuple*)Smoothness1)->Tuple),*(((PyHirschTuple*)InitialGuess1)->Tuple),*(((PyHirschTuple*)CalculateScore1)->Tuple),*(((PyHirschTuple*)MGParamName1)->Tuple),*(((PyHirschTuple*)MGParamValue1)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Image2,&GrayConstancy,&GradientConstancy,&Smoothness,&InitialGuess,&CalculateScore,&MGParamName,&MGParamValue)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparityMg(*(((PyHirschImage*)Image2)->Image),&Score,*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Add;
    double Mult3;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Add2;
    PyObject* Mult;
    PyObject* Image23;
    PyObject* Image22;
    double Add3;
    PyObject* Mult2;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image23,&Mult3,&Add3)) {
            if (PyHirschImageArray_Check(Image23)) {
                return PyHirschImage_FromHImage(self->Image->DivImage(*(((PyHirschImageArray*)Image23)->ImageArray),Mult3,Add3));
            }
        }
        PyErr_Clear();
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
        if (PyArg_ParseTuple(args, "OOO", &Image22,&Mult2,&Add2)) {
            if (PyHirschImageArray_Check(Image22) && PyHirschTuple_Check(Mult2) && PyHirschTuple_Check(Add2)) {
                return PyHirschImage_FromHImage(self->Image->DivImage(*(((PyHirschImageArray*)Image22)->ImageArray),*(((PyHirschTuple*)Mult2)->Tuple),*(((PyHirschTuple*)Add2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.DivImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_FftImageInv(PyHirschImage*self, PyObject *)
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
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                self->Image->DispImage(*(((PyHirschTuple*)WindowHandle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            self->Image->DispImage(WindowHandle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
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
    char* CompleteJunctions1;
    double Sigma1;
    PyObject* Low;
    PyObject* High;
    double High1;
    char* ExtractWidth1;
    PyObject* ExtractWidth;
    char* LightDark1;
    PyObject* CompleteJunctions;
    char* CorrectPositions1;
    PyObject* CorrectPositions;
    PyObject* Sigma;
    PyObject* LightDark;
    double Low1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Sigma,&Low,&High,&LightDark,&ExtractWidth,&CorrectPositions,&CompleteJunctions)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Low) && PyHirschTuple_Check(High) && PyHirschTuple_Check(LightDark) && PyHirschTuple_Check(ExtractWidth) && PyHirschTuple_Check(CorrectPositions) && PyHirschTuple_Check(CompleteJunctions)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesGauss(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),*(((PyHirschTuple*)LightDark)->Tuple),*(((PyHirschTuple*)ExtractWidth)->Tuple),*(((PyHirschTuple*)CorrectPositions)->Tuple),*(((PyHirschTuple*)CompleteJunctions)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddssss", &Sigma1,&Low1,&High1,&LightDark1,&ExtractWidth1,&CorrectPositions1,&CompleteJunctions1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Image->LinesGauss(Sigma1,Low1,High1,LightDark1,ExtractWidth1,CorrectPositions1,CompleteJunctions1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosing()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_InstClassName(PyHirschImage*self, PyObject *)
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
        PyErr_Clear();
        
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
    PyObject* MinDisparity;
    PyObject* MaxDisparity;
    double TextureThresh1;
    PyObject* ScoreThresh;
    long NumLevels1;
    long MaskWidth1;
    PyObject* MaskHeight;
    PyObject* MaskWidth;
    double ScoreThresh1;
    PyObject* SubDisparity;
    PyObject* NumLevels;
    char* SubDisparity1;
    PyObject* Image21;
    char* Method1;
    long MaxDisparity1;
    char* Filter1;
    long MinDisparity1;
    long MaskHeight1;
    PyObject* TextureThresh;
    PyObject* Image2;
    PyObject* Filter;
    PyObject* Method;
    
    try {
        if (PyArg_ParseTuple(args, "Oslldllldss", &Image21,&Method1,&MaskWidth1,&MaskHeight1,&TextureThresh1,&MinDisparity1,&MaxDisparity1,&NumLevels1,&ScoreThresh1,&Filter1,&SubDisparity1)) {
            if (PyHirschImage_Check(Image21)) {
                Halcon::HImage Score1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparity(*(((PyHirschImage*)Image21)->Image),&Score1,Method1,MaskWidth1,MaskHeight1,TextureThresh1,MinDisparity1,MaxDisparity1,NumLevels1,ScoreThresh1,Filter1,SubDisparity1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &Image2,&Method,&MaskWidth,&MaskHeight,&TextureThresh,&MinDisparity,&MaxDisparity,&NumLevels,&ScoreThresh,&Filter,&SubDisparity)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Method) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(TextureThresh) && PyHirschTuple_Check(MinDisparity) && PyHirschTuple_Check(MaxDisparity) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(ScoreThresh) && PyHirschTuple_Check(Filter) && PyHirschTuple_Check(SubDisparity)) {
                Halcon::HImage Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Image->BinocularDisparity(*(((PyHirschImage*)Image2)->Image),&Score,*(((PyHirschTuple*)Method)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)TextureThresh)->Tuple),*(((PyHirschTuple*)MinDisparity)->Tuple),*(((PyHirschTuple*)MaxDisparity)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)ScoreThresh)->Tuple),*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)SubDisparity)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Score));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image21;
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Image->BitXor(*(((PyHirschImage*)Image2)->Image)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image21)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImage_FromHImage(self->Image->BitXor(*(((PyHirschImageArray*)Image21)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* ImgDir3;
    char* Mode1;
    PyObject* ImgDir1;
    char* Mode3;
    PyObject* ImgDir2;
    PyObject* Mode2;
    PyObject* Mode;
    PyObject* ImgDir;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &ImgDir3,&Mode3)) {
            if (PyHirschImageArray_Check(ImgDir3)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImageArray*)ImgDir3)->ImageArray),Mode3));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &ImgDir2,&Mode2)) {
            if (PyHirschImageArray_Check(ImgDir2) && PyHirschTuple_Check(Mode2)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImageArray*)ImgDir2)->ImageArray),*(((PyHirschTuple*)Mode2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &ImgDir1,&Mode1)) {
            if (PyHirschImage_Check(ImgDir1)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImage*)ImgDir1)->Image),Mode1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &ImgDir,&Mode)) {
            if (PyHirschImage_Check(ImgDir) && PyHirschTuple_Check(Mode)) {
                return PyHirschImage_FromHImage(self->Image->NonmaxSuppressionDir(*(((PyHirschImage*)ImgDir)->Image),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ConvolImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Shared(PyHirschImage*self, PyObject *)
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
    PyObject* FeatureSpace1;
    PyObject* ImageRow1;
    PyObject* ImageRow;
    PyObject* FeatureSpace;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageRow,&FeatureSpace)) {
            if (PyHirschImage_Check(ImageRow) && PyHirschRegion_Check(FeatureSpace)) {
                return PyHirschRegion_FromHRegion(self->Image->Class2dimSup(*(((PyHirschImage*)ImageRow)->Image),*(((PyHirschRegion*)FeatureSpace)->Region)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &ImageRow1,&FeatureSpace1)) {
            if (PyHirschImageArray_Check(ImageRow1) && PyHirschRegionArray_Check(FeatureSpace1)) {
                return PyHirschRegion_FromHRegion(self->Image->Class2dimSup(*(((PyHirschImageArray*)ImageRow1)->ImageArray),*(((PyHirschRegionArray*)FeatureSpace1)->RegionArray)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Image->EntropyImage(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Image->EntropyImage(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Add;
    double Mult3;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Add2;
    PyObject* Mult;
    PyObject* Image23;
    PyObject* Image22;
    double Add3;
    PyObject* Mult2;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image23,&Mult3,&Add3)) {
            if (PyHirschImageArray_Check(Image23)) {
                return PyHirschImage_FromHImage(self->Image->AddImage(*(((PyHirschImageArray*)Image23)->ImageArray),Mult3,Add3));
            }
        }
        PyErr_Clear();
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
        if (PyArg_ParseTuple(args, "OOO", &Image22,&Mult2,&Add2)) {
            if (PyHirschImageArray_Check(Image22) && PyHirschTuple_Check(Mult2) && PyHirschTuple_Check(Add2)) {
                return PyHirschImage_FromHImage(self->Image->AddImage(*(((PyHirschImageArray*)Image22)->ImageArray),*(((PyHirschTuple*)Mult2)->Tuple),*(((PyHirschTuple*)Add2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AddImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenImageGrayRamp(PyHirschImage*, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    long Row1;
    PyObject* Alpha;
    long Width1;
    long Column1;
    long Height1;
    double Alpha1;
    double Beta1;
    PyObject* Mean;
    PyObject* Height;
    double Mean1;
    PyObject* Beta;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "dddllll", &Alpha1,&Beta1,&Mean1,&Row1,&Column1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenImageGrayRamp(Alpha1,Beta1,Mean1,Row1,Column1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Alpha,&Beta,&Mean,&Row,&Column,&Width,&Height)) {
            if (PyHirschTuple_Check(Alpha) && PyHirschTuple_Check(Beta) && PyHirschTuple_Check(Mean) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenImageGrayRamp(*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)Beta)->Tuple),*(((PyHirschTuple*)Mean)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Threshold;
    long Threshold1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Threshold)) {
            if (PyHirschTuple_Check(Threshold)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->WatershedsThreshold(*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Threshold1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->WatershedsThreshold(Threshold1));
        }
        PyErr_Clear();
        
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
    long MinDiamMarks1;
    PyObject* MarkThresh;
    long SizeGauss1;
    PyObject* CalTabDescrFile;
    PyObject* MinDiamMarks;
    long MarkThresh1;
    PyObject* SizeGauss;
    char* CalTabDescrFile1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &CalTabDescrFile,&SizeGauss,&MarkThresh,&MinDiamMarks)) {
            if (PyHirschTuple_Check(CalTabDescrFile) && PyHirschTuple_Check(SizeGauss) && PyHirschTuple_Check(MarkThresh) && PyHirschTuple_Check(MinDiamMarks)) {
                return PyHirschRegion_FromHRegion(self->Image->FindCaltab(*(((PyHirschTuple*)CalTabDescrFile)->Tuple),*(((PyHirschTuple*)SizeGauss)->Tuple),*(((PyHirschTuple*)MarkThresh)->Tuple),*(((PyHirschTuple*)MinDiamMarks)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slll", &CalTabDescrFile1,&SizeGauss1,&MarkThresh1,&MinDiamMarks1)) {
            return PyHirschRegion_FromHRegion(self->Image->FindCaltab(CalTabDescrFile1,SizeGauss1,MarkThresh1,MinDiamMarks1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.FindCaltab()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenPrincipalCompTrans(PyHirschImage*self, PyObject *)
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
PyHirschImage_GenFilterMask(PyHirschImage*, PyObject *args)
{
    PyObject* Height;
    PyObject* FilterMask;
    PyObject* Scale;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &FilterMask,&Scale,&Width,&Height)) {
            if (PyHirschTuple_Check(FilterMask) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenFilterMask(*(((PyHirschTuple*)FilterMask)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenFilterMask()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CheckMyObjClass(PyHirschImage*self, PyObject *)
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
    double MaxError1;
    double AngleStart1;
    PyObject* SubPixel;
    PyObject* TemplateID;
    PyObject* MaxError;
    char* SubPixel1;
    PyObject* AngleStart;
    double AngleExtend1;
    PyObject* AngleExtend;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtend) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel)) {
                double Column;
                double Angle;
                double Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchRot(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Angle));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &TemplateID1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                double Column1;
                double Angle1;
                double Error1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Image->BestMatchRot(*(((PyHirschTemplate*)TemplateID1)->Template),AngleStart1,AngleExtend1,MaxError1,SubPixel1,&Column1,&Angle1,&Error1)));
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_RftGeneric(PyHirschImage*self, PyObject *args)
{
    PyObject* Norm;
    long Width1;
    char* Norm1;
    PyObject* Direction;
    char* Direction1;
    PyObject* ResultType;
    char* ResultType1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "sssl", &Direction1,&Norm1,&ResultType1,&Width1)) {
            return PyHirschImage_FromHImage(self->Image->RftGeneric(Direction1,Norm1,ResultType1,Width1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Direction,&Norm,&ResultType,&Width)) {
            if (PyHirschTuple_Check(Direction) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(ResultType) && PyHirschTuple_Check(Width)) {
                return PyHirschImage_FromHImage(self->Image->RftGeneric(*(((PyHirschTuple*)Direction)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)ResultType)->Tuple),*(((PyHirschTuple*)Width)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImage_FromHImage(self->Image->GrayClosingShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImage_FromHImage(self->Image->GrayClosingShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GrayClosingShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenHighpass(PyHirschImage*, PyObject *args)
{
    long Width1;
    PyObject* Frequency;
    char* Mode1;
    char* Norm1;
    long Height1;
    PyObject* Norm;
    PyObject* Height;
    PyObject* Mode;
    double Frequency1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Frequency,&Norm,&Mode,&Width,&Height)) {
            if (PyHirschTuple_Check(Frequency) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(Halcon::HImage::GenHighpass(*(((PyHirschTuple*)Frequency)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dssll", &Frequency1,&Norm1,&Mode1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::GenHighpass(Frequency1,Norm1,Mode1,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenHighpass()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_CoocFeatureMatrix(PyHirschImage*self, PyObject *)
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
PyHirschImage_PrewittDir(PyHirschImage*self, PyObject *)
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
    PyObject* Bit;
    long Bit1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Bit)) {
            if (PyHirschTuple_Check(Bit)) {
                return PyHirschImage_FromHImage(self->Image->BitSlice(*(((PyHirschTuple*)Bit)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Bit1)) {
            return PyHirschImage_FromHImage(self->Image->BitSlice(Bit1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* Mode1;
    PyObject* Theta;
    double Contrast1;
    PyObject* Contrast;
    PyObject* Mode;
    long Iterations1;
    double Theta1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Mode,&Contrast,&Theta,&Iterations)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Contrast) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImage_FromHImage(self->Image->AnisotropicDiffusion(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddl", &Mode1,&Contrast1,&Theta1,&Iterations1)) {
            return PyHirschImage_FromHImage(self->Image->AnisotropicDiffusion(Mode1,Contrast1,Theta1,Iterations1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.AnisotropicDiffusion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_GenBinocularRectificationMap(PyHirschImage*, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(Halcon::HImage::GenBinocularRectificationMap(&Map2,*(((PyHirschTuple*)CamParam1)->Tuple),*(((PyHirschTuple*)CamParam2)->Tuple),*(((PyHirschTuple*)RelPose)->Tuple),*(((PyHirschTuple*)SubSampling)->Tuple),*(((PyHirschTuple*)Method)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),&CamParamRect1,&CamParamRect2,&CamPoseRect1,&CamPoseRect2,&RelPoseRect)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Map2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CamParamRect1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(CamParamRect2));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(CamPoseRect1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(CamPoseRect2));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(RelPoseRect));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.GenBinocularRectificationMap()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadImage(PyHirschImage*, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::ReadImage(FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschImage_FromHImage(Halcon::HImage::ReadImage(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.MatchRelPoseRansac()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_ReadSequence(PyHirschImage*, PyObject *args)
{
    PyObject* PixelType;
    long SourceHeight1;
    PyObject* Index;
    long Index1;
    long DestWidth1;
    char* PixelType1;
    PyObject* HeaderSize;
    PyObject* StartColumn;
    PyObject* FileName;
    long HeaderSize1;
    PyObject* SourceWidth;
    long StartColumn1;
    PyObject* DestHeight;
    long DestHeight1;
    PyObject* StartRow;
    long StartRow1;
    PyObject* BitOrder;
    long SourceWidth1;
    char* ByteOrder1;
    char* Pad1;
    char* FileName1;
    PyObject* SourceHeight;
    PyObject* ByteOrder;
    PyObject* DestWidth;
    char* BitOrder1;
    PyObject* Pad;
    
    try {
        if (PyArg_ParseTuple(args, "lllllllssssls", &HeaderSize1,&SourceWidth1,&SourceHeight1,&StartRow1,&StartColumn1,&DestWidth1,&DestHeight1,&PixelType1,&BitOrder1,&ByteOrder1,&Pad1,&Index1,&FileName1)) {
            return PyHirschImage_FromHImage(Halcon::HImage::ReadSequence(HeaderSize1,SourceWidth1,SourceHeight1,StartRow1,StartColumn1,DestWidth1,DestHeight1,PixelType1,BitOrder1,ByteOrder1,Pad1,Index1,FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOO", &HeaderSize,&SourceWidth,&SourceHeight,&StartRow,&StartColumn,&DestWidth,&DestHeight,&PixelType,&BitOrder,&ByteOrder,&Pad,&Index,&FileName)) {
            if (PyHirschTuple_Check(HeaderSize) && PyHirschTuple_Check(SourceWidth) && PyHirschTuple_Check(SourceHeight) && PyHirschTuple_Check(StartRow) && PyHirschTuple_Check(StartColumn) && PyHirschTuple_Check(DestWidth) && PyHirschTuple_Check(DestHeight) && PyHirschTuple_Check(PixelType) && PyHirschTuple_Check(BitOrder) && PyHirschTuple_Check(ByteOrder) && PyHirschTuple_Check(Pad) && PyHirschTuple_Check(Index) && PyHirschTuple_Check(FileName)) {
                return PyHirschImage_FromHImage(Halcon::HImage::ReadSequence(*(((PyHirschTuple*)HeaderSize)->Tuple),*(((PyHirschTuple*)SourceWidth)->Tuple),*(((PyHirschTuple*)SourceHeight)->Tuple),*(((PyHirschTuple*)StartRow)->Tuple),*(((PyHirschTuple*)StartColumn)->Tuple),*(((PyHirschTuple*)DestWidth)->Tuple),*(((PyHirschTuple*)DestHeight)->Tuple),*(((PyHirschTuple*)PixelType)->Tuple),*(((PyHirschTuple*)BitOrder)->Tuple),*(((PyHirschTuple*)ByteOrder)->Tuple),*(((PyHirschTuple*)Pad)->Tuple),*(((PyHirschTuple*)Index)->Tuple),*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.ReadSequence()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_KirschDir(PyHirschImage*self, PyObject *)
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
    double Sigma1;
    PyObject* Filter;
    double Threshold1;
    char* Filter1;
    PyObject* Sigma;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Filter1,&Sigma1,&Threshold1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->LocalMinSubPix(Filter1,Sigma1,Threshold1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Filter,&Sigma,&Threshold)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Threshold)) {
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->LocalMinSubPix(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.LocalMinSubPix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose5(PyHirschImage*self, PyObject *)
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
PyHirschImage_GrayInside(PyHirschImage*self, PyObject *)
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
    double MinTolerance1;
    char* Metric1;
    PyObject* MaxTolerance;
    double MaxTolerance1;
    PyObject* Metric;
    PyObject* MinSize;
    PyObject* MinTolerance;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Metric,&MinTolerance,&MaxTolerance,&MinSize)) {
            if (PyHirschTuple_Check(Metric) && PyHirschTuple_Check(MinTolerance) && PyHirschTuple_Check(MaxTolerance) && PyHirschTuple_Check(MinSize)) {
                return PyHirschRegionArray_FromHRegionArray(self->Image->RegiongrowingN(*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)MinTolerance)->Tuple),*(((PyHirschTuple*)MaxTolerance)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddl", &Metric1,&MinTolerance1,&MaxTolerance1,&MinSize1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Image->RegiongrowingN(Metric1,MinTolerance1,MaxTolerance1,MinSize1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    double Factor1;
    long MaskWidth1;
    PyObject* Factor;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth1,&MaskHeight1,&Factor1)) {
            return PyHirschImage_FromHImage(self->Image->Illuminate(MaskWidth1,MaskHeight1,Factor1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskWidth,&MaskHeight,&Factor)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(Factor)) {
                return PyHirschImage_FromHImage(self->Image->Illuminate(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)Factor)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.Illuminate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose3(PyHirschImage*self, PyObject *)
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
PyHirschImage_Watersheds(PyHirschImage*self, PyObject *)
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
    double MinScore1;
    PyObject* ModelIDs;
    double AngleStart1;
    PyObject* NumLevels;
    PyObject* Greediness;
    PyObject* AngleExtent;
    long NumMatches1;
    char* SubPixel1;
    double AngleExtent1;
    double Greediness1;
    PyObject* MaxOverlap;
    long NumLevels1;
    PyObject* MinScore;
    PyObject* AngleStart;
    double MaxOverlap1;
    long ModelIDs1;
    PyObject* NumMatches;
    PyObject* SubPixel;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &ModelIDs,&AngleStart,&AngleExtent,&MinScore,&NumMatches,&MaxOverlap,&SubPixel,&NumLevels,&Greediness)) {
            if (PyHirschTuple_Check(ModelIDs) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtent) && PyHirschTuple_Check(MinScore) && PyHirschTuple_Check(NumMatches) && PyHirschTuple_Check(MaxOverlap) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(Greediness)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Score;
                Halcon::HTuple Model;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindShapeModels(*(((PyHirschTuple*)ModelIDs)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)MinScore)->Tuple),*(((PyHirschTuple*)NumMatches)->Tuple),*(((PyHirschTuple*)MaxOverlap)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)Greediness)->Tuple),&Column,&Angle,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldddldsld", &ModelIDs1,&AngleStart1,&AngleExtent1,&MinScore1,&NumMatches1,&MaxOverlap1,&SubPixel1,&NumLevels1,&Greediness1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                Halcon::HTuple Angle1;
                Halcon::HTuple Score1;
                Halcon::HTuple Model1;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Image->FindShapeModels(ModelIDs1,AngleStart1,AngleExtent1,MinScore1,NumMatches1,MaxOverlap1,SubPixel1,NumLevels1,Greediness1,&Column1,&Angle1,&Score1,&Model1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Score1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Model1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    long RankIndex1;
    PyObject* RankIndex;
    
    try {
        if (PyArg_ParseTuple(args, "l", &RankIndex1)) {
            return PyHirschImage_FromHImage(self->Image->RankN(RankIndex1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &RankIndex)) {
            if (PyHirschTuple_Check(RankIndex)) {
                return PyHirschImage_FromHImage(self->Image->RankN(*(((PyHirschTuple*)RankIndex)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.RankN()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose7(PyHirschImage*self, PyObject *)
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
PyHirschImage_Decompose6(PyHirschImage*self, PyObject *)
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    long Sigma1;
    PyObject* Sigma;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &MaskHeight1,&MaskWidth1,&Sigma1)) {
            return PyHirschImage_FromHImage(self->Image->SigmaImage(MaskHeight1,MaskWidth1,Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&Sigma)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(Sigma)) {
                return PyHirschImage_FromHImage(self->Image->SigmaImage(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.SigmaImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose4(PyHirschImage*self, PyObject *)
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
    PyObject* Weight;
    double Weight1;
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "ld", &Size1,&Weight1)) {
            return PyHirschImage_FromHImage(self->Image->CornerResponse(Size1,Weight1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Size,&Weight)) {
            if (PyHirschTuple_Check(Size) && PyHirschTuple_Check(Weight)) {
                return PyHirschImage_FromHImage(self->Image->CornerResponse(*(((PyHirschTuple*)Size)->Tuple),*(((PyHirschTuple*)Weight)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImage.CornerResponse()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImage_Decompose2(PyHirschImage*self, PyObject *)
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
