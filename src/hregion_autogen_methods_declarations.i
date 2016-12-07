PyObject *
PyHirschRegion_SpatialRelation(PyHirschRegion*self, PyObject *args)
{
    long Percent;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Regions2,&Percent)) {
            if (PyHirschRegion_Check(Regions2)) {
                HalconCpp::HTuple RegionIndex2;
                HalconCpp::HTuple Relation1;
                HalconCpp::HTuple Relation2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->SpatialRelation(*(((PyHirschRegion*)Regions2)->Region),Percent,&RegionIndex2,&Relation1,&Relation2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RegionIndex2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Relation1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Relation2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SpatialRelation()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenCoocMatrix(PyHirschRegion*self, PyObject *args)
{
    long Direction;
    PyObject* Image;
    long LdGray;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->Region->GenCoocMatrix(*(((PyHirschImage*)Image)->Image),LdGray,Direction));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenCoocMatrix()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_OpeningRectangle1(PyHirschRegion*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningRectangle1(Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningRectangle1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion2ndRelInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double PHI21;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion2ndRelInvar(&PHI21)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(PHI21));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenGridRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* ColumnSteps;
    char* Type2;
    long Width2;
    char* Type;
    long Width;
    long ColumnSteps1;
    long RowSteps1;
    long Width1;
    PyObject* RowSteps;
    long Height;
    long RowSteps2;
    long Height1;
    long Height2;
    char* Type1;
    long ColumnSteps2;
    
    try {
        if (PyArg_ParseTuple(args, "llsll", &RowSteps2,&ColumnSteps2,&Type2,&Width2,&Height2)) {
            self->Region->GenGridRegion(RowSteps2,ColumnSteps2,Type2,Width2,Height2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsll", &RowSteps,&ColumnSteps,&Type,&Width,&Height)) {
            if (PyHirschTuple_Check(RowSteps) && PyHirschTuple_Check(ColumnSteps)) {
                self->Region->GenGridRegion(*(((PyHirschTuple*)RowSteps)->Tuple),*(((PyHirschTuple*)ColumnSteps)->Tuple),HalconCpp::HString(Type),Width,Height);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llsll", &RowSteps1,&ColumnSteps1,&Type1,&Width1,&Height1)) {
            self->Region->GenGridRegion(RowSteps1,ColumnSteps1,HalconCpp::HString(Type1),Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenGridRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenEllipse(PyHirschRegion*self, PyObject *args)
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
            self->Region->GenEllipse(Row1,Column1,Phi1,Radius11,Radius21);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Radius1,&Radius2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2)) {
                self->Region->GenEllipse(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenEllipse()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Roundness(PyHirschRegion*self, PyObject *)
{
    try {
        double Sigma1;
        double Roundness1;
        double Sides1;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->Roundness(&Sigma1,&Roundness1,&Sides1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Sigma1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Roundness1));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Sides1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionPolygon(PyHirschRegion*self, PyObject *args)
{
    PyObject* Tolerance;
    double Tolerance1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Tolerance1)) {
            {
            // with output params
                HalconCpp::HTuple Rows1;
                HalconCpp::HTuple Columns1;
                self->Region->GetRegionPolygon(Tolerance1,&Rows1,&Columns1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Rows1));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Columns1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Tolerance)) {
            if (PyHirschTuple_Check(Tolerance)) {
                HalconCpp::HTuple Rows;
                HalconCpp::HTuple Columns;
                self->Region->GetRegionPolygon(*(((PyHirschTuple*)Tolerance)->Tuple),&Rows,&Columns);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Rows));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Columns));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GetRegionPolygon()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_NoiseDistributionMean(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    long FilterSize;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Image,&FilterSize)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->NoiseDistributionMean(*(((PyHirschImage*)Image)->Image),FilterSize));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.NoiseDistributionMean()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionPoints(PyHirschRegion*self, PyObject *args)
{
    PyObject* Columns;
    long Rows1;
    PyObject* Rows;
    long Columns1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Rows,&Columns)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Columns)) {
                self->Region->GenRegionPoints(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Columns)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Rows1,&Columns1)) {
            self->Region->GenRegionPoints(Rows1,Columns1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionPoints()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SmallestCircle(PyHirschRegion*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        double Radius1;
        self->Region->SmallestCircle(&Row1,&Column1,&Radius1);
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ZoomRegion(PyHirschRegion*self, PyObject *args)
{
    double ScaleWidth;
    double ScaleHeight;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &ScaleWidth,&ScaleHeight)) {
            return PyHirschRegion_FromHRegion(self->Region->ZoomRegion(ScaleWidth,ScaleHeight));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ZoomRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsGrayPlane(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple MRow;
                HalconCpp::HTuple MCol;
                HalconCpp::HTuple Alpha;
                HalconCpp::HTuple Beta;
                HalconCpp::HTuple Mean;
                self->Region->MomentsGrayPlane(*(((PyHirschImage*)Image)->Image),&MRow,&MCol,&Alpha,&Beta,&Mean);
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
        if (PyArg_ParseTuple(args, "O", &Image1)) {
            if (PyHirschImage_Check(Image1)) {
                double MRow1;
                double MCol1;
                double Alpha1;
                double Beta1;
                double Mean1;
                self->Region->MomentsGrayPlane(*(((PyHirschImage*)Image1)->Image),&MRow1,&MCol1,&Alpha1,&Beta1,&Mean1);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MomentsGrayPlane()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SplitSkeletonLines(PyHirschRegion*self, PyObject *args)
{
    long MaxDistance;
    
    try {
        if (PyArg_ParseTuple(args, "l", &MaxDistance)) {
            {
            // with output params
                HalconCpp::HTuple BeginRow;
                HalconCpp::HTuple BeginCol;
                HalconCpp::HTuple EndRow;
                HalconCpp::HTuple EndCol;
                self->Region->SplitSkeletonLines(MaxDistance,&BeginRow,&BeginCol,&EndRow,&EndCol);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(BeginRow));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(BeginCol));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(EndRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(EndCol));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SplitSkeletonLines()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThickeningGolay(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Rotation;
    char* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningGolay(HalconCpp::HString(GolayElement),Rotation));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThickeningGolay()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_OrientationRegion(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->OrientationRegion());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ShapeHistoPoint(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    long Row;
    long Column1;
    PyObject* Image;
    long Row1;
    long Column;
    char* Feature;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &Image1,&Feature1,&Row1,&Column1)) {
            if (PyHirschImage_Check(Image1)) {
                HalconCpp::HTuple RelativeHisto1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->ShapeHistoPoint(*(((PyHirschImage*)Image1)->Image),Feature1,Row1,Column1,&RelativeHisto1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RelativeHisto1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osll", &Image,&Feature,&Row,&Column)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->ShapeHistoPoint(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Feature),Row,Column,&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RelativeHisto));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ShapeHistoPoint()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_FuzzyPerimeter(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    long Apar;
    long Cpar;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->FuzzyPerimeter(*(((PyHirschImage*)Image)->Image),Apar,Cpar));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FuzzyPerimeter()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HoughLines(PyHirschRegion*self, PyObject *args)
{
    long Threshold;
    long DistGap;
    long AngleResolution;
    long AngleGap;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &AngleResolution,&Threshold,&AngleGap,&DistGap)) {
            {
            // with output params
                HalconCpp::HTuple Dist;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->HoughLines(AngleResolution,Threshold,AngleGap,DistGap,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Dist));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughLines()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TestSubsetRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->TestSubsetRegion(*(((PyHirschRegion*)Region2)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TestSubsetRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GrayHistoRange(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    double Min1;
    PyObject* Max;
    long NumBins1;
    PyObject* Min;
    double Max1;
    long NumBins;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "OOOl", &Image,&Min,&Max,&NumBins)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                double BinSize;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->GrayHistoRange(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple),NumBins,&BinSize)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(BinSize));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oddl", &Image1,&Min1,&Max1,&NumBins1)) {
            if (PyHirschImage_Check(Image1)) {
                double BinSize1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->GrayHistoRange(*(((PyHirschImage*)Image1)->Image),Min1,Max1,NumBins1,&BinSize1))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(BinSize1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayHistoRange()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MorphSkeleton(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->MorphSkeleton());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegionCentralInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double PSI21;
        double PSI31;
        double PSI41;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegionCentralInvar(&PSI21,&PSI31,&PSI41)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(PSI21));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(PSI31));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(PSI41));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TextLineOrientation(PyHirschRegion*self, PyObject *args)
{
    double OrientationTo;
    double OrientationFrom;
    PyObject* Image;
    long CharHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oldd", &Image,&CharHeight,&OrientationFrom,&OrientationTo)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->TextLineOrientation(*(((PyHirschImage*)Image)->Image),CharHeight,OrientationFrom,OrientationTo));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TextLineOrientation()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenCircle(PyHirschRegion*self, PyObject *args)
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
                self->Region->GenCircle(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Radius)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddd", &Row1,&Column1,&Radius1)) {
            self->Region->GenCircle(Row1,Column1,Radius1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenCircle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClipRegion(PyHirschRegion*self, PyObject *args)
{
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschRegion_FromHRegion(self->Region->ClipRegion(Row1,Column1,Row2,Column2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClipRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SortRegion(PyHirschRegion*self, PyObject *args)
{
    char* RowOrCol1;
    char* Order1;
    char* SortMode;
    char* RowOrCol;
    char* SortMode1;
    char* Order;
    
    try {
        if (PyArg_ParseTuple(args, "sss", &SortMode1,&Order1,&RowOrCol1)) {
            return PyHirschRegion_FromHRegion(self->Region->SortRegion(SortMode1,Order1,RowOrCol1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &SortMode,&Order,&RowOrCol)) {
            return PyHirschRegion_FromHRegion(self->Region->SortRegion(HalconCpp::HString(SortMode),HalconCpp::HString(Order),HalconCpp::HString(RowOrCol)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SortRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Convexity(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Convexity());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_PolarTransRegionInv(PyHirschRegion*self, PyObject *args)
{
    double Row2;
    char* Interpolation;
    long Width1;
    long Height1;
    double RadiusStart2;
    double AngleEnd1;
    double RadiusEnd1;
    long HeightIn;
    double Column2;
    long Width2;
    double AngleStart1;
    long WidthIn;
    long Height2;
    char* Interpolation1;
    char* Interpolation2;
    double RadiusEnd2;
    PyObject* Column;
    PyObject* Row;
    long HeightIn2;
    long WidthIn1;
    double AngleEnd2;
    PyObject* RadiusEnd;
    double RadiusStart1;
    PyObject* RadiusStart;
    double Row1;
    long Width;
    double AngleStart2;
    long Height;
    double AngleEnd;
    long WidthIn2;
    long HeightIn1;
    double AngleStart;
    double Column1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddlllls", &Row2,&Column2,&AngleStart2,&AngleEnd2,&RadiusStart2,&RadiusEnd2,&WidthIn2,&HeightIn2,&Width2,&Height2,&Interpolation2)) {
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegionInv(Row2,Column2,AngleStart2,AngleEnd2,RadiusStart2,RadiusEnd2,WidthIn2,HeightIn2,Width2,Height2,Interpolation2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOddOOlllls", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&WidthIn,&HeightIn,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd)) {
                return PyHirschRegion_FromHRegion(self->Region->PolarTransRegionInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),AngleStart,AngleEnd,*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),WidthIn,HeightIn,Width,Height,HalconCpp::HString(Interpolation)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddlllls", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&WidthIn1,&HeightIn1,&Width1,&Height1,&Interpolation1)) {
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegionInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,WidthIn1,HeightIn1,Width1,Height1,HalconCpp::HString(Interpolation1)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PolarTransRegionInv()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HoughCircles(PyHirschRegion*self, PyObject *args)
{
    long Mode1;
    PyObject* Radius;
    long Percent1;
    PyObject* Percent;
    PyObject* Mode;
    long Radius1;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Radius1,&Percent1,&Mode1)) {
            return PyHirschRegion_FromHRegion(self->Region->HoughCircles(Radius1,Percent1,Mode1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Radius,&Percent,&Mode)) {
            if (PyHirschTuple_Check(Radius) && PyHirschTuple_Check(Percent) && PyHirschTuple_Check(Mode)) {
                return PyHirschRegion_FromHRegion(self->Region->HoughCircles(*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)Percent)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughCircles()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HammingDistance(PyHirschRegion*self, PyObject *args)
{
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions21)) {
            if (PyHirschRegion_Check(Regions21)) {
                double Similarity1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistance(*(((PyHirschRegion*)Regions21)->Region),&Similarity1))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                HalconCpp::HTuple Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->HammingDistance(*(((PyHirschRegion*)Regions2)->Region),&Similarity)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Similarity));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HammingDistance()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GrayHisto(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->GrayHisto(*(((PyHirschImage*)Image)->Image),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RelativeHisto));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayHisto()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionPolygonFilled(PyHirschRegion*self, PyObject *args)
{
    PyObject* Columns;
    PyObject* Rows;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Rows,&Columns)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Columns)) {
                self->Region->GenRegionPolygonFilled(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Columns)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionPolygonFilled()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SmallestRectangle1(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong Row11;
        Hlong Column11;
        Hlong Row21;
        Hlong Column21;
        self->Region->SmallestRectangle1(&Row11,&Column11,&Row21,&Column21);
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(Row11)));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Column11)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Row21)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Column21)));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RegionToLabel(PyHirschRegion*self, PyObject *args)
{
    char* Type1;
    char* Type;
    long Width;
    long Width1;
    long Height;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Region->RegionToLabel(Type1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &Type,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Region->RegionToLabel(HalconCpp::HString(Type),Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RegionToLabel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionRuns(PyHirschRegion*self, PyObject *)
{
    try {
        HalconCpp::HTuple Row;
        HalconCpp::HTuple ColumnBegin;
        HalconCpp::HTuple ColumnEnd;
        self->Region->GetRegionRuns(&Row,&ColumnBegin,&ColumnEnd);
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColumnBegin));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(ColumnEnd));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MorphSkiz(PyHirschRegion*self, PyObject *args)
{
    PyObject* Iterations1;
    PyObject* Iterations2;
    long Iterations11;
    long Iterations21;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Iterations1,&Iterations2)) {
            if (PyHirschTuple_Check(Iterations1) && PyHirschTuple_Check(Iterations2)) {
                return PyHirschRegion_FromHRegion(self->Region->MorphSkiz(*(((PyHirschTuple*)Iterations1)->Tuple),*(((PyHirschTuple*)Iterations2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Iterations11,&Iterations21)) {
            return PyHirschRegion_FromHRegion(self->Region->MorphSkiz(Iterations11,Iterations21));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MorphSkiz()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionHisto(PyHirschRegion*self, PyObject *args)
{
    long Scale;
    long Column;
    long Row;
    PyObject* Histogram;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &Histogram,&Row,&Column,&Scale)) {
            if (PyHirschTuple_Check(Histogram)) {
                self->Region->GenRegionHisto(*(((PyHirschTuple*)Histogram)->Tuple),Row,Column,Scale);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionHisto()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThinningSeq(PyHirschRegion*self, PyObject *args)
{
    PyObject* Iterations;
    char* GolayElement1;
    char* GolayElement2;
    char* GolayElement;
    long Iterations1;
    long Iterations2;
    
    try {
        if (PyArg_ParseTuple(args, "sO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->ThinningSeq(HalconCpp::HString(GolayElement),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningSeq(HalconCpp::HString(GolayElement1),Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement2,&Iterations2)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningSeq(GolayElement2,Iterations2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThinningSeq()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Compactness(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Compactness());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionPolygon(PyHirschRegion*self, PyObject *args)
{
    PyObject* Columns;
    PyObject* Rows;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Rows,&Columns)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Columns)) {
                self->Region->GenRegionPolygon(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Columns)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionPolygon()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistancePr(PyHirschRegion*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                HalconCpp::HTuple DistanceMin;
                HalconCpp::HTuple DistanceMax;
                self->Region->DistancePr(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            {
            // with output params
                double DistanceMin1;
                double DistanceMax1;
                self->Region->DistancePr(Row1,Column1,&DistanceMin1,&DistanceMax1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistancePr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Closing(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->Closing(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Closing()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MorphHat(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->MorphHat(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MorphHat()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_CloseEdgesLength(PyHirschRegion*self, PyObject *args)
{
    long MinAmplitude;
    PyObject* Gradient;
    long MaxGapLength;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Gradient,&MinAmplitude,&MaxGapLength)) {
            if (PyHirschImage_Check(Gradient)) {
                return PyHirschRegion_FromHRegion(self->Region->CloseEdgesLength(*(((PyHirschImage*)Gradient)->Image),MinAmplitude,MaxGapLength));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CloseEdgesLength()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RunlengthFeatures(PyHirschRegion*self, PyObject *)
{
    try {
        double KFactor1;
        double LFactor1;
        double MeanLength1;
        Hlong Bytes1;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->RunlengthFeatures(&KFactor1,&LFactor1,&MeanLength1,&Bytes1))));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(KFactor1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(LFactor1));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(MeanLength1));
        PyTuple_SET_ITEM(ret, 4, PyInt_FromLong(long(Bytes1)));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_PartitionDynamic(PyHirschRegion*self, PyObject *args)
{
    double Percent;
    double Distance;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Distance,&Percent)) {
            return PyHirschRegion_FromHRegion(self->Region->PartitionDynamic(Distance,Percent));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PartitionDynamic()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SmallestRectangle2(PyHirschRegion*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        double Phi1;
        double Length11;
        double Length21;
        self->Region->SmallestRectangle2(&Row1,&Column1,&Phi1,&Length11,&Length21);
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Length11));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Length21));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ProtectOcrTrainf(PyHirschRegion*, PyObject *args)
{
    char* Password2;
    char* TrainingFileProtected2;
    char* TrainingFileProtected1;
    char* TrainingFile2;
    char* TrainingFile1;
    PyObject* Password;
    char* TrainingFile;
    char* TrainingFileProtected;
    char* Password1;
    
    try {
        if (PyArg_ParseTuple(args, "sOs", &TrainingFile,&Password,&TrainingFileProtected)) {
            if (PyHirschTuple_Check(Password)) {
                HalconCpp::HRegion::ProtectOcrTrainf(HalconCpp::HString(TrainingFile),*(((PyHirschTuple*)Password)->Tuple),HalconCpp::HString(TrainingFileProtected));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &TrainingFile2,&Password2,&TrainingFileProtected2)) {
            HalconCpp::HRegion::ProtectOcrTrainf(TrainingFile2,Password2,TrainingFileProtected2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &TrainingFile1,&Password1,&TrainingFileProtected1)) {
            HalconCpp::HRegion::ProtectOcrTrainf(HalconCpp::HString(TrainingFile1),HalconCpp::HString(Password1),HalconCpp::HString(TrainingFileProtected1));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ProtectOcrTrainf()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Skeleton(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->Skeleton());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_BackgroundSeg(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->BackgroundSeg());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Intensity(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Deviation;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->Intensity(*(((PyHirschImage*)Image)->Image),&Deviation)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Deviation));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image1)) {
            if (PyHirschImage_Check(Image1)) {
                double Deviation1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->Intensity(*(((PyHirschImage*)Image1)->Image),&Deviation1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Deviation1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Intensity()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_AreaCenterGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->AreaCenterGray(*(((PyHirschImage*)Image)->Image),&Row,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Column));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image1)) {
            if (PyHirschImage_Check(Image1)) {
                double Row1;
                double Column1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->AreaCenterGray(*(((PyHirschImage*)Image1)->Image),&Row1,&Column1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Column1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AreaCenterGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_WriteOcrTrainf(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    char* Class1;
    PyObject* Image2;
    char* TrainingFile1;
    PyObject* Class;
    char* TrainingFile;
    PyObject* Image;
    char* TrainingFile2;
    char* Class2;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image2,&Class2,&TrainingFile2)) {
            if (PyHirschImage_Check(Image2)) {
                self->Region->WriteOcrTrainf(*(((PyHirschImage*)Image2)->Image),Class2,TrainingFile2);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &Image1,&Class1,&TrainingFile1)) {
            if (PyHirschImage_Check(Image1)) {
                self->Region->WriteOcrTrainf(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(Class1),HalconCpp::HString(TrainingFile1));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &Image,&Class,&TrainingFile)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Class)) {
                self->Region->WriteOcrTrainf(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Class)->Tuple),HalconCpp::HString(TrainingFile));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.WriteOcrTrainf()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_JunctionsSkeleton(PyHirschRegion*self, PyObject *)
{
    try {
        HalconCpp::HRegion JuncPoints;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->JunctionsSkeleton(&JuncPoints)));
        PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(JuncPoints));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_FitSurfaceFirstOrder(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    long Iterations;
    char* Algorithm;
    double ClippingFactor1;
    double ClippingFactor;
    PyObject* Image2;
    double ClippingFactor2;
    PyObject* Image;
    long Iterations1;
    char* Algorithm2;
    char* Algorithm1;
    long Iterations2;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Beta;
                HalconCpp::HTuple Gamma;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->FitSurfaceFirstOrder(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Algorithm),Iterations,ClippingFactor,&Beta,&Gamma)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Gamma));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Image1,&Algorithm1,&Iterations1,&ClippingFactor1)) {
            if (PyHirschImage_Check(Image1)) {
                double Beta1;
                double Gamma1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceFirstOrder(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(Algorithm1),Iterations1,ClippingFactor1,&Beta1,&Gamma1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Image2,&Algorithm2,&Iterations2,&ClippingFactor2)) {
            if (PyHirschImage_Check(Image2)) {
                double Beta2;
                double Gamma2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceFirstOrder(*(((PyHirschImage*)Image2)->Image),Algorithm2,Iterations2,ClippingFactor2,&Beta2,&Gamma2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FitSurfaceFirstOrder()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HitOrMissSeq(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "s", &GolayElement1)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissSeq(GolayElement1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GolayElement)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissSeq(HalconCpp::HString(GolayElement)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HitOrMissSeq()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Pruning(PyHirschRegion*self, PyObject *args)
{
    long Length;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Length)) {
            return PyHirschRegion_FromHRegion(self->Region->Pruning(Length));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Pruning()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRandomRegion(PyHirschRegion*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            self->Region->GenRandomRegion(Width,Height);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRandomRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RemoveNoiseRegion(PyHirschRegion*self, PyObject *args)
{
    char* Type1;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschRegion_FromHRegion(self->Region->RemoveNoiseRegion(HalconCpp::HString(Type)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschRegion_FromHRegion(self->Region->RemoveNoiseRegion(Type1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RemoveNoiseRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HammingChangeRegion(PyHirschRegion*self, PyObject *args)
{
    long Distance;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Width,&Height,&Distance)) {
            return PyHirschRegion_FromHRegion(self->Region->HammingChangeRegion(Width,Height,Distance));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HammingChangeRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SegmentCharacters(PyHirschRegion*self, PyObject *args)
{
    long Contrast2;
    char* Method2;
    long Contrast;
    PyObject* CharHeight2;
    char* EliminateLines2;
    PyObject* CharWidth1;
    PyObject* Image1;
    char* StrokeWidth2;
    long ThresholdOffset2;
    char* Method;
    PyObject* Image;
    char* DotPrint1;
    PyObject* CharHeight;
    PyObject* CharHeight1;
    long ThresholdOffset;
    char* EliminateLines1;
    PyObject* CharWidth2;
    char* Method1;
    char* StrokeWidth;
    long Contrast1;
    PyObject* CharWidth;
    char* EliminateLines;
    PyObject* Image2;
    char* StrokeWidth1;
    char* DotPrint;
    long ThresholdOffset1;
    char* DotPrint2;
    
    try {
        if (PyArg_ParseTuple(args, "OssssOOll", &Image2,&Method2,&EliminateLines2,&DotPrint2,&StrokeWidth2,&CharWidth2,&CharHeight2,&ThresholdOffset2,&Contrast2)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(CharWidth2) && PyHirschTuple_Check(CharHeight2)) {
                HalconCpp::HRegion RegionForeground2;
                Hlong UsedThreshold2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Region->SegmentCharacters(*(((PyHirschImage*)Image2)->Image),&RegionForeground2,Method2,EliminateLines2,DotPrint2,StrokeWidth2,*(((PyHirschTuple*)CharWidth2)->Tuple),*(((PyHirschTuple*)CharHeight2)->Tuple),ThresholdOffset2,Contrast2,&UsedThreshold2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(RegionForeground2));
                PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(UsedThreshold2)));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OssssOOll", &Image,&Method,&EliminateLines,&DotPrint,&StrokeWidth,&CharWidth,&CharHeight,&ThresholdOffset,&Contrast)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CharWidth) && PyHirschTuple_Check(CharHeight)) {
                HalconCpp::HRegion RegionForeground;
                HalconCpp::HTuple UsedThreshold;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Region->SegmentCharacters(*(((PyHirschImage*)Image)->Image),&RegionForeground,HalconCpp::HString(Method),HalconCpp::HString(EliminateLines),HalconCpp::HString(DotPrint),HalconCpp::HString(StrokeWidth),*(((PyHirschTuple*)CharWidth)->Tuple),*(((PyHirschTuple*)CharHeight)->Tuple),ThresholdOffset,Contrast,&UsedThreshold)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(RegionForeground));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(UsedThreshold));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OssssOOll", &Image1,&Method1,&EliminateLines1,&DotPrint1,&StrokeWidth1,&CharWidth1,&CharHeight1,&ThresholdOffset1,&Contrast1)) {
            if (PyHirschImage_Check(Image1) && PyHirschTuple_Check(CharWidth1) && PyHirschTuple_Check(CharHeight1)) {
                HalconCpp::HRegion RegionForeground1;
                Hlong UsedThreshold1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Region->SegmentCharacters(*(((PyHirschImage*)Image1)->Image),&RegionForeground1,HalconCpp::HString(Method1),HalconCpp::HString(EliminateLines1),HalconCpp::HString(DotPrint1),HalconCpp::HString(StrokeWidth1),*(((PyHirschTuple*)CharWidth1)->Tuple),*(((PyHirschTuple*)CharHeight1)->Tuple),ThresholdOffset1,Contrast1,&UsedThreshold1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(RegionForeground1));
                PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(UsedThreshold1)));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SegmentCharacters()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Area(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Area());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MinkowskiAdd2(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiAdd2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiAdd2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MinkowskiSub2(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiSub2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiSub2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRectangle2(PyHirschRegion*self, PyObject *args)
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
            self->Region->GenRectangle2(Row1,Column1,Phi1,Length11,Length21);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                self->Region->GenRectangle2(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRectangle2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HoughLineTrans(PyHirschRegion*self, PyObject *args)
{
    long AngleResolution;
    
    try {
        if (PyArg_ParseTuple(args, "l", &AngleResolution)) {
            return PyHirschImage_FromHImage(self->Region->HoughLineTrans(AngleResolution));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughLineTrans()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Histo2dim(PyHirschRegion*self, PyObject *args)
{
    PyObject* ImageRow;
    PyObject* ImageCol;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ImageCol,&ImageRow)) {
            if (PyHirschImage_Check(ImageCol) && PyHirschImage_Check(ImageRow)) {
                return PyHirschImage_FromHImage(self->Region->Histo2dim(*(((PyHirschImage*)ImageCol)->Image),*(((PyHirschImage*)ImageRow)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Histo2dim()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRectangle1(PyHirschRegion*self, PyObject *args)
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
                self->Region->GenRectangle1(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            self->Region->GenRectangle1(Row11,Column11,Row21,Column21);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRectangle1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RegionToBin(PyHirschRegion*self, PyObject *args)
{
    long Height;
    long ForegroundGray;
    long Width;
    long BackgroundGray;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &ForegroundGray,&BackgroundGray,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Region->RegionToBin(ForegroundGray,BackgroundGray,Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RegionToBin()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ErosionCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegion_FromHRegion(self->Region->ErosionCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionCircle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_FindNeighbors(PyHirschRegion*self, PyObject *args)
{
    long MaxDistance;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Regions2,&MaxDistance)) {
            if (PyHirschRegion_Check(Regions2)) {
                HalconCpp::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->FindNeighbors(*(((PyHirschRegion*)Regions2)->Region),MaxDistance,&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RegionIndex2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FindNeighbors()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegionCentral(PyHirschRegion*self, PyObject *)
{
    try {
        double I21;
        double I31;
        double I41;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegionCentral(&I21,&I31,&I41)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(I21));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(I31));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(I41));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MergeRegionsLineScan(PyHirschRegion*self, PyObject *args)
{
    PyObject* PrevRegions;
    long ImageHeight;
    long MaxImagesRegion1;
    char* MergeBorder;
    long MaxImagesRegion;
    char* MergeBorder1;
    long ImageHeight1;
    PyObject* PrevRegions1;
    
    try {
        if (PyArg_ParseTuple(args, "Olsl", &PrevRegions1,&ImageHeight1,&MergeBorder1,&MaxImagesRegion1)) {
            if (PyHirschRegion_Check(PrevRegions1)) {
                HalconCpp::HRegion PrevMergedRegions1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegion*)PrevRegions1)->Region),&PrevMergedRegions1,ImageHeight1,MergeBorder1,MaxImagesRegion1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olsl", &PrevRegions,&ImageHeight,&MergeBorder,&MaxImagesRegion)) {
            if (PyHirschRegion_Check(PrevRegions)) {
                HalconCpp::HRegion PrevMergedRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegion*)PrevRegions)->Region),&PrevMergedRegions,ImageHeight,HalconCpp::HString(MergeBorder),MaxImagesRegion)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MergeRegionsLineScan()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RankRegion(PyHirschRegion*self, PyObject *args)
{
    long Number;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Width,&Height,&Number)) {
            return PyHirschRegion_FromHRegion(self->Region->RankRegion(Width,Height,Number));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RankRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion2nd(PyHirschRegion*self, PyObject *)
{
    try {
        double M201;
        double M021;
        double Ia1;
        double Ib1;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion2nd(&M201,&M021,&Ia1,&Ib1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M201));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M021));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Ia1));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Ib1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HitOrMissGolay(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Rotation;
    char* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissGolay(HalconCpp::HString(GolayElement),Rotation));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HitOrMissGolay()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Erosion1(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->Erosion1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Erosion1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Erosion2(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->Erosion2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Erosion2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_AreaHoles(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->AreaHoles());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TestEqualRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                return PyInt_FromLong(long(self->Region->TestEqualRegion(*(((PyHirschRegion*)Regions2)->Region))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TestEqualRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenStructElements(PyHirschRegion*self, PyObject *args)
{
    char* Type1;
    long Row1;
    char* Type;
    long Row;
    long Column1;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type,&Row,&Column)) {
            self->Region->GenStructElements(HalconCpp::HString(Type),Row,Column);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &Type1,&Row1,&Column1)) {
            self->Region->GenStructElements(Type1,Row1,Column1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenStructElements()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Eccentricity(PyHirschRegion*self, PyObject *)
{
    try {
        double Bulkiness1;
        double StructureFactor1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->Eccentricity(&Bulkiness1,&StructureFactor1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Bulkiness1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(StructureFactor1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TopHat(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->TopHat(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TopHat()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Intersection(PyHirschRegion*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->Intersection(*(((PyHirschRegion*)Region2)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Intersection()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClipRegionRel(PyHirschRegion*self, PyObject *args)
{
    long Right;
    long Left;
    long Bottom;
    long Top;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Top,&Bottom,&Left,&Right)) {
            return PyHirschRegion_FromHRegion(self->Region->ClipRegionRel(Top,Bottom,Left,Right));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClipRegionRel()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ShapeTrans(PyHirschRegion*self, PyObject *args)
{
    char* Type1;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschRegion_FromHRegion(self->Region->ShapeTrans(HalconCpp::HString(Type)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschRegion_FromHRegion(self->Region->ShapeTrans(Type1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ShapeTrans()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenEmptyRegion(PyHirschRegion*self, PyObject *)
{
    try {
        self->Region->GenEmptyRegion();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Rectangularity(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Rectangularity());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_EllipticAxis(PyHirschRegion*self, PyObject *)
{
    try {
        double Rb1;
        double Phi1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->EllipticAxis(&Rb1,&Phi1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Rb1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceTransform(PyHirschRegion*self, PyObject *args)
{
    long Width1;
    long Width;
    char* Metric1;
    long Height;
    char* Foreground1;
    char* Metric;
    long Height1;
    char* Foreground;
    
    try {
        if (PyArg_ParseTuple(args, "ssll", &Metric1,&Foreground1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Region->DistanceTransform(Metric1,Foreground1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssll", &Metric,&Foreground,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Region->DistanceTransform(HalconCpp::HString(Metric),HalconCpp::HString(Foreground),Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceTransform()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HoughCircleTrans(PyHirschRegion*self, PyObject *args)
{
    PyObject* Radius;
    long Radius1;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Radius1)) {
            return PyHirschImage_FromHImage(self->Region->HoughCircleTrans(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschImage_FromHImage(self->Region->HoughCircleTrans(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughCircleTrans()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ErosionSeq(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Iterations;
    char* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionSeq(HalconCpp::HString(GolayElement),Iterations));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionSeq()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_PartitionRectangle(PyHirschRegion*self, PyObject *args)
{
    double Height;
    double Width;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Width,&Height)) {
            return PyHirschRegion_FromHRegion(self->Region->PartitionRectangle(Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PartitionRectangle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ObjDiff(PyHirschRegion*self, PyObject *args)
{
    PyObject* ObjectsSub;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ObjectsSub)) {
            if (PyHirschRegion_Check(ObjectsSub)) {
                return PyHirschRegion_FromHRegion(self->Region->ObjDiff(*(((PyHirschRegion*)ObjectsSub)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ObjDiff()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionPoints(PyHirschRegion*self, PyObject *)
{
    try {
        HalconCpp::HTuple Rows;
        HalconCpp::HTuple Columns;
        self->Region->GetRegionPoints(&Rows,&Columns);
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Rows));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Columns));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_PaintRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    double Grayval2;
    char* Type1;
    double Grayval1;
    char* Type;
    PyObject* Image2;
    PyObject* Grayval;
    PyObject* Image;
    char* Type2;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image1,&Grayval1,&Type1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->Region->PaintRegion(*(((PyHirschImage*)Image1)->Image),Grayval1,HalconCpp::HString(Type1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &Image,&Grayval,&Type)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->Region->PaintRegion(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple),HalconCpp::HString(Type)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Image2,&Grayval2,&Type2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschImage_FromHImage(self->Region->PaintRegion(*(((PyHirschImage*)Image2)->Image),Grayval2,Type2));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PaintRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HammingDistanceNorm(PyHirschRegion*self, PyObject *args)
{
    PyObject* Regions22;
    char* Norm2;
    char* Norm1;
    PyObject* Regions21;
    PyObject* Regions2;
    PyObject* Norm;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Regions2,&Norm)) {
            if (PyHirschRegion_Check(Regions2) && PyHirschTuple_Check(Norm)) {
                HalconCpp::HTuple Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->HammingDistanceNorm(*(((PyHirschRegion*)Regions2)->Region),*(((PyHirschTuple*)Norm)->Tuple),&Similarity)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Similarity));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions22,&Norm2)) {
            if (PyHirschRegion_Check(Regions22)) {
                double Similarity2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegion*)Regions22)->Region),Norm2,&Similarity2))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions21,&Norm1)) {
            if (PyHirschRegion_Check(Regions21)) {
                double Similarity1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegion*)Regions21)->Region),HalconCpp::HString(Norm1),&Similarity1))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HammingDistanceNorm()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Circularity(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Circularity());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ErosionRectangle1(PyHirschRegion*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionRectangle1(Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionRectangle1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_AppendOcrTrainf(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    char* Class1;
    PyObject* Image2;
    char* TrainingFile1;
    PyObject* Class;
    char* TrainingFile;
    PyObject* Image;
    char* TrainingFile2;
    char* Class2;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image2,&Class2,&TrainingFile2)) {
            if (PyHirschImage_Check(Image2)) {
                self->Region->AppendOcrTrainf(*(((PyHirschImage*)Image2)->Image),Class2,TrainingFile2);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &Image1,&Class1,&TrainingFile1)) {
            if (PyHirschImage_Check(Image1)) {
                self->Region->AppendOcrTrainf(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(Class1),HalconCpp::HString(TrainingFile1));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &Image,&Class,&TrainingFile)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Class)) {
                self->Region->AppendOcrTrainf(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Class)->Tuple),HalconCpp::HString(TrainingFile));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AppendOcrTrainf()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ExpandGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* Image1;
    char* Mode1;
    long Threshold1;
    char* Iterations1;
    char* Mode2;
    PyObject* ForbiddenArea;
    PyObject* Image2;
    PyObject* Image;
    PyObject* ForbiddenArea2;
    char* Iterations2;
    PyObject* Threshold;
    char* Mode;
    long Threshold2;
    PyObject* ForbiddenArea1;
    
    try {
        if (PyArg_ParseTuple(args, "OOssl", &Image2,&ForbiddenArea2,&Iterations2,&Mode2,&Threshold2)) {
            if (PyHirschImage_Check(Image2) && PyHirschRegion_Check(ForbiddenArea2)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandGray(*(((PyHirschImage*)Image2)->Image),*(((PyHirschRegion*)ForbiddenArea2)->Region),Iterations2,Mode2,Threshold2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOsO", &Image,&ForbiddenArea,&Iterations,&Mode,&Threshold)) {
            if (PyHirschImage_Check(Image) && PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),HalconCpp::HString(Mode),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssl", &Image1,&ForbiddenArea1,&Iterations1,&Mode1,&Threshold1)) {
            if (PyHirschImage_Check(Image1) && PyHirschRegion_Check(ForbiddenArea1)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandGray(*(((PyHirschImage*)Image1)->Image),*(((PyHirschRegion*)ForbiddenArea1)->Region),HalconCpp::HString(Iterations1),HalconCpp::HString(Mode1),Threshold1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ExpandGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionLine(PyHirschRegion*self, PyObject *args)
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
                self->Region->GenRegionLine(*(((PyHirschTuple*)BeginRow)->Tuple),*(((PyHirschTuple*)BeginCol)->Tuple),*(((PyHirschTuple*)EndRow)->Tuple),*(((PyHirschTuple*)EndCol)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &BeginRow1,&BeginCol1,&EndRow1,&EndCol1)) {
            self->Region->GenRegionLine(BeginRow1,BeginCol1,EndRow1,EndCol1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionLine()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectGray(PyHirschRegion*self, PyObject *args)
{
    char* Operation;
    PyObject* Image1;
    char* Features2;
    char* Features1;
    char* Operation1;
    double Min1;
    double Max2;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    double Min2;
    PyObject* Image2;
    PyObject* Image;
    PyObject* Features;
    char* Operation2;
    
    try {
        if (PyArg_ParseTuple(args, "Ossdd", &Image2,&Features2,&Operation2,&Min2,&Max2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectGray(*(((PyHirschImage*)Image2)->Image),Features2,Operation2,Min2,Max2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ossdd", &Image1,&Features1,&Operation1,&Min1,&Max1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectGray(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(Features1),HalconCpp::HString(Operation1),Min1,Max1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsOO", &Image,&Features,&Operation,&Min,&Max)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Features) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Features)->Tuple),HalconCpp::HString(Operation),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Interjacent(PyHirschRegion*self, PyObject *args)
{
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschRegion_FromHRegion(self->Region->Interjacent(HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschRegion_FromHRegion(self->Region->Interjacent(Mode1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Interjacent()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionChain(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong Row;
        Hlong Column;
        HalconCpp::HTuple Chain;
        self->Region->GetRegionChain(&Row,&Column,&Chain);
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(Row)));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Column)));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Chain));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_EliminateRuns(PyHirschRegion*self, PyObject *args)
{
    long ElimShorter;
    long ElimLonger;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &ElimShorter,&ElimLonger)) {
            return PyHirschRegion_FromHRegion(self->Region->EliminateRuns(ElimShorter,ElimLonger));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.EliminateRuns()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Dilation1(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->Dilation1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Dilation1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_OpeningCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegion_FromHRegion(self->Region->OpeningCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningCircle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_EllipticAxisGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Rb;
                HalconCpp::HTuple Phi;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->EllipticAxisGray(*(((PyHirschImage*)Image)->Image),&Rb,&Phi)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Rb));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Phi));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image1)) {
            if (PyHirschImage_Check(Image1)) {
                double Rb1;
                double Phi1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->EllipticAxisGray(*(((PyHirschImage*)Image1)->Image),&Rb1,&Phi1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Rb1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.EllipticAxisGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThickeningSeq(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Iterations;
    char* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningSeq(HalconCpp::HString(GolayElement),Iterations));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThickeningSeq()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionConvex(PyHirschRegion*self, PyObject *)
{
    try {
        HalconCpp::HTuple Rows;
        HalconCpp::HTuple Columns;
        self->Region->GetRegionConvex(&Rows,&Columns);
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Rows));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Columns));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Row(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Row());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DilationRectangle1(PyHirschRegion*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationRectangle1(Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationRectangle1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectShapeStd(PyHirschRegion*self, PyObject *args)
{
    double Percent;
    char* Shape1;
    char* Shape;
    double Percent1;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Shape1,&Percent1)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectShapeStd(Shape1,Percent1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Shape,&Percent)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectShapeStd(HalconCpp::HString(Shape),Percent));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectShapeStd()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_InnerRectangle1(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong Row11;
        Hlong Column11;
        Hlong Row21;
        Hlong Column21;
        self->Region->InnerRectangle1(&Row11,&Column11,&Row21,&Column21);
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(Row11)));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Column11)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Row21)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Column21)));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectShape(PyHirschRegion*self, PyObject *args)
{
    char* Operation;
    char* Operation2;
    char* Features2;
    char* Features1;
    char* Operation1;
    double Min1;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    double Min2;
    double Max2;
    PyObject* Features;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Features2,&Operation2,&Min2,&Max2)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectShape(Features2,Operation2,Min2,Max2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features1,&Operation1,&Min1,&Max1)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectShape(HalconCpp::HString(Features1),HalconCpp::HString(Operation1),Min1,Max1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OsOO", &Features,&Operation,&Min,&Max)) {
            if (PyHirschTuple_Check(Features) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShape(*(((PyHirschTuple*)Features)->Tuple),HalconCpp::HString(Operation),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectShape()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_OverpaintRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    double Grayval2;
    char* Type1;
    double Grayval1;
    char* Type;
    PyObject* Image2;
    PyObject* Grayval;
    PyObject* Image;
    char* Type2;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image1,&Grayval1,&Type1)) {
            if (PyHirschImage_Check(Image1)) {
                self->Region->OverpaintRegion(*(((PyHirschImage*)Image1)->Image),Grayval1,HalconCpp::HString(Type1));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &Image,&Grayval,&Type)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval)) {
                self->Region->OverpaintRegion(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple),HalconCpp::HString(Type));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ods", &Image2,&Grayval2,&Type2)) {
            if (PyHirschImage_Check(Image2)) {
                self->Region->OverpaintRegion(*(((PyHirschImage*)Image2)->Image),Grayval2,Type2);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OverpaintRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenContoursSkeletonXld(PyHirschRegion*self, PyObject *args)
{
    long Length;
    long Length1;
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &Length,&Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->Region->GenContoursSkeletonXld(Length,HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ls", &Length1,&Mode1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Region->GenContoursSkeletonXld(Length1,Mode1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenContoursSkeletonXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRandomRegions(PyHirschRegion*self, PyObject *args)
{
    double PhiMin2;
    char* Type;
    long Height1;
    PyObject* WidthMax;
    double PhiMax2;
    long Width2;
    PyObject* HeightMax;
    double PhiMax1;
    long NumRegions1;
    PyObject* PhiMax;
    double HeightMax2;
    double PhiMin1;
    double WidthMin2;
    char* Type2;
    long Width1;
    double WidthMax2;
    long NumRegions;
    long Height2;
    double HeightMax1;
    PyObject* PhiMin;
    double WidthMax1;
    double HeightMin1;
    PyObject* HeightMin;
    char* Type1;
    long Width;
    double HeightMin2;
    long Height;
    PyObject* WidthMin;
    double WidthMin1;
    long NumRegions2;
    
    try {
        if (PyArg_ParseTuple(args, "sOOOOOOlll", &Type,&WidthMin,&WidthMax,&HeightMin,&HeightMax,&PhiMin,&PhiMax,&NumRegions,&Width,&Height)) {
            if (PyHirschTuple_Check(WidthMin) && PyHirschTuple_Check(WidthMax) && PyHirschTuple_Check(HeightMin) && PyHirschTuple_Check(HeightMax) && PyHirschTuple_Check(PhiMin) && PyHirschTuple_Check(PhiMax)) {
                self->Region->GenRandomRegions(HalconCpp::HString(Type),*(((PyHirschTuple*)WidthMin)->Tuple),*(((PyHirschTuple*)WidthMax)->Tuple),*(((PyHirschTuple*)HeightMin)->Tuple),*(((PyHirschTuple*)HeightMax)->Tuple),*(((PyHirschTuple*)PhiMin)->Tuple),*(((PyHirschTuple*)PhiMax)->Tuple),NumRegions,Width,Height);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddddddlll", &Type2,&WidthMin2,&WidthMax2,&HeightMin2,&HeightMax2,&PhiMin2,&PhiMax2,&NumRegions2,&Width2,&Height2)) {
            self->Region->GenRandomRegions(Type2,WidthMin2,WidthMax2,HeightMin2,HeightMax2,PhiMin2,PhiMax2,NumRegions2,Width2,Height2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sddddddlll", &Type1,&WidthMin1,&WidthMax1,&HeightMin1,&HeightMax1,&PhiMin1,&PhiMax1,&NumRegions1,&Width1,&Height1)) {
            self->Region->GenRandomRegions(HalconCpp::HString(Type1),WidthMin1,WidthMax1,HeightMin1,HeightMax1,PhiMin1,PhiMax1,NumRegions1,Width1,Height1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRandomRegions()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_PlaneDeviation(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->PlaneDeviation(*(((PyHirschImage*)Image)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PlaneDeviation()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_CloseEdges(PyHirschRegion*self, PyObject *args)
{
    long MinAmplitude;
    PyObject* EdgeImage;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &EdgeImage,&MinAmplitude)) {
            if (PyHirschImage_Check(EdgeImage)) {
                return PyHirschRegion_FromHRegion(self->Region->CloseEdges(*(((PyHirschImage*)EdgeImage)->Image),MinAmplitude));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CloseEdges()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Thinning(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement1;
    PyObject* StructElement2;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "OOlll", &StructElement1,&StructElement2,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2)) {
                return PyHirschRegion_FromHRegion(self->Region->Thinning(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),Row,Column,Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Thinning()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionThickness(PyHirschRegion*self, PyObject *)
{
    try {
        HalconCpp::HTuple Histogramm;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->GetRegionThickness(&Histogramm)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Histogramm));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionHline(PyHirschRegion*self, PyObject *args)
{
    PyObject* Orientation;
    double Orientation1;
    double Distance1;
    PyObject* Distance;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Orientation1,&Distance1)) {
            self->Region->GenRegionHline(Orientation1,Distance1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Orientation,&Distance)) {
            if (PyHirschTuple_Check(Orientation) && PyHirschTuple_Check(Distance)) {
                self->Region->GenRegionHline(*(((PyHirschTuple*)Orientation)->Tuple),*(((PyHirschTuple*)Distance)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionHline()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Boundary(PyHirschRegion*self, PyObject *args)
{
    char* BoundaryType1;
    char* BoundaryType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &BoundaryType)) {
            return PyHirschRegion_FromHRegion(self->Region->Boundary(HalconCpp::HString(BoundaryType)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &BoundaryType1)) {
            return PyHirschRegion_FromHRegion(self->Region->Boundary(BoundaryType1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Boundary()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DilationGolay(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Iterations;
    long Rotation;
    long Rotation1;
    char* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement1,&Iterations1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationGolay(GolayElement1,Iterations1,Rotation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &GolayElement,&Iterations,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationGolay(HalconCpp::HString(GolayElement),Iterations,Rotation));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationGolay()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClosestPointTransform(PyHirschRegion*self, PyObject *args)
{
    char* ClosestPointMode;
    long Width;
    char* Metric1;
    long Width1;
    long Height;
    char* Foreground1;
    char* Metric;
    long Height1;
    char* Foreground;
    char* ClosestPointMode1;
    
    try {
        if (PyArg_ParseTuple(args, "sssll", &Metric,&Foreground,&ClosestPointMode,&Width,&Height)) {
            {
            // with output params
                HalconCpp::HImage ClosestPoints;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Region->ClosestPointTransform(&ClosestPoints,HalconCpp::HString(Metric),HalconCpp::HString(Foreground),HalconCpp::HString(ClosestPointMode),Width,Height)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ClosestPoints));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sssll", &Metric1,&Foreground1,&ClosestPointMode1,&Width1,&Height1)) {
            {
            // with output params
                HalconCpp::HImage ClosestPoints1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->Region->ClosestPointTransform(&ClosestPoints1,Metric1,Foreground1,ClosestPointMode1,Width1,Height1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschImage_FromHImage(ClosestPoints1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClosestPointTransform()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceSr(PyHirschRegion*self, PyObject *args)
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
                HalconCpp::HTuple DistanceMin;
                HalconCpp::HTuple DistanceMax;
                self->Region->DistanceSr(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            {
            // with output params
                double DistanceMin1;
                double DistanceMax1;
                self->Region->DistanceSr(Row11,Column11,Row21,Column21,&DistanceMin1,&DistanceMax1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceSr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GolayElements(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Row;
    long Rotation;
    long Rotation1;
    char* GolayElement;
    long Row1;
    long Column1;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "slll", &GolayElement1,&Rotation1,&Row1,&Column1)) {
            return PyHirschRegion_FromHRegion(self->Region->GolayElements(GolayElement1,Rotation1,Row1,Column1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slll", &GolayElement,&Rotation,&Row,&Column)) {
            return PyHirschRegion_FromHRegion(self->Region->GolayElements(HalconCpp::HString(GolayElement),Rotation,Row,Column));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GolayElements()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Complement(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->Complement());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MinMaxGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    double Percent1;
    PyObject* Percent;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Percent1)) {
            if (PyHirschImage_Check(Image1)) {
                double Min1;
                double Max1;
                double Range1;
                self->Region->MinMaxGray(*(((PyHirschImage*)Image1)->Image),Percent1,&Min1,&Max1,&Range1);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Min1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Max1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Range1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Percent)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Percent)) {
                HalconCpp::HTuple Min;
                HalconCpp::HTuple Max;
                HalconCpp::HTuple Range;
                self->Region->MinMaxGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Percent)->Tuple),&Min,&Max,&Range);
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Min));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Max));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Range));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinMaxGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_PolarTransRegion(PyHirschRegion*self, PyObject *args)
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
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegion(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,HalconCpp::HString(Interpolation1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddlls", &Row2,&Column2,&AngleStart2,&AngleEnd2,&RadiusStart2,&RadiusEnd2,&Width2,&Height2,&Interpolation2)) {
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegion(Row2,Column2,AngleStart2,AngleEnd2,RadiusStart2,RadiusEnd2,Width2,Height2,Interpolation2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOddOOlls", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd)) {
                return PyHirschRegion_FromHRegion(self->Region->PolarTransRegion(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),AngleStart,AngleEnd,*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),Width,Height,HalconCpp::HString(Interpolation)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PolarTransRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_EntropyGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Anisotropy;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->EntropyGray(*(((PyHirschImage*)Image)->Image),&Anisotropy)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Anisotropy));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Image1)) {
            if (PyHirschImage_Check(Image1)) {
                double Anisotropy1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->EntropyGray(*(((PyHirschImage*)Image1)->Image),&Anisotropy1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Anisotropy1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.EntropyGray()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectRegionSpatial(PyHirschRegion*self, PyObject *args)
{
    char* Direction;
    char* Direction1;
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions2,&Direction)) {
            if (PyHirschRegion_Check(Regions2)) {
                HalconCpp::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->SelectRegionSpatial(*(((PyHirschRegion*)Regions2)->Region),HalconCpp::HString(Direction),&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RegionIndex2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions21,&Direction1)) {
            if (PyHirschRegion_Check(Regions21)) {
                HalconCpp::HTuple RegionIndex21;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->SelectRegionSpatial(*(((PyHirschRegion*)Regions21)->Region),Direction1,&RegionIndex21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RegionIndex21));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectRegionSpatial()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceLr(PyHirschRegion*self, PyObject *args)
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
                HalconCpp::HTuple DistanceMin;
                HalconCpp::HTuple DistanceMax;
                self->Region->DistanceLr(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            {
            // with output params
                double DistanceMin1;
                double DistanceMax1;
                self->Region->DistanceLr(Row11,Column11,Row21,Column21,&DistanceMin1,&DistanceMax1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceLr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_FitSurfaceSecondOrder(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    long Iterations;
    char* Algorithm;
    double ClippingFactor1;
    double ClippingFactor;
    PyObject* Image2;
    double ClippingFactor2;
    PyObject* Image;
    long Iterations1;
    char* Algorithm2;
    char* Algorithm1;
    long Iterations2;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple Beta;
                HalconCpp::HTuple Gamma;
                HalconCpp::HTuple Delta;
                HalconCpp::HTuple Epsilon;
                HalconCpp::HTuple Zeta;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->FitSurfaceSecondOrder(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Algorithm),Iterations,ClippingFactor,&Beta,&Gamma,&Delta,&Epsilon,&Zeta)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Beta));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Gamma));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Delta));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Epsilon));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Zeta));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Image1,&Algorithm1,&Iterations1,&ClippingFactor1)) {
            if (PyHirschImage_Check(Image1)) {
                double Beta1;
                double Gamma1;
                double Delta1;
                double Epsilon1;
                double Zeta1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceSecondOrder(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(Algorithm1),Iterations1,ClippingFactor1,&Beta1,&Gamma1,&Delta1,&Epsilon1,&Zeta1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon1));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Image2,&Algorithm2,&Iterations2,&ClippingFactor2)) {
            if (PyHirschImage_Check(Image2)) {
                double Beta2;
                double Gamma2;
                double Delta2;
                double Epsilon2;
                double Zeta2;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceSecondOrder(*(((PyHirschImage*)Image2)->Image),Algorithm2,Iterations2,ClippingFactor2,&Beta2,&Gamma2,&Delta2,&Epsilon2,&Zeta2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta2));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon2));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FitSurfaceSecondOrder()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SymmDifference(PyHirschRegion*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->SymmDifference(*(((PyHirschRegion*)Region2)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SymmDifference()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceRrMin(PyHirschRegion*self, PyObject *args)
{
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions21)) {
            if (PyHirschRegion_Check(Regions21)) {
                Hlong Row11;
                Hlong Column11;
                Hlong Row21;
                Hlong Column21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->DistanceRrMin(*(((PyHirschRegion*)Regions21)->Region),&Row11,&Column11,&Row21,&Column21)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Row11)));
                PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Column11)));
                PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Row21)));
                PyTuple_SET_ITEM(ret, 4, PyInt_FromLong(long(Column21)));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                HalconCpp::HTuple Row1;
                HalconCpp::HTuple Column1;
                HalconCpp::HTuple Row2;
                HalconCpp::HTuple Column2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->DistanceRrMin(*(((PyHirschRegion*)Regions2)->Region),&Row1,&Column1,&Row2,&Column2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Row1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Column1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Row2));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Column2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceRrMin()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectShapeProto(PyHirschRegion*self, PyObject *args)
{
    double Max2;
    PyObject* Min;
    PyObject* Feature;
    double Min1;
    PyObject* Max;
    PyObject* Pattern1;
    double Max1;
    PyObject* Pattern2;
    double Min2;
    PyObject* Pattern;
    char* Feature2;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "Osdd", &Pattern2,&Feature2,&Min2,&Max2)) {
            if (PyHirschRegion_Check(Pattern2)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegion*)Pattern2)->Region),Feature2,Min2,Max2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Pattern,&Feature,&Min,&Max)) {
            if (PyHirschRegion_Check(Pattern) && PyHirschTuple_Check(Feature) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegion*)Pattern)->Region),*(((PyHirschTuple*)Feature)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osdd", &Pattern1,&Feature1,&Min1,&Max1)) {
            if (PyHirschRegion_Check(Pattern1)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegion*)Pattern1)->Region),HalconCpp::HString(Feature1),Min1,Max1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectShapeProto()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Column(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Column());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_AddChannels(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->Region->AddChannels(*(((PyHirschImage*)Image)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AddChannels()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_FuzzyEntropy(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    long Apar;
    long Cpar;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->FuzzyEntropy(*(((PyHirschImage*)Image)->Image),Apar,Cpar));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FuzzyEntropy()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MoveRegion(PyHirschRegion*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschRegion_FromHRegion(self->Region->MoveRegion(Row,Column));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MoveRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Union1(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->Union1());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Connection(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->Connection());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Union2(PyHirschRegion*self, PyObject *args)
{
    PyObject* Region2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->Union2(*(((PyHirschRegion*)Region2)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Union2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThinningGolay(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Rotation;
    char* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningGolay(HalconCpp::HString(GolayElement),Rotation));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThinningGolay()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DilationSeq(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Iterations;
    char* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationSeq(HalconCpp::HString(GolayElement),Iterations));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationSeq()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_OpeningSeg(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->OpeningSeg(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningSeg()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MinkowskiAdd1(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiAdd1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiAdd1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion3rdInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double M121;
        double M031;
        double M301;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion3rdInvar(&M121,&M031,&M301)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M121));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M031));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(M301));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MirrorRegion(PyHirschRegion*self, PyObject *args)
{
    long WidthHeight1;
    char* Mode1;
    char* Mode;
    long WidthHeight;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &Mode,&WidthHeight)) {
            return PyHirschRegion_FromHRegion(self->Region->MirrorRegion(HalconCpp::HString(Mode),WidthHeight));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &Mode1,&WidthHeight1)) {
            return PyHirschRegion_FromHRegion(self->Region->MirrorRegion(Mode1,WidthHeight1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MirrorRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_OpeningGolay(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Rotation;
    char* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningGolay(HalconCpp::HString(GolayElement),Rotation));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningGolay()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Thickening(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement1;
    PyObject* StructElement2;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "OOlll", &StructElement1,&StructElement2,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2)) {
                return PyHirschRegion_FromHRegion(self->Region->Thickening(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),Row,Column,Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Thickening()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_AreaCenter(PyHirschRegion*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->AreaCenter(&Row1,&Column1))));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Row1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Column1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClosingGolay(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Rotation;
    char* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingGolay(HalconCpp::HString(GolayElement),Rotation));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClosingGolay()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GrayProjections(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    char* Mode1;
    PyObject* Image;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Image1,&Mode1)) {
            if (PyHirschImage_Check(Image1)) {
                HalconCpp::HTuple VertProjection1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->GrayProjections(*(((PyHirschImage*)Image1)->Image),Mode1,&VertProjection1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(VertProjection1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image,&Mode)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple VertProjection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->GrayProjections(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Mode),&VertProjection)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(VertProjection));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayProjections()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ConcatObj(PyHirschRegion*self, PyObject *args)
{
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschRegion_Check(Objects2)) {
                return PyHirschRegion_FromHRegion(self->Region->ConcatObj(*(((PyHirschRegion*)Objects2)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ConcatObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TestEqualObj(PyHirschRegion*self, PyObject *args)
{
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschRegion_Check(Objects2)) {
                return PyInt_FromLong(long(self->Region->TestEqualObj(*(((PyHirschRegion*)Objects2)->Region))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TestEqualObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionContour(PyHirschRegion*self, PyObject *)
{
    try {
        HalconCpp::HTuple Rows;
        HalconCpp::HTuple Columns;
        self->Region->GetRegionContour(&Rows,&Columns);
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Rows));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Columns));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_LearnNdimNorm(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Background;
    PyObject* Background2;
    PyObject* MinNumberPercent;
    PyObject* Distance;
    double MinNumberPercent2;
    char* Metric1;
    PyObject* Image2;
    double MinNumberPercent1;
    PyObject* Image;
    double Distance1;
    char* Metric;
    double Distance2;
    PyObject* Background1;
    char* Metric2;
    
    try {
        if (PyArg_ParseTuple(args, "OOsdd", &Background1,&Image1,&Metric1,&Distance1,&MinNumberPercent1)) {
            if (PyHirschRegion_Check(Background1) && PyHirschImage_Check(Image1)) {
                HalconCpp::HTuple Center1;
                double Quality1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->LearnNdimNorm(*(((PyHirschRegion*)Background1)->Region),*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(Metric1),Distance1,MinNumberPercent1,&Center1,&Quality1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Center1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsdd", &Background2,&Image2,&Metric2,&Distance2,&MinNumberPercent2)) {
            if (PyHirschRegion_Check(Background2) && PyHirschImage_Check(Image2)) {
                HalconCpp::HTuple Center2;
                double Quality2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->LearnNdimNorm(*(((PyHirschRegion*)Background2)->Region),*(((PyHirschImage*)Image2)->Image),Metric2,Distance2,MinNumberPercent2,&Center2,&Quality2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Center2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsOO", &Background,&Image,&Metric,&Distance,&MinNumberPercent)) {
            if (PyHirschRegion_Check(Background) && PyHirschImage_Check(Image) && PyHirschTuple_Check(Distance) && PyHirschTuple_Check(MinNumberPercent)) {
                HalconCpp::HTuple Center;
                double Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->LearnNdimNorm(*(((PyHirschRegion*)Background)->Region),*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Metric),*(((PyHirschTuple*)Distance)->Tuple),*(((PyHirschTuple*)MinNumberPercent)->Tuple),&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Center));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.LearnNdimNorm()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MinkowskiSub1(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiSub1(*(((PyHirschRegion*)StructElement)->Region),Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiSub1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ReadRegion(PyHirschRegion*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Region->ReadRegion(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Region->ReadRegion(HalconCpp::HString(FileName));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ReadRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ConnectAndHoles(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong NumHoles1;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->ConnectAndHoles(&NumHoles1))));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(NumHoles1)));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionRuns(PyHirschRegion*self, PyObject *args)
{
    PyObject* ColumnBegin;
    PyObject* Row;
    long Row1;
    long ColumnEnd1;
    PyObject* ColumnEnd;
    long ColumnBegin1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Row,&ColumnBegin,&ColumnEnd)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(ColumnBegin) && PyHirschTuple_Check(ColumnEnd)) {
                self->Region->GenRegionRuns(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)ColumnBegin)->Tuple),*(((PyHirschTuple*)ColumnEnd)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lll", &Row1,&ColumnBegin1,&ColumnEnd1)) {
            self->Region->GenRegionRuns(Row1,ColumnBegin1,ColumnEnd1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionRuns()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion2ndInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double M201;
        double M021;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion2ndInvar(&M201,&M021)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M201));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M021));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TextLineSlant(PyHirschRegion*self, PyObject *args)
{
    double SlantTo;
    double SlantFrom;
    PyObject* Image;
    long CharHeight;
    
    try {
        if (PyArg_ParseTuple(args, "Oldd", &Image,&CharHeight,&SlantFrom,&SlantTo)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->TextLineSlant(*(((PyHirschImage*)Image)->Image),CharHeight,SlantFrom,SlantTo));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TextLineSlant()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClosingCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegion_FromHRegion(self->Region->ClosingCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClosingCircle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionIndex(PyHirschRegion*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschTuple_GetAsScalarIfOne(self->Region->GetRegionIndex(Row,Column));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GetRegionIndex()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_EulerNumber(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->EulerNumber());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_AffineTransRegion(PyHirschRegion*self, PyObject *args)
{
    char* Interpolate1;
    PyObject* HomMat2D1;
    char* Interpolate;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &HomMat2D1,&Interpolate1)) {
            if (PyHirschHomMat2D_Check(HomMat2D1)) {
                return PyHirschRegion_FromHRegion(self->Region->AffineTransRegion(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D1)->HomMat2D)),Interpolate1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &HomMat2D,&Interpolate)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschRegion_FromHRegion(self->Region->AffineTransRegion(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),HalconCpp::HString(Interpolate)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AffineTransRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Fitting(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElements;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElements)) {
            if (PyHirschRegion_Check(StructElements)) {
                return PyHirschRegion_FromHRegion(self->Region->Fitting(*(((PyHirschRegion*)StructElements)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Fitting()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectCharacters(PyHirschRegion*self, PyObject *args)
{
    char* Punctuation;
    PyObject* CharWidth1;
    char* DiacriticMarks;
    long ClutterSizeMax;
    char* DotPrint1;
    PyObject* CharHeight;
    PyObject* CharHeight1;
    long ClutterSizeMax1;
    char* PartitionMethod;
    char* StrokeWidth;
    char* PartitionLines1;
    char* DiacriticMarks1;
    char* Punctuation1;
    char* PartitionMethod1;
    PyObject* CharWidth;
    char* FragmentDistance1;
    char* PartitionLines;
    char* FragmentDistance;
    char* StopAfter1;
    char* DotPrint;
    char* ConnectFragments;
    char* StopAfter;
    char* StrokeWidth1;
    char* ConnectFragments1;
    
    try {
        if (PyArg_ParseTuple(args, "ssOOssssssls", &DotPrint,&StrokeWidth,&CharWidth,&CharHeight,&Punctuation,&DiacriticMarks,&PartitionMethod,&PartitionLines,&FragmentDistance,&ConnectFragments,&ClutterSizeMax,&StopAfter)) {
            if (PyHirschTuple_Check(CharWidth) && PyHirschTuple_Check(CharHeight)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectCharacters(HalconCpp::HString(DotPrint),HalconCpp::HString(StrokeWidth),*(((PyHirschTuple*)CharWidth)->Tuple),*(((PyHirschTuple*)CharHeight)->Tuple),HalconCpp::HString(Punctuation),HalconCpp::HString(DiacriticMarks),HalconCpp::HString(PartitionMethod),HalconCpp::HString(PartitionLines),HalconCpp::HString(FragmentDistance),HalconCpp::HString(ConnectFragments),ClutterSizeMax,HalconCpp::HString(StopAfter)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssOOssssssls", &DotPrint1,&StrokeWidth1,&CharWidth1,&CharHeight1,&Punctuation1,&DiacriticMarks1,&PartitionMethod1,&PartitionLines1,&FragmentDistance1,&ConnectFragments1,&ClutterSizeMax1,&StopAfter1)) {
            if (PyHirschTuple_Check(CharWidth1) && PyHirschTuple_Check(CharHeight1)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectCharacters(DotPrint1,StrokeWidth1,*(((PyHirschTuple*)CharWidth1)->Tuple),*(((PyHirschTuple*)CharHeight1)->Tuple),Punctuation1,DiacriticMarks1,PartitionMethod1,PartitionLines1,FragmentDistance1,ConnectFragments1,ClutterSizeMax1,StopAfter1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectCharacters()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectMatchingLines(PyHirschRegion*self, PyObject *args)
{
    PyObject* AngleIn;
    long Thresh1;
    PyObject* DistIn;
    double AngleIn1;
    long LineWidth;
    double DistIn1;
    long LineWidth1;
    long Thresh;
    
    try {
        if (PyArg_ParseTuple(args, "OOll", &AngleIn,&DistIn,&LineWidth,&Thresh)) {
            if (PyHirschTuple_Check(AngleIn) && PyHirschTuple_Check(DistIn)) {
                HalconCpp::HTuple AngleOut;
                HalconCpp::HTuple DistOut;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->SelectMatchingLines(*(((PyHirschTuple*)AngleIn)->Tuple),*(((PyHirschTuple*)DistIn)->Tuple),LineWidth,Thresh,&AngleOut,&DistOut)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(AngleOut));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(DistOut));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddll", &AngleIn1,&DistIn1,&LineWidth1,&Thresh1)) {
            {
            // with output params
                double AngleOut1;
                double DistOut1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->SelectMatchingLines(AngleIn1,DistIn1,LineWidth1,Thresh1,&AngleOut1,&DistOut1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(AngleOut1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(DistOut1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectMatchingLines()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ShapeHistoAll(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Image;
    char* Feature;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Image1,&Feature1)) {
            if (PyHirschImage_Check(Image1)) {
                HalconCpp::HTuple RelativeHisto1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->ShapeHistoAll(*(((PyHirschImage*)Image1)->Image),Feature1,&RelativeHisto1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RelativeHisto1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image,&Feature)) {
            if (PyHirschImage_Check(Image)) {
                HalconCpp::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->ShapeHistoAll(*(((PyHirschImage*)Image)->Image),HalconCpp::HString(Feature),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(RelativeHisto));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ShapeHistoAll()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_CoocFeatureImage(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    long Direction1;
    long LdGray1;
    PyObject* Direction;
    PyObject* Image;
    long LdGray;
    
    try {
        if (PyArg_ParseTuple(args, "OlO", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Direction)) {
                HalconCpp::HTuple Correlation;
                HalconCpp::HTuple Homogeneity;
                HalconCpp::HTuple Contrast;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->CoocFeatureImage(*(((PyHirschImage*)Image)->Image),LdGray,*(((PyHirschTuple*)Direction)->Tuple),&Correlation,&Homogeneity,&Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Correlation));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Homogeneity));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Contrast));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&LdGray1,&Direction1)) {
            if (PyHirschImage_Check(Image1)) {
                double Correlation1;
                double Homogeneity1;
                double Contrast1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->CoocFeatureImage(*(((PyHirschImage*)Image1)->Image),LdGray1,Direction1,&Correlation1,&Homogeneity1,&Contrast1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Correlation1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Homogeneity1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Contrast1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CoocFeatureImage()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectObj(PyHirschRegion*self, PyObject *args)
{
    long Index1;
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectObj(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Index1)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectObj(Index1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenContourRegionXld(PyHirschRegion*self, PyObject *args)
{
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->Region->GenContourRegionXld(HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Region->GenContourRegionXld(Mode1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenContourRegionXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Clone(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_CopyObj(PyHirschRegion*self, PyObject *args)
{
    long NumObj;
    long Index;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Index,&NumObj)) {
            return PyHirschRegion_FromHRegion(self->Region->CopyObj(Index,NumObj));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CopyObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_FillUpShape(PyHirschRegion*self, PyObject *args)
{
    double Max2;
    double Min1;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    double Min2;
    char* Feature2;
    char* Feature;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Feature2,&Min2,&Max2)) {
            return PyHirschRegion_FromHRegion(self->Region->FillUpShape(Feature2,Min2,Max2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdd", &Feature1,&Min1,&Max1)) {
            return PyHirschRegion_FromHRegion(self->Region->FillUpShape(HalconCpp::HString(Feature1),Min1,Max1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOO", &Feature,&Min,&Max)) {
            if (PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegion_FromHRegion(self->Region->FillUpShape(HalconCpp::HString(Feature),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FillUpShape()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Difference(PyHirschRegion*self, PyObject *args)
{
    PyObject* Sub;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Sub)) {
            if (PyHirschRegion_Check(Sub)) {
                return PyHirschRegion_FromHRegion(self->Region->Difference(*(((PyHirschRegion*)Sub)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Difference()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceRrMinDil(PyHirschRegion*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->DistanceRrMinDil(*(((PyHirschRegion*)Regions2)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceRrMinDil()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TransposeRegion(PyHirschRegion*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschRegion_FromHRegion(self->Region->TransposeRegion(Row,Column));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TransposeRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenCircleSector(PyHirschRegion*self, PyObject *args)
{
    double EndAngle1;
    PyObject* Column;
    PyObject* Row;
    double Radius1;
    PyObject* Radius;
    PyObject* StartAngle;
    PyObject* EndAngle;
    double Column1;
    double Row1;
    double StartAngle1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row1,&Column1,&Radius1,&StartAngle1,&EndAngle1)) {
            self->Region->GenCircleSector(Row1,Column1,Radius1,StartAngle1,EndAngle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Radius,&StartAngle,&EndAngle)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(StartAngle) && PyHirschTuple_Check(EndAngle)) {
                self->Region->GenCircleSector(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)StartAngle)->Tuple),*(((PyHirschTuple*)EndAngle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenCircleSector()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClosingRectangle1(PyHirschRegion*self, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingRectangle1(Width,Height));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClosingRectangle1()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_HitOrMiss(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement1;
    PyObject* StructElement2;
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "OOll", &StructElement1,&StructElement2,&Row,&Column)) {
            if (PyHirschRegion_Check(StructElement1) && PyHirschRegion_Check(StructElement2)) {
                return PyHirschRegion_FromHRegion(self->Region->HitOrMiss(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),Row,Column));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HitOrMiss()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SplitSkeletonRegion(PyHirschRegion*self, PyObject *args)
{
    long MaxDistance;
    
    try {
        if (PyArg_ParseTuple(args, "l", &MaxDistance)) {
            return PyHirschRegion_FromHRegion(self->Region->SplitSkeletonRegion(MaxDistance));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SplitSkeletonRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_InnerCircle(PyHirschRegion*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        double Radius1;
        self->Region->InnerCircle(&Row1,&Column1,&Radius1);
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GrayFeatures(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    char* Features2;
    char* Features1;
    PyObject* Image2;
    PyObject* Image;
    PyObject* Features;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Image1,&Features1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyFloat_FromDouble(self->Region->GrayFeatures(*(((PyHirschImage*)Image1)->Image),HalconCpp::HString(Features1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Features)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Features)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->GrayFeatures(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Features)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image2,&Features2)) {
            if (PyHirschImage_Check(Image2)) {
                return PyFloat_FromDouble(self->Region->GrayFeatures(*(((PyHirschImage*)Image2)->Image),Features2));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayFeatures()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RunlengthDistribution(PyHirschRegion*self, PyObject *)
{
    try {
        HalconCpp::HTuple Background;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Region->RunlengthDistribution(&Background)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Background));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ProjectiveTransRegion(PyHirschRegion*self, PyObject *args)
{
    char* Interpolation1;
    PyObject* HomMat2D1;
    char* Interpolation;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &HomMat2D,&Interpolation)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschRegion_FromHRegion(self->Region->ProjectiveTransRegion(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D)),HalconCpp::HString(Interpolation)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &HomMat2D1,&Interpolation1)) {
            if (PyHirschHomMat2D_Check(HomMat2D1)) {
                return PyHirschRegion_FromHRegion(self->Region->ProjectiveTransRegion(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D1)->HomMat2D)),Interpolation1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ProjectiveTransRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ErosionGolay(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement1;
    long Iterations;
    long Rotation;
    long Rotation1;
    char* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement1,&Iterations1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionGolay(GolayElement1,Iterations1,Rotation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sll", &GolayElement,&Iterations,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionGolay(HalconCpp::HString(GolayElement),Iterations,Rotation));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionGolay()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RegionToMean(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->Region->RegionToMean(*(((PyHirschImage*)Image)->Image)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RegionToMean()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Dilation2(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    long Row;
    long Iterations;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &StructElement,&Row,&Column,&Iterations)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->Dilation2(*(((PyHirschRegion*)StructElement)->Region),Row,Column,Iterations));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Dilation2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_FillUp(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->FillUp());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_RegionFeatures(PyHirschRegion*self, PyObject *args)
{
    char* Features2;
    char* Features1;
    PyObject* Features;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Features2)) {
            return PyFloat_FromDouble(self->Region->RegionFeatures(Features2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Features1)) {
            return PyFloat_FromDouble(self->Region->RegionFeatures(HalconCpp::HString(Features1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Features)) {
            if (PyHirschTuple_Check(Features)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->RegionFeatures(*(((PyHirschTuple*)Features)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RegionFeatures()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Contlength(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Region->Contlength());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_TestRegionPoint(PyHirschRegion*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyInt_FromLong(long(self->Region->TestRegionPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyInt_FromLong(long(self->Region->TestRegionPoint(Row1,Column1)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TestRegionPoint()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DilationCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius1;
    PyObject* Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius1)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationCircle(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschRegion_FromHRegion(self->Region->DilationCircle(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationCircle()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_WriteRegion(PyHirschRegion*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Region->WriteRegion(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Region->WriteRegion(HalconCpp::HString(FileName));
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.WriteRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectRegionPoint(PyHirschRegion*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectRegionPoint(Row,Column));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectRegionPoint()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ExpandGrayRef(PyHirschRegion*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* RefGray;
    char* Mode1;
    long Threshold1;
    char* Iterations1;
    char* Mode2;
    PyObject* ForbiddenArea;
    PyObject* Image1;
    PyObject* Image;
    long Threshold2;
    PyObject* ForbiddenArea2;
    char* Iterations2;
    PyObject* Image2;
    PyObject* Threshold;
    long RefGray2;
    char* Mode;
    long RefGray1;
    PyObject* ForbiddenArea1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOsOO", &Image,&ForbiddenArea,&Iterations,&Mode,&RefGray,&Threshold)) {
            if (PyHirschImage_Check(Image) && PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(RefGray) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandGrayRef(*(((PyHirschImage*)Image)->Image),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),HalconCpp::HString(Mode),*(((PyHirschTuple*)RefGray)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssll", &Image1,&ForbiddenArea1,&Iterations1,&Mode1,&RefGray1,&Threshold1)) {
            if (PyHirschImage_Check(Image1) && PyHirschRegion_Check(ForbiddenArea1)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandGrayRef(*(((PyHirschImage*)Image1)->Image),*(((PyHirschRegion*)ForbiddenArea1)->Region),HalconCpp::HString(Iterations1),HalconCpp::HString(Mode1),RefGray1,Threshold1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssll", &Image2,&ForbiddenArea2,&Iterations2,&Mode2,&RefGray2,&Threshold2)) {
            if (PyHirschImage_Check(Image2) && PyHirschRegion_Check(ForbiddenArea2)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandGrayRef(*(((PyHirschImage*)Image2)->Image),*(((PyHirschRegion*)ForbiddenArea2)->Region),Iterations2,Mode2,RefGray2,Threshold2));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ExpandGrayRef()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_CompareObj(PyHirschRegion*self, PyObject *args)
{
    PyObject* Objects21;
    double Epsilon1;
    PyObject* Objects2;
    PyObject* Epsilon;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Objects21,&Epsilon1)) {
            if (PyHirschRegion_Check(Objects21)) {
                return PyInt_FromLong(long(self->Region->CompareObj(*(((PyHirschRegion*)Objects21)->Region),Epsilon1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Objects2,&Epsilon)) {
            if (PyHirschRegion_Check(Objects2) && PyHirschTuple_Check(Epsilon)) {
                return PyInt_FromLong(long(self->Region->CompareObj(*(((PyHirschRegion*)Objects2)->Region),*(((PyHirschTuple*)Epsilon)->Tuple))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CompareObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GrayHistoAbs(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    double Quantization1;
    PyObject* Image;
    PyObject* Quantization;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Quantization1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->GrayHistoAbs(*(((PyHirschImage*)Image1)->Image),Quantization1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Quantization)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Quantization)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Region->GrayHistoAbs(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Quantization)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayHistoAbs()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_Opening(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->Opening(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Opening()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion3rd(PyHirschRegion*self, PyObject *)
{
    try {
        double M121;
        double M031;
        double M301;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion3rd(&M121,&M031,&M301)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M121));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M031));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(M301));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenEllipseSector(PyHirschRegion*self, PyObject *args)
{
    double EndAngle1;
    PyObject* Column;
    PyObject* Row;
    double Phi1;
    PyObject* Radius2;
    double Radius11;
    PyObject* Radius1;
    PyObject* StartAngle;
    PyObject* Phi;
    PyObject* EndAngle;
    double Radius21;
    double Column1;
    double Row1;
    double StartAngle1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddd", &Row1,&Column1,&Phi1,&Radius11,&Radius21,&StartAngle1,&EndAngle1)) {
            self->Region->GenEllipseSector(Row1,Column1,Phi1,Radius11,Radius21,StartAngle1,EndAngle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Row,&Column,&Phi,&Radius1,&Radius2,&StartAngle,&EndAngle)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2) && PyHirschTuple_Check(StartAngle) && PyHirschTuple_Check(EndAngle)) {
                self->Region->GenEllipseSector(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple),*(((PyHirschTuple*)StartAngle)->Tuple),*(((PyHirschTuple*)EndAngle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenEllipseSector()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenCheckerRegion(PyHirschRegion*self, PyObject *args)
{
    long WidthRegion;
    long HeightRegion;
    long WidthPattern;
    long HeightPattern;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &WidthRegion,&HeightRegion,&WidthPattern,&HeightPattern)) {
            self->Region->GenCheckerRegion(WidthRegion,HeightRegion,WidthPattern,HeightPattern);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenCheckerRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_ExpandRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Iterations;
    char* Mode1;
    char* Mode2;
    PyObject* ForbiddenArea;
    PyObject* ForbiddenArea2;
    long Iterations1;
    char* Mode;
    long Iterations2;
    PyObject* ForbiddenArea1;
    
    try {
        if (PyArg_ParseTuple(args, "Ols", &ForbiddenArea2,&Iterations2,&Mode2)) {
            if (PyHirschRegion_Check(ForbiddenArea2)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea2)->Region),Iterations2,Mode2));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &ForbiddenArea1,&Iterations1,&Mode1)) {
            if (PyHirschRegion_Check(ForbiddenArea1)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea1)->Region),Iterations1,HalconCpp::HString(Mode1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOs", &ForbiddenArea,&Iterations,&Mode)) {
            if (PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),HalconCpp::HString(Mode)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ExpandRegion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_BottomHat(PyHirschRegion*self, PyObject *args)
{
    PyObject* StructElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElement)) {
            if (PyHirschRegion_Check(StructElement)) {
                return PyHirschRegion_FromHRegion(self->Region->BottomHat(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.BottomHat()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschRegion_DiameterRegion(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong Row11;
        Hlong Column11;
        Hlong Row21;
        Hlong Column21;
        double Diameter1;
        self->Region->DiameterRegion(&Row11,&Column11,&Row21,&Column21,&Diameter1);
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(Row11)));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Column11)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Row21)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Column21)));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Diameter1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
