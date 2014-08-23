PyObject *
PyHirschRegionArray_SpatialRelation(PyHirschRegionArray*self, PyObject *args)
{
    PyObject* Percent;
    long Percent1;
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions2,&Percent)) {
            if (PyHirschRegionArray_Check(Regions2) && PyHirschTuple_Check(Percent)) {
                Halcon::HTuple RegionIndex2;
                Halcon::HTuple Relation1;
                Halcon::HTuple Relation2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SpatialRelation(*(((PyHirschRegionArray*)Regions2)->RegionArray),*(((PyHirschTuple*)Percent)->Tuple),&RegionIndex2,&Relation1,&Relation2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &Regions21,&Percent1)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                Halcon::HTuple RegionIndex21;
                Halcon::HTuple Relation11;
                Halcon::HTuple Relation21;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SpatialRelation(*(((PyHirschRegionArray*)Regions21)->RegionArray),Percent1,&RegionIndex21,&Relation11,&Relation21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex21));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation11));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation21));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    long Direction1;
    long LdGray1;
    PyObject* LdGray;
    PyObject* Direction;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(LdGray) && PyHirschTuple_Check(Direction)) {
                return PyHirschImageArray_FromHImageArray(self->RegionArray->GenCoocMatrix(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)LdGray)->Tuple),*(((PyHirschTuple*)Direction)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&LdGray1,&Direction1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImageArray_FromHImageArray(self->RegionArray->GenCoocMatrix(*(((PyHirschImage*)Image1)->Image),LdGray1,Direction1));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectRegionPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectRegionPoint(Row1,Column1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* MaxDistance;
    long MaxDistance1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &MaxDistance)) {
            if (PyHirschTuple_Check(MaxDistance)) {
                Halcon::HTuple BeginCol;
                Halcon::HTuple EndRow;
                Halcon::HTuple EndCol;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SplitSkeletonLines(*(((PyHirschTuple*)MaxDistance)->Tuple),&BeginCol,&EndRow,&EndCol)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &MaxDistance1)) {
            {
            // with output params
                Halcon::HTuple BeginCol1;
                Halcon::HTuple EndRow1;
                Halcon::HTuple EndCol1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SplitSkeletonLines(MaxDistance1,&BeginCol1,&EndRow1,&EndCol1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BeginCol1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(EndRow1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(EndCol1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThickeningGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThickeningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
    PyObject* Operation;
    PyObject* Image1;
    char* Features1;
    char* Operation1;
    double Min1;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    PyObject* Image;
    PyObject* Features;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image,&Features,&Operation,&Min,&Max)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Features) && PyHirschTuple_Check(Operation) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Features)->Tuple),*(((PyHirschTuple*)Operation)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ossdd", &Image1,&Features1,&Operation1,&Min1,&Max1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectGray(*(((PyHirschImage*)Image1)->Image),Features1,Operation1,Min1,Max1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* OrientationFrom;
    long CharHeight1;
    double OrientationFrom1;
    PyObject* Image;
    PyObject* OrientationTo;
    double OrientationTo1;
    PyObject* CharHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oldd", &Image1,&CharHeight1,&OrientationFrom1,&OrientationTo1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->TextLineOrientation(*(((PyHirschImage*)Image1)->Image),CharHeight1,OrientationFrom1,OrientationTo1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Image,&CharHeight,&OrientationFrom,&OrientationTo)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CharHeight) && PyHirschTuple_Check(OrientationFrom) && PyHirschTuple_Check(OrientationTo)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->TextLineOrientation(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CharHeight)->Tuple),*(((PyHirschTuple*)OrientationFrom)->Tuple),*(((PyHirschTuple*)OrientationTo)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClipRegion(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClipRegion(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
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
    char* RowOrCol1;
    PyObject* SortMode;
    char* Order1;
    char* SortMode1;
    PyObject* RowOrCol;
    PyObject* Order;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &SortMode,&Order,&RowOrCol)) {
            if (PyHirschTuple_Check(SortMode) && PyHirschTuple_Check(Order) && PyHirschTuple_Check(RowOrCol)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SortRegion(*(((PyHirschTuple*)SortMode)->Tuple),*(((PyHirschTuple*)Order)->Tuple),*(((PyHirschTuple*)RowOrCol)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &SortMode1,&Order1,&RowOrCol1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SortRegion(SortMode1,Order1,RowOrCol1));
        }
        PyErr_Clear();
        
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
    long Width1;
    long Height1;
    double AngleEnd1;
    double RadiusEnd1;
    double AngleStart1;
    PyObject* Height;
    char* Interpolation1;
    PyObject* Width;
    PyObject* Column;
    PyObject* Row;
    PyObject* AngleEnd;
    long WidthIn1;
    PyObject* RadiusEnd;
    PyObject* AngleStart;
    PyObject* RadiusStart;
    double Row1;
    PyObject* Interpolation;
    PyObject* WidthIn;
    PyObject* HeightIn;
    long HeightIn1;
    double Column1;
    double RadiusStart1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&WidthIn,&HeightIn,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(WidthIn) && PyHirschTuple_Check(HeightIn) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PolarTransRegionInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)WidthIn)->Tuple),*(((PyHirschTuple*)HeightIn)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddlllls", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&WidthIn1,&HeightIn1,&Width1,&Height1,&Interpolation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PolarTransRegionInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,WidthIn1,HeightIn1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Distance;
    PyObject* Percent;
    double Percent1;
    double Distance1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Distance,&Percent)) {
            if (PyHirschTuple_Check(Distance) && PyHirschTuple_Check(Percent)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PartitionDynamic(*(((PyHirschTuple*)Distance)->Tuple),*(((PyHirschTuple*)Percent)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Distance1,&Percent1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PartitionDynamic(Distance1,Percent1));
        }
        PyErr_Clear();
        
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
    char* Type1;
    long Width1;
    long Height1;
    PyObject* Height;
    PyObject* Type;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->RegionArray->RegionToLabel(Type1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Type,&Width,&Height)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->RegionArray->RegionToLabel(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations1;
    PyObject* Iterations2;
    long Iterations11;
    long Iterations21;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Iterations1,&Iterations2)) {
            if (PyHirschTuple_Check(Iterations1) && PyHirschTuple_Check(Iterations2)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MorphSkiz(*(((PyHirschTuple*)Iterations1)->Tuple),*(((PyHirschTuple*)Iterations2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Iterations11,&Iterations21)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MorphSkiz(Iterations11,Iterations21));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThinningSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThinningSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    double Quantization1;
    PyObject* Image;
    PyObject* Quantization;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Quantization1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->GrayHistoAbs(*(((PyHirschImage*)Image1)->Image),Quantization1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Quantization)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Quantization)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->GrayHistoAbs(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Quantization)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Gradient1;
    PyObject* MinAmplitude;
    long MaxGapLength1;
    PyObject* MaxGapLength;
    long MinAmplitude1;
    PyObject* Gradient;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Gradient,&MinAmplitude,&MaxGapLength)) {
            if (PyHirschImage_Check(Gradient) && PyHirschTuple_Check(MinAmplitude) && PyHirschTuple_Check(MaxGapLength)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->CloseEdgesLength(*(((PyHirschImage*)Gradient)->Image),*(((PyHirschTuple*)MinAmplitude)->Tuple),*(((PyHirschTuple*)MaxGapLength)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Gradient1,&MinAmplitude1,&MaxGapLength1)) {
            if (PyHirschImage_Check(Gradient1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->CloseEdgesLength(*(((PyHirschImage*)Gradient1)->Image),MinAmplitude1,MaxGapLength1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    char* Class1;
    PyObject* Class;
    PyObject* Image;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Class) && PyHirschTuple_Check(FileName)) {
                self->RegionArray->WriteOcrTrainf(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Class)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &Image1,&Class1,&FileName1)) {
            if (PyHirschImage_Check(Image1)) {
                self->RegionArray->WriteOcrTrainf(*(((PyHirschImage*)Image1)->Image),Class1,FileName1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    char* Class1;
    PyObject* Class;
    PyObject* Image;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Class) && PyHirschTuple_Check(FileName)) {
                self->RegionArray->AppendOcrTrainf(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Class)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &Image1,&Class1,&FileName1)) {
            if (PyHirschImage_Check(Image1)) {
                self->RegionArray->AppendOcrTrainf(*(((PyHirschImage*)Image1)->Image),Class1,FileName1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* Image1;
    PyObject* Algorithm;
    double ClippingFactor1;
    PyObject* Image;
    long Iterations1;
    char* Algorithm1;
    PyObject* ClippingFactor;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(ClippingFactor)) {
                Halcon::HTuple Beta;
                Halcon::HTuple Gamma;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FitSurfaceFirstOrder(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Beta,&Gamma)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Gamma));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Image1,&Algorithm1,&Iterations1,&ClippingFactor1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple Beta1;
                Halcon::HTuple Gamma1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FitSurfaceFirstOrder(*(((PyHirschImage*)Image1)->Image),Algorithm1,Iterations1,ClippingFactor1,&Beta1,&Gamma1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Gamma1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    char* GolayElement1;
    PyObject* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GolayElement)) {
            if (PyHirschTuple_Check(GolayElement)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMissSeq(*(((PyHirschTuple*)GolayElement)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GolayElement1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMissSeq(GolayElement1));
        }
        PyErr_Clear();
        
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
    long Length1;
    PyObject* Length;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Length)) {
            if (PyHirschTuple_Check(Length)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Pruning(*(((PyHirschTuple*)Length)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Length1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Pruning(Length1));
        }
        PyErr_Clear();
        
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
    char* Shape1;
    double Percent1;
    PyObject* Percent;
    PyObject* Shape;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Shape1,&Percent1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShapeStd(Shape1,Percent1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Shape,&Percent)) {
            if (PyHirschTuple_Check(Shape) && PyHirschTuple_Check(Percent)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShapeStd(*(((PyHirschTuple*)Shape)->Tuple),*(((PyHirschTuple*)Percent)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->RemoveNoiseRegion(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->RemoveNoiseRegion(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Orientation;
    double Orientation1;
    double Distance1;
    PyObject* Distance;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Orientation1,&Distance1)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRegionHline(Orientation1,Distance1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Orientation,&Distance)) {
            if (PyHirschTuple_Check(Orientation) && PyHirschTuple_Check(Distance)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRegionHline(*(((PyHirschTuple*)Orientation)->Tuple),*(((PyHirschTuple*)Distance)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement1;
    PyObject* Row;
    long Row1;
    PyObject* Column;
    PyObject* StructElement;
    long Iterations1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiAdd2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiAdd2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement1;
    PyObject* Row;
    long Row1;
    PyObject* Column;
    PyObject* StructElement;
    long Iterations1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiSub2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiSub2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    double Length21;
    PyObject* Column;
    PyObject* Row;
    PyObject* Length1;
    double Phi1;
    PyObject* Length2;
    double Length11;
    PyObject* Phi;
    double Column1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row1,&Column1,&Phi1,&Length11,&Length21)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRectangle2(Row1,Column1,Phi1,Length11,Length21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRectangle2(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    double Percent1;
    PyObject* Percent;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Percent1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple Max1;
                Halcon::HTuple Range1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MinMaxGray(*(((PyHirschImage*)Image1)->Image),Percent1,&Max1,&Range1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Max1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Range1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Percent)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Percent)) {
                Halcon::HTuple Max;
                Halcon::HTuple Range;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->MinMaxGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Percent)->Tuple),&Max,&Range)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Max));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Range));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    long ForegroundGray1;
    long Width1;
    long BackgroundGray1;
    PyObject* BackgroundGray;
    long Height1;
    PyObject* Height;
    PyObject* ForegroundGray;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &ForegroundGray,&BackgroundGray,&Width,&Height)) {
            if (PyHirschTuple_Check(ForegroundGray) && PyHirschTuple_Check(BackgroundGray) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->RegionArray->RegionToBin(*(((PyHirschTuple*)ForegroundGray)->Tuple),*(((PyHirschTuple*)BackgroundGray)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &ForegroundGray1,&BackgroundGray1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->RegionArray->RegionToBin(ForegroundGray1,BackgroundGray1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaxDistance;
    long MaxDistance1;
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions2,&MaxDistance)) {
            if (PyHirschRegionArray_Check(Regions2) && PyHirschTuple_Check(MaxDistance)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FindNeighbors(*(((PyHirschRegionArray*)Regions2)->RegionArray),*(((PyHirschTuple*)MaxDistance)->Tuple),&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &Regions21,&MaxDistance1)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                Halcon::HTuple RegionIndex21;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FindNeighbors(*(((PyHirschRegionArray*)Regions21)->RegionArray),MaxDistance1,&RegionIndex21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex21));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    char* BoundaryType1;
    PyObject* BoundaryType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &BoundaryType1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Boundary(BoundaryType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &BoundaryType)) {
            if (PyHirschTuple_Check(BoundaryType)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Boundary(*(((PyHirschTuple*)BoundaryType)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* PrevRegions1;
    PyObject* MergeBorder;
    long MaxImagesRegion1;
    PyObject* ImageHeight;
    char* MergeBorder1;
    long ImageHeight1;
    PyObject* MaxImagesRegion;
    
    try {
        if (PyArg_ParseTuple(args, "Olsl", &PrevRegions1,&ImageHeight1,&MergeBorder1,&MaxImagesRegion1)) {
            if (PyHirschRegionArray_Check(PrevRegions1)) {
                Halcon::HRegionArray PrevMergedRegions1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->RegionArray->MergeRegionsLineScan(*(((PyHirschRegionArray*)PrevRegions1)->RegionArray),&PrevMergedRegions1,ImageHeight1,MergeBorder1,MaxImagesRegion1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(PrevMergedRegions1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &PrevRegions,&ImageHeight,&MergeBorder,&MaxImagesRegion)) {
            if (PyHirschRegionArray_Check(PrevRegions) && PyHirschTuple_Check(ImageHeight) && PyHirschTuple_Check(MergeBorder) && PyHirschTuple_Check(MaxImagesRegion)) {
                Halcon::HRegionArray PrevMergedRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->RegionArray->MergeRegionsLineScan(*(((PyHirschRegionArray*)PrevRegions)->RegionArray),&PrevMergedRegions,*(((PyHirschTuple*)ImageHeight)->Tuple),*(((PyHirschTuple*)MergeBorder)->Tuple),*(((PyHirschTuple*)MaxImagesRegion)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(PrevMergedRegions));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double ScaleWidth1;
    PyObject* ScaleWidth;
    double ScaleHeight1;
    PyObject* ScaleHeight;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ScaleWidth,&ScaleHeight)) {
            if (PyHirschTuple_Check(ScaleWidth) && PyHirschTuple_Check(ScaleHeight)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ZoomRegion(*(((PyHirschTuple*)ScaleWidth)->Tuple),*(((PyHirschTuple*)ScaleHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &ScaleWidth1,&ScaleHeight1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ZoomRegion(ScaleWidth1,ScaleHeight1));
        }
        PyErr_Clear();
        
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
    long Width1;
    long Number1;
    long Height1;
    PyObject* Number;
    PyObject* Height;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Width1,&Height1,&Number1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->RankRegion(Width1,Height1,Number1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Width,&Height,&Number)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Number)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->RankRegion(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Number)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMissGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMissGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Erosion1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Erosion1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement1;
    PyObject* Row;
    long Row1;
    PyObject* Column;
    PyObject* StructElement;
    long Iterations1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Erosion2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Erosion2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    char* Type1;
    PyObject* Type;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type1,&Row1,&Column1)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenStructElements(Type1,Row1,Column1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Type,&Row,&Column)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenStructElements(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Bottom;
    PyObject* Top;
    long Right1;
    PyObject* Left;
    long Bottom1;
    long Left1;
    PyObject* Right;
    long Top1;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Top1,&Bottom1,&Left1,&Right1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClipRegionRel(Top1,Bottom1,Left1,Right1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Top,&Bottom,&Left,&Right)) {
            if (PyHirschTuple_Check(Top) && PyHirschTuple_Check(Bottom) && PyHirschTuple_Check(Left) && PyHirschTuple_Check(Right)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClipRegionRel(*(((PyHirschTuple*)Top)->Tuple),*(((PyHirschTuple*)Bottom)->Tuple),*(((PyHirschTuple*)Left)->Tuple),*(((PyHirschTuple*)Right)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ShapeTrans(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ShapeTrans(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion1(*(((PyHirschTuple*)WindowHandle)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion1(WindowHandle1));
        }
        PyErr_Clear();
        
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
    PyObject* MaskRegion1;
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long WindowHandle1;
    PyObject* MaskRegion;
    PyObject* WindowHandle;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &MaskRegion1,&WindowHandle1,&Row1,&Column1)) {
            if (PyHirschRegionArray_Check(MaskRegion1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion3(*(((PyHirschRegionArray*)MaskRegion1)->RegionArray),WindowHandle1,Row1,Column1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &MaskRegion,&WindowHandle,&Row,&Column)) {
            if (PyHirschRegionArray_Check(MaskRegion) && PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion3(*(((PyHirschRegionArray*)MaskRegion)->RegionArray),*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long WindowHandle1;
    PyObject* WindowHandle;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &WindowHandle1,&Row1,&Column1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion2(WindowHandle1,Row1,Column1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &WindowHandle,&Row,&Column)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DragRegion2(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Foreground;
    char* Metric1;
    long Height1;
    char* Foreground1;
    PyObject* Height;
    PyObject* Metric;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Metric,&Foreground,&Width,&Height)) {
            if (PyHirschTuple_Check(Metric) && PyHirschTuple_Check(Foreground) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->RegionArray->DistanceTransform(*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)Foreground)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssll", &Metric1,&Foreground1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->RegionArray->DistanceTransform(Metric1,Foreground1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double Height1;
    PyObject* Height;
    PyObject* Width;
    double Width1;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Width1,&Height1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PartitionRectangle(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PartitionRectangle(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    char* Type1;
    double Grayval1;
    PyObject* Type;
    PyObject* Grayval;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image1,&Grayval1,&Type1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->RegionArray->PaintRegion(*(((PyHirschImage*)Image1)->Image),Grayval1,Type1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Image,&Grayval,&Type)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval) && PyHirschTuple_Check(Type)) {
                return PyHirschImage_FromHImage(self->RegionArray->PaintRegion(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple),*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Norm;
    char* Norm1;
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions2,&Norm)) {
            if (PyHirschRegionArray_Check(Regions2) && PyHirschTuple_Check(Norm)) {
                Halcon::HTuple Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->HammingDistanceNorm(*(((PyHirschRegionArray*)Regions2)->RegionArray),*(((PyHirschTuple*)Norm)->Tuple),&Similarity)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Similarity));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions21,&Norm1)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                Halcon::HTuple Similarity1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->HammingDistanceNorm(*(((PyHirschRegionArray*)Regions21)->RegionArray),Norm1,&Similarity1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Similarity1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long BeginRow1;
    PyObject* BeginRow;
    long BeginCol1;
    long EndRow1;
    PyObject* EndRow;
    PyObject* EndCol;
    long EndCol1;
    PyObject* BeginCol;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &BeginRow,&BeginCol,&EndRow,&EndCol)) {
            if (PyHirschTuple_Check(BeginRow) && PyHirschTuple_Check(BeginCol) && PyHirschTuple_Check(EndRow) && PyHirschTuple_Check(EndCol)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRegionLine(*(((PyHirschTuple*)BeginRow)->Tuple),*(((PyHirschTuple*)BeginCol)->Tuple),*(((PyHirschTuple*)EndRow)->Tuple),*(((PyHirschTuple*)EndCol)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &BeginRow1,&BeginCol1,&EndRow1,&EndCol1)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRegionLine(BeginRow1,BeginCol1,EndRow1,EndCol1));
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschRegion_FromHRegion(self->RegionArray->Interjacent(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschRegion_FromHRegion(self->RegionArray->Interjacent(Mode1));
        }
        PyErr_Clear();
        
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
    long ElimShorter1;
    PyObject* ElimLonger;
    long ElimLonger1;
    PyObject* ElimShorter;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ElimShorter,&ElimLonger)) {
            if (PyHirschTuple_Check(ElimShorter) && PyHirschTuple_Check(ElimLonger)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->EliminateRuns(*(((PyHirschTuple*)ElimShorter)->Tuple),*(((PyHirschTuple*)ElimLonger)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &ElimShorter1,&ElimLonger1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->EliminateRuns(ElimShorter1,ElimLonger1));
        }
        PyErr_Clear();
        
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
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    double Phi1;
    PyObject* Radius2;
    double Radius11;
    PyObject* Radius1;
    PyObject* Phi;
    double Radius21;
    double Column1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row1,&Column1,&Phi1,&Radius11,&Radius21)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenEllipse(Row1,Column1,Phi1,Radius11,Radius21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Radius1,&Radius2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenEllipse(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* reg1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &reg)) {
            if (PyHirschRegion_Check(reg)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Append(*(((PyHirschRegion*)reg)->Region)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &reg1)) {
            if (PyHirschRegionArray_Check(reg1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Append(*(((PyHirschRegionArray*)reg1)->RegionArray)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* Apar;
    PyObject* Cpar;
    PyObject* Image;
    long Cpar1;
    long Apar1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Apar) && PyHirschTuple_Check(Cpar)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->FuzzyPerimeter(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Apar)->Tuple),*(((PyHirschTuple*)Cpar)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&Apar1,&Cpar1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->FuzzyPerimeter(*(((PyHirschImage*)Image1)->Image),Apar1,Cpar1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Operation;
    char* Features1;
    char* Operation1;
    double Min1;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    PyObject* Features;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Features,&Operation,&Min,&Max)) {
            if (PyHirschTuple_Check(Features) && PyHirschTuple_Check(Operation) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShape(*(((PyHirschTuple*)Features)->Tuple),*(((PyHirschTuple*)Operation)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features1,&Operation1,&Min1,&Max1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShape(Features1,Operation1,Min1,Max1));
        }
        PyErr_Clear();
        
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
    PyObject* HeightMax;
    double PhiMax1;
    double WidthMin1;
    long NumRegions1;
    PyObject* NumRegions;
    long Height1;
    long Width1;
    double HeightMax1;
    char* Type1;
    PyObject* Type;
    PyObject* PhiMax;
    PyObject* WidthMax;
    PyObject* PhiMin;
    PyObject* Height;
    double WidthMax1;
    double HeightMin1;
    double PhiMin1;
    PyObject* WidthMin;
    PyObject* HeightMin;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "sddddddlll", &Type1,&WidthMin1,&WidthMax1,&HeightMin1,&HeightMax1,&PhiMin1,&PhiMax1,&NumRegions1,&Width1,&Height1)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRandomRegions(Type1,WidthMin1,WidthMax1,HeightMin1,HeightMax1,PhiMin1,PhiMax1,NumRegions1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOO", &Type,&WidthMin,&WidthMax,&HeightMin,&HeightMax,&PhiMin,&PhiMax,&NumRegions,&Width,&Height)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(WidthMin) && PyHirschTuple_Check(WidthMax) && PyHirschTuple_Check(HeightMin) && PyHirschTuple_Check(HeightMax) && PyHirschTuple_Check(PhiMin) && PyHirschTuple_Check(PhiMax) && PyHirschTuple_Check(NumRegions) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRandomRegions(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)WidthMin)->Tuple),*(((PyHirschTuple*)WidthMax)->Tuple),*(((PyHirschTuple*)HeightMin)->Tuple),*(((PyHirschTuple*)HeightMax)->Tuple),*(((PyHirschTuple*)PhiMin)->Tuple),*(((PyHirschTuple*)PhiMax)->Tuple),*(((PyHirschTuple*)NumRegions)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement1;
    PyObject* Row;
    long Row1;
    PyObject* StructElement21;
    PyObject* StructElement2;
    PyObject* Column;
    PyObject* StructElement11;
    long Iterations1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &StructElement1,&StructElement2,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Thinning(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlll", &StructElement11,&StructElement21,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement11) && PyHirschRegion_Check(StructElement21)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Thinning(*(((PyHirschRegion*)StructElement11)->Region),*(((PyHirschRegion*)StructElement21)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->RegionArray->WriteRegion(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->RegionArray->WriteRegion(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    PyObject* Rotation;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement1,&Iterations1,&Rotation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationGolay(GolayElement1,Iterations1,Rotation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &GolayElement,&Iterations,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThickeningSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThickeningSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PolarTransRegion(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->PolarTransRegion(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Direction;
    char* Direction1;
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions2,&Direction)) {
            if (PyHirschRegionArray_Check(Regions2) && PyHirschTuple_Check(Direction)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SelectRegionSpatial(*(((PyHirschRegionArray*)Regions2)->RegionArray),*(((PyHirschTuple*)Direction)->Tuple),&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions21,&Direction1)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                Halcon::HTuple RegionIndex21;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->SelectRegionSpatial(*(((PyHirschRegionArray*)Regions21)->RegionArray),Direction1,&RegionIndex21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex21));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* Image1;
    PyObject* Algorithm;
    double ClippingFactor1;
    PyObject* Image;
    long Iterations1;
    char* Algorithm1;
    PyObject* ClippingFactor;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(ClippingFactor)) {
                Halcon::HTuple Beta;
                Halcon::HTuple Gamma;
                Halcon::HTuple Delta;
                Halcon::HTuple Epsilon;
                Halcon::HTuple Zeta;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FitSurfaceSecondOrder(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Beta,&Gamma,&Delta,&Epsilon,&Zeta)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Gamma));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Delta));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Epsilon));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Zeta));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Image1,&Algorithm1,&Iterations1,&ClippingFactor1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple Beta1;
                Halcon::HTuple Gamma1;
                Halcon::HTuple Delta1;
                Halcon::HTuple Epsilon1;
                Halcon::HTuple Zeta1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->FitSurfaceSecondOrder(*(((PyHirschImage*)Image1)->Image),Algorithm1,Iterations1,ClippingFactor1,&Beta1,&Gamma1,&Delta1,&Epsilon1,&Zeta1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Gamma1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Delta1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Epsilon1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Zeta1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Min;
    PyObject* Feature;
    double Min1;
    PyObject* Max;
    PyObject* Pattern1;
    double Max1;
    PyObject* Pattern;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Pattern,&Feature,&Min,&Max)) {
            if (PyHirschRegionArray_Check(Pattern) && PyHirschTuple_Check(Feature) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShapeProto(*(((PyHirschRegionArray*)Pattern)->RegionArray),*(((PyHirschTuple*)Feature)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osdd", &Pattern1,&Feature1,&Min1,&Max1)) {
            if (PyHirschRegionArray_Check(Pattern1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SelectShapeProto(*(((PyHirschRegionArray*)Pattern1)->RegionArray),Feature1,Min1,Max1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* Apar;
    PyObject* Cpar;
    PyObject* Image;
    long Cpar1;
    long Apar1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Apar) && PyHirschTuple_Check(Cpar)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->FuzzyEntropy(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Apar)->Tuple),*(((PyHirschTuple*)Cpar)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&Apar1,&Cpar1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->FuzzyEntropy(*(((PyHirschImage*)Image1)->Image),Apar1,Cpar1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MoveRegion(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MoveRegion(Row1,Column1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThinningGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ThinningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiAdd1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiAdd1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    double Radius1;
    PyObject* Radius;
    double Column1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Row,&Column,&Radius)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Radius)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenCircle(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddd", &Row1,&Column1,&Radius1)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenCircle(Row1,Column1,Radius1));
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->OpeningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement1;
    PyObject* Row;
    long Row1;
    PyObject* StructElement21;
    PyObject* StructElement2;
    PyObject* Column;
    PyObject* StructElement11;
    long Iterations1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &StructElement1,&StructElement2,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Thickening(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlll", &StructElement11,&StructElement21,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement11) && PyHirschRegion_Check(StructElement21)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Thickening(*(((PyHirschRegion*)StructElement11)->Region),*(((PyHirschRegion*)StructElement21)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiSub1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MinkowskiSub1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::ReadRegion(FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::ReadRegion(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    double SlantTo1;
    long CharHeight1;
    double SlantFrom1;
    PyObject* SlantFrom;
    PyObject* SlantTo;
    PyObject* Image;
    PyObject* CharHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oldd", &Image1,&CharHeight1,&SlantFrom1,&SlantTo1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->TextLineSlant(*(((PyHirschImage*)Image1)->Image),CharHeight1,SlantFrom1,SlantTo1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Image,&CharHeight,&SlantFrom,&SlantTo)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CharHeight) && PyHirschTuple_Check(SlantFrom) && PyHirschTuple_Check(SlantTo)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->TextLineSlant(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CharHeight)->Tuple),*(((PyHirschTuple*)SlantFrom)->Tuple),*(((PyHirschTuple*)SlantTo)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* Background;
    PyObject* MinNumberPercent;
    PyObject* Distance;
    char* Metric1;
    double MinNumberPercent1;
    PyObject* Image;
    double Distance1;
    PyObject* Metric;
    PyObject* Background1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Background,&Image,&Metric,&Distance,&MinNumberPercent)) {
            if (PyHirschRegionArray_Check(Background) && PyHirschImageArray_Check(Image) && PyHirschTuple_Check(Metric) && PyHirschTuple_Check(Distance) && PyHirschTuple_Check(MinNumberPercent)) {
                Halcon::HTuple Center;
                Halcon::HTuple Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->LearnNdimNorm(*(((PyHirschRegionArray*)Background)->RegionArray),*(((PyHirschImageArray*)Image)->ImageArray),*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)Distance)->Tuple),*(((PyHirschTuple*)MinNumberPercent)->Tuple),&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Quality));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsdd", &Background1,&Image1,&Metric1,&Distance1,&MinNumberPercent1)) {
            if (PyHirschRegionArray_Check(Background1) && PyHirschImageArray_Check(Image1)) {
                Halcon::HTuple Center1;
                Halcon::HTuple Quality1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->LearnNdimNorm(*(((PyHirschRegionArray*)Background1)->RegionArray),*(((PyHirschImageArray*)Image1)->ImageArray),Metric1,Distance1,MinNumberPercent1,&Center1,&Quality1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Quality1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->GetRegionIndex(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyHirschTuple_FromHTuple(self->RegionArray->GetRegionIndex(Row1,Column1));
        }
        PyErr_Clear();
        
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
    PyObject* Row1;
    PyObject* Column1;
    double Column21;
    double Row11;
    PyObject* Column2;
    PyObject* Row2;
    double Row21;
    double Column11;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row1,&Column1,&Row2,&Column2)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Column1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Column2)) {
                return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRectangle1(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray::GenRectangle1(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
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
    long MinAmplitude1;
    PyObject* MinAmplitude;
    PyObject* EdgeImage1;
    PyObject* EdgeImage;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &EdgeImage1,&MinAmplitude1)) {
            if (PyHirschImage_Check(EdgeImage1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->CloseEdges(*(((PyHirschImage*)EdgeImage1)->Image),MinAmplitude1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &EdgeImage,&MinAmplitude)) {
            if (PyHirschImage_Check(EdgeImage) && PyHirschTuple_Check(MinAmplitude)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->CloseEdges(*(((PyHirschImage*)EdgeImage)->Image),*(((PyHirschTuple*)MinAmplitude)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    long Direction1;
    long LdGray1;
    PyObject* LdGray;
    PyObject* Direction;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(LdGray) && PyHirschTuple_Check(Direction)) {
                Halcon::HTuple Correlation;
                Halcon::HTuple Homogeneity;
                Halcon::HTuple Contrast;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->CoocFeatureImage(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)LdGray)->Tuple),*(((PyHirschTuple*)Direction)->Tuple),&Correlation,&Homogeneity,&Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Correlation));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Homogeneity));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Contrast));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&LdGray1,&Direction1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple Correlation1;
                Halcon::HTuple Homogeneity1;
                Halcon::HTuple Contrast1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->RegionArray->CoocFeatureImage(*(((PyHirschImage*)Image1)->Image),LdGray1,Direction1,&Correlation1,&Homogeneity1,&Contrast1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Correlation1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Homogeneity1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Contrast1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* FilterSize;
    PyObject* Image;
    long FilterSize1;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Image1,&FilterSize1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->NoiseDistributionMean(*(((PyHirschImage*)Image1)->Image),FilterSize1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&FilterSize)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(FilterSize)) {
                return PyHirschTuple_FromHTuple(self->RegionArray->NoiseDistributionMean(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)FilterSize)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Width1;
    long Distance1;
    PyObject* Distance;
    long Height1;
    PyObject* Height;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Width,&Height,&Distance)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Distance)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HammingChangeRegion(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Distance)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lll", &Width1,&Height1,&Distance1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HammingChangeRegion(Width1,Height1,Distance1));
        }
        PyErr_Clear();
        
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
    PyObject* Feature;
    double Min1;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Feature,&Min,&Max)) {
            if (PyHirschTuple_Check(Feature) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->FillUpShape(*(((PyHirschTuple*)Feature)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdd", &Feature1,&Min1,&Max1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->FillUpShape(Feature1,Min1,Max1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->TransposeRegion(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->TransposeRegion(Row1,Column1));
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ClosingRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Row;
    long Row1;
    PyObject* StructElement21;
    PyObject* StructElement2;
    PyObject* Column;
    PyObject* StructElement11;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &StructElement1,&StructElement2,&Row,&Column)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMiss(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOll", &StructElement11,&StructElement21,&Row1,&Column1)) {
            if (PyHirschRegion_Check(StructElement11) && PyHirschRegion_Check(StructElement21)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->HitOrMiss(*(((PyHirschRegion*)StructElement11)->Region),*(((PyHirschRegion*)StructElement21)->Region),Row1,Column1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaxDistance;
    long MaxDistance1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &MaxDistance)) {
            if (PyHirschTuple_Check(MaxDistance)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SplitSkeletonRegion(*(((PyHirschTuple*)MaxDistance)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &MaxDistance1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->SplitSkeletonRegion(MaxDistance1));
        }
        PyErr_Clear();
        
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
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                self->RegionArray->DispRegion(*(((PyHirschTuple*)WindowHandle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            self->RegionArray->DispRegion(WindowHandle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    PyObject* Rotation;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement1,&Iterations1,&Rotation1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionGolay(GolayElement1,Iterations1,Rotation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &GolayElement,&Iterations,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ErosionGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement1;
    PyObject* Row;
    long Row1;
    PyObject* Column;
    PyObject* StructElement;
    long Iterations1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Dilation2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Dilation2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Dilation1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->Dilation1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyInt_FromLong(long(self->RegionArray->TestRegionPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyInt_FromLong(long(self->RegionArray->TestRegionPoint(Row1,Column1)));
        }
        PyErr_Clear();
        
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
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->DilationCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->RegionArray->GenContourRegionXld(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->RegionArray->GenContourRegionXld(Mode1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* Mode1;
    PyObject* ForbiddenArea;
    PyObject* Mode;
    long Iterations1;
    PyObject* ForbiddenArea1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ForbiddenArea,&Iterations,&Mode)) {
            if (PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Mode)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &ForbiddenArea1,&Iterations1,&Mode1)) {
            if (PyHirschRegion_Check(ForbiddenArea1)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea1)->Region),Iterations1,Mode1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* WidthHeight;
    char* Mode1;
    PyObject* Mode;
    long WidthHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mode,&WidthHeight)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(WidthHeight)) {
                return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MirrorRegion(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)WidthHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &Mode1,&WidthHeight1)) {
            return PyHirschRegionArray_FromHRegionArray(self->RegionArray->MirrorRegion(Mode1,WidthHeight1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
