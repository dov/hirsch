PyObject *
PyHirschRegion_SpatialRelation(PyHirschRegion*self, PyObject *args)
{
    long Percent;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Regions2,&Percent)) {
            if (PyHirschRegion_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                Halcon::HTuple Relation1;
                Halcon::HTuple Relation2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SpatialRelation(*(((PyHirschRegion*)Regions2)->Region),Percent,&RegionIndex2,&Relation1,&Relation2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation2));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                Halcon::HTuple Relation1;
                Halcon::HTuple Relation2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SpatialRelation(*(((PyHirschRegionArray*)Regions2)->RegionArray),Percent,&RegionIndex2,&Relation1,&Relation2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SpatialRelation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenCoocMatrix()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion2ndRelInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double PHI2;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion2ndRelInvar(&PHI2)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(PHI2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenGridRegion(PyHirschRegion*, PyObject *args)
{
    long RowSteps;
    long ColumnSteps;
    long Height;
    long Width;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "llsll", &RowSteps,&ColumnSteps,&Type,&Width,&Height)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenGridRegion(RowSteps,ColumnSteps,Type,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenGridRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MorphSkeleton(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->MorphSkeleton());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Roundness(PyHirschRegion*self, PyObject *)
{
    try {
        double Sigma;
        double Roundness;
        double Sides;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->Roundness(&Sigma,&Roundness,&Sides)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Sigma));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Roundness));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Sides));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionPolygon(PyHirschRegion*self, PyObject *args)
{
    double Tolerance;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Tolerance)) {
            {
            // with output params
                Halcon::HTuple Columns;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionPolygon(Tolerance,&Columns)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Columns));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GetRegionPolygon()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_AreaCenterGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                double Row;
                double Column;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->AreaCenterGray(*(((PyHirschImage*)Image)->Image),&Row,&Column)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Row));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Column));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AreaCenterGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionPoints(PyHirschRegion*, PyObject *args)
{
    long Rows;
    long Columns;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Rows,&Columns)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionPoints(Rows,Columns));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionPoints()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Ra(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Ra());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Rb(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Rb());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_X(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->X());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SmallestCircle(PyHirschRegion*self, PyObject *)
{
    try {
        double Column;
        double Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->SmallestCircle(&Column,&Radius)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
            if (PyHirschRegionArray_Check(Regions2)) {
                return PyInt_FromLong(long(self->Region->TestEqualRegion(*(((PyHirschRegionArray*)Regions2)->RegionArray))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TestEqualRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClassDBID(PyHirschRegion*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Region->ClassDBID()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_StructureFactor(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->StructureFactor());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_HammingDistanceNorm(PyHirschRegion*self, PyObject *args)
{
    char* Norm;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions2,&Norm)) {
            if (PyHirschRegion_Check(Regions2)) {
                double Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegion*)Regions2)->Region),Norm,&Similarity))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(Regions2)) {
                double Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegionArray*)Regions2)->RegionArray),Norm,&Similarity))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HammingDistanceNorm()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ShapeHistoPoint(PyHirschRegion*self, PyObject *args)
{
    long Row;
    PyObject* Image;
    char* Feature;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "Osll", &Image,&Feature,&Row,&Column)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->ShapeHistoPoint(*(((PyHirschImage*)Image)->Image),Feature,Row,Column,&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ShapeHistoPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyFloat_FromDouble(self->Region->FuzzyPerimeter(*(((PyHirschImage*)Image)->Image),Apar,Cpar));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FuzzyPerimeter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                Halcon::HTuple Dist;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->HoughLines(AngleResolution,Threshold,AngleGap,DistGap,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Dist));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughLines()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyInt_FromLong(long(self->Region->TestSubsetRegion(*(((PyHirschRegion*)Region2)->Region))));
            }
            if (PyHirschRegionArray_Check(Region2)) {
                return PyInt_FromLong(long(self->Region->TestSubsetRegion(*(((PyHirschRegionArray*)Region2)->RegionArray))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TestSubsetRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegionCentralInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double PSI2;
        double PSI3;
        double PSI4;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegionCentralInvar(&PSI2,&PSI3,&PSI4)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(PSI2));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(PSI3));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(PSI4));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyFloat_FromDouble(self->Region->TextLineOrientation(*(((PyHirschImage*)Image)->Image),CharHeight,OrientationFrom,OrientationTo));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TextLineOrientation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClipRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenEllipse(PyHirschRegion*, PyObject *args)
{
    double Column;
    double Radius1;
    double Phi;
    double Row;
    double Radius2;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row,&Column,&Phi,&Radius1,&Radius2)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenEllipse(Row,Column,Phi,Radius1,Radius2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenEllipse()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Convexity(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Convexity());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_PolarTransRegionInv(PyHirschRegion*self, PyObject *args)
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
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegionInv(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,WidthIn,HeightIn,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PolarTransRegionInv()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_OpeningGolay(PyHirschRegion*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                Halcon::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GrayHisto(*(((PyHirschImage*)Image)->Image),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayHisto()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionPolygonFilled(PyHirschRegion*, PyObject *args)
{
    PyObject* Columns;
    PyObject* Rows;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Rows,&Columns)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Columns)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionPolygonFilled(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Columns)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionPolygonFilled()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
            return PyHirschRegionArray_FromHRegionArray(self->Region->PartitionDynamic(Distance,Percent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PartitionDynamic()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_RegionToLabel(PyHirschRegion*self, PyObject *args)
{
    long Height;
    long Width;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Region->RegionToLabel(Type,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RegionToLabel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_HammingDistance(PyHirschRegion*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                double Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistance(*(((PyHirschRegion*)Regions2)->Region),&Similarity))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(Regions2)) {
                double Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistance(*(((PyHirschRegionArray*)Regions2)->RegionArray),&Similarity))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HammingDistance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MorphSkiz(PyHirschRegion*self, PyObject *args)
{
    long Iterations2;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Iterations1,&Iterations2)) {
            return PyHirschRegion_FromHRegion(self->Region->MorphSkiz(Iterations1,Iterations2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MorphSkiz()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_NumData(PyHirschRegion*, PyObject *)
{
    try {
        return PyInt_FromLong(long(Halcon::HRegion::NumData()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThinningSeq(PyHirschRegion*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThinningSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Compactness(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Compactness());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Get2dBarCodePos(PyHirschRegion*self, PyObject *args)
{
    PyObject* CodeRegDescr;
    PyObject* GenParamNames;
    PyObject* Image;
    PyObject* GenParamValues;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image,&BarCodeDescr,&CodeRegDescr,&GenParamNames,&GenParamValues)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(CodeRegDescr) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                Halcon::HTuple BarCodeData;
                Halcon::HTuple DataElementRow;
                Halcon::HTuple DataElementCol;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->Get2dBarCodePos(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)CodeRegDescr)->Tuple),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple),&BarCodeData,&DataElementRow,&DataElementCol)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BarCodeData));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DataElementRow));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(DataElementCol));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Get2dBarCodePos()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GrayHistoAbs(PyHirschRegion*self, PyObject *args)
{
    double Quantization;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&Quantization)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschTuple_FromHTuple(self->Region->GrayHistoAbs(*(((PyHirschImage*)Image)->Image),Quantization));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayHistoAbs()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistancePr(PyHirschRegion*self, PyObject *args)
{
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            {
            // with output params
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistancePr(Row,Column,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistancePr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Closing()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ExpandGrayRef(PyHirschRegion*self, PyObject *args)
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
                return PyHirschRegion_FromHRegion(self->Region->ExpandGrayRef(*(((PyHirschImage*)Image)->Image),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)RefGray)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ExpandGrayRef()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MorphHat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CloseEdgesLength()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_RunlengthFeatures(PyHirschRegion*self, PyObject *)
{
    try {
        double KFactor;
        double LFactor;
        double MeanLength;
        Hlong Bytes;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->RunlengthFeatures(&KFactor,&LFactor,&MeanLength,&Bytes))));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(KFactor));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(LFactor));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(MeanLength));
        PyTuple_SET_ITEM(ret, 4, PyInt_FromLong(long(Bytes)));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SmallestRectangle1(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong Column1;
        Hlong Row2;
        Hlong Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->SmallestRectangle1(&Column1,&Row2,&Column2))));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Column1)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Row2)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Column2)));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SmallestRectangle2(PyHirschRegion*self, PyObject *)
{
    try {
        double Column;
        double Phi;
        double Length1;
        double Length2;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->SmallestRectangle2(&Column,&Phi,&Length1,&Length2)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Length1));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Length2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Skeleton(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->Skeleton());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_BackgroundSeg(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->Region->BackgroundSeg());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Intensity(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                double Deviation;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->Intensity(*(((PyHirschImage*)Image)->Image),&Deviation)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Deviation));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Intensity()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_WriteOcrTrainf(PyHirschRegion*self, PyObject *args)
{
    char* Class;
    PyObject* Image;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image)) {
                self->Region->WriteOcrTrainf(*(((PyHirschImage*)Image)->Image),Class,FileName);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.WriteOcrTrainf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_AppendOcrTrainf(PyHirschRegion*self, PyObject *args)
{
    char* Class;
    PyObject* Image;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "Oss", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image)) {
                self->Region->AppendOcrTrainf(*(((PyHirschImage*)Image)->Image),Class,FileName);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AppendOcrTrainf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_FitSurfaceFirstOrder(PyHirschRegion*self, PyObject *args)
{
    char* Algorithm;
    double ClippingFactor;
    PyObject* Image;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image)) {
                double Beta;
                double Gamma;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceFirstOrder(*(((PyHirschImage*)Image)->Image),Algorithm,Iterations,ClippingFactor,&Beta,&Gamma)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FitSurfaceFirstOrder()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_HitOrMissSeq(PyHirschRegion*self, PyObject *args)
{
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "s", &GolayElement)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissSeq(GolayElement));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HitOrMissSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Pruning()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectShapeStd(PyHirschRegion*self, PyObject *args)
{
    double Percent;
    char* Shape;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Shape,&Percent)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectShapeStd(Shape,Percent));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectShapeStd()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_JunctionsSkeleton(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HRegion JuncPoints;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->JunctionsSkeleton(&JuncPoints)));
        PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(JuncPoints));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_RemoveNoiseRegion(PyHirschRegion*self, PyObject *args)
{
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschRegion_FromHRegion(self->Region->RemoveNoiseRegion(Type));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RemoveNoiseRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Y(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Y());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionHline(PyHirschRegion*, PyObject *args)
{
    double Distance;
    double Orientation;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Orientation,&Distance)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionHline(Orientation,Distance));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionHline()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SegmentCharacters(PyHirschRegion*self, PyObject *args)
{
    PyObject* DotPrint;
    PyObject* CharWidth;
    PyObject* EliminateLines;
    PyObject* ThresholdOffset;
    PyObject* Contrast;
    PyObject* Image;
    PyObject* CharHeight;
    PyObject* Method;
    PyObject* StrokeWidth;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Image,&Method,&EliminateLines,&DotPrint,&StrokeWidth,&CharWidth,&CharHeight,&ThresholdOffset,&Contrast)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Method) && PyHirschTuple_Check(EliminateLines) && PyHirschTuple_Check(DotPrint) && PyHirschTuple_Check(StrokeWidth) && PyHirschTuple_Check(CharWidth) && PyHirschTuple_Check(CharHeight) && PyHirschTuple_Check(ThresholdOffset) && PyHirschTuple_Check(Contrast)) {
                Halcon::HRegionArray RegionForeground;
                Halcon::HTuple UsedThreshold;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschImageArray_FromHImageArray(self->Region->SegmentCharacters(*(((PyHirschImage*)Image)->Image),&RegionForeground,*(((PyHirschTuple*)Method)->Tuple),*(((PyHirschTuple*)EliminateLines)->Tuple),*(((PyHirschTuple*)DotPrint)->Tuple),*(((PyHirschTuple*)StrokeWidth)->Tuple),*(((PyHirschTuple*)CharWidth)->Tuple),*(((PyHirschTuple*)CharHeight)->Tuple),*(((PyHirschTuple*)ThresholdOffset)->Tuple),*(((PyHirschTuple*)Contrast)->Tuple),&UsedThreshold)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegionArray_FromHRegionArray(RegionForeground));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(UsedThreshold));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SegmentCharacters()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Area(PyHirschRegion*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Region->Area()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetIcon(PyHirschRegion*, PyObject *args)
{
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GetIcon(WindowHandle));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GetIcon()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiAdd2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiSub2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRectangle2(PyHirschRegion*, PyObject *args)
{
    double Column;
    double Phi;
    double Length2;
    double Row;
    double Length1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row,&Column,&Phi,&Length1,&Length2)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRectangle2(Row,Column,Phi,Length1,Length2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRectangle2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughLineTrans()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Histo2dim()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MinMaxGray(PyHirschRegion*self, PyObject *args)
{
    double Percent;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&Percent)) {
            if (PyHirschImage_Check(Image)) {
                double Max;
                double Range;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MinMaxGray(*(((PyHirschImage*)Image)->Image),Percent,&Max,&Range)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Max));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Range));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinMaxGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RegionToBin()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ShapeHistoAll(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    char* Feature;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Image,&Feature)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->ShapeHistoAll(*(((PyHirschImage*)Image)->Image),Feature,&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ShapeHistoAll()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->FindNeighbors(*(((PyHirschRegion*)Regions2)->Region),MaxDistance,&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->FindNeighbors(*(((PyHirschRegionArray*)Regions2)->RegionArray),MaxDistance,&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FindNeighbors()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Boundary(PyHirschRegion*self, PyObject *args)
{
    char* BoundaryType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &BoundaryType)) {
            return PyHirschRegion_FromHRegion(self->Region->Boundary(BoundaryType));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Boundary()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_FillUp(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->FillUp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MergeRegionsLineScan(PyHirschRegion*self, PyObject *args)
{
    PyObject* PrevRegions;
    long ImageHeight;
    long MaxImagesRegion;
    char* MergeBorder;
    
    try {
        if (PyArg_ParseTuple(args, "Olsl", &PrevRegions,&ImageHeight,&MergeBorder,&MaxImagesRegion)) {
            if (PyHirschRegion_Check(PrevRegions)) {
                Halcon::HRegion PrevMergedRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegion*)PrevRegions)->Region),&PrevMergedRegions,ImageHeight,MergeBorder,MaxImagesRegion)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(PrevRegions)) {
                Halcon::HRegion PrevMergedRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegionArray*)PrevRegions)->RegionArray),&PrevMergedRegions,ImageHeight,MergeBorder,MaxImagesRegion)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MergeRegionsLineScan()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ZoomRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RankRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion2nd(PyHirschRegion*self, PyObject *)
{
    try {
        double M20;
        double M02;
        double Ia;
        double Ib;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion2nd(&M20,&M02,&Ia,&Ib)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M20));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M02));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Ia));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Ib));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_HitOrMissGolay(PyHirschRegion*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HitOrMissGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Erosion1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsGrayPlane(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                double MCol;
                double Alpha;
                double Beta;
                double Mean;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsGrayPlane(*(((PyHirschImage*)Image)->Image),&MCol,&Alpha,&Beta,&Mean)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(MCol));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Alpha));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Beta));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Mean));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MomentsGrayPlane()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Erosion2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_AreaHoles(PyHirschRegion*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Region->AreaHoles()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_EulerNumber(PyHirschRegion*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Region->EulerNumber()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Anisometry(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Anisometry());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Eccentricity(PyHirschRegion*self, PyObject *)
{
    try {
        double Bulkiness;
        double StructureFactor;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->Eccentricity(&Bulkiness,&StructureFactor)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Bulkiness));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(StructureFactor));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TopHat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
            if (PyHirschRegionArray_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->Intersection(*(((PyHirschRegionArray*)Region2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Intersection()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClipRegionRel()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ShapeTrans(PyHirschRegion*self, PyObject *args)
{
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschRegion_FromHRegion(self->Region->ShapeTrans(Type));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ShapeTrans()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenEmptyRegion(PyHirschRegion*, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(Halcon::HRegion::GenEmptyRegion());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_EllipticAxis(PyHirschRegion*self, PyObject *)
{
    try {
        double Rb;
        double Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->EllipticAxis(&Rb,&Phi)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Rb));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_M20(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->M20());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceTransform(PyHirschRegion*self, PyObject *args)
{
    char* Foreground;
    char* Metric;
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ssll", &Metric,&Foreground,&Width,&Height)) {
            return PyHirschImage_FromHImage(self->Region->DistanceTransform(Metric,Foreground,Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceTransform()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_HoughCircleTrans(PyHirschRegion*self, PyObject *args)
{
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Radius)) {
            return PyHirschImageArray_FromHImageArray(self->Region->HoughCircleTrans(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughCircleTrans()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ErosionSeq(PyHirschRegion*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PartitionRectangle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionPolygon(PyHirschRegion*, PyObject *args)
{
    PyObject* Columns;
    PyObject* Rows;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Rows,&Columns)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Columns)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionPolygon(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Columns)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionPolygon()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionPoints(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HTuple Columns;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionPoints(&Columns)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Columns));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_PaintRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    char* Type;
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image,&Grayval,&Type)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->Region->PaintRegion(*(((PyHirschImage*)Image)->Image),Grayval,Type));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PaintRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Delete(PyHirschRegion*self, PyObject *args)
{
    PyObject* p;
    
    try {
        if (PyArg_ParseTuple(args, "O", &p)) {
            if (PyHirschDPoint2D_Check(p)) {
                self->Region->Delete(Halcon::HDPoint2D((((PyHirschDPoint2D*)p)->DPoint2D)));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Delete()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_OrientationRegion(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->OrientationRegion());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_InstClassName(PyHirschRegion*self, PyObject *)
{
    try {
        return PyString_FromString(self->Region->InstClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ExpandRegion(PyHirschRegion*self, PyObject *args)
{
    char* Mode;
    PyObject* ForbiddenArea;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Ols", &ForbiddenArea,&Iterations,&Mode)) {
            if (PyHirschRegion_Check(ForbiddenArea)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea)->Region),Iterations,Mode));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ExpandRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ExpandGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* Threshold;
    PyObject* Image;
    PyObject* ForbiddenArea;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image,&ForbiddenArea,&Iterations,&Mode,&Threshold)) {
            if (PyHirschImage_Check(Image) && PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Threshold)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ExpandGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionLine(PyHirschRegion*, PyObject *args)
{
    long BeginRow;
    long EndCol;
    long BeginCol;
    long EndRow;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &BeginRow,&BeginCol,&EndRow,&EndCol)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionLine(BeginRow,BeginCol,EndRow,EndCol));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionLine()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Interjacent(PyHirschRegion*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschRegion_FromHRegion(self->Region->Interjacent(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Interjacent()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionChain(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Chain;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->GetRegionChain(&Column,&Chain))));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Chain));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.EliminateRuns()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_OpeningCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_AffineTransRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Interpolate;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &HomMat2D,&Interpolate)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolate)) {
                return PyHirschRegion_FromHRegion(self->Region->AffineTransRegion(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolate)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AffineTransRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_EllipticAxisGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                double Rb;
                double Phi;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->EllipticAxisGray(*(((PyHirschImage*)Image)->Image),&Rb,&Phi)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Rb));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.EllipticAxisGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Complement(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegion_FromHRegion(self->Region->Complement());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionConvex(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HTuple Columns;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionConvex(&Columns)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Columns));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Row(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Row());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRandomRegion(PyHirschRegion*, PyObject *args)
{
    long Height;
    long Width;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width,&Height)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRandomRegion(Width,Height));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRandomRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_InnerRectangle1(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong Column1;
        Hlong Row2;
        Hlong Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->InnerRectangle1(&Column1,&Row2,&Column2))));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Column1)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Row2)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Column2)));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenContoursSkeletonXld(PyHirschRegion*self, PyObject *args)
{
    long Length;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ls", &Length,&Mode)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Region->GenContoursSkeletonXld(Length,Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenContoursSkeletonXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyFloat_FromDouble(self->Region->PlaneDeviation(*(((PyHirschImage*)Image)->Image)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PlaneDeviation()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Thinning()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionThickness(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HTuple Histogramm;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionThickness(&Histogramm)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Histogramm));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenStructElements(PyHirschRegion*, PyObject *args)
{
    long Row;
    char* Type;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type,&Row,&Column)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenStructElements(Type,Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenStructElements()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_WriteRegion(PyHirschRegion*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->Region->WriteRegion(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.WriteRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Shared(PyHirschRegion*self, PyObject *)
{
    try {
        return PyBool_FromLong(self->Region->Shared());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegionCentral(PyHirschRegion*self, PyObject *)
{
    try {
        double I2;
        double I3;
        double I4;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegionCentral(&I2,&I3,&I4)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(I2));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(I3));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(I4));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DilationGolay(PyHirschRegion*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    long Rotation;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement,&Iterations,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationGolay(GolayElement,Iterations,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThickeningGolay(PyHirschRegion*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThickeningGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceSr(PyHirschRegion*self, PyObject *args)
{
    double Column1;
    double Column2;
    double Row2;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Row1,&Column1,&Row2,&Column2)) {
            {
            // with output params
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistanceSr(Row1,Column1,Row2,Column2,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceSr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GolayElements(PyHirschRegion*, PyObject *args)
{
    long Row;
    long Rotation;
    char* GolayElement;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "slll", &GolayElement,&Rotation,&Row,&Column)) {
            {
            // with output params
                Halcon::HRegion StructElement2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(Halcon::HRegion::GolayElements(&StructElement2,GolayElement,Rotation,Row,Column)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(StructElement2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GolayElements()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThickeningSeq(PyHirschRegion*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThickeningSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_PolarTransRegion(PyHirschRegion*self, PyObject *args)
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
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegion(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height,Interpolation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.PolarTransRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_EntropyGray(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Image)) {
            if (PyHirschImage_Check(Image)) {
                double Anisotropy;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->EntropyGray(*(((PyHirschImage*)Image)->Image),&Anisotropy)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Anisotropy));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.EntropyGray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectRegionSpatial(PyHirschRegion*self, PyObject *args)
{
    char* Direction;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions2,&Direction)) {
            if (PyHirschRegion_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SelectRegionSpatial(*(((PyHirschRegion*)Regions2)->Region),Direction,&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(Regions2)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SelectRegionSpatial(*(((PyHirschRegionArray*)Regions2)->RegionArray),Direction,&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectRegionSpatial()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceLr(PyHirschRegion*self, PyObject *args)
{
    double Column1;
    double Column2;
    double Row2;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Row1,&Column1,&Row2,&Column2)) {
            {
            // with output params
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistanceLr(Row1,Column1,Row2,Column2,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceLr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_FitSurfaceSecondOrder(PyHirschRegion*self, PyObject *args)
{
    char* Algorithm;
    double ClippingFactor;
    PyObject* Image;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "Osld", &Image,&Algorithm,&Iterations,&ClippingFactor)) {
            if (PyHirschImage_Check(Image)) {
                double Beta;
                double Gamma;
                double Delta;
                double Epsilon;
                double Zeta;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceSecondOrder(*(((PyHirschImage*)Image)->Image),Algorithm,Iterations,ClippingFactor,&Beta,&Gamma,&Delta,&Epsilon,&Zeta)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FitSurfaceSecondOrder()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
            if (PyHirschRegionArray_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->SymmDifference(*(((PyHirschRegionArray*)Region2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SymmDifference()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DistanceRrMin(PyHirschRegion*self, PyObject *args)
{
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                Hlong Row1;
                Hlong Column1;
                Hlong Row2;
                Hlong Column2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->DistanceRrMin(*(((PyHirschRegion*)Regions2)->Region),&Row1,&Column1,&Row2,&Column2)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Row1)));
                PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Column1)));
                PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Row2)));
                PyTuple_SET_ITEM(ret, 4, PyInt_FromLong(long(Column2)));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(Regions2)) {
                Hlong Row1;
                Hlong Column1;
                Hlong Row2;
                Hlong Column2;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->DistanceRrMin(*(((PyHirschRegionArray*)Regions2)->RegionArray),&Row1,&Column1,&Row2,&Column2)));
                PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Row1)));
                PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Column1)));
                PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Row2)));
                PyTuple_SET_ITEM(ret, 4, PyInt_FromLong(long(Column2)));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceRrMin()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectShapeProto(PyHirschRegion*self, PyObject *args)
{
    PyObject* Pattern;
    double Max;
    char* Feature;
    double Min;
    
    try {
        if (PyArg_ParseTuple(args, "Osdd", &Pattern,&Feature,&Min,&Max)) {
            if (PyHirschRegion_Check(Pattern)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegion*)Pattern)->Region),Feature,Min,Max));
            }
            if (PyHirschRegionArray_Check(Pattern)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegionArray*)Pattern)->RegionArray),Feature,Min,Max));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectShapeProto()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyInt_FromLong(long(self->Region->DistanceRrMinDil(*(((PyHirschRegion*)Regions2)->Region))));
            }
            if (PyHirschRegionArray_Check(Regions2)) {
                return PyInt_FromLong(long(self->Region->DistanceRrMinDil(*(((PyHirschRegionArray*)Regions2)->RegionArray))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DistanceRrMinDil()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyFloat_FromDouble(self->Region->FuzzyEntropy(*(((PyHirschImage*)Image)->Image),Apar,Cpar));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FuzzyEntropy()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MoveRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MirrorRegion(PyHirschRegion*self, PyObject *args)
{
    char* Mode;
    long WidthHeight;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &Mode,&WidthHeight)) {
            return PyHirschRegion_FromHRegion(self->Region->MirrorRegion(Mode,WidthHeight));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MirrorRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
            if (PyHirschRegionArray_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->Union2(*(((PyHirschRegionArray*)Region2)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Union2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_CheckMyObjClass(PyHirschRegion*self, PyObject *)
{
    try {
        self->Region->CheckMyObjClass();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DilationSeq(PyHirschRegion*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Iterations)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationSeq(GolayElement,Iterations));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationSeq()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyHirschRegionArray_FromHRegionArray(self->Region->OpeningSeg(*(((PyHirschRegion*)StructElement)->Region)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.OpeningSeg()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiAdd1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SetIcon(PyHirschRegion*self, PyObject *args)
{
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            self->Region->SetIcon(WindowHandle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SetIcon()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion3rdInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double M12;
        double M03;
        double M30;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion3rdInvar(&M12,&M03,&M30)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M12));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M03));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(M30));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenCircle(PyHirschRegion*, PyObject *args)
{
    double Column;
    double Radius;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "ddd", &Row,&Column,&Radius)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenCircle(Row,Column,Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_HoughCircles(PyHirschRegion*self, PyObject *args)
{
    long Mode;
    long Percent;
    long Radius;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Radius,&Percent,&Mode)) {
            return PyHirschRegionArray_FromHRegionArray(self->Region->HoughCircles(Radius,Percent,Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HoughCircles()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Thickening()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_AreaCenter(PyHirschRegion*self, PyObject *)
{
    try {
        double Row;
        double Column;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->AreaCenter(&Row,&Column))));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Row));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Column));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClosingGolay(PyHirschRegion*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClosingGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionContour(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HTuple Columns;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionContour(&Columns)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Columns));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_HClassName(PyHirschRegion*self, PyObject *)
{
    try {
        return PyString_FromString(self->Region->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
            if (PyHirschRegionArray_Check(StructElements)) {
                return PyHirschRegion_FromHRegion(self->Region->Fitting(*(((PyHirschRegionArray*)StructElements)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Fitting()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.MinkowskiSub1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_M11(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->M11());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ReadRegion(PyHirschRegion*, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::ReadRegion(FileName));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ReadRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ConnectAndHoles(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong NumHoles;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->ConnectAndHoles(&NumHoles))));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(NumHoles)));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Get2dBarCode(PyHirschRegion*self, PyObject *args)
{
    PyObject* CodeRegDescr;
    PyObject* GenParamNames;
    PyObject* Image;
    PyObject* GenParamValues;
    PyObject* BarCodeDescr;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Image,&BarCodeDescr,&CodeRegDescr,&GenParamNames,&GenParamValues)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(BarCodeDescr) && PyHirschTuple_Check(CodeRegDescr) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                Halcon::HTuple BarCodeData;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->Get2dBarCode(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)BarCodeDescr)->Tuple),*(((PyHirschTuple*)CodeRegDescr)->Tuple),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple),&BarCodeData)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(BarCodeData));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Get2dBarCode()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionRuns(PyHirschRegion*, PyObject *args)
{
    long ColumnEnd;
    long Row;
    long ColumnBegin;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Row,&ColumnBegin,&ColumnEnd)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionRuns(Row,ColumnBegin,ColumnEnd));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionRuns()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion2ndInvar(PyHirschRegion*self, PyObject *)
{
    try {
        double M20;
        double M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion2ndInvar(&M20,&M02)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M20));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M02));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyFloat_FromDouble(self->Region->TextLineSlant(*(((PyHirschImage*)Image)->Image),CharHeight,SlantFrom,SlantTo));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TextLineSlant()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_LearnNdimNorm(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    char* Metric;
    double Distance;
    PyObject* Background;
    double MinNumberPercent;
    
    try {
        if (PyArg_ParseTuple(args, "OOsdd", &Background,&Image,&Metric,&Distance,&MinNumberPercent)) {
            if (PyHirschRegion_Check(Background) && PyHirschImage_Check(Image)) {
                Halcon::HTuple Center;
                double Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->LearnNdimNorm(*(((PyHirschRegion*)Background)->Region),*(((PyHirschImage*)Image)->Image),Metric,Distance,MinNumberPercent,&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality));
                
                return ret;
            }
            if (PyHirschRegionArray_Check(Background) && PyHirschImageArray_Check(Image)) {
                Halcon::HTuple Center;
                double Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->LearnNdimNorm(*(((PyHirschRegionArray*)Background)->RegionArray),*(((PyHirschImageArray*)Image)->ImageArray),Metric,Distance,MinNumberPercent,&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.LearnNdimNorm()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ClosingCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClosingCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Bulkiness(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Bulkiness());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRectangle1(PyHirschRegion*, PyObject *args)
{
    double Column1;
    double Column2;
    double Row2;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRectangle1(Row1,Column1,Row2,Column2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CloseEdges()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.AddChannels()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectCharacters(PyHirschRegion*self, PyObject *args)
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
                return PyHirschRegion_FromHRegion(self->Region->SelectCharacters(*(((PyHirschTuple*)DotPrint)->Tuple),*(((PyHirschTuple*)StrokeWidth)->Tuple),*(((PyHirschTuple*)CharWidth)->Tuple),*(((PyHirschTuple*)CharHeight)->Tuple),*(((PyHirschTuple*)Punctuation)->Tuple),*(((PyHirschTuple*)DiacriticMarks)->Tuple),*(((PyHirschTuple*)PartitionMethod)->Tuple),*(((PyHirschTuple*)PartitionLines)->Tuple),*(((PyHirschTuple*)FragmentDistance)->Tuple),*(((PyHirschTuple*)ConnectFragments)->Tuple),*(((PyHirschTuple*)ClutterSizeMax)->Tuple),*(((PyHirschTuple*)StopAfter)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectCharacters()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SelectMatchingLines(PyHirschRegion*self, PyObject *args)
{
    long LineWidth;
    double DistIn;
    double AngleIn;
    long Thresh;
    
    try {
        if (PyArg_ParseTuple(args, "ddll", &AngleIn,&DistIn,&LineWidth,&Thresh)) {
            {
            // with output params
                Halcon::HTuple AngleOut;
                Halcon::HTuple DistOut;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Region->SelectMatchingLines(AngleIn,DistIn,LineWidth,Thresh,&AngleOut,&DistOut)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(AngleOut));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DistOut));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SelectMatchingLines()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ErosionCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Phi(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Phi());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_CoocFeatureImage(PyHirschRegion*self, PyObject *args)
{
    long Direction;
    PyObject* Image;
    long LdGray;
    
    try {
        if (PyArg_ParseTuple(args, "Oll", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image)) {
                double Correlation;
                double Homogeneity;
                double Contrast;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->CoocFeatureImage(*(((PyHirschImage*)Image)->Image),LdGray,Direction,&Correlation,&Homogeneity,&Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Correlation));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Homogeneity));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Contrast));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.CoocFeatureImage()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyHirschTuple_FromHTuple(self->Region->NoiseDistributionMean(*(((PyHirschImage*)Image)->Image),FilterSize));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.NoiseDistributionMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Opening()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HammingChangeRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_M02(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->M02());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_FillUpShape(PyHirschRegion*self, PyObject *args)
{
    double Min;
    char* Feature;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "sdd", &Feature,&Min,&Max)) {
            return PyHirschRegion_FromHRegion(self->Region->FillUpShape(Feature,Min,Max));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.FillUpShape()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
            if (PyHirschRegionArray_Check(Sub)) {
                return PyHirschRegion_FromHRegion(self->Region->Difference(*(((PyHirschRegionArray*)Sub)->RegionArray)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Difference()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Insert(PyHirschRegion*self, PyObject *args)
{
    PyObject* p;
    
    try {
        if (PyArg_ParseTuple(args, "O", &p)) {
            if (PyHirschDPoint2D_Check(p)) {
                self->Region->Insert(Halcon::HDPoint2D((((PyHirschDPoint2D*)p)->DPoint2D)));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Insert()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TransposeRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GetRegionRuns(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HTuple ColumnBegin;
        Halcon::HTuple ColumnEnd;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionRuns(&ColumnBegin,&ColumnEnd)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColumnBegin));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(ColumnEnd));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ClosingRectangle1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.HitOrMiss()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_SplitSkeletonRegion(PyHirschRegion*self, PyObject *args)
{
    long MaxDistance;
    
    try {
        if (PyArg_ParseTuple(args, "l", &MaxDistance)) {
            return PyHirschRegionArray_FromHRegionArray(self->Region->SplitSkeletonRegion(MaxDistance));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.SplitSkeletonRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_InnerCircle(PyHirschRegion*self, PyObject *)
{
    try {
        double Column;
        double Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->InnerCircle(&Column,&Radius)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DispRegion(PyHirschRegion*self, PyObject *args)
{
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            self->Region->DispRegion(WindowHandle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DispRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenCheckerRegion(PyHirschRegion*, PyObject *args)
{
    long WidthRegion;
    long HeightRegion;
    long WidthPattern;
    long HeightPattern;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &WidthRegion,&HeightRegion,&WidthPattern,&HeightPattern)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenCheckerRegion(WidthRegion,HeightRegion,WidthPattern,HeightPattern));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenCheckerRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_RunlengthDistribution(PyHirschRegion*self, PyObject *)
{
    try {
        Halcon::HTuple Background;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->RunlengthDistribution(&Background)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Background));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Ia(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Ia());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ProjectiveTransRegion(PyHirschRegion*self, PyObject *args)
{
    PyObject* Interpolation;
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &HomMat2D,&Interpolation)) {
            if (PyHirschTuple_Check(HomMat2D) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschRegion_FromHRegion(self->Region->ProjectiveTransRegion(*(((PyHirschTuple*)HomMat2D)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ProjectiveTransRegion()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_IsEmpty(PyHirschRegion*self, PyObject *)
{
    try {
        return PyBool_FromLong(self->Region->IsEmpty());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ErosionGolay(PyHirschRegion*self, PyObject *args)
{
    long Iterations;
    char* GolayElement;
    long Rotation;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement,&Iterations,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionGolay(GolayElement,Iterations,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ErosionGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.RegionToMean()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Dilation2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.Dilation1()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenRegionHisto(PyHirschRegion*, PyObject *args)
{
    PyObject* Scale;
    PyObject* Column;
    PyObject* Row;
    PyObject* Histogram;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Histogram,&Row,&Column,&Scale)) {
            if (PyHirschTuple_Check(Histogram) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Scale)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionHisto(*(((PyHirschTuple*)Histogram)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Scale)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenRegionHisto()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Col(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Col());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Contlength(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Contlength());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_TestRegionPoint(PyHirschRegion*self, PyObject *args)
{
    long Row;
    long Column;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Row,&Column)) {
            return PyInt_FromLong(long(self->Region->TestRegionPoint(Row,Column)));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.TestRegionPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DilationCircle(PyHirschRegion*self, PyObject *args)
{
    double Radius;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Radius)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationCircle(Radius));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.DilationCircle()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Circularity(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Circularity());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Rectangularity(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Rectangularity());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GrayProjections(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Image,&Mode)) {
            if (PyHirschImage_Check(Image)) {
                Halcon::HTuple VertProjection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GrayProjections(*(((PyHirschImage*)Image)->Image),Mode,&VertProjection)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(VertProjection));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GrayProjections()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_GenContourRegionXld(PyHirschRegion*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->Region->GenContourRegionXld(Mode));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.GenContourRegionXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Connection(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRegionArray_FromHRegionArray(self->Region->Connection());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_MomentsRegion3rd(PyHirschRegion*self, PyObject *)
{
    try {
        double M12;
        double M03;
        double M30;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MomentsRegion3rd(&M12,&M03,&M30)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(M12));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(M03));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(M30));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_In(PyHirschRegion*self, PyObject *args)
{
    PyObject* p;
    
    try {
        if (PyArg_ParseTuple(args, "O", &p)) {
            if (PyHirschDPoint2D_Check(p)) {
                return PyBool_FromLong(self->Region->In(Halcon::HDPoint2D((((PyHirschDPoint2D*)p)->DPoint2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.In()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_BoundingBox(PyHirschRegion*self, PyObject *)
{
    try {
        return PyHirschRectangle1_FromHRectangle1(self->Region->BoundingBox());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_ThinningGolay(PyHirschRegion*self, PyObject *args)
{
    long Rotation;
    char* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement,&Rotation)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningGolay(GolayElement,Rotation));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.ThinningGolay()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_Ib(PyHirschRegion*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Region->Ib());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRegion.BottomHat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_DiameterRegion(PyHirschRegion*self, PyObject *)
{
    try {
        Hlong Column1;
        Hlong Row2;
        Hlong Column2;
        double Diameter;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->DiameterRegion(&Column1,&Row2,&Column2,&Diameter))));
        PyTuple_SET_ITEM(ret, 1, PyInt_FromLong(long(Column1)));
        PyTuple_SET_ITEM(ret, 2, PyInt_FromLong(long(Row2)));
        PyTuple_SET_ITEM(ret, 3, PyInt_FromLong(long(Column2)));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Diameter));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
