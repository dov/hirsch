PyObject *
PyHirschImageArray_HarmonicInterpolation(PyHirschImageArray*self, PyObject *args)
{
    PyObject* Precision;
    PyObject* Region;
    PyObject* Region1;
    double Precision1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Region1,&Precision1)) {
            if (PyHirschRegion_Check(Region1)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->HarmonicInterpolation(*(((PyHirschRegion*)Region1)->Region),Precision1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Region,&Precision)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Precision)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->HarmonicInterpolation(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Precision)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->VectorFieldLength(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->VectorFieldLength(Mode1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* NewType;
    char* NewType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &NewType1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ConvertImageType(NewType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &NewType)) {
            if (PyHirschTuple_Check(NewType)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ConvertImageType(*(((PyHirschTuple*)NewType)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType1,&Size1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SobelAmp(FilterType1,Size1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &FilterType,&Size)) {
            if (PyHirschTuple_Check(FilterType) && PyHirschTuple_Check(Size)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SobelAmp(*(((PyHirschTuple*)FilterType)->Tuple),*(((PyHirschTuple*)Size)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->DetectEdgeSegments(SobelSize1,MinAmplitude1,MaxDistance1,MinLength1,&BeginCol1,&EndRow1,&EndCol1)));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->DetectEdgeSegments(*(((PyHirschTuple*)SobelSize)->Tuple),*(((PyHirschTuple*)MinAmplitude)->Tuple),*(((PyHirschTuple*)MaxDistance)->Tuple),*(((PyHirschTuple*)MinLength)->Tuple),&BeginCol,&EndRow,&EndCol)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsModLr(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Slant1,&Tilt1,&Albedo1,&Ambient1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsModLr(Slant1,Tilt1,Albedo1,Ambient1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BandpassImage(FilterType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FilterType)) {
            if (PyHirschTuple_Check(FilterType)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BandpassImage(*(((PyHirschTuple*)FilterType)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatchRot(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddds", &TemplateID1,&AngleStart1,&AngleExtend1,&MaxError1,&SubPixel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                Halcon::HTuple Column1;
                Halcon::HTuple Angle1;
                Halcon::HTuple Error1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatchRot(*(((PyHirschTemplate*)TemplateID1)->Template),AngleStart1,AngleExtend1,MaxError1,SubPixel1,&Column1,&Angle1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->ClassNdimNorm(Metric1,SingleMultiple1,Radius1,Center1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Metric,&SingleMultiple,&Radius,&Center)) {
            if (PyHirschTuple_Check(Metric) && PyHirschTuple_Check(SingleMultiple) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(Center)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->ClassNdimNorm(*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)SingleMultiple)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)Center)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* TileOrder;
    long NumColumns1;
    char* TileOrder1;
    PyObject* NumColumns;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns1,&TileOrder1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->TileChannels(NumColumns1,TileOrder1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &NumColumns,&TileOrder)) {
            if (PyHirschTuple_Check(NumColumns) && PyHirschTuple_Check(TileOrder)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->TileChannels(*(((PyHirschTuple*)NumColumns)->Tuple),*(((PyHirschTuple*)TileOrder)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                Halcon::HImageArray ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->EdgesColor(&ImaDir,*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)NMS)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdsll", &Filter1,&Alpha1,&NMS1,&Low1,&High1)) {
            {
            // with output params
                Halcon::HImageArray ImaDir1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->EdgesColor(&ImaDir1,Filter1,Alpha1,NMS1,Low1,High1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImaDir1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth1,&MaskHeight1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BinomialFilter(MaskWidth1,MaskHeight1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskWidth,&MaskHeight)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BinomialFilter(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->HighpassImage(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->HighpassImage(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImageInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImageInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->EliminateSp(MaskWidth1,MaskHeight1,MinThresh1,MaxThresh1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MinThresh) && PyHirschTuple_Check(MaxThresh)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->EliminateSp(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MinThresh)->Tuple),*(((PyHirschTuple*)MaxThresh)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    char* ColorSpace1;
    PyObject* ColorSpace;
    PyObject* ImageInput21;
    PyObject* ImageInput31;
    PyObject* ImageInput2;
    PyObject* ImageInput3;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ImageInput2,&ImageInput3,&ColorSpace)) {
            if (PyHirschImageArray_Check(ImageInput2) && PyHirschImageArray_Check(ImageInput3) && PyHirschTuple_Check(ColorSpace)) {
                Halcon::HImageArray ImageGreen;
                Halcon::HImageArray ImageBlue;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->TransToRgb(*(((PyHirschImageArray*)ImageInput2)->ImageArray),*(((PyHirschImageArray*)ImageInput3)->ImageArray),&ImageGreen,&ImageBlue,*(((PyHirschTuple*)ColorSpace)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageGreen));
                PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(ImageBlue));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageInput21,&ImageInput31,&ColorSpace1)) {
            if (PyHirschImageArray_Check(ImageInput21) && PyHirschImageArray_Check(ImageInput31)) {
                Halcon::HImageArray ImageGreen1;
                Halcon::HImageArray ImageBlue1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->TransToRgb(*(((PyHirschImageArray*)ImageInput21)->ImageArray),*(((PyHirschImageArray*)ImageInput31)->ImageArray),&ImageGreen1,&ImageBlue1,ColorSpace1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageGreen1));
                PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(ImageBlue1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
                Halcon::HTuple Column1;
                Halcon::HTuple Angle1;
                Halcon::HTuple Error1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID1)->Template),AngleStart1,AngleExtend1,MaxError1,SubPixel1,NumLevels1,&Column1,&Angle1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &TemplateID,&AngleStart,&AngleExtend,&MaxError,&SubPixel,&NumLevels)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleExtend) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels)) {
                Halcon::HTuple Column;
                Halcon::HTuple Angle;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatchRotMg(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtend)->Tuple),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),&Column,&Angle,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayErosionShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayErosionShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
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
    PyObject* DiffUpperBound;
    PyObject* AddRow;
    PyObject* Pattern1;
    long AddRow1;
    long GrayOffset1;
    char* Mode1;
    PyObject* DiffLowerBound;
    PyObject* Mode;
    PyObject* GrayOffset;
    PyObject* Pattern;
    long AddCol1;
    long DiffLowerBound1;
    long DiffUpperBound1;
    PyObject* AddCol;
    
    try {
        if (PyArg_ParseTuple(args, "Oslllll", &Pattern1,&Mode1,&DiffLowerBound1,&DiffUpperBound1,&GrayOffset1,&AddRow1,&AddCol1)) {
            if (PyHirschImageArray_Check(Pattern1)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->CheckDifference(*(((PyHirschImageArray*)Pattern1)->ImageArray),Mode1,DiffLowerBound1,DiffUpperBound1,GrayOffset1,AddRow1,AddCol1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Pattern,&Mode,&DiffLowerBound,&DiffUpperBound,&GrayOffset,&AddRow,&AddCol)) {
            if (PyHirschImageArray_Check(Pattern) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(DiffLowerBound) && PyHirschTuple_Check(DiffUpperBound) && PyHirschTuple_Check(GrayOffset) && PyHirschTuple_Check(AddRow) && PyHirschTuple_Check(AddCol)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->CheckDifference(*(((PyHirschImageArray*)Pattern)->ImageArray),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)DiffLowerBound)->Tuple),*(((PyHirschTuple*)DiffUpperBound)->Tuple),*(((PyHirschTuple*)GrayOffset)->Tuple),*(((PyHirschTuple*)AddRow)->Tuple),*(((PyHirschTuple*)AddCol)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Sigma;
    PyObject* SigFactor;
    double Sigma1;
    double SigFactor1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Sigma,&SigFactor)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(SigFactor)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DiffOfGauss(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)SigFactor)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Sigma1,&SigFactor1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DiffOfGauss(Sigma1,SigFactor1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->FillInterlace(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->FillInterlace(Mode1));
        }
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FilterType1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Roberts(FilterType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FilterType)) {
            if (PyHirschTuple_Check(FilterType)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Roberts(*(((PyHirschTuple*)FilterType)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MirrorImage(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MirrorImage(Mode1));
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ChangeFormat(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ChangeFormat(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayErosionRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayErosionRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingTexture(*(((PyHirschRegion*)Region1)->Region),MaskSize1,SearchSize1,Anisotropy1,PostIteration1,Smoothness1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Region,&MaskSize,&SearchSize,&Anisotropy,&PostIteration,&Smoothness)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(SearchSize) && PyHirschTuple_Check(Anisotropy) && PyHirschTuple_Check(PostIteration) && PyHirschTuple_Check(Smoothness)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingTexture(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)SearchSize)->Tuple),*(((PyHirschTuple*)Anisotropy)->Tuple),*(((PyHirschTuple*)PostIteration)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Shift;
    long Shift1;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitLshift(Shift1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Shift)) {
            if (PyHirschTuple_Check(Shift)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BitLshift(*(((PyHirschTuple*)Shift)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Add;
    double Mult1;
    PyObject* ImageSubtrahend1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ImageSubtrahend,&Mult,&Add)) {
            if (PyHirschImageArray_Check(ImageSubtrahend) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SubImage(*(((PyHirschImageArray*)ImageSubtrahend)->ImageArray),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &ImageSubtrahend1,&Mult1,&Add1)) {
            if (PyHirschImageArray_Check(ImageSubtrahend1)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SubImage(*(((PyHirschImageArray*)ImageSubtrahend1)->ImageArray),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Add;
    PyObject* Mult;
    double Add1;
    double Mult1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mult,&Add)) {
            if (PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ScaleImage(*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Mult1,&Add1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ScaleImage(Mult1,Add1));
        }
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImageExt(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImageExt(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Alpha;
    char* Filter1;
    PyObject* Filter;
    double Alpha1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Filter1,&Alpha1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SmoothImage(Filter1,Alpha1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Filter,&Alpha)) {
            if (PyHirschTuple_Check(Filter) && PyHirschTuple_Check(Alpha)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SmoothImage(*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Channel;
    long WindowHandle1;
    PyObject* WindowHandle;
    long Channel1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &WindowHandle1,&Channel1)) {
            self->ImageArray->DispChannel(WindowHandle1,Channel1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &WindowHandle,&Channel)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Channel)) {
                self->ImageArray->DispChannel(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Channel)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Add;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Mult,&Add)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MultImage(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &Image21,&Mult1,&Add1)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MultImage(*(((PyHirschImageArray*)Image21)->ImageArray),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsPentland(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Slant1,&Tilt1,&Albedo1,&Ambient1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsPentland(Slant1,Tilt1,Albedo1,Ambient1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* Sigma;
    double Sigma1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "dl", &Sigma1,&Iterations1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->IsotropicDiffusion(Sigma1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Sigma,&Iterations)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->IsotropicDiffusion(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayOpeningRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayOpeningRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MinSize;
    double Threshold1;
    double MinGray1;
    PyObject* Threshold;
    PyObject* MinGray;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MinSize,&MinGray,&Threshold)) {
            if (PyHirschTuple_Check(MinSize) && PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->DualThreshold(*(((PyHirschTuple*)MinSize)->Tuple),*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ldd", &MinSize1,&MinGray1,&Threshold1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->DualThreshold(MinSize1,MinGray1,Threshold1));
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Rectangle1Domain(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Rectangle1Domain(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
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
    PyObject* ExpansionRange;
    long ExpansionRange1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ExpansionRange)) {
            if (PyHirschTuple_Check(ExpansionRange)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ExpandDomainGray(*(((PyHirschTuple*)ExpansionRange)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &ExpansionRange1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ExpandDomainGray(ExpansionRange1));
        }
        PyErr_Clear();
        
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
            return PyHirschImage_FromHImage(self->ImageArray->TileImagesOffset(OffsetRow1,OffsetCol1,Row11,Col11,Row21,Col21,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &OffsetRow,&OffsetCol,&Row1,&Col1,&Row2,&Col2,&Width,&Height)) {
            if (PyHirschTuple_Check(OffsetRow) && PyHirschTuple_Check(OffsetCol) && PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Col1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Col2) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->ImageArray->TileImagesOffset(*(((PyHirschTuple*)OffsetRow)->Tuple),*(((PyHirschTuple*)OffsetCol)->Tuple),*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Col1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Col2)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MinSize;
    PyObject* MinGray;
    PyObject* MaxGray;
    double MinGray1;
    double MaxGray1;
    long MinSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MinGray,&MaxGray,&MinSize)) {
            if (PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(MaxGray) && PyHirschTuple_Check(MinSize)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastThreshold(*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)MaxGray)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddl", &MinGray1,&MaxGray1,&MinSize1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastThreshold(MinGray1,MaxGray1,MinSize1));
        }
        PyErr_Clear();
        
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
    PyObject* TrainFileNames;
    char* TrainFileNames1;
    PyObject* SearchNames;
    char* SearchNames1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &TrainFileNames,&SearchNames)) {
            if (PyHirschTuple_Check(TrainFileNames) && PyHirschTuple_Check(SearchNames)) {
                Halcon::HTuple FoundNames;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadOcrTrainfSelect(*(((PyHirschTuple*)TrainFileNames)->Tuple),*(((PyHirschTuple*)SearchNames)->Tuple),&FoundNames)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(FoundNames));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ss", &TrainFileNames1,&SearchNames1)) {
            {
            // with output params
                Halcon::HTuple FoundNames1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadOcrTrainfSelect(TrainFileNames1,SearchNames1,&FoundNames1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(FoundNames1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ShadeHeightField(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple),*(((PyHirschTuple*)Shadows)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddds", &Slant1,&Tilt1,&Albedo1,&Ambient1,&Shadows1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ShadeHeightField(Slant1,Tilt1,Albedo1,Ambient1,Shadows1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CropDomainRel(Top1,Left1,Bottom1,Right1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Top,&Left,&Bottom,&Right)) {
            if (PyHirschTuple_Check(Top) && PyHirschTuple_Check(Left) && PyHirschTuple_Check(Bottom) && PyHirschTuple_Check(Right)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->CropDomainRel(*(((PyHirschTuple*)Top)->Tuple),*(((PyHirschTuple*)Left)->Tuple),*(((PyHirschTuple*)Bottom)->Tuple),*(((PyHirschTuple*)Right)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->CropPart(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Width1,&Height1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CropPart(Row1,Column1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    PyObject* Shift;
    long FilterSize1;
    PyObject* FilterTypes;
    PyObject* FilterSize;
    long Shift1;
    char* FilterTypes1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &FilterTypes1,&Shift1,&FilterSize1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->TextureLaws(FilterTypes1,Shift1,FilterSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &FilterTypes,&Shift,&FilterSize)) {
            if (PyHirschTuple_Check(FilterTypes) && PyHirschTuple_Check(Shift) && PyHirschTuple_Check(FilterSize)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->TextureLaws(*(((PyHirschTuple*)FilterTypes)->Tuple),*(((PyHirschTuple*)Shift)->Tuple),*(((PyHirschTuple*)FilterSize)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    char* Interpolation1;
    PyObject* Interpolation;
    PyObject* Phi;
    double Phi1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Phi,&Interpolation)) {
            if (PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->RotateImage(*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Phi1,&Interpolation1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->RotateImage(Phi1,Interpolation1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayRangeRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayRangeRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    double Factor1;
    long MaskWidth1;
    PyObject* Factor;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth1,&MaskHeight1,&Factor1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Illuminate(MaskWidth1,MaskHeight1,Factor1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskWidth,&MaskHeight,&Factor)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(Factor)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Illuminate(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)Factor)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskSize;
    double Exponent1;
    PyObject* Direction;
    long MaskSize1;
    double Direction1;
    PyObject* Exponent;
    
    try {
        if (PyArg_ParseTuple(args, "ldd", &MaskSize1,&Direction1,&Exponent1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Symmetry(MaskSize1,Direction1,Exponent1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskSize,&Direction,&Exponent)) {
            if (PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(Direction) && PyHirschTuple_Check(Exponent)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Symmetry(*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)Direction)->Tuple),*(((PyHirschTuple*)Exponent)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Low;
    PyObject* High;
    long MaxLength1;
    long Low1;
    long High1;
    PyObject* MaxLength;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Low1,&High1,&MaxLength1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->HysteresisThreshold(Low1,High1,MaxLength1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Low,&High,&MaxLength)) {
            if (PyHirschTuple_Check(Low) && PyHirschTuple_Check(High) && PyHirschTuple_Check(MaxLength)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->HysteresisThreshold(*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple),*(((PyHirschTuple*)MaxLength)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->VarThreshold(MaskWidth1,MaskHeight1,StdDevScale1,AbsThreshold1,LightDark1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &MaskWidth,&MaskHeight,&StdDevScale,&AbsThreshold,&LightDark)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(StdDevScale) && PyHirschTuple_Check(AbsThreshold) && PyHirschTuple_Check(LightDark)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->VarThreshold(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)StdDevScale)->Tuple),*(((PyHirschTuple*)AbsThreshold)->Tuple),*(((PyHirschTuple*)LightDark)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Add;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Mult,&Add)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DivImage(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &Image21,&Mult1,&Add1)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DivImage(*(((PyHirschImageArray*)Image21)->ImageArray),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindScaledShapeModels(*(((PyHirschTuple*)ModelIDs)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)ScaleMin)->Tuple),*(((PyHirschTuple*)ScaleMax)->Tuple),*(((PyHirschTuple*)MinScore)->Tuple),*(((PyHirschTuple*)NumMatches)->Tuple),*(((PyHirschTuple*)MaxOverlap)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)Greediness)->Tuple),&Column,&Angle,&Scale,&Score,&Model)));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindScaledShapeModels(ModelIDs1,AngleStart1,AngleExtent1,ScaleMin1,ScaleMax1,MinScore1,NumMatches1,MaxOverlap1,SubPixel1,NumLevels1,Greediness1,&Column1,&Angle1,&Scale1,&Score1,&Model1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Scale1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Score1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Model1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                Halcon::HTuple Column1;
                Halcon::HTuple Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->ImageArray->BestMatchPreMg(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,SubPixel1,NumLevels1,WhichLevels1,&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(WhichLevels)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->ImageArray->BestMatchPreMg(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)WhichLevels)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Sigma;
    double Sigma1;
    char* Component1;
    PyObject* Component;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Sigma,&Component)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Component)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DerivateGauss(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Component)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ds", &Sigma1,&Component1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DerivateGauss(Sigma1,Component1));
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->CropRectangle1(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CropRectangle1(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayDilationShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayDilationShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanSp(MaskWidth1,MaskHeight1,MinThresh1,MaxThresh1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &MaskWidth,&MaskHeight,&MinThresh,&MaxThresh)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MinThresh) && PyHirschTuple_Check(MaxThresh)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanSp(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MinThresh)->Tuple),*(((PyHirschTuple*)MaxThresh)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Class;
    char* Class1;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &Class1,&FileName1)) {
            self->ImageArray->WriteOcrTrainfImage(Class1,FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Class,&FileName)) {
            if (PyHirschTuple_Check(Class) && PyHirschTuple_Check(FileName)) {
                self->ImageArray->WriteOcrTrainfImage(*(((PyHirschTuple*)Class)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Size1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GaussImage(Size1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Size)) {
            if (PyHirschTuple_Check(Size)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GaussImage(*(((PyHirschTuple*)Size)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &images)) {
            if (PyHirschImageArray_Check(images)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Append(*(((PyHirschImageArray*)images)->ImageArray)));
            }
        }
        PyErr_Clear();
        
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
    double Offset1;
    PyObject* ThresholdImage;
    char* LightDark1;
    PyObject* ThresholdImage1;
    PyObject* Offset;
    PyObject* LightDark;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ThresholdImage,&Offset,&LightDark)) {
            if (PyHirschImageArray_Check(ThresholdImage) && PyHirschTuple_Check(Offset) && PyHirschTuple_Check(LightDark)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->DynThreshold(*(((PyHirschImageArray*)ThresholdImage)->ImageArray),*(((PyHirschTuple*)Offset)->Tuple),*(((PyHirschTuple*)LightDark)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &ThresholdImage1,&Offset1,&LightDark1)) {
            if (PyHirschImageArray_Check(ThresholdImage1)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->DynThreshold(*(((PyHirschImageArray*)ThresholdImage1)->ImageArray),Offset1,LightDark1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* ImgDir1;
    PyObject* ImgDir;
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &ImgDir1,&Mode1)) {
            if (PyHirschImageArray_Check(ImgDir1)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->NonmaxSuppressionDir(*(((PyHirschImageArray*)ImgDir1)->ImageArray),Mode1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &ImgDir,&Mode)) {
            if (PyHirschImageArray_Check(ImgDir) && PyHirschTuple_Check(Mode)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->NonmaxSuppressionDir(*(((PyHirschImageArray*)ImgDir)->ImageArray),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long PolynomialDegree1;
    double Smoothness1;
    char* Features1;
    PyObject* ExposureRatios;
    double ExposureRatios1;
    PyObject* Smoothness;
    PyObject* FunctionType;
    PyObject* Features;
    PyObject* PolynomialDegree;
    char* FunctionType1;
    
    try {
        if (PyArg_ParseTuple(args, "dssdl", &ExposureRatios1,&Features1,&FunctionType1,&Smoothness1,&PolynomialDegree1)) {
            return PyHirschTuple_FromHTuple(self->ImageArray->RadiometricSelfCalibration(ExposureRatios1,Features1,FunctionType1,Smoothness1,PolynomialDegree1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &ExposureRatios,&Features,&FunctionType,&Smoothness,&PolynomialDegree)) {
            if (PyHirschTuple_Check(ExposureRatios) && PyHirschTuple_Check(Features) && PyHirschTuple_Check(FunctionType) && PyHirschTuple_Check(Smoothness) && PyHirschTuple_Check(PolynomialDegree)) {
                return PyHirschTuple_FromHTuple(self->ImageArray->RadiometricSelfCalibration(*(((PyHirschTuple*)ExposureRatios)->Tuple),*(((PyHirschTuple*)Features)->Tuple),*(((PyHirschTuple*)FunctionType)->Tuple),*(((PyHirschTuple*)Smoothness)->Tuple),*(((PyHirschTuple*)PolynomialDegree)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindAnisoShapeModels(ModelIDs1,AngleStart1,AngleExtent1,ScaleRMin1,ScaleRMax1,ScaleCMin1,ScaleCMax1,MinScore1,NumMatches1,MaxOverlap1,SubPixel1,NumLevels1,Greediness1,&Column1,&Angle1,&ScaleR1,&ScaleC1,&Score1,&Model1)));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindAnisoShapeModels(*(((PyHirschTuple*)ModelIDs)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)ScaleRMin)->Tuple),*(((PyHirschTuple*)ScaleRMax)->Tuple),*(((PyHirschTuple*)ScaleCMin)->Tuple),*(((PyHirschTuple*)ScaleCMax)->Tuple),*(((PyHirschTuple*)MinScore)->Tuple),*(((PyHirschTuple*)NumMatches)->Tuple),*(((PyHirschTuple*)MaxOverlap)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)Greediness)->Tuple),&Column,&Angle,&ScaleR,&ScaleC,&Score,&Model)));
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
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ShockFilter(Theta1,Iterations1,Mode1,Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Theta,&Iterations,&Mode,&Sigma)) {
            if (PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Sigma)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ShockFilter(*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* PixelShift;
    PyObject* Diameter;
    PyObject* FilterType;
    char* FilterType1;
    long PixelShift1;
    long Diameter1;
    
    try {
        if (PyArg_ParseTuple(args, "lsl", &Diameter1,&FilterType1,&PixelShift1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DotsImage(Diameter1,FilterType1,PixelShift1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Diameter,&FilterType,&PixelShift)) {
            if (PyHirschTuple_Check(Diameter) && PyHirschTuple_Check(FilterType) && PyHirschTuple_Check(PixelShift)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DotsImage(*(((PyHirschTuple*)Diameter)->Tuple),*(((PyHirschTuple*)FilterType)->Tuple),*(((PyHirschTuple*)PixelShift)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->EntropyImage(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->EntropyImage(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double ScaleWidth1;
    PyObject* Interpolation;
    PyObject* ScaleWidth;
    double ScaleHeight1;
    PyObject* ScaleHeight;
    char* Interpolation1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ScaleWidth,&ScaleHeight,&Interpolation)) {
            if (PyHirschTuple_Check(ScaleWidth) && PyHirschTuple_Check(ScaleHeight) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ZoomImageFactor(*(((PyHirschTuple*)ScaleWidth)->Tuple),*(((PyHirschTuple*)ScaleHeight)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &ScaleWidth1,&ScaleHeight1,&Interpolation1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ZoomImageFactor(ScaleWidth1,ScaleHeight1,Interpolation1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskType;
    PyObject* MaskSize;
    long MaskSize1;
    char* MaskType1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &MaskType1,&MaskSize1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MedianWeighted(MaskType1,MaskSize1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskType,&MaskSize)) {
            if (PyHirschTuple_Check(MaskType) && PyHirschTuple_Check(MaskSize)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MedianWeighted(*(((PyHirschTuple*)MaskType)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* FillColor;
    long FillColor1;
    PyObject* Format;
    char* Format1;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "sls", &Format1,&FillColor1,&FileName1)) {
            self->ImageArray->WriteImage(Format1,FillColor1,FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Format,&FillColor,&FileName)) {
            if (PyHirschTuple_Check(Format) && PyHirschTuple_Check(FillColor) && PyHirschTuple_Check(FileName)) {
                self->ImageArray->WriteImage(*(((PyHirschTuple*)Format)->Tuple),*(((PyHirschTuple*)FillColor)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    double MaxError1;
    PyObject* TemplateID;
    PyObject* MaxError;
    long NumLevel1;
    PyObject* NumLevel;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "Odl", &TemplateID1,&MaxError1,&NumLevel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastMatchMg(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,NumLevel1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &TemplateID,&MaxError,&NumLevel)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(NumLevel)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)NumLevel)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->DeviationImage(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->DeviationImage(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Percent;
    char* Method1;
    double Percent1;
    PyObject* Method;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Method,&Percent)) {
            if (PyHirschTuple_Check(Method) && PyHirschTuple_Check(Percent)) {
                return PyHirschTuple_FromHTuple(self->ImageArray->EstimateNoise(*(((PyHirschTuple*)Method)->Tuple),*(((PyHirschTuple*)Percent)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Method1,&Percent1)) {
            return PyHirschTuple_FromHTuple(self->ImageArray->EstimateNoise(Method1,Percent1));
        }
        PyErr_Clear();
        
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
    PyObject* Add;
    PyObject* Image21;
    PyObject* Image2;
    double Mult1;
    PyObject* Mult;
    double Add1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image2,&Mult,&Add)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(Mult) && PyHirschTuple_Check(Add)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AddImage(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschTuple*)Mult)->Tuple),*(((PyHirschTuple*)Add)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Odd", &Image21,&Mult1,&Add1)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AddImage(*(((PyHirschImageArray*)Image21)->ImageArray),Mult1,Add1));
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->NonmaxSuppressionAmp(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->NonmaxSuppressionAmp(Mode1));
        }
        PyErr_Clear();
        
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
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->RegiongrowingMean(*(((PyHirschTuple*)StartRows)->Tuple),*(((PyHirschTuple*)StartColumns)->Tuple),*(((PyHirschTuple*)Tolerance)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldl", &StartRows1,&StartColumns1,&Tolerance1,&MinSize1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->RegiongrowingMean(StartRows1,StartColumns1,Tolerance1,MinSize1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayClosingRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayClosingRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->GenInitialComponents(*(((PyHirschTuple*)ContrastLow)->Tuple),*(((PyHirschTuple*)ContrastHigh)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)GenericName)->Tuple),*(((PyHirschTuple*)GenericValue)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lllssd", &ContrastLow1,&ContrastHigh1,&MinSize1,&Mode1,&GenericName1,&GenericValue1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->GenInitialComponents(ContrastLow1,ContrastHigh1,MinSize1,Mode1,GenericName1,GenericValue1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskWidth1,&MaskHeight1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanImage(MaskWidth1,MaskHeight1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskWidth,&MaskHeight)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanImage(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* TileOrder;
    long NumColumns1;
    char* TileOrder1;
    PyObject* NumColumns;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &NumColumns1,&TileOrder1)) {
            return PyHirschImage_FromHImage(self->ImageArray->TileImages(NumColumns1,TileOrder1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &NumColumns,&TileOrder)) {
            if (PyHirschTuple_Check(NumColumns) && PyHirschTuple_Check(TileOrder)) {
                return PyHirschImage_FromHImage(self->ImageArray->TileImages(*(((PyHirschTuple*)NumColumns)->Tuple),*(((PyHirschTuple*)TileOrder)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsOrigLr(*(((PyHirschTuple*)Slant)->Tuple),*(((PyHirschTuple*)Tilt)->Tuple),*(((PyHirschTuple*)Albedo)->Tuple),*(((PyHirschTuple*)Ambient)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Slant1,&Tilt1,&Albedo1,&Ambient1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SfsOrigLr(Slant1,Tilt1,Albedo1,Ambient1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &MaskHeight1,&MaskWidth1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayDilationRect(MaskHeight1,MaskWidth1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MaskHeight,&MaskWidth)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayDilationRect(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    char* FilterMask1;
    PyObject* MaskSize;
    PyObject* ResultType;
    PyObject* FilterMask;
    char* ResultType1;
    long MaskSize1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ResultType,&MaskSize,&FilterMask)) {
            if (PyHirschTuple_Check(ResultType) && PyHirschTuple_Check(MaskSize) && PyHirschTuple_Check(FilterMask)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Laplace(*(((PyHirschTuple*)ResultType)->Tuple),*(((PyHirschTuple*)MaskSize)->Tuple),*(((PyHirschTuple*)FilterMask)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sls", &ResultType1,&MaskSize1,&FilterMask1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Laplace(ResultType1,MaskSize1,FilterMask1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->RftGeneric(Direction1,Norm1,ResultType1,Width1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Direction,&Norm,&ResultType,&Width)) {
            if (PyHirschTuple_Check(Direction) && PyHirschTuple_Check(Norm) && PyHirschTuple_Check(ResultType) && PyHirschTuple_Check(Width)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->RftGeneric(*(((PyHirschTuple*)Direction)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)ResultType)->Tuple),*(((PyHirschTuple*)Width)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayClosingShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayClosingShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AnisotropeDiff(*(((PyHirschTuple*)Percent)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Iteration)->Tuple),*(((PyHirschTuple*)NeighborhoodType)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Percent1,&Mode1,&Iteration1,&NeighborhoodType1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->AnisotropeDiff(Percent1,Mode1,Iteration1,NeighborhoodType1));
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingMcf(*(((PyHirschRegion*)Region1)->Region),Sigma1,Theta1,Iterations1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Region,&Sigma,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingMcf(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* BitMask;
    long BitMask1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &BitMask)) {
            if (PyHirschTuple_Check(BitMask)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BitMask(*(((PyHirschTuple*)BitMask)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &BitMask1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitMask(BitMask1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Interpolation;
    long Height1;
    PyObject* Height;
    char* Interpolation1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ZoomImageSize(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lls", &Width1,&Height1,&Interpolation1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->ZoomImageSize(Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        
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
    double Sigma1;
    double Percent1;
    PyObject* Percent;
    PyObject* HistoRegion;
    PyObject* Sigma;
    PyObject* HistoRegion1;
    
    try {
        if (PyArg_ParseTuple(args, "Odd", &HistoRegion1,&Sigma1,&Percent1)) {
            if (PyHirschRegion_Check(HistoRegion1)) {
                Halcon::HTuple Threshold1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->ImageArray->CharThreshold(*(((PyHirschRegion*)HistoRegion1)->Region),Sigma1,Percent1,&Threshold1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Threshold1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &HistoRegion,&Sigma,&Percent)) {
            if (PyHirschRegion_Check(HistoRegion) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Percent)) {
                Halcon::HTuple Threshold;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->ImageArray->CharThreshold(*(((PyHirschRegion*)HistoRegion)->Region),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Percent)->Tuple),&Threshold)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Threshold));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double MaxError1;
    PyObject* SubPixel;
    PyObject* TemplateID;
    PyObject* MaxError;
    char* SubPixel1;
    PyObject* TemplateID1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &TemplateID,&MaxError,&SubPixel)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatch(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &TemplateID1,&MaxError1,&SubPixel1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                Halcon::HTuple Column1;
                Halcon::HTuple Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->BestMatch(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,SubPixel1,&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    double Sigma1;
    PyObject* Theta;
    long Iterations1;
    PyObject* Sigma;
    double Theta1;
    
    try {
        if (PyArg_ParseTuple(args, "ddl", &Sigma1,&Theta1,&Iterations1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanCurvatureFlow(Sigma1,Theta1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Sigma,&Theta,&Iterations)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->MeanCurvatureFlow(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* TrainFileNames;
    char* TrainFileNames1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &TrainFileNames)) {
            if (PyHirschTuple_Check(TrainFileNames)) {
                Halcon::HTuple CharacterNames;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadOcrTrainf(*(((PyHirschTuple*)TrainFileNames)->Tuple),&CharacterNames)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CharacterNames));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &TrainFileNames1)) {
            {
            // with output params
                Halcon::HTuple CharacterNames1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadOcrTrainf(TrainFileNames1,&CharacterNames1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CharacterNames1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Amp;
    double Amp1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Amp)) {
            if (PyHirschTuple_Check(Amp)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AddNoiseWhite(*(((PyHirschTuple*)Amp)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "d", &Amp1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->AddNoiseWhite(Amp1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingCed(*(((PyHirschRegion*)Region1)->Region),Sigma1,Rho1,Theta1,Iterations1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Region,&Sigma,&Rho,&Theta,&Iterations)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Rho) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingCed(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Rho)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Bit;
    long Bit1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Bit)) {
            if (PyHirschTuple_Check(Bit)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BitSlice(*(((PyHirschTuple*)Bit)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Bit1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitSlice(Bit1));
        }
        PyErr_Clear();
        
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
    PyObject* Shift;
    long Shift1;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Shift1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->BitRshift(Shift1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Shift)) {
            if (PyHirschTuple_Check(Shift)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->BitRshift(*(((PyHirschTuple*)Shift)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->ExpandLine(Coordinate1,ExpandType1,RowColumn1,Threshold1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Coordinate,&ExpandType,&RowColumn,&Threshold)) {
            if (PyHirschTuple_Check(Coordinate) && PyHirschTuple_Check(ExpandType) && PyHirschTuple_Check(RowColumn) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->ExpandLine(*(((PyHirschTuple*)Coordinate)->Tuple),*(((PyHirschTuple*)ExpandType)->Tuple),*(((PyHirschTuple*)RowColumn)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindShapeModels(*(((PyHirschTuple*)ModelIDs)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleExtent)->Tuple),*(((PyHirschTuple*)MinScore)->Tuple),*(((PyHirschTuple*)NumMatches)->Tuple),*(((PyHirschTuple*)MaxOverlap)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)Greediness)->Tuple),&Column,&Angle,&Score,&Model)));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->ImageArray->FindShapeModels(ModelIDs1,AngleStart1,AngleExtent1,MinScore1,NumMatches1,MaxOverlap1,SubPixel1,NumLevels1,Greediness1,&Column1,&Angle1,&Score1,&Model1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Angle1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Score1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Model1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AnisotropicDiffusion(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddl", &Mode1,&Contrast1,&Theta1,&Iterations1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->AnisotropicDiffusion(Mode1,Contrast1,Theta1,Iterations1));
        }
        PyErr_Clear();
        
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
    char* ColorSpace1;
    PyObject* ColorSpace;
    PyObject* ImageGreen;
    PyObject* ImageBlue1;
    PyObject* ImageGreen1;
    PyObject* ImageBlue;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ImageGreen,&ImageBlue,&ColorSpace)) {
            if (PyHirschImageArray_Check(ImageGreen) && PyHirschImageArray_Check(ImageBlue) && PyHirschTuple_Check(ColorSpace)) {
                Halcon::HImageArray ImageResult2;
                Halcon::HImageArray ImageResult3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->TransFromRgb(*(((PyHirschImageArray*)ImageGreen)->ImageArray),*(((PyHirschImageArray*)ImageBlue)->ImageArray),&ImageResult2,&ImageResult3,*(((PyHirschTuple*)ColorSpace)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageResult2));
                PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(ImageResult3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ImageGreen1,&ImageBlue1,&ColorSpace1)) {
            if (PyHirschImageArray_Check(ImageGreen1) && PyHirschImageArray_Check(ImageBlue1)) {
                Halcon::HImageArray ImageResult21;
                Halcon::HImageArray ImageResult31;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->TransFromRgb(*(((PyHirschImageArray*)ImageGreen1)->ImageArray),*(((PyHirschImageArray*)ImageBlue1)->ImageArray),&ImageResult21,&ImageResult31,ColorSpace1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImageResult21));
                PyTuple_SET_ITEM(ret, 2, PyHirschImageArray_FromHImageArray(ImageResult31));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImage(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Width1,&Height1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->PolarTransImage(Row1,Column1,Width1,Height1));
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingAniso(*(((PyHirschRegion*)Region1)->Region),Mode1,Contrast1,Theta1,Iterations1,Rho1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Region,&Mode,&Contrast,&Theta,&Iterations,&Rho)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Contrast) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Rho)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingAniso(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Rho)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* FilterType;
    char* FilterType1;
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &FilterType1,&Size1)) {
            {
            // with output params
                Halcon::HImageArray EdgeDirection1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->SobelDir(&EdgeDirection1,FilterType1,Size1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(EdgeDirection1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &FilterType,&Size)) {
            if (PyHirschTuple_Check(FilterType) && PyHirschTuple_Check(Size)) {
                Halcon::HImageArray EdgeDirection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->SobelDir(&EdgeDirection,*(((PyHirschTuple*)FilterType)->Tuple),*(((PyHirschTuple*)Size)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(EdgeDirection));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            return PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadImage(FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschImageArray_FromHImageArray(Halcon::HImageArray::ReadImage(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Regiongrowing(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Tolerance)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldl", &Row1,&Column1,&Tolerance1,&MinSize1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Regiongrowing(Row1,Column1,Tolerance1,MinSize1));
        }
        PyErr_Clear();
        
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
    PyObject* Sigma;
    double Sigma1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->LaplaceOfGauss(Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Sigma)) {
            if (PyHirschTuple_Check(Sigma)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->LaplaceOfGauss(*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    double MaxGray1;
    PyObject* MaxGray;
    PyObject* MinGray;
    double MinGray1;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &MinGray1,&MaxGray1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Threshold(MinGray1,MaxGray1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &MinGray,&MaxGray)) {
            if (PyHirschTuple_Check(MinGray) && PyHirschTuple_Check(MaxGray)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->Threshold(*(((PyHirschTuple*)MinGray)->Tuple),*(((PyHirschTuple*)MaxGray)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                Halcon::HImageArray ImaDir;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->EdgesImage(&ImaDir,*(((PyHirschTuple*)Filter)->Tuple),*(((PyHirschTuple*)Alpha)->Tuple),*(((PyHirschTuple*)NMS)->Tuple),*(((PyHirschTuple*)Low)->Tuple),*(((PyHirschTuple*)High)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImaDir));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdsll", &Filter1,&Alpha1,&NMS1,&Low1,&High1)) {
            {
            // with output params
                Halcon::HImageArray ImaDir1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->ImageArray->EdgesImage(&ImaDir1,Filter1,Alpha1,NMS1,Low1,High1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImageArray_FromHImageArray(ImaDir1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image21;
    PyObject* Mult;
    PyObject* Image2;
    double Mult1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image21,&Mult1)) {
            if (PyHirschImageArray_Check(Image21)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AbsDiffImage(*(((PyHirschImageArray*)Image21)->ImageArray),Mult1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image2,&Mult)) {
            if (PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(Mult)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->AbsDiffImage(*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschTuple*)Mult)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->FftGeneric(*(((PyHirschTuple*)Direction)->Tuple),*(((PyHirschTuple*)Exponent)->Tuple),*(((PyHirschTuple*)Norm)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)ResultType)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slsss", &Direction1,&Exponent1,&Norm1,&Mode1,&ResultType1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->FftGeneric(Direction1,Exponent1,Norm1,Mode1,ResultType1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingCt(*(((PyHirschRegion*)Region1)->Region),Epsilon1,Kappa1,Sigma1,Rho1,ChannelCoefficients1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &Region,&Epsilon,&Kappa,&Sigma,&Rho,&ChannelCoefficients)) {
            if (PyHirschRegion_Check(Region) && PyHirschTuple_Check(Epsilon) && PyHirschTuple_Check(Kappa) && PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Rho) && PyHirschTuple_Check(ChannelCoefficients)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->InpaintingCt(*(((PyHirschRegion*)Region)->Region),*(((PyHirschTuple*)Epsilon)->Tuple),*(((PyHirschTuple*)Kappa)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Rho)->Tuple),*(((PyHirschTuple*)ChannelCoefficients)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskShape;
    PyObject* MaskWidth;
    double MaskWidth1;
    PyObject* MaskHeight;
    char* MaskShape1;
    double MaskHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&MaskShape)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskShape)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayOpeningShape(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskShape)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaskHeight1,&MaskWidth1,&MaskShape1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->GrayOpeningShape(MaskHeight1,MaskWidth1,MaskShape1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Sigma;
    double Sigma1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Sigma1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->AutoThreshold(Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Sigma)) {
            if (PyHirschTuple_Check(Sigma)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->AutoThreshold(*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    long MaskWidth1;
    long Sigma1;
    PyObject* Sigma;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &MaskHeight1,&MaskWidth1,&Sigma1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->SigmaImage(MaskHeight1,MaskWidth1,Sigma1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskHeight,&MaskWidth,&Sigma)) {
            if (PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(Sigma)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->SigmaImage(*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)Sigma)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CoherenceEnhancingDiff(Sigma1,Rho1,Theta1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Sigma,&Rho,&Theta,&Iterations)) {
            if (PyHirschTuple_Check(Sigma) && PyHirschTuple_Check(Rho) && PyHirschTuple_Check(Theta) && PyHirschTuple_Check(Iterations)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->CoherenceEnhancingDiff(*(((PyHirschTuple*)Sigma)->Tuple),*(((PyHirschTuple*)Rho)->Tuple),*(((PyHirschTuple*)Theta)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->RegiongrowingN(*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)MinTolerance)->Tuple),*(((PyHirschTuple*)MaxTolerance)->Tuple),*(((PyHirschTuple*)MinSize)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddl", &Metric1,&MinTolerance1,&MaxTolerance1,&MinSize1)) {
            return PyHirschRegionArray_FromHRegionArray(self->ImageArray->RegiongrowingN(Metric1,MinTolerance1,MaxTolerance1,MinSize1));
        }
        PyErr_Clear();
        
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
                Halcon::HTuple Column1;
                Halcon::HTuple Error1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->ImageArray->BestMatchMg(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1,SubPixel1,NumLevels1,WhichLevels1,&Column1,&Error1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &TemplateID,&MaxError,&SubPixel,&NumLevels,&WhichLevels)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(SubPixel) && PyHirschTuple_Check(NumLevels) && PyHirschTuple_Check(WhichLevels)) {
                Halcon::HTuple Column;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->ImageArray->BestMatchMg(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)SubPixel)->Tuple),*(((PyHirschTuple*)NumLevels)->Tuple),*(((PyHirschTuple*)WhichLevels)->Tuple),&Column,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double MaxError1;
    PyObject* MaxError;
    PyObject* TemplateID1;
    PyObject* TemplateID;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &TemplateID1,&MaxError1)) {
            if (PyHirschTemplate_Check(TemplateID1)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastMatch(*(((PyHirschTemplate*)TemplateID1)->Template),MaxError1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &TemplateID,&MaxError)) {
            if (PyHirschTemplate_Check(TemplateID) && PyHirschTuple_Check(MaxError)) {
                return PyHirschRegionArray_FromHRegionArray(self->ImageArray->FastMatch(*(((PyHirschTemplate*)TemplateID)->Template),*(((PyHirschTuple*)MaxError)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Weight;
    double Weight1;
    long Size1;
    PyObject* Size;
    
    try {
        if (PyArg_ParseTuple(args, "ld", &Size1,&Weight1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->CornerResponse(Size1,Weight1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Size,&Weight)) {
            if (PyHirschTuple_Check(Size) && PyHirschTuple_Check(Weight)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->CornerResponse(*(((PyHirschTuple*)Size)->Tuple),*(((PyHirschTuple*)Weight)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate1)->Image),Mode1,Level1,Threshold1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &ImageTemplate,&Mode,&Level,&Threshold)) {
            if (PyHirschImage_Check(ImageTemplate) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Level) && PyHirschTuple_Check(Threshold)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->ExhaustiveMatchMg(*(((PyHirschImage*)ImageTemplate)->Image),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Level)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaskWidth;
    long MaskHeight1;
    double Factor1;
    long MaskWidth1;
    PyObject* Factor;
    PyObject* MaskHeight;
    
    try {
        if (PyArg_ParseTuple(args, "lld", &MaskWidth1,&MaskHeight1,&Factor1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->Emphasize(MaskWidth1,MaskHeight1,Factor1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaskWidth,&MaskHeight,&Factor)) {
            if (PyHirschTuple_Check(MaskWidth) && PyHirschTuple_Check(MaskHeight) && PyHirschTuple_Check(Factor)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->Emphasize(*(((PyHirschTuple*)MaskWidth)->Tuple),*(((PyHirschTuple*)MaskHeight)->Tuple),*(((PyHirschTuple*)Factor)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long RankIndex1;
    PyObject* RankIndex;
    
    try {
        if (PyArg_ParseTuple(args, "l", &RankIndex1)) {
            return PyHirschImageArray_FromHImageArray(self->ImageArray->RankN(RankIndex1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &RankIndex)) {
            if (PyHirschTuple_Check(RankIndex)) {
                return PyHirschImageArray_FromHImageArray(self->ImageArray->RankN(*(((PyHirschTuple*)RankIndex)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
