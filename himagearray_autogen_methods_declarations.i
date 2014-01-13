PyObject *
PyHirschImageArray_HarmonicInterpolation(PyHirschImageArray*self, PyObject *args)
{
    double Precision;
    PyObject* Region;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Region,&Precision)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->HarmonicInterpolation(*(((PyHirschRegion*)Region)->Region),Precision));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.HarmonicInterpolation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MapImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Map;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Map)) {
            if (PyHirschImage_Check(Map)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MapImage(*(((PyHirschImage*)Map)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MapImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_VectorFieldLength(PyHirschImageArray*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->VectorFieldLength(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.VectorFieldLength()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SelectGrayvaluesFromChannels(PyHirschImageArray*self, PyObject *args)
{
    PyObject* IndexImage;
    
    try {
        if (PyArg_ParseTuple(args, "O", &IndexImage)) {
            if (PyHirschImageArray_Check(IndexImage)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SelectGrayvaluesFromChannels(*(((PyHirschImageArray*)IndexImage)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SelectGrayvaluesFromChannels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ConvertImageType(PyHirschImageArray*self, PyObject *args)
{
    char* NewType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &NewType)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ConvertImageType(NewType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ConvertImageType()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SobelAmp(PyHirschImageArray*self, PyObject *args)
{
    char* FilterType;
    long Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType,&Size)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SobelAmp(FilterType,Size));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SobelAmp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DetectEdgeSegments(PyHirschImageArray*self, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->DetectEdgeSegments(SobelSize,MinAmplitude,MaxDistance,MinLength,&BeginCol,&EndRow,&EndCol)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DetectEdgeSegments()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SfsModLr(PyHirschImageArray*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Slant,&Tilt,&Albedo,&Ambient)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsModLr(Slant,Tilt,Albedo,Ambient));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SfsModLr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GenCubeMapMosaic(PyHirschImageArray*self, PyObject *args)
{
    PyObject* CubeMapDimension;
    PyObject* Interpolation;
    PyObject* RotationMatrices;
    PyObject* StackingOrder;
    PyObject* CameraMatrices;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &CameraMatrices,&RotationMatrices,&CubeMapDimension,&StackingOrder,&Interpolation)) {
            if (PyHirschTuple_Check(CameraMatrices) && PyHirschTuple_Check(RotationMatrices) && PyHirschTuple_Check(CubeMapDimension) && PyHirschTuple_Check(StackingOrder) && PyHirschTuple_Check(Interpolation)) {
                Halcon::HImage Rear;
                Halcon::HImage Left;
                Halcon::HImage Right;
                Halcon::HImage Top;
                Halcon::HImage Bottom;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->ImageArray->GenCubeMapMosaic(&Rear,&Left,&Right,&Top,&Bottom,*(((PyHirschTuple*)CameraMatrices)->Tuple),*(((PyHirschTuple*)RotationMatrices)->Tuple),*(((PyHirschTuple*)CubeMapDimension)->Tuple),*(((PyHirschTuple*)StackingOrder)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(Rear));
                PyTuple_SET_ITEM(ret, 2, PyHirschImage_FromHImage(Left));
                PyTuple_SET_ITEM(ret, 3, PyHirschImage_FromHImage(Right));
                PyTuple_SET_ITEM(ret, 4, PyHirschImage_FromHImage(Top));
                PyTuple_SET_ITEM(ret, 5, PyHirschImage_FromHImage(Bottom));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GenCubeMapMosaic()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TrimmedMean(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Number;
    PyObject* Mask;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Mask,&Number,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Number) && PyHirschTuple_Check(Margin)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->TrimmedMean(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Number)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.TrimmedMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DepthFromFocus(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Selection;
    PyObject* Filter;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Filter,&Selection)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Selection)) {
                Halcon::HImageArray Confidence;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->DepthFromFocus(&Confidence,*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Selection)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Confidence));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DepthFromFocus()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BandpassImage(PyHirschImageArray*self, PyObject *args)
{
    char* FilterType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BandpassImage(FilterType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BandpassImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BestMatchRot(PyHirschImageArray*self, PyObject *args)
{
    char* SubPixel;
    double AngleExtend;
    double AngleStart;
    double MaxError;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Oddds", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatchRot(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,SubPixel,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BestMatchRot()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ClassNdimNorm(PyHirschImageArray*self, PyObject *args)
{
    double Radius;
    char* SingleMultiple;
    char* Metric;
    double Center;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Metric,&SingleMultiple,&Radius,&Center)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->ClassNdimNorm(Metric,SingleMultiple,Radius,Center));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ClassNdimNorm()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BinThreshold(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->BinThreshold());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TileChannels(PyHirschImageArray*self, PyObject *args)
{
    char* TileOrder;
    long NumColumns;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns,&TileOrder)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->TileChannels(NumColumns,TileOrder));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.TileChannels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MeanN(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanN());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ClassDBID(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->ImageArray->ClassDBID()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EdgesColor(PyHirschImageArray*self, PyObject *args)
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
                Halcon::HImageArray ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->EdgesColor(&ImaDir,Filter,Alpha,NMS,Low,High)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImaDir));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.EdgesColor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BinomialFilter(PyHirschImageArray*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth,&MaskHeight)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BinomialFilter(MaskWidth,MaskHeight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BinomialFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_HighpassImage(PyHirschImageArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->HighpassImage(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.HighpassImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PolarTransImageInv(PyHirschImageArray*self, PyObject *args)
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImageInv(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.PolarTransImageInv()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GenBundleAdjustedMosaic(PyHirschImageArray*self, PyObject *args)
{
    PyObject* TransformRegion;
    PyObject* StackingOrder;
    PyObject* HomMatrices2D;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &HomMatrices2D,&StackingOrder,&TransformRegion)) {
            if (PyHirschTuple_Check(HomMatrices2D) && PyHirschTuple_Check(StackingOrder) && PyHirschTuple_Check(TransformRegion)) {
                Halcon::HTuple TransMat2D;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->ImageArray->GenBundleAdjustedMosaic(*(((PyHirschTuple*)HomMatrices2D)->Tuple),*(((PyHirschTuple*)StackingOrder)->Tuple),*(((PyHirschTuple*)TransformRegion)->Tuple),&TransMat2D)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(TransMat2D));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GenBundleAdjustedMosaic()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GenSphericalMosaic(PyHirschImageArray*self, PyObject *args)
{
    PyObject* LatMin;
    PyObject* Interpolation;
    PyObject* StackingOrder;
    PyObject* LongMin;
    PyObject* RotationMatrices;
    PyObject* LatMax;
    PyObject* LatLongStep;
    PyObject* LongMax;
    PyObject* CameraMatrices;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &CameraMatrices,&RotationMatrices,&LatMin,&LatMax,&LongMin,&LongMax,&LatLongStep,&StackingOrder,&Interpolation)) {
            if (PyHirschTuple_Check(CameraMatrices) && PyHirschTuple_Check(RotationMatrices) && PyHirschTuple_Check(LatMin) && PyHirschTuple_Check(LatMax) && PyHirschTuple_Check(LongMin) && PyHirschTuple_Check(LongMax) && PyHirschTuple_Check(LatLongStep) && PyHirschTuple_Check(StackingOrder) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImage_FromHImage(self->ImageArray->GenSphericalMosaic(*(((PyHirschTuple*)CameraMatrices)->Tuple),*(((PyHirschTuple*)RotationMatrices)->Tuple),*(((PyHirschTuple*)LatMin)->Tuple),*(((PyHirschTuple*)LatMax)->Tuple),*(((PyHirschTuple*)LongMin)->Tuple),*(((PyHirschTuple*)LongMax)->Tuple),*(((PyHirschTuple*)LatLongStep)->Tuple),*(((PyHirschTuple*)StackingOrder)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GenSphericalMosaic()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EliminateSp(PyHirschImageArray*self, PyObject *args)
{
    long MinThresh;
    long MaskWidth;
    long MaskHeight;
    long MaxThresh;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->EliminateSp(MaskWidth,MaskHeight,MinThresh,MaxThresh));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.EliminateSp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Compose4(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image4;
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Image3,&Image4)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Compose4(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Compose4()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Compose5(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image4;
    PyObject* Image5;
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Image2,&Image3,&Image4,&Image5)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4) && PyHirschImageArray_Check(Image5)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Compose5(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray),*(((PyHirschImageArray*)Image5)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Compose5()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Compose6(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image6;
    PyObject* Image4;
    PyObject* Image5;
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image2,&Image3,&Image4,&Image5,&Image6)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4) && PyHirschImageArray_Check(Image5) && PyHirschImageArray_Check(Image6)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Compose6(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray),*(((PyHirschImageArray*)Image5)->ImageArray),*(((PyHirschImageArray*)Image6)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Compose6()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Compose7(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image4;
    PyObject* Image2;
    PyObject* Image3;
    PyObject* Image6;
    PyObject* Image7;
    PyObject* Image5;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Image2,&Image3,&Image4,&Image5,&Image6,&Image7)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3) && PyHirschImageArray_Check(Image4) && PyHirschImageArray_Check(Image5) && PyHirschImageArray_Check(Image6) && PyHirschImageArray_Check(Image7)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Compose7(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray),*(((PyHirschImageArray*)Image4)->ImageArray),*(((PyHirschImageArray*)Image5)->ImageArray),*(((PyHirschImageArray*)Image6)->ImageArray),*(((PyHirschImageArray*)Image7)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Compose7()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_LowlandsCenter(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->LowlandsCenter());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Compose2(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Compose2(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Compose2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Compose3(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    PyObject* Image3;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image2,&Image3)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschImageArray_Check(Image3)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Compose3(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschImageArray*)Image3)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Compose3()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TransToRgb(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageInput2;
    char* ColorSpace;
    PyObject* ImageInput3;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &ImageInput2,&ImageInput3,&ColorSpace)) {
            if (PyHirschImageArray_Check(ImageInput2) && PyHirschImageArray_Check(ImageInput3)) {
                Halcon::HImageArray ImageGreen;
                Halcon::HImageArray ImageBlue;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->TransToRgb(*(((PyHirschImageArray*)ImageInput2)->ImageArray),*(((PyHirschImageArray*)ImageInput3)->ImageArray),&ImageGreen,&ImageBlue,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageGreen));
                PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(ImageBlue));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.TransToRgb()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BestMatchRotMg(PyHirschImageArray*self, PyObject *args)
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
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID)->Template),AngleStart,AngleExtend,MaxError,SubPixel,NumLevels,&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BestMatchRotMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MinImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MinImage(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MinImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TopographicSketch(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->TopographicSketch());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayErosionShape(PyHirschImageArray*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayErosionShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayErosionShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_InvertImage(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->InvertImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GraySkeleton(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->GraySkeleton());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CheckDifference(PyHirschImageArray*self, PyObject *args)
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
            if (PyHirschImageArray_Check(Pattern)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->CheckDifference(*(((PyHirschImageArray*)Pattern)->ImageArray),Mode,DiffLowerBound,DiffUpperBound,GrayOffset,AddRow,AddCol));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CheckDifference()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_KirschAmp(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->KirschAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PlateausCenter(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->PlateausCenter());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DiffOfGauss(PyHirschImageArray*self, PyObject *args)
{
    double SigFactor;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Sigma,&SigFactor)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DiffOfGauss(Sigma,SigFactor));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DiffOfGauss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AddNoiseDistribution(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Distribution;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Distribution)) {
            if (PyHirschTuple_Check(Distribution)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AddNoiseDistribution(*(((PyHirschTuple*)Distribution)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AddNoiseDistribution()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FillInterlace(PyHirschImageArray*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->FillInterlace(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FillInterlace()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Roberts(PyHirschImageArray*self, PyObject *args)
{
    char* FilterType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Roberts(FilterType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Roberts()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitAnd(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BitAnd(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BitAnd()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MirrorImage(PyHirschImageArray*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MirrorImage(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MirrorImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ChangeFormat(PyHirschImageArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ChangeFormat(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ChangeFormat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AbsImage(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->AbsImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayErosionRect(PyHirschImageArray*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayErosionRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayErosionRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AdjustMosaicImages(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ReferenceImage;
    PyObject* HomMatrices2D;
    PyObject* EstimationMethod;
    PyObject* OECFModel;
    PyObject* To;
    PyObject* From;
    PyObject* EstimateParameters;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &From,&To,&ReferenceImage,&HomMatrices2D,&EstimationMethod,&EstimateParameters,&OECFModel)) {
            if (PyHirschTuple_Check(From) && PyHirschTuple_Check(To) && PyHirschTuple_Check(ReferenceImage) && PyHirschTuple_Check(HomMatrices2D) && PyHirschTuple_Check(EstimationMethod) && PyHirschTuple_Check(EstimateParameters) && PyHirschTuple_Check(OECFModel)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AdjustMosaicImages(*(((PyHirschTuple*)From)->Tuple),*(((PyHirschTuple*)To)->Tuple),*(((PyHirschTuple*)ReferenceImage)->Tuple),*(((PyHirschTuple*)HomMatrices2D)->Tuple),*(((PyHirschTuple*)EstimationMethod)->Tuple),*(((PyHirschTuple*)EstimateParameters)->Tuple),*(((PyHirschTuple*)OECFModel)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AdjustMosaicImages()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_InpaintingTexture(PyHirschImageArray*self, PyObject *args)
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingTexture(*(((PyHirschRegion*)Region)->Region),MaskSize,SearchSize,Anisotropy,PostIteration,Smoothness));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.InpaintingTexture()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ComplexToReal(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray ImageImaginary;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->ComplexToReal(&ImageImaginary)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageImaginary));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitLshift(PyHirschImageArray*self, PyObject *args)
{
    long Shift;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitLshift(Shift));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BitLshift()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SubImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageSubtrahend;
    double Add;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &ImageSubtrahend,&Mult,&Add)) {
            if (PyHirschImageArray_Check(ImageSubtrahend)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SubImage(*(((PyHirschImageArray*)ImageSubtrahend)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SubImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GenProjectiveMosaic(PyHirschImageArray*self, PyObject *args)
{
    PyObject* MappingDest;
    PyObject* HomMatrices2D;
    PyObject* StackingOrder;
    PyObject* StartImage;
    PyObject* MappingSource;
    PyObject* TransformRegion;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &StartImage,&MappingSource,&MappingDest,&HomMatrices2D,&StackingOrder,&TransformRegion)) {
            if (PyHirschTuple_Check(StartImage) && PyHirschTuple_Check(MappingSource) && PyHirschTuple_Check(MappingDest) && PyHirschTuple_Check(HomMatrices2D) && PyHirschTuple_Check(StackingOrder) && PyHirschTuple_Check(TransformRegion)) {
                Halcon::HTuple MosaicMatrices2D;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->ImageArray->GenProjectiveMosaic(*(((PyHirschTuple*)StartImage)->Tuple),*(((PyHirschTuple*)MappingSource)->Tuple),*(((PyHirschTuple*)MappingDest)->Tuple),*(((PyHirschTuple*)HomMatrices2D)->Tuple),*(((PyHirschTuple*)StackingOrder)->Tuple),*(((PyHirschTuple*)TransformRegion)->Tuple),&MosaicMatrices2D)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(MosaicMatrices2D));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GenProjectiveMosaic()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ScaleImage(PyHirschImageArray*self, PyObject *args)
{
    double Add;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Mult,&Add)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ScaleImage(Mult,Add));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ScaleImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PolarTransImageExt(PyHirschImageArray*self, PyObject *args)
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImageExt(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.PolarTransImageExt()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SmoothImage(PyHirschImageArray*self, PyObject *args)
{
    char* Filter;
    double Alpha;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Filter,&Alpha)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SmoothImage(Filter,Alpha));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SmoothImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FreiAmp(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->FreiAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EstimateTiltZc(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->ImageArray->EstimateTiltZc());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DispChannel(PyHirschImageArray*self, PyObject *args)
{
    long WindowHandle;
    long Channel;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &WindowHandle,&Channel)) {
            self->ImageArray->DispChannel(WindowHandle,Channel);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DispChannel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MultImage(PyHirschImageArray*self, PyObject *args)
{
    double Add;
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image2,&Mult,&Add)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MultImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MultImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SfsPentland(PyHirschImageArray*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Slant,&Tilt,&Albedo,&Ambient)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsPentland(Slant,Tilt,Albedo,Ambient));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SfsPentland()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_IsotropicDiffusion(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "dl", &Sigma,&Iterations)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->IsotropicDiffusion(Sigma,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.IsotropicDiffusion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Lowlands(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Lowlands());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GetDomain(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->GetDomain());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayOpeningRect(PyHirschImageArray*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayOpeningRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayOpeningRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RealToVectorField(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Col;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Col)) {
            if (PyHirschImageArray_Check(Col)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->RealToVectorField(*(((PyHirschImageArray*)Col)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RealToVectorField()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PowerLn(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->PowerLn());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DualThreshold(PyHirschImageArray*self, PyObject *args)
{
    double Threshold;
    long MinSize;
    double MinGray;
    
    try {
        if (PyArg_ParseTuple(args, "ldd", &MinSize,&MinGray,&Threshold)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->DualThreshold(MinSize,MinGray,Threshold));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DualThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Rectangle1Domain(PyHirschImageArray*self, PyObject *args)
{
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Rectangle1Domain(Row1,Column1,Row2,Column2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Rectangle1Domain()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ExpandDomainGray(PyHirschImageArray*self, PyObject *args)
{
    long ExpansionRange;
    
    try {
        if (PyArg_ParseTuple(args, "l", &ExpansionRange)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ExpandDomainGray(ExpansionRange));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ExpandDomainGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TileImagesOffset(PyHirschImageArray*self, PyObject *args)
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
            return PyHirschImage_FromHImage(self->ImageArray->TileImagesOffset(OffsetRow,OffsetCol,Row1,Col1,Row2,Col2,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.TileImagesOffset()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EquHistoImage(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->EquHistoImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FastThreshold(PyHirschImageArray*self, PyObject *args)
{
    double MaxGray;
    long MinSize;
    double MinGray;
    
    try {
        if (PyArg_ParseTuple(args, "ddl", &MinGray,&MaxGray,&MinSize)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastThreshold(MinGray,MaxGray,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FastThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EstimateAlAm(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HTuple Ambient;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->EstimateAlAm(&Ambient)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Ambient));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ReadOcrTrainfSelect(PyHirschImageArray*, PyObject *args)
{
    char* TrainFileNames;
    char* SearchNames;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &TrainFileNames,&SearchNames)) {
            {
            // with output params
                Halcon::HTuple FoundNames;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadOcrTrainfSelect(TrainFileNames,SearchNames,&FoundNames)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(FoundNames));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ReadOcrTrainfSelect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RobinsonAmp(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->RobinsonAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_LocalMin(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->LocalMin());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ShadeHeightField(PyHirschImageArray*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    char* Shadows;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Slant,&Tilt,&Albedo,&Ambient,&Shadows)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ShadeHeightField(Slant,Tilt,Albedo,Ambient,Shadows));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ShadeHeightField()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MidrangeImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Margin;
    PyObject* Mask;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mask,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MidrangeImage(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MidrangeImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Rgb1ToGray(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->Rgb1ToGray());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitOr(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BitOr(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BitOr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CropDomainRel(PyHirschImageArray*self, PyObject *args)
{
    long Right;
    long Bottom;
    long Left;
    long Top;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Top,&Left,&Bottom,&Right)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CropDomainRel(Top,Left,Bottom,Right));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CropDomainRel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CropPart(PyHirschImageArray*self, PyObject *args)
{
    long Row;
    long Height;
    long Width;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row,&Column,&Width,&Height)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CropPart(Row,Column,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CropPart()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SqrtImage(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->SqrtImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TextureLaws(PyHirschImageArray*self, PyObject *args)
{
    char* FilterTypes;
    long Shift;
    long FilterSize;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &FilterTypes,&Shift,&FilterSize)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->TextureLaws(FilterTypes,Shift,FilterSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.TextureLaws()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GenBinocularProjRectification(PyHirschImageArray*, PyObject *args)
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
                Halcon::HImageArray Map2;
                Halcon::HTuple CovFMatRect;
                Halcon::HTuple H1;
                Halcon::HTuple H2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(Halcon::HImageArray::GenBinocularProjRectification(&Map2,*(((PyHirschTuple*)FMatrix)->Tuple),*(((PyHirschTuple*)CovFMat)->Tuple),*(((PyHirschTuple*)Width1)->Tuple),*(((PyHirschTuple*)Height1)->Tuple),*(((PyHirschTuple*)Width2)->Tuple),*(((PyHirschTuple*)Height2)->Tuple),*(((PyHirschTuple*)SubSampling)->Tuple),*(((PyHirschTuple*)Mapping)->Tuple),&CovFMatRect,&H1,&H2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Map2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(CovFMatRect));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(H1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(H2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GenBinocularProjRectification()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_OpticalFlowMg(PyHirschImageArray*self, PyObject *args)
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
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(SmoothingSigma) && PyHirschTuple_Check(IntegrationSigma) && PyHirschTuple_Check(FlowSmoothness) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->OpticalFlowMg(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)SmoothingSigma)->Tuple),*(((PyHirschTuple*)IntegrationSigma)->Tuple),*(((PyHirschTuple*)FlowSmoothness)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.OpticalFlowMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EstimateTiltLr(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->ImageArray->EstimateTiltLr());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RotateImage(PyHirschImageArray*self, PyObject *args)
{
    double Phi;
    char* Interpolation;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Phi,&Interpolation)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->RotateImage(Phi,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RotateImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PowerByte(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->PowerByte());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayRangeRect(PyHirschImageArray*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayRangeRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayRangeRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Illuminate(PyHirschImageArray*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    double Factor;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth,&MaskHeight,&Factor)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Illuminate(MaskWidth,MaskHeight,Factor));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Illuminate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CountChannels(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->ImageArray->CountChannels());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BinocularDisparityMg(PyHirschImageArray*self, PyObject *args)
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
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImageArray Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->BinocularDisparityMg(*(((PyHirschImageArray*)Image2)->ImageArray),&Score,*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Score));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BinocularDisparityMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AdaptTemplate(PyHirschImageArray*self, PyObject *args)
{
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "O", &TemplateID)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                self->ImageArray->AdaptTemplate(*(((PyHirschTemplate*)TemplateID)->Template));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AdaptTemplate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CorrelationFft(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageFFT2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageFFT2)) {
            if (PyHirschImageArray_Check(ImageFFT2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->CorrelationFft(*(((PyHirschImageArray*)ImageFFT2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CorrelationFft()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Symmetry(PyHirschImageArray*self, PyObject *args)
{
    double Direction;
    long MaskSize;
    double Exponent;
    
    try {
        if (PyArg_ParseTuple(args, "ldd", &MaskSize,&Direction,&Exponent)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Symmetry(MaskSize,Direction,Exponent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Symmetry()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_HysteresisThreshold(PyHirschImageArray*self, PyObject *args)
{
    long Low;
    long High;
    long MaxLength;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Low,&High,&MaxLength)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->HysteresisThreshold(Low,High,MaxLength));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.HysteresisThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_VarThreshold(PyHirschImageArray*self, PyObject *args)
{
    double AbsThreshold;
    long MaskWidth;
    double StdDevScale;
    long MaskHeight;
    char* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "lldds", &MaskWidth,&MaskHeight,&StdDevScale,&AbsThreshold,&LightDark)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->VarThreshold(MaskWidth,MaskHeight,StdDevScale,AbsThreshold,LightDark));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.VarThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DivImage(PyHirschImageArray*self, PyObject *args)
{
    double Add;
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image2,&Mult,&Add)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DivImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DivImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Plateaus(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Plateaus());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FftImageInv(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->FftImageInv());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FindScaledShapeModels(PyHirschImageArray*self, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindScaledShapeModels(ModelIDs,AngleStart,AngleExtent,ScaleMin,ScaleMax,MinScore,NumMatches,MaxOverlap,SubPixel,NumLevels,Greediness,&Column,&Angle,&Scale,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Scale));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FindScaledShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_LabelToRegion(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->LabelToRegion());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ReduceDomain(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Region;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ReduceDomain(*(((PyHirschRegion*)Region)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ReduceDomain()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PhaseDeg(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->PhaseDeg());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CropDomain(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->CropDomain());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BestMatchPreMg(PyHirschImageArray*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    long NumLevels;
    long WhichLevels;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->ImageArray->BestMatchPreMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,NumLevels,WhichLevels,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BestMatchPreMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ChangeRadialDistortionImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* CamParamOut;
    PyObject* Region;
    PyObject* CamParamIn;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Region,&CamParamIn,&CamParamOut)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(CamParamIn) && PyHirschTuple_Check(CamParamOut)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ChangeRadialDistortionImage(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)CamParamIn)->Tuple),*(((PyHirschTuple*)CamParamOut)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ChangeRadialDistortionImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayClosing(PyHirschImageArray*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayClosing(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayClosing()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DerivateGauss(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    char* Component;
    
    try {
        if (PyArg_ParseTuple(args, "ds", &Sigma,&Component)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DerivateGauss(Sigma,Component));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DerivateGauss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CropRectangle1(PyHirschImageArray*self, PyObject *args)
{
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CropRectangle1(Row1,Column1,Row2,Column2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CropRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ConvolGabor(PyHirschImageArray*self, PyObject *args)
{
    PyObject* GaborFilter;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GaborFilter)) {
            if (PyHirschImage_Check(GaborFilter)) {
                Halcon::HImageArray ImageResultHilbert;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->ConvolGabor(*(((PyHirschImage*)GaborFilter)->Image),&ImageResultHilbert)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageResultHilbert));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ConvolGabor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayDilationShape(PyHirschImageArray*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayDilationShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayDilationShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MeanSp(PyHirschImageArray*self, PyObject *args)
{
    long MinThresh;
    long MaskWidth;
    long MaskHeight;
    long MaxThresh;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanSp(MaskWidth,MaskHeight,MinThresh,MaxThresh));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MeanSp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_WriteOcrTrainfImage(PyHirschImageArray*self, PyObject *args)
{
    char* Class;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Class,&FileName)) {
            self->ImageArray->WriteOcrTrainfImage(Class,FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.WriteOcrTrainfImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PowerReal(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->PowerReal());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayTophat(PyHirschImageArray*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayTophat(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayTophat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GaussImage(PyHirschImageArray*self, PyObject *args)
{
    long Size;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Size)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GaussImage(Size));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GaussImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Append(PyHirschImageArray*self, PyObject *args)
{
    PyObject* image;
    PyObject* images;
    
    try {
        if (PyArg_ParseTuple(args, "O", &image)) {
            if (PyHirschImage_Check(image)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Append(*(((PyHirschImage*)image)->Image)));
            }
        }
        if (PyArg_ParseTuple(args, "O", &images)) {
            if (PyHirschImageArray_Check(images)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Append(*(((PyHirschImageArray*)images)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Append()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DynThreshold(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ThresholdImage;
    double Offset;
    char* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &ThresholdImage,&Offset,&LightDark)) {
            if (PyHirschImageArray_Check(ThresholdImage)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->DynThreshold(*(((PyHirschImageArray*)ThresholdImage)->ImageArray),Offset,LightDark));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DynThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_NonmaxSuppressionDir(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImgDir;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &ImgDir,&Mode)) {
            if (PyHirschImageArray_Check(ImgDir)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->NonmaxSuppressionDir(*(((PyHirschImageArray*)ImgDir)->ImageArray),Mode));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.NonmaxSuppressionDir()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MaxImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MaxImage(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MaxImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FftImage(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->FftImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ConvolFft(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageFilter;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageFilter)) {
            if (PyHirschImage_Check(ImageFilter)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ConvolFft(*(((PyHirschImage*)ImageFilter)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ConvolFft()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayErosion(PyHirschImageArray*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayErosion(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayErosion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RadiometricSelfCalibration(PyHirschImageArray*self, PyObject *args)
{
    long PolynomialDegree;
    char* FunctionType;
    double Smoothness;
    char* Features;
    double ExposureRatios;
    
    try {
        if (PyArg_ParseTuple(args, "dssdl", &ExposureRatios,&Features,&FunctionType,&Smoothness,&PolynomialDegree)) {
            return PyHirschTuple_FromHTuple(self->ImageArray->RadiometricSelfCalibration(ExposureRatios,Features,FunctionType,Smoothness,PolynomialDegree));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RadiometricSelfCalibration()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FindAnisoShapeModels(PyHirschImageArray*self, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindAnisoShapeModels(ModelIDs,AngleStart,AngleExtent,ScaleRMin,ScaleRMax,ScaleCMin,ScaleCMax,MinScore,NumMatches,MaxOverlap,SubPixel,NumLevels,Greediness,&Column,&Angle,&ScaleR,&ScaleC,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ScaleR));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(ScaleC));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FindAnisoShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ConvolImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* FilterMask;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &FilterMask,&Margin)) {
            if (PyHirschTuple_Check(FilterMask) && PyHirschTuple_Check(Margin)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ConvolImage(*(((PyHirschTuple*)FilterMask)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ConvolImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ShockFilter(PyHirschImageArray*self, PyObject *args)
{
    char* Mode;
    double Sigma;
    long Iterations;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "dlsd", &Theta,&Iterations,&Mode,&Sigma)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ShockFilter(Theta,Iterations,Mode,Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ShockFilter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DotsImage(PyHirschImageArray*self, PyObject *args)
{
    char* FilterType;
    long Diameter;
    long PixelShift;
    
    try {
        if (PyArg_ParseTuple(args, "lsl", &Diameter,&FilterType,&PixelShift)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DotsImage(Diameter,FilterType,PixelShift));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DotsImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RobinsonDir(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->RobinsonDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EntropyImage(PyHirschImageArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->EntropyImage(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.EntropyImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ZoomImageFactor(PyHirschImageArray*self, PyObject *args)
{
    double ScaleWidth;
    double ScaleHeight;
    char* Interpolation;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &ScaleWidth,&ScaleHeight,&Interpolation)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ZoomImageFactor(ScaleWidth,ScaleHeight,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ZoomImageFactor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Class2dimSup(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageRow;
    PyObject* FeatureSpace;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageRow,&FeatureSpace)) {
            if (PyHirschImageArray_Check(ImageRow) && PyHirschRegionArray_Check(FeatureSpace)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Class2dimSup(*(((PyHirschImageArray*)ImageRow)->ImageArray),*(((PyHirschRegionArray*)FeatureSpace)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Class2dimSup()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FullDomain(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->FullDomain());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MedianWeighted(PyHirschImageArray*self, PyObject *args)
{
    char* MaskType;
    long MaskSize;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &MaskType,&MaskSize)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MedianWeighted(MaskType,MaskSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MedianWeighted()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PhaseRad(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->PhaseRad());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_WriteImage(PyHirschImageArray*self, PyObject *args)
{
    long FillColor;
    char* Format;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &Format,&FillColor,&FileName)) {
            self->ImageArray->WriteImage(Format,FillColor,FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.WriteImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CopyHImageArray(PyHirschImageArray*self, PyObject *args)
{
    PyObject* in;
    
    try {
        if (PyArg_ParseTuple(args, "O", &in)) {
            if (PyHirschImageArray_Check(in)) {
                self->ImageArray->CopyHImageArray(*(((PyHirschImageArray*)in)->ImageArray));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CopyHImageArray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FastMatchMg(PyHirschImageArray*self, PyObject *args)
{
    double MaxError;
    long NumLevel;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Odl", &TemplateID,&MaxError,&NumLevel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,NumLevel));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FastMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DeviationImage(PyHirschImageArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DeviationImage(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DeviationImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EstimateNoise(PyHirschImageArray*self, PyObject *args)
{
    double Percent;
    char* Method;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Method,&Percent)) {
            return PyHirschTuple_FromHTuple(self->ImageArray->EstimateNoise(Method,Percent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.EstimateNoise()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AddImage(PyHirschImageArray*self, PyObject *args)
{
    double Add;
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &Image2,&Mult,&Add)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AddImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult,Add));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AddImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Monotony(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->Monotony());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ZeroCrossing(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->ZeroCrossing());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_NonmaxSuppressionAmp(PyHirschImageArray*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->NonmaxSuppressionAmp(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.NonmaxSuppressionAmp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RegiongrowingMean(PyHirschImageArray*self, PyObject *args)
{
    long StartColumns;
    long MinSize;
    long StartRows;
    double Tolerance;
    
    try {
        if (PyArg_ParseTuple(args, "lldl", &StartRows,&StartColumns,&Tolerance,&MinSize)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->RegiongrowingMean(StartRows,StartColumns,Tolerance,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RegiongrowingMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayClosingRect(PyHirschImageArray*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayClosingRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayClosingRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AffineTransImageSize(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Height;
    PyObject* Interpolation;
    PyObject* Width;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &HomMat2D,&Interpolation,&Width,&Height)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AffineTransImageSize(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AffineTransImageSize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GenInitialComponents(PyHirschImageArray*self, PyObject *args)
{
    long ContrastLow;
    double GenericValue;
    long MinSize;
    long ContrastHigh;
    char* Mode;
    char* GenericName;
    
    try {
        if (PyArg_ParseTuple(args, "lllssd", &ContrastLow,&ContrastHigh,&MinSize,&Mode,&GenericName,&GenericValue)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->GenInitialComponents(ContrastLow,ContrastHigh,MinSize,Mode,GenericName,GenericValue));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GenInitialComponents()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MeanImage(PyHirschImageArray*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth,&MaskHeight)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanImage(MaskWidth,MaskHeight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MeanImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TileImages(PyHirschImageArray*self, PyObject *args)
{
    char* TileOrder;
    long NumColumns;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns,&TileOrder)) {
            return PyHirschImage_FromHImage(self->ImageArray->TileImages(NumColumns,TileOrder));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.TileImages()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SfsOrigLr(PyHirschImageArray*self, PyObject *args)
{
    double Albedo;
    double Tilt;
    double Ambient;
    double Slant;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Slant,&Tilt,&Albedo,&Ambient)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsOrigLr(Slant,Tilt,Albedo,Ambient));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SfsOrigLr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GenPrincipalCompTrans(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HTuple TransInv;
        Halcon::HTuple Mean;
        Halcon::HTuple Cov;
        Halcon::HTuple InfoPerComp;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->GenPrincipalCompTrans(&TransInv,&Mean,&Cov,&InfoPerComp)));
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
PyHirschImageArray_GrayBothat(PyHirschImageArray*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayBothat(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayBothat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ProjectiveTransImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* AdaptImageSize;
    PyObject* Interpolation;
    PyObject* HomMat2D;
    PyObject* TransformRegion;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &HomMat2D,&Interpolation,&AdaptImageSize,&TransformRegion)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(AdaptImageSize) && PyHirschTuple_Check(TransformRegion)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ProjectiveTransImage(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)AdaptImageSize)->Tuple),*(((PyHirschTuple*)TransformRegion)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ProjectiveTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FreiDir(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->FreiDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Rgb3ToGray(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageGreen;
    PyObject* ImageBlue;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageGreen,&ImageBlue)) {
            if (PyHirschImageArray_Check(ImageGreen) && PyHirschImageArray_Check(ImageBlue)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Rgb3ToGray(*(((PyHirschImageArray*)ImageGreen)->ImageArray),*(((PyHirschImageArray*)ImageBlue)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Rgb3ToGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayDilationRect(PyHirschImageArray*self, PyObject *args)
{
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight,&MaskWidth)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayDilationRect(MaskHeight,MaskWidth));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayDilationRect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EnergyGabor(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageHilbert;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageHilbert)) {
            if (PyHirschImageArray_Check(ImageHilbert)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->EnergyGabor(*(((PyHirschImageArray*)ImageHilbert)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.EnergyGabor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Laplace(PyHirschImageArray*self, PyObject *args)
{
    char* FilterMask;
    char* ResultType;
    long MaskSize;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &ResultType,&MaskSize,&FilterMask)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Laplace(ResultType,MaskSize,FilterMask));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Laplace()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EstimateSlAlZc(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HTuple Albedo;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->EstimateSlAlZc(&Albedo)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Albedo));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AffineTransImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* AdaptImageSize;
    PyObject* Interpolation;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &HomMat2D,&Interpolation,&AdaptImageSize)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(AdaptImageSize)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AffineTransImage(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)AdaptImageSize)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AffineTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RftGeneric(PyHirschImageArray*self, PyObject *args)
{
    char* Direction;
    char* Norm;
    char* ResultType;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "sssl", &Direction,&Norm,&ResultType,&Width)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->RftGeneric(Direction,Norm,ResultType,Width));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RftGeneric()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayClosingShape(PyHirschImageArray*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayClosingShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayClosingShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MedianImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* MaskType;
    PyObject* Radius;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskType,&Radius,&Margin)) {
            if (PyHirschTuple_Check(MaskType) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(Margin)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MedianImage(*(((PyHirschTuple*)MaskType)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MedianImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_HClassName(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyString_FromString(self->ImageArray->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayOpening(PyHirschImageArray*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayOpening(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayOpening()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AnisotropeDiff(PyHirschImageArray*self, PyObject *args)
{
    long Mode;
    long NeighborhoodType;
    long Percent;
    long Iteration;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Percent,&Mode,&Iteration,&NeighborhoodType)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->AnisotropeDiff(Percent,Mode,Iteration,NeighborhoodType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AnisotropeDiff()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_InpaintingMcf(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    PyObject* Region;
    long Iterations;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "Oddl", &Region,&Sigma,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingMcf(*(((PyHirschRegion*)Region)->Region),Sigma,Theta,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.InpaintingMcf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitMask(PyHirschImageArray*self, PyObject *args)
{
    long BitMask;
    
    try {
        if (PyArg_ParseTuple(args, "l", &BitMask)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitMask(BitMask));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BitMask()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BinocularDistanceMg(PyHirschImageArray*self, PyObject *args)
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
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(CamParamRect1) && PyHirschTuple_Check(CamParamRect2) && PyHirschTuple_Check(RelPoseRect) && PyHirschTuple_Check(GrayConstancy) && PyHirschTuple_Check(GradientConstancy) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(InitialGuess) && PyHirschTuple_Check(CalculateScore) && PyHirschTuple_Check(MGParamName) && PyHirschTuple_Check(MGParamValue)) {
                Halcon::HImageArray Score;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->BinocularDistanceMg(*(((PyHirschImageArray*)Image2)->ImageArray),&Score,*(((PyHirschTuple*)CamParamRect1)->Tuple),*(((PyHirschTuple*)CamParamRect2)->Tuple),*(((PyHirschTuple*)RelPoseRect)->Tuple),*(((PyHirschTuple*)GrayConstancy)->Tuple),*(((PyHirschTuple*)GradientConstancy)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)InitialGuess)->Tuple),*(((PyHirschTuple*)CalculateScore)->Tuple),*(((PyHirschTuple*)MGParamName)->Tuple),*(((PyHirschTuple*)MGParamValue)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Score));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BinocularDistanceMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ZoomImageSize(PyHirschImageArray*self, PyObject *args)
{
    char* Interpolation;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "lls", &Width,&Height,&Interpolation)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ZoomImageSize(Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ZoomImageSize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CharThreshold(PyHirschImageArray*self, PyObject *args)
{
    double Percent;
    PyObject* HistoRegion;
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &HistoRegion,&Sigma,&Percent)) {
            if (PyHirschRegion_Check(HistoRegion)) {
                Halcon::HTuple Threshold;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->ImageArray->CharThreshold(*(((PyHirschRegion*)HistoRegion)->Region),Sigma,Percent,&Threshold)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Threshold));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CharThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BestMatch(PyHirschImageArray*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &TemplateID,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatch(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BestMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MeanCurvatureFlow(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    long Iterations;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "ddl", &Sigma,&Theta,&Iterations)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanCurvatureFlow(Sigma,Theta,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MeanCurvatureFlow()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ReadOcrTrainf(PyHirschImageArray*, PyObject *args)
{
    char* TrainFileNames;
    
    try {
        if (PyArg_ParseTuple(args, "s", &TrainFileNames)) {
            {
            // with output params
                Halcon::HTuple CharacterNames;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadOcrTrainf(TrainFileNames,&CharacterNames)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CharacterNames));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ReadOcrTrainf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AddNoiseWhite(PyHirschImageArray*self, PyObject *args)
{
    double Amp;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Amp)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->AddNoiseWhite(Amp));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AddNoiseWhite()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_LinearTransColor(PyHirschImageArray*self, PyObject *args)
{
    PyObject* TransMat;
    
    try {
        if (PyArg_ParseTuple(args, "O", &TransMat)) {
            if (PyHirschTuple_Check(TransMat)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->LinearTransColor(*(((PyHirschTuple*)TransMat)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.LinearTransColor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PrewittDir(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->PrewittDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_VectorFieldToReal(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray Col;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->VectorFieldToReal(&Col)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Col));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_InpaintingCed(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    PyObject* Region;
    long Iterations;
    double Rho;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "Odddl", &Region,&Sigma,&Rho,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingCed(*(((PyHirschRegion*)Region)->Region),Sigma,Rho,Theta,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.InpaintingCed()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ScaleImageMax(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->ScaleImageMax());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitSlice(PyHirschImageArray*self, PyObject *args)
{
    long Bit;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Bit)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitSlice(Bit));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BitSlice()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitRshift(PyHirschImageArray*self, PyObject *args)
{
    long Shift;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitRshift(Shift));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BitRshift()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_UnwarpImageVectorField(PyHirschImageArray*self, PyObject *args)
{
    PyObject* VectorField;
    
    try {
        if (PyArg_ParseTuple(args, "O", &VectorField)) {
            if (PyHirschImageArray_Check(VectorField)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->UnwarpImageVectorField(*(((PyHirschImageArray*)VectorField)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.UnwarpImageVectorField()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ExpandLine(PyHirschImageArray*self, PyObject *args)
{
    char* ExpandType;
    double Threshold;
    char* RowColumn;
    long Coordinate;
    
    try {
        if (PyArg_ParseTuple(args, "lssd", &Coordinate,&ExpandType,&RowColumn,&Threshold)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->ExpandLine(Coordinate,ExpandType,RowColumn,Threshold));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ExpandLine()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ChannelsToImage(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImage_FromHImage(self->ImageArray->ChannelsToImage());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FindShapeModels(PyHirschImageArray*self, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindShapeModels(ModelIDs,AngleStart,AngleExtent,MinScore,NumMatches,MaxOverlap,SubPixel,NumLevels,Greediness,&Column,&Angle,&Score,&Model)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Score));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Model));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FindShapeModels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_LutTrans(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Lut;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Lut)) {
            if (PyHirschTuple_Check(Lut)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->LutTrans(*(((PyHirschTuple*)Lut)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.LutTrans()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AnisotropicDiffusion(PyHirschImageArray*self, PyObject *args)
{
    double Contrast;
    long Iterations;
    char* Mode;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "sddl", &Mode,&Contrast,&Theta,&Iterations)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->AnisotropicDiffusion(Mode,Contrast,Theta,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AnisotropicDiffusion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_TransFromRgb(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageGreen;
    char* ColorSpace;
    PyObject* ImageBlue;
    
    try {
        if (PyArg_ParseTuple(args, "OOs", &ImageGreen,&ImageBlue,&ColorSpace)) {
            if (PyHirschImageArray_Check(ImageGreen) && PyHirschImageArray_Check(ImageBlue)) {
                Halcon::HImageArray ImageResult2;
                Halcon::HImageArray ImageResult3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->TransFromRgb(*(((PyHirschImageArray*)ImageGreen)->ImageArray),*(((PyHirschImageArray*)ImageBlue)->ImageArray),&ImageResult2,&ImageResult3,ColorSpace)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageResult2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(ImageResult3));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.TransFromRgb()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DualRank(PyHirschImageArray*self, PyObject *args)
{
    PyObject* MaskType;
    PyObject* ModePercent;
    PyObject* Radius;
    PyObject* Margin;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &MaskType,&Radius,&ModePercent,&Margin)) {
            if (PyHirschTuple_Check(MaskType) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(ModePercent) && PyHirschTuple_Check(Margin)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DualRank(*(((PyHirschTuple*)MaskType)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)ModePercent)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.DualRank()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PolarTransImage(PyHirschImageArray*self, PyObject *args)
{
    long Row;
    long Height;
    long Width;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row,&Column,&Width,&Height)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImage(Row,Column,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.PolarTransImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_InpaintingAniso(PyHirschImageArray*self, PyObject *args)
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingAniso(*(((PyHirschRegion*)Region)->Region),Mode,Contrast,Theta,Iterations,Rho));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.InpaintingAniso()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SobelDir(PyHirschImageArray*self, PyObject *args)
{
    char* FilterType;
    long Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType,&Size)) {
            {
            // with output params
                Halcon::HImageArray EdgeDirection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->SobelDir(&EdgeDirection,FilterType,Size)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(EdgeDirection));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SobelDir()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ReadImage(PyHirschImageArray*, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            return PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadImage(FileName));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ReadImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Regiongrowing(PyHirschImageArray*self, PyObject *args)
{
    long MinSize;
    double Tolerance;
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "lldl", &Row,&Column,&Tolerance,&MinSize)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Regiongrowing(Row,Column,Tolerance,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Regiongrowing()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_LaplaceOfGauss(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->LaplaceOfGauss(Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.LaplaceOfGauss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_MedianSeparate(PyHirschImageArray*self, PyObject *args)
{
    PyObject* MaskWidth;
    PyObject* Margin;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskWidth,&MaskHeight,&Margin)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(Margin)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MedianSeparate(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.MedianSeparate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Threshold(PyHirschImageArray*self, PyObject *args)
{
    double MaxGray;
    double MinGray;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &MinGray,&MaxGray)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Threshold(MinGray,MaxGray));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Threshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EstimateSlAlLr(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HTuple Albedo;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->EstimateSlAlLr(&Albedo)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Albedo));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_KirschDir(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray ImageEdgeDir;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->KirschDir(&ImageEdgeDir)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageEdgeDir));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitNot(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->BitNot());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_EdgesImage(PyHirschImageArray*self, PyObject *args)
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
                Halcon::HImageArray ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->EdgesImage(&ImaDir,Filter,Alpha,NMS,Low,High)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImaDir));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.EdgesImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AbsDiffImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    double Mult;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image2,&Mult)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AbsDiffImage(*(((PyHirschImageArray*)Image2)->ImageArray),Mult));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AbsDiffImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RankImage(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Rank;
    PyObject* Margin;
    PyObject* Mask;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Mask,&Rank,&Margin)) {
            if (PyHirschRegion_Check(Mask) && PyHirschTuple_Check(Rank) && PyHirschTuple_Check(Margin)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->RankImage(*(((PyHirschRegion*)Mask)->Region),*(((PyHirschTuple*)Rank)->Tuple),*(((PyHirschTuple*)Margin)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RankImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FftGeneric(PyHirschImageArray*self, PyObject *args)
{
    char* Direction;
    long Exponent;
    char* ResultType;
    char* Mode;
    char* Norm;
    
    try {
        if (PyArg_ParseTuple(args, "slsss", &Direction,&Exponent,&Norm,&Mode,&ResultType)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->FftGeneric(Direction,Exponent,Norm,Mode,ResultType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FftGeneric()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayDilation(PyHirschImageArray*self, PyObject *args)
{
    PyObject* SE;
    
    try {
        if (PyArg_ParseTuple(args, "O", &SE)) {
            if (PyHirschImage_Check(SE)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayDilation(*(((PyHirschImage*)SE)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayDilation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RealToComplex(PyHirschImageArray*self, PyObject *args)
{
    PyObject* ImageImaginary;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ImageImaginary)) {
            if (PyHirschImageArray_Check(ImageImaginary)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->RealToComplex(*(((PyHirschImageArray*)ImageImaginary)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RealToComplex()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_InpaintingCt(PyHirschImageArray*self, PyObject *args)
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingCt(*(((PyHirschRegion*)Region)->Region),Epsilon,Kappa,Sigma,Rho,ChannelCoefficients));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.InpaintingCt()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayOpeningShape(PyHirschImageArray*self, PyObject *args)
{
    char* MaskShape;
    double MaskHeight;
    double MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaskHeight,&MaskWidth,&MaskShape)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayOpeningShape(MaskHeight,MaskWidth,MaskShape));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.GrayOpeningShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BitXor(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Image2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image2)) {
            if (PyHirschImageArray_Check(Image2)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BitXor(*(((PyHirschImageArray*)Image2)->ImageArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BitXor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_AutoThreshold(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->AutoThreshold(Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.AutoThreshold()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_SigmaImage(PyHirschImageArray*self, PyObject *args)
{
    long Sigma;
    long MaskHeight;
    long MaskWidth;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &MaskHeight,&MaskWidth,&Sigma)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SigmaImage(MaskHeight,MaskWidth,Sigma));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.SigmaImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CoherenceEnhancingDiff(PyHirschImageArray*self, PyObject *args)
{
    double Sigma;
    long Iterations;
    double Rho;
    double Theta;
    
    try {
        if (PyArg_ParseTuple(args, "dddl", &Sigma,&Rho,&Theta,&Iterations)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CoherenceEnhancingDiff(Sigma,Rho,Theta,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CoherenceEnhancingDiff()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_GrayInside(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayInside());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RegiongrowingN(PyHirschImageArray*self, PyObject *args)
{
    double MaxTolerance;
    double MinTolerance;
    char* Metric;
    long MinSize;
    
    try {
        if (PyArg_ParseTuple(args, "sddl", &Metric,&MinTolerance,&MaxTolerance,&MinSize)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->RegiongrowingN(Metric,MinTolerance,MaxTolerance,MinSize));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RegiongrowingN()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_BestMatchMg(PyHirschImageArray*self, PyObject *args)
{
    char* SubPixel;
    double MaxError;
    long NumLevels;
    long WhichLevels;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Odsll", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->ImageArray->BestMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),MaxError,SubPixel,NumLevels,WhichLevels,&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.BestMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Decompose4(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray Image2;
        Halcon::HImageArray Image3;
        Halcon::HImageArray Image4;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->Decompose4(&Image2,&Image3,&Image4)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImageArray_FromHImageArray(Image4));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_FastMatch(PyHirschImageArray*self, PyObject *args)
{
    double MaxError;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &TemplateID,&MaxError)) {
            if (PyHirschTemplate_Check(TemplateID)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastMatch(*(((PyHirschTemplate*)TemplateID)->Template),MaxError));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.FastMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_CornerResponse(PyHirschImageArray*self, PyObject *args)
{
    long Size;
    double Weight;
    
    try {
        if (PyArg_ParseTuple(args, "ld", &Size,&Weight)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CornerResponse(Size,Weight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.CornerResponse()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Watersheds(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HRegionArray Watersheds;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->ImageArray->Watersheds(&Watersheds)));
        PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(Watersheds));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ExhaustiveMatchMg(PyHirschImageArray*self, PyObject *args)
{
    long Level;
    long Threshold;
    char* Mode;
    PyObject* ImageTemplate;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &ImageTemplate,&Mode,&Level,&Threshold)) {
            if (PyHirschImage_Check(ImageTemplate)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate)->Image),Mode,Level,Threshold));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ExhaustiveMatchMg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ChangeDomain(PyHirschImageArray*self, PyObject *args)
{
    PyObject* NewDomain;
    
    try {
        if (PyArg_ParseTuple(args, "O", &NewDomain)) {
            if (PyHirschRegion_Check(NewDomain)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ChangeDomain(*(((PyHirschRegion*)NewDomain)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ChangeDomain()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ProjectiveTransImageSize(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Height;
    PyObject* Interpolation;
    PyObject* Width;
    PyObject* HomMat2D;
    PyObject* TransformRegion;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &HomMat2D,&Interpolation,&Width,&Height,&TransformRegion)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(TransformRegion)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ProjectiveTransImageSize(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)TransformRegion)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ProjectiveTransImageSize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Emphasize(PyHirschImageArray*self, PyObject *args)
{
    long MaskWidth;
    long MaskHeight;
    double Factor;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth,&MaskHeight,&Factor)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Emphasize(MaskWidth,MaskHeight,Factor));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.Emphasize()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_ImageToWorldPlane(PyHirschImageArray*self, PyObject *args)
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ImageToWorldPlane(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)WorldPose)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.ImageToWorldPlane()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_RankN(PyHirschImageArray*self, PyObject *args)
{
    long RankIndex;
    
    try {
        if (PyArg_ParseTuple(args, "l", &RankIndex)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->RankN(RankIndex));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HImageArray.RankN()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_LocalMax(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->ImageArray->LocalMax());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Decompose7(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray Image2;
        Halcon::HImageArray Image3;
        Halcon::HImageArray Image4;
        Halcon::HImageArray Image5;
        Halcon::HImageArray Image6;
        Halcon::HImageArray Image7;
        PyObject *ret = PyTuple_New(7);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->Decompose7(&Image2,&Image3,&Image4,&Image5,&Image6,&Image7)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImageArray_FromHImageArray(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImageArray_FromHImageArray(Image5));
        PyTuple_SET_ITEM(ret, 5, PyHirschImageArray_FromHImageArray(Image6));
        PyTuple_SET_ITEM(ret, 6, PyHirschImageArray_FromHImageArray(Image7));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Decompose6(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray Image2;
        Halcon::HImageArray Image3;
        Halcon::HImageArray Image4;
        Halcon::HImageArray Image5;
        Halcon::HImageArray Image6;
        PyObject *ret = PyTuple_New(6);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->Decompose6(&Image2,&Image3,&Image4,&Image5,&Image6)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImageArray_FromHImageArray(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImageArray_FromHImageArray(Image5));
        PyTuple_SET_ITEM(ret, 5, PyHirschImageArray_FromHImageArray(Image6));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Decompose5(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray Image2;
        Halcon::HImageArray Image3;
        Halcon::HImageArray Image4;
        Halcon::HImageArray Image5;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->Decompose5(&Image2,&Image3,&Image4,&Image5)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(Image3));
        PyTuple_SET_ITEM(ret, 3, PyHirschImageArray_FromHImageArray(Image4));
        PyTuple_SET_ITEM(ret, 4, PyHirschImageArray_FromHImageArray(Image5));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_DeleteArray(PyHirschImageArray*self, PyObject *)
{
    try {
        self->ImageArray->DeleteArray();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Decompose3(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray Image2;
        Halcon::HImageArray Image3;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->Decompose3(&Image2,&Image3)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Image2));
        PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(Image3));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_Decompose2(PyHirschImageArray*self, PyObject *)
{
    try {
        Halcon::HImageArray Image2;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->Decompose2(&Image2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(Image2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschImageArray_PrewittAmp(PyHirschImageArray*self, PyObject *)
{
    try {
        return PyHirschImageArray_FromHImageArray(self->ImageArray->PrewittAmp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
