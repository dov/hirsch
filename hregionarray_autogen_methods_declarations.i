PyObject *
PyHirschRegionArray_SpatialRelation(PyHirschRegionArray*self, PyObject *args)
{
    long Percent;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Regions2,&Percent)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                Halcon::HTuple Relation1;
                Halcon::HTuple Relation2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SpatialRelation(*(((PyHirschRegionArray*)Regions2)->RegionArray),Percent,&RegionIndex2,&Relation1,&Relation2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SpatialRelation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenCoocMatrix(PyHirschRegionArray*self, PyObject *args)
{
    long Direction;
    PyObject* Image;
    long LdGray;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImageArray_FromHImageArray(self->RegionArray->GenCoocMatrix(*(((PyHirschImage*)Image)->Image),LdGray,Direction));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenCoocMatrix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_OpeningRectangle1(PyHirschRegionArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningRectangle1(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.OpeningRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsRegion2ndRelInvar(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple PHI2;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsRegion2ndRelInvar(&PHI2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(PHI2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SelectRegionPoint(PyHirschRegionArray*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectRegionPoint(Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SelectRegionPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MorphSkeleton(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MorphSkeleton());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Roundness(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Sigma;
        Halcon::HTuple Roundness;
        Halcon::HTuple Sides;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->Roundness(&Sigma,&Roundness,&Sides)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Sigma));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Roundness));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Sides));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_AreaCenterGray(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Row;
                Halcon::HTuple Column;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->AreaCenterGray(*(((PyHirschImage*)Image)->Image),&Row,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Row));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.AreaCenterGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SmallestCircle(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SmallestCircle(&Column,&Radius)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Radius));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_TestEqualRegion(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                return PyInt_FromLong(long(self->RegionArray->TestEqualRegion(*(((PyHirschRegionArray*)Regions2)->RegionArray))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.TestEqualRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ClassDBID(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->RegionArray->ClassDBID()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SplitSkeletonLines(PyHirschRegionArray*self, PyObject *args)
{
    long MaxDistance;
    
    try {
        if (PyArg_ParseTuple(args, "l", &MaxDistance)) {
            {
            // with output params
                Halcon::HTuple BeginCol;
                Halcon::HTuple EndRow;
                Halcon::HTuple EndCol;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SplitSkeletonLines(MaxDistance,&BeginCol,&EndRow,&EndCol)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SplitSkeletonLines()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ThickeningGolay(PyHirschRegionArray*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThickeningGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ThickeningGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SelectGray(PyHirschRegionArray*self, PyObject *args)
{
    char* Operation;
    double Min;
    PyObject* Image;
    char* Features;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "Ossdd", &Image,&Features,&Operation,&Min,&Max)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectGray(*(((PyHirschImage*)Image)->Image),Features,Operation,Min,Max));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SelectGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_InnerRectangle1(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column1;
        Halcon::HTuple Row2;
        Halcon::HTuple Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->InnerRectangle1(&Column1,&Row2,&Column2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Row2));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Column2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_TestSubsetRegion(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegionArray_Check(Region2)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->TestSubsetRegion(*(((PyHirschRegionArray*)Region2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.TestSubsetRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsRegionCentralInvar(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple PSI2;
        Halcon::HTuple PSI3;
        Halcon::HTuple PSI4;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsRegionCentralInvar(&PSI2,&PSI3,&PSI4)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(PSI2));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(PSI3));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(PSI4));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_TextLineOrientation(PyHirschRegionArray*self, PyObject *args)
{
    double OrientationTo;
    double OrientationFrom;
    PyObject* Image;
    long CharHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oldd", &Image,&CharHeight,&OrientationFrom,&OrientationTo)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->TextLineOrientation(*(((PyHirschImage*)Image)->Image),CharHeight,OrientationFrom,OrientationTo));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.TextLineOrientation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ClipRegion(PyHirschRegionArray*self, PyObject *args)
{
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClipRegion(Row1,Column1,Row2,Column2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ClipRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SortRegion(PyHirschRegionArray*self, PyObject *args)
{
    char* SortMode;
    char* RowOrCol;
    char* Order;
    
    try {
        if (PyArg_ParseTuple(args, "sss", &SortMode,&Order,&RowOrCol)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SortRegion(SortMode,Order,RowOrCol));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SortRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Convexity(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->Convexity());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_PolarTransRegionInv(PyHirschRegionArray*self, PyObject *args)
{
    double Column;
    double RadiusEnd;
    char* Interpolation;
    double Row;
    long Width;
    double RadiusStart;
    long Height;
    long WidthIn;
    double AngleEnd;
    double AngleStart;
    long HeightIn;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlllls", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&WidthIn,&HeightIn,&Width,&Height,&Interpolation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PolarTransRegionInv(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,WidthIn,HeightIn,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.PolarTransRegionInv()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GrayHisto(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->GrayHisto(*(((PyHirschImage*)Image)->Image),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GrayHisto()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_PartitionDynamic(PyHirschRegionArray*self, PyObject *args)
{
    double Percent;
    double Distance;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Distance,&Percent)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PartitionDynamic(Distance,Percent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.PartitionDynamic()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_RegionToLabel(PyHirschRegionArray*self, PyObject *args)
{
    long Height;
    long Width;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->RegionArray->RegionToLabel(Type,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.RegionToLabel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_HammingDistance(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->HammingDistance(*(((PyHirschRegionArray*)Regions2)->RegionArray),&Similarity)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Similarity));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.HammingDistance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MorphSkiz(PyHirschRegionArray*self, PyObject *args)
{
    long Iterations2;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Iterations1,&Iterations2)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MorphSkiz(Iterations1,Iterations2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MorphSkiz()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ThinningSeq(PyHirschRegionArray*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThinningSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ThinningSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Compactness(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->Compactness());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GrayHistoAbs(PyHirschRegionArray*self, PyObject *args)
{
    double Quantization;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&Quantization)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->GrayHistoAbs(*(((PyHirschImage*)Image)->Image),Quantization));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GrayHistoAbs()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Closing(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Closing(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Closing()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ExpandGrayRef(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* RefGray;
    PyObject* ForbiddenArea;
    PyObject* Image;
    PyObject* Mode;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Image,&ForbiddenArea,&Iterations,&Mode,&RefGray,&Threshold)) {
            if (PyHirschImage_Check(Image) && PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(RefGray) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ExpandGrayRef(*(((PyHirschImage*)Image)->Image),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)RefGray)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ExpandGrayRef()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MorphHat(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MorphHat(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MorphHat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_CloseEdgesLength(PyHirschRegionArray*self, PyObject *args)
{
    long MinAmplitude;
    PyObject* Gradient;
    long MaxGapLength;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Gradient,&MinAmplitude,&MaxGapLength)) {
            if (PyHirschImage_Check(Gradient)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->CloseEdgesLength(*(((PyHirschImage*)Gradient)->Image),MinAmplitude,MaxGapLength));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.CloseEdgesLength()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_RunlengthFeatures(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple KFactor;
        Halcon::HTuple LFactor;
        Halcon::HTuple MeanLength;
        Halcon::HTuple Bytes;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->RunlengthFeatures(&KFactor,&LFactor,&MeanLength,&Bytes)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(KFactor));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(LFactor));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(MeanLength));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Bytes));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SmallestRectangle1(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column1;
        Halcon::HTuple Row2;
        Halcon::HTuple Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SmallestRectangle1(&Column1,&Row2,&Column2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Row2));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Column2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SmallestRectangle2(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Phi;
        Halcon::HTuple Length1;
        Halcon::HTuple Length2;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SmallestRectangle2(&Column,&Phi,&Length1,&Length2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Length1));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Length2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Skeleton(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Skeleton());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_BackgroundSeg(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->RegionArray->BackgroundSeg());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Intensity(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Deviation;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->Intensity(*(((PyHirschImage*)Image)->Image),&Deviation)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Deviation));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Intensity()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_WriteOcrTrainf(PyHirschRegionArray*self, PyObject *args)
{
    char* Class;
    PyObject* Image;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image)) {
                self->RegionArray->WriteOcrTrainf(*(((PyHirschImage*)Image)->Image),Class,FileName);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.WriteOcrTrainf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_AppendOcrTrainf(PyHirschRegionArray*self, PyObject *args)
{
    char* Class;
    PyObject* Image;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image)) {
                self->RegionArray->AppendOcrTrainf(*(((PyHirschImage*)Image)->Image),Class,FileName);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.AppendOcrTrainf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_FitSurfaceFirstOrder(PyHirschRegionArray*self, PyObject *args)
{
    char* Algorithm;
    double ClippingFactor;
    PyObject* Image;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Beta;
                Halcon::HTuple Gamma;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FitSurfaceFirstOrder(*(((PyHirschImage*)Image)->Image),Algorithm,Iterations,ClippingFactor,&Beta,&Gamma)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Gamma));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.FitSurfaceFirstOrder()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_HitOrMissSeq(PyHirschRegionArray*self, PyObject *args)
{
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "s", &GolayElement)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMissSeq(GolayElement));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.HitOrMissSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Pruning(PyHirschRegionArray*self, PyObject *args)
{
    long Length;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Length)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Pruning(Length));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Pruning()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SelectShapeStd(PyHirschRegionArray*self, PyObject *args)
{
    double Percent;
    char* Shape;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Shape,&Percent)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShapeStd(Shape,Percent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SelectShapeStd()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_RemoveNoiseRegion(PyHirschRegionArray*self, PyObject *args)
{
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->RemoveNoiseRegion(Type));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.RemoveNoiseRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenRegionHline(PyHirschRegionArray*, PyObject *args)
{
    double Distance;
    double Orientation;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Orientation,&Distance)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRegionHline(Orientation,Distance));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenRegionHline()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MinkowskiAdd2(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiAdd2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MinkowskiAdd2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MinkowskiSub2(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiSub2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MinkowskiSub2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenRectangle2(PyHirschRegionArray*, PyObject *args)
{
    double Column;
    double Phi;
    double Length2;
    double Row;
    double Length1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row,&Column,&Phi,&Length1,&Length2)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRectangle2(Row,Column,Phi,Length1,Length2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenRectangle2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Histo2dim(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* ImageRow;
    PyObject* ImageCol;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageCol,&ImageRow)) {
            if (PyHirschImage_Check(ImageCol) && PyHirschImage_Check(ImageRow)) {
                return PyHirschImage_FromHImage(self->RegionArray->Histo2dim(*(((PyHirschImage*)ImageCol)->Image),*(((PyHirschImage*)ImageRow)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Histo2dim()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MinMaxGray(PyHirschRegionArray*self, PyObject *args)
{
    double Percent;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&Percent)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Max;
                Halcon::HTuple Range;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MinMaxGray(*(((PyHirschImage*)Image)->Image),Percent,&Max,&Range)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Max));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Range));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MinMaxGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_RegionToBin(PyHirschRegionArray*self, PyObject *args)
{
    long Height;
    long ForegroundGray;
    long Width;
    long BackgroundGray;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &ForegroundGray,&BackgroundGray,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->RegionArray->RegionToBin(ForegroundGray,BackgroundGray,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.RegionToBin()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ErosionCircle(PyHirschRegionArray*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ErosionCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_FindNeighbors(PyHirschRegionArray*self, PyObject *args)
{
    long MaxDistance;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Regions2,&MaxDistance)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FindNeighbors(*(((PyHirschRegionArray*)Regions2)->RegionArray),MaxDistance,&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.FindNeighbors()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Boundary(PyHirschRegionArray*self, PyObject *args)
{
    char* BoundaryType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &BoundaryType)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Boundary(BoundaryType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Boundary()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MergeRegionsLineScan(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* PrevRegions;
    long ImageHeight;
    long MaxImagesRegion;
    char* MergeBorder;
    
    try {
        if (PyArg_ParseTuple(args, "Olsl", &PrevRegions,&ImageHeight,&MergeBorder,&MaxImagesRegion)) {
            if (PyHirschRegionArray_Check(PrevRegions)) {
                Halcon::HRegionArray PrevMergedRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->RegionArray->MergeRegionsLineScan(*(((PyHirschRegionArray*)PrevRegions)->RegionArray),&PrevMergedRegions,ImageHeight,MergeBorder,MaxImagesRegion)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(PrevMergedRegions));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MergeRegionsLineScan()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ZoomRegion(PyHirschRegionArray*self, PyObject *args)
{
    double ScaleWidth;
    double ScaleHeight;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &ScaleWidth,&ScaleHeight)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ZoomRegion(ScaleWidth,ScaleHeight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ZoomRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_RankRegion(PyHirschRegionArray*self, PyObject *args)
{
    long Number;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Width,&Height,&Number)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->RankRegion(Width,Height,Number));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.RankRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsRegion2nd(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple M20;
        Halcon::HTuple M02;
        Halcon::HTuple Ia;
        Halcon::HTuple Ib;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsRegion2nd(&M20,&M02,&Ia,&Ib)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(M20));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(M02));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Ia));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Ib));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_HitOrMissGolay(PyHirschRegionArray*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMissGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.HitOrMissGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Erosion1(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Erosion1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Erosion1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsGrayPlane(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple MCol;
                Halcon::HTuple Alpha;
                Halcon::HTuple Beta;
                Halcon::HTuple Mean;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsGrayPlane(*(((PyHirschImage*)Image)->Image),&MCol,&Alpha,&Beta,&Mean)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(MCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Alpha));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Beta));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Mean));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MomentsGrayPlane()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Erosion2(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Erosion2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Erosion2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_AreaHoles(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->AreaHoles());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_EulerNumber(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->EulerNumber());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenStructElements(PyHirschRegionArray*, PyObject *args)
{
    long Row;
    char* Type;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type,&Row,&Column)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenStructElements(Type,Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenStructElements()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Eccentricity(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Bulkiness;
        Halcon::HTuple StructureFactor;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->Eccentricity(&Bulkiness,&StructureFactor)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Bulkiness));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(StructureFactor));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_TopHat(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->TopHat(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.TopHat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Intersection(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegionArray_Check(Region2)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Intersection(*(((PyHirschRegionArray*)Region2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Intersection()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ClipRegionRel(PyHirschRegionArray*self, PyObject *args)
{
    long Right;
    long Left;
    long Bottom;
    long Top;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Top,&Bottom,&Left,&Right)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClipRegionRel(Top,Bottom,Left,Right));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ClipRegionRel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ShapeTrans(PyHirschRegionArray*self, PyObject *args)
{
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ShapeTrans(Type));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ShapeTrans()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_JunctionsSkeleton(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HRegionArray JuncPoints;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->RegionArray->JunctionsSkeleton(&JuncPoints)));
        PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(JuncPoints));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DragRegion1(PyHirschRegionArray*self, PyObject *args)
{
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion1(WindowHandle));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DragRegion1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DragRegion3(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* MaskRegion;
    long WindowHandle;
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &MaskRegion,&WindowHandle,&Row,&Column)) {
            if (PyHirschRegionArray_Check(MaskRegion)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion3(*(((PyHirschRegionArray*)MaskRegion)->RegionArray),WindowHandle,Row,Column));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DragRegion3()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DragRegion2(PyHirschRegionArray*self, PyObject *args)
{
    long WindowHandle;
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &WindowHandle,&Row,&Column)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion2(WindowHandle,Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DragRegion2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_EllipticAxis(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Rb;
        Halcon::HTuple Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->EllipticAxis(&Rb,&Phi)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rb));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DistanceTransform(PyHirschRegionArray*self, PyObject *args)
{
    char* Foreground;
    char* Metric;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ssll", &Metric,&Foreground,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->RegionArray->DistanceTransform(Metric,Foreground,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DistanceTransform()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ErosionSeq(PyHirschRegionArray*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ErosionSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_PartitionRectangle(PyHirschRegionArray*self, PyObject *args)
{
    double Height;
    double Width;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Width,&Height)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PartitionRectangle(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.PartitionRectangle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_PaintRegion(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    char* Type;
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image,&Grayval,&Type)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->RegionArray->PaintRegion(*(((PyHirschImage*)Image)->Image),Grayval,Type));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.PaintRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_HammingDistanceNorm(PyHirschRegionArray*self, PyObject *args)
{
    char* Norm;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions2,&Norm)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->HammingDistanceNorm(*(((PyHirschRegionArray*)Regions2)->RegionArray),Norm,&Similarity)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Similarity));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.HammingDistanceNorm()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_AffineTransRegion(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Interpolate;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &HomMat2D,&Interpolate)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolate)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->AffineTransRegion(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolate)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.AffineTransRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ErosionRectangle1(PyHirschRegionArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionRectangle1(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ErosionRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_OrientationRegion(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->OrientationRegion());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ExpandGray(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* Threshold;
    PyObject* Image;
    PyObject* ForbiddenArea;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image,&ForbiddenArea,&Iterations,&Mode,&Threshold)) {
            if (PyHirschImage_Check(Image) && PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ExpandGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ExpandGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenRegionLine(PyHirschRegionArray*, PyObject *args)
{
    long BeginRow;
    long EndCol;
    long BeginCol;
    long EndRow;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &BeginRow,&BeginCol,&EndRow,&EndCol)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRegionLine(BeginRow,BeginCol,EndRow,EndCol));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenRegionLine()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Interjacent(PyHirschRegionArray*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschRegion_FromHRegion(self->RegionArray->Interjacent(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Interjacent()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_EliminateRuns(PyHirschRegionArray*self, PyObject *args)
{
    long ElimShorter;
    long ElimLonger;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &ElimShorter,&ElimLonger)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->EliminateRuns(ElimShorter,ElimLonger));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.EliminateRuns()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_OpeningCircle(PyHirschRegionArray*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.OpeningCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenEllipse(PyHirschRegionArray*, PyObject *args)
{
    double Column;
    double Radius1;
    double Phi;
    double Row;
    double Radius2;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row,&Column,&Phi,&Radius1,&Radius2)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenEllipse(Row,Column,Phi,Radius1,Radius2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenEllipse()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_EllipticAxisGray(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Rb;
                Halcon::HTuple Phi;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->EllipticAxisGray(*(((PyHirschImage*)Image)->Image),&Rb,&Phi)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rb));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.EllipticAxisGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Complement(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Complement());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Append(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* reg;
    
    try {
        if (PyArg_ParseTuple(args, "O", &reg)) {
            if (PyHirschRegion_Check(reg)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Append(*(((PyHirschRegion*)reg)->Region)));
            }
            if (PyHirschRegionArray_Check(reg)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Append(*(((PyHirschRegionArray*)reg)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Append()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DilationRectangle1(PyHirschRegionArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationRectangle1(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DilationRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_FuzzyPerimeter(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    long Apar;
    long Cpar;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->FuzzyPerimeter(*(((PyHirschImage*)Image)->Image),Apar,Cpar));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.FuzzyPerimeter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SelectShape(PyHirschRegionArray*self, PyObject *args)
{
    char* Operation;
    double Min;
    char* Features;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Features,&Operation,&Min,&Max)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShape(Features,Operation,Min,Max));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SelectShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenRandomRegions(PyHirschRegionArray*, PyObject *args)
{
    long Width;
    char* Type;
    double WidthMin;
    long NumRegions;
    double HeightMax;
    double HeightMin;
    long Height;
    double WidthMax;
    double PhiMax;
    double PhiMin;
    
    try {
        if (PyArg_ParseTuple(args, "sddddddlll", &Type,&WidthMin,&WidthMax,&HeightMin,&HeightMax,&PhiMin,&PhiMax,&NumRegions,&Width,&Height)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRandomRegions(Type,WidthMin,WidthMax,HeightMin,HeightMax,PhiMin,PhiMax,NumRegions,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenRandomRegions()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_PlaneDeviation(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->PlaneDeviation(*(((PyHirschImage*)Image)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.PlaneDeviation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Thinning(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement1;
    PyObject* StructElement2;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "OOlll", &StructElement1,&StructElement2,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Thinning(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),Row,Column,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Thinning()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_WriteRegion(PyHirschRegionArray*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->RegionArray->WriteRegion(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.WriteRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsRegionCentral(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple I2;
        Halcon::HTuple I3;
        Halcon::HTuple I4;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsRegionCentral(&I2,&I3,&I4)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(I2));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(I3));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(I4));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DilationGolay(PyHirschRegionArray*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    long Rotation;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement,&Iterations,&Rotation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationGolay(GolayElement,Iterations,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DilationGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_FillUp(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->RegionArray->FillUp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ThickeningSeq(PyHirschRegionArray*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThickeningSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ThickeningSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_PolarTransRegion(PyHirschRegionArray*self, PyObject *args)
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
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PolarTransRegion(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.PolarTransRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_EntropyGray(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Anisotropy;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->EntropyGray(*(((PyHirschImage*)Image)->Image),&Anisotropy)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Anisotropy));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.EntropyGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SelectRegionSpatial(PyHirschRegionArray*self, PyObject *args)
{
    char* Direction;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions2,&Direction)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SelectRegionSpatial(*(((PyHirschRegionArray*)Regions2)->RegionArray),Direction,&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SelectRegionSpatial()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_FitSurfaceSecondOrder(PyHirschRegionArray*self, PyObject *args)
{
    char* Algorithm;
    double ClippingFactor;
    PyObject* Image;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Beta;
                Halcon::HTuple Gamma;
                Halcon::HTuple Delta;
                Halcon::HTuple Epsilon;
                Halcon::HTuple Zeta;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FitSurfaceSecondOrder(*(((PyHirschImage*)Image)->Image),Algorithm,Iterations,ClippingFactor,&Beta,&Gamma,&Delta,&Epsilon,&Zeta)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Gamma));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Delta));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Epsilon));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Zeta));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.FitSurfaceSecondOrder()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SymmDifference(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegionArray_Check(Region2)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SymmDifference(*(((PyHirschRegionArray*)Region2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SymmDifference()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DistanceRrMin(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple Row1;
                Halcon::HTuple Column1;
                Halcon::HTuple Row2;
                Halcon::HTuple Column2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->DistanceRrMin(*(((PyHirschRegionArray*)Regions2)->RegionArray),&Row1,&Column1,&Row2,&Column2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Row1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Row2));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Column2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DistanceRrMin()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SelectShapeProto(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Pattern;
    double Max;
    char* Feature;
    double Min;
    
    try {
        if (PyArg_ParseTuple(args, "Osdd", &Pattern,&Feature,&Min,&Max)) {
            if (PyHirschRegionArray_Check(Pattern)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShapeProto(*(((PyHirschRegionArray*)Pattern)->RegionArray),Feature,Min,Max));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SelectShapeProto()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DistanceRrMinDil(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegionArray_Check(Regions2)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->DistanceRrMinDil(*(((PyHirschRegionArray*)Regions2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DistanceRrMinDil()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_FuzzyEntropy(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    long Apar;
    long Cpar;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->FuzzyEntropy(*(((PyHirschImage*)Image)->Image),Apar,Cpar));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.FuzzyEntropy()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MoveRegion(PyHirschRegionArray*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MoveRegion(Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MoveRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Union1(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->RegionArray->Union1());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Connection(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Connection());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Union2(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegionArray_Check(Region2)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Union2(*(((PyHirschRegionArray*)Region2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Union2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ThinningGolay(PyHirschRegionArray*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThinningGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ThinningGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DilationSeq(PyHirschRegionArray*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DilationSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_OpeningSeg(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningSeg(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.OpeningSeg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MinkowskiAdd1(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiAdd1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MinkowskiAdd1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsRegion3rdInvar(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple M12;
        Halcon::HTuple M03;
        Halcon::HTuple M30;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsRegion3rdInvar(&M12,&M03,&M30)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(M12));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(M03));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(M30));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenCircle(PyHirschRegionArray*, PyObject *args)
{
    double Column;
    double Radius;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "ddd", &Row,&Column,&Radius)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenCircle(Row,Column,Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_OpeningGolay(PyHirschRegionArray*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.OpeningGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Thickening(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement1;
    PyObject* StructElement2;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "OOlll", &StructElement1,&StructElement2,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Thickening(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),Row,Column,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Thickening()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_AreaCenter(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Row;
        Halcon::HTuple Column;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->AreaCenter(&Row,&Column)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Row));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Column));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ClosingGolay(PyHirschRegionArray*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ClosingGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_HClassName(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyString_FromString(self->RegionArray->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_AddChannels(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImageArray_FromHImageArray(self->RegionArray->AddChannels(*(((PyHirschImage*)Image)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.AddChannels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MinkowskiSub1(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiSub1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MinkowskiSub1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ReadRegion(PyHirschRegionArray*, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::ReadRegion(FileName));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ReadRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ConnectAndHoles(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple NumHoles;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->ConnectAndHoles(&NumHoles)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(NumHoles));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsRegion2ndInvar(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple M20;
        Halcon::HTuple M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsRegion2ndInvar(&M20,&M02)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(M20));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(M02));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_TextLineSlant(PyHirschRegionArray*self, PyObject *args)
{
    double SlantTo;
    double SlantFrom;
    PyObject* Image;
    long CharHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oldd", &Image,&CharHeight,&SlantFrom,&SlantTo)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->TextLineSlant(*(((PyHirschImage*)Image)->Image),CharHeight,SlantFrom,SlantTo));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.TextLineSlant()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_LearnNdimNorm(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    char* Metric;
    double Distance;
    PyObject* Background;
    double MinNumberPercent;
    
    try {
        if (PyArg_ParseTuple(args, "OOsdd", &Background,&Image,&Metric,&Distance,&MinNumberPercent)) {
            if (PyHirschRegionArray_Check(Background) && PyHirschImageArray_Check(Image)) {
                Halcon::HTuple Center;
                Halcon::HTuple Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->LearnNdimNorm(*(((PyHirschRegionArray*)Background)->RegionArray),*(((PyHirschImageArray*)Image)->ImageArray),Metric,Distance,MinNumberPercent,&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Quality));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.LearnNdimNorm()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ClosingCircle(PyHirschRegionArray*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ClosingCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GetRegionIndex(PyHirschRegionArray*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschTuple_FromHTuple(self->RegionArray->GetRegionIndex(Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GetRegionIndex()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenRectangle1(PyHirschRegionArray*, PyObject *args)
{
    double Column1;
    double Column2;
    double Row2;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRectangle1(Row1,Column1,Row2,Column2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_CloseEdges(PyHirschRegionArray*self, PyObject *args)
{
    long MinAmplitude;
    PyObject* EdgeImage;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &EdgeImage,&MinAmplitude)) {
            if (PyHirschImage_Check(EdgeImage)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->CloseEdges(*(((PyHirschImage*)EdgeImage)->Image),MinAmplitude));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.CloseEdges()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Fitting(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElements;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElements)) {
            if (PyHirschRegionArray_Check(StructElements)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Fitting(*(((PyHirschRegionArray*)StructElements)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Fitting()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SelectCharacters(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* PartitionLines;
    PyObject* DotPrint;
    PyObject* CharWidth;
    PyObject* FragmentDistance;
    PyObject* DiacriticMarks;
    PyObject* ClutterSizeMax;
    PyObject* Punctuation;
    PyObject* ConnectFragments;
    PyObject* PartitionMethod;
    PyObject* StopAfter;
    PyObject* CharHeight;
    PyObject* StrokeWidth;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOO", &DotPrint,&StrokeWidth,&CharWidth,&CharHeight,&Punctuation,&DiacriticMarks,&PartitionMethod,&PartitionLines,&FragmentDistance,&ConnectFragments,&ClutterSizeMax,&StopAfter)) {
            if (PyHirschTuple_Check(DotPrint) && PyHirschTuple_Check(StrokeWidth) && PyHirschTuple_Check(CharWidth) && PyHirschTuple_Check(CharHeight) && PyHirschTuple_Check(Punctuation) && PyHirschTuple_Check(DiacriticMarks) && PyHirschTuple_Check(PartitionMethod) && PyHirschTuple_Check(PartitionLines) && PyHirschTuple_Check(FragmentDistance) && PyHirschTuple_Check(ConnectFragments) && PyHirschTuple_Check(ClutterSizeMax) && PyHirschTuple_Check(StopAfter)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectCharacters(*(((PyHirschTuple*)DotPrint)->Tuple),*(((PyHirschTuple*)StrokeWidth)->Tuple),*(((PyHirschTuple*)CharWidth)->Tuple),*(((PyHirschTuple*)CharHeight)->Tuple),*(((PyHirschTuple*)Punctuation)->Tuple),*(((PyHirschTuple*)DiacriticMarks)->Tuple),*(((PyHirschTuple*)PartitionMethod)->Tuple),*(((PyHirschTuple*)PartitionLines)->Tuple),*(((PyHirschTuple*)FragmentDistance)->Tuple),*(((PyHirschTuple*)ConnectFragments)->Tuple),*(((PyHirschTuple*)ClutterSizeMax)->Tuple),*(((PyHirschTuple*)StopAfter)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SelectCharacters()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_CoocFeatureImage(PyHirschRegionArray*self, PyObject *args)
{
    long Direction;
    PyObject* Image;
    long LdGray;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple Correlation;
                Halcon::HTuple Homogeneity;
                Halcon::HTuple Contrast;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->CoocFeatureImage(*(((PyHirschImage*)Image)->Image),LdGray,Direction,&Correlation,&Homogeneity,&Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Correlation));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Homogeneity));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Contrast));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.CoocFeatureImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_NoiseDistributionMean(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    long FilterSize;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Image,&FilterSize)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->NoiseDistributionMean(*(((PyHirschImage*)Image)->Image),FilterSize));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.NoiseDistributionMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Opening(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Opening(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Opening()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_HammingChangeRegion(PyHirschRegionArray*self, PyObject *args)
{
    long Distance;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Width,&Height,&Distance)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HammingChangeRegion(Width,Height,Distance));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.HammingChangeRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_FillUpShape(PyHirschRegionArray*self, PyObject *args)
{
    double Min;
    char* Feature;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Feature,&Min,&Max)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->FillUpShape(Feature,Min,Max));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.FillUpShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Difference(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Sub;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Sub)) {
            if (PyHirschRegionArray_Check(Sub)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Difference(*(((PyHirschRegionArray*)Sub)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Difference()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_TransposeRegion(PyHirschRegionArray*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->TransposeRegion(Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.TransposeRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ClosingRectangle1(PyHirschRegionArray*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingRectangle1(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ClosingRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_HitOrMiss(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement1;
    PyObject* StructElement2;
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "OOll", &StructElement1,&StructElement2,&Row,&Column)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMiss(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),Row,Column));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.HitOrMiss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_SplitSkeletonRegion(PyHirschRegionArray*self, PyObject *args)
{
    long MaxDistance;
    
    try {
        if (PyArg_ParseTuple(args, "l", &MaxDistance)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SplitSkeletonRegion(MaxDistance));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.SplitSkeletonRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_InnerCircle(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->InnerCircle(&Column,&Radius)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Radius));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DispRegion(PyHirschRegionArray*self, PyObject *args)
{
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            self->RegionArray->DispRegion(WindowHandle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DispRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ProjectiveTransRegion(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Interpolation;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &HomMat2D,&Interpolation)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ProjectiveTransRegion(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ProjectiveTransRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ErosionGolay(PyHirschRegionArray*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    long Rotation;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement,&Iterations,&Rotation)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionGolay(GolayElement,Iterations,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ErosionGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_RegionToMean(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->RegionArray->RegionToMean(*(((PyHirschImage*)Image)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.RegionToMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Dilation2(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Dilation2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Dilation2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Dilation1(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Dilation1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.Dilation1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Contlength(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->Contlength());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_TestRegionPoint(PyHirschRegionArray*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyInt_FromLong(long(self->RegionArray->TestRegionPoint(Row,Column)));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.TestRegionPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DilationCircle(PyHirschRegionArray*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.DilationCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Circularity(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->Circularity());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_Rectangularity(PyHirschRegionArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->RegionArray->Rectangularity());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_GenContourRegionXld(PyHirschRegionArray*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->RegionArray->GenContourRegionXld(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.GenContourRegionXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MomentsRegion3rd(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple M12;
        Halcon::HTuple M03;
        Halcon::HTuple M30;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MomentsRegion3rd(&M12,&M03,&M30)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(M12));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(M03));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(M30));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_ExpandRegion(PyHirschRegionArray*self, PyObject *args)
{
    char* Mode;
    PyObject* ForbiddenArea;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ols", &ForbiddenArea,&Iterations,&Mode)) {
            if (PyHirschRegion_Check(ForbiddenArea)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea)->Region),Iterations,Mode));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.ExpandRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_MirrorRegion(PyHirschRegionArray*self, PyObject *args)
{
    char* Mode;
    long WidthHeight;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &Mode,&WidthHeight)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MirrorRegion(Mode,WidthHeight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.MirrorRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DeleteArray(PyHirschRegionArray*self, PyObject *)
{
    try {
        self->RegionArray->DeleteArray();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_BottomHat(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->BottomHat(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegionArray.BottomHat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegionArray_DiameterRegion(PyHirschRegionArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column1;
        Halcon::HTuple Row2;
        Halcon::HTuple Column2;
        Halcon::HTuple Diameter;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->DiameterRegion(&Column1,&Row2,&Column2,&Diameter)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Row2));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Column2));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Diameter));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
