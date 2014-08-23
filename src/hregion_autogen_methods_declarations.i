PyObject *
PyHirschRegion_SpatialRelation(PyHirschRegion*self, PyObject *args)
{
    long Percent1;
    PyObject* Regions21;
    PyObject* Regions2;
    PyObject* Regions22;
    PyObject* Percent;
    PyObject* Percent2;
    PyObject* Regions23;
    long Percent3;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Regions23,&Percent3)) {
            if (PyHirschRegionArray_Check(Regions23)) {
                Halcon::HTuple RegionIndex23;
                Halcon::HTuple Relation13;
                Halcon::HTuple Relation23;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SpatialRelation(*(((PyHirschRegionArray*)Regions23)->RegionArray),Percent3,&RegionIndex23,&Relation13,&Relation23)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex23));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation13));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation23));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions2,&Percent)) {
            if (PyHirschRegion_Check(Regions2) && PyHirschTuple_Check(Percent)) {
                Halcon::HTuple RegionIndex2;
                Halcon::HTuple Relation1;
                Halcon::HTuple Relation2;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SpatialRelation(*(((PyHirschRegion*)Regions2)->Region),*(((PyHirschTuple*)Percent)->Tuple),&RegionIndex2,&Relation1,&Relation2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &Regions21,&Percent1)) {
            if (PyHirschRegion_Check(Regions21)) {
                Halcon::HTuple RegionIndex21;
                Halcon::HTuple Relation11;
                Halcon::HTuple Relation21;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SpatialRelation(*(((PyHirschRegion*)Regions21)->Region),Percent1,&RegionIndex21,&Relation11,&Relation21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex21));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation11));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions22,&Percent2)) {
            if (PyHirschRegionArray_Check(Regions22) && PyHirschTuple_Check(Percent2)) {
                Halcon::HTuple RegionIndex22;
                Halcon::HTuple Relation12;
                Halcon::HTuple Relation22;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SpatialRelation(*(((PyHirschRegionArray*)Regions22)->RegionArray),*(((PyHirschTuple*)Percent2)->Tuple),&RegionIndex22,&Relation12,&Relation22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex22));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Relation12));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Relation22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    long Direction1;
    long LdGray1;
    PyObject* LdGray;
    PyObject* Direction;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(LdGray) && PyHirschTuple_Check(Direction)) {
                return PyHirschImage_FromHImage(self->Region->GenCoocMatrix(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)LdGray)->Tuple),*(((PyHirschTuple*)Direction)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&LdGray1,&Direction1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->Region->GenCoocMatrix(*(((PyHirschImage*)Image1)->Image),LdGray1,Direction1));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegion_FromHRegion(self->Region->OpeningRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Type1;
    PyObject* ColumnSteps;
    long ColumnSteps1;
    long RowSteps1;
    long Width1;
    PyObject* RowSteps;
    PyObject* Type;
    PyObject* Height;
    long Height1;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "llsll", &RowSteps1,&ColumnSteps1,&Type1,&Width1,&Height1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenGridRegion(RowSteps1,ColumnSteps1,Type1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &RowSteps,&ColumnSteps,&Type,&Width,&Height)) {
            if (PyHirschTuple_Check(RowSteps) && PyHirschTuple_Check(ColumnSteps) && PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenGridRegion(*(((PyHirschTuple*)RowSteps)->Tuple),*(((PyHirschTuple*)ColumnSteps)->Tuple),*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Tolerance;
    double Tolerance1;
    
    try {
        if (PyArg_ParseTuple(args, "d", &Tolerance1)) {
            {
            // with output params
                Halcon::HTuple Columns1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionPolygon(Tolerance1,&Columns1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Columns1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Tolerance)) {
            if (PyHirschTuple_Check(Tolerance)) {
                Halcon::HTuple Columns;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GetRegionPolygon(*(((PyHirschTuple*)Tolerance)->Tuple),&Columns)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Columns));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Columns;
    long Rows1;
    PyObject* Rows;
    long Columns1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Rows,&Columns)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Columns)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionPoints(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Columns)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Rows1,&Columns1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionPoints(Rows1,Columns1));
        }
        PyErr_Clear();
        
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
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions21)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                return PyInt_FromLong(long(self->Region->TestEqualRegion(*(((PyHirschRegionArray*)Regions21)->RegionArray))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                return PyInt_FromLong(long(self->Region->TestEqualRegion(*(((PyHirschRegion*)Regions2)->Region))));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Regions22;
    PyObject* Norm2;
    char* Norm1;
    PyObject* Regions21;
    PyObject* Regions2;
    PyObject* Norm;
    PyObject* Regions23;
    char* Norm3;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions23,&Norm3)) {
            if (PyHirschRegionArray_Check(Regions23)) {
                double Similarity3;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegionArray*)Regions23)->RegionArray),Norm3,&Similarity3))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions22,&Norm2)) {
            if (PyHirschRegionArray_Check(Regions22) && PyHirschTuple_Check(Norm2)) {
                double Similarity2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegionArray*)Regions22)->RegionArray),*(((PyHirschTuple*)Norm2)->Tuple),&Similarity2))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions2,&Norm)) {
            if (PyHirschRegion_Check(Regions2) && PyHirschTuple_Check(Norm)) {
                double Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegion*)Regions2)->Region),*(((PyHirschTuple*)Norm)->Tuple),&Similarity))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions21,&Norm1)) {
            if (PyHirschRegion_Check(Regions21)) {
                double Similarity1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistanceNorm(*(((PyHirschRegion*)Regions21)->Region),Norm1,&Similarity1))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* Column;
    PyObject* Row;
    long Row1;
    PyObject* Feature;
    PyObject* Image;
    long Column1;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Image,&Feature,&Row,&Column)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Feature) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                Halcon::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->ShapeHistoPoint(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Feature)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osll", &Image1,&Feature1,&Row1,&Column1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple RelativeHisto1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->ShapeHistoPoint(*(((PyHirschImage*)Image1)->Image),Feature1,Row1,Column1,&RelativeHisto1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* Apar;
    PyObject* Cpar;
    PyObject* Image;
    long Cpar1;
    long Apar1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Apar) && PyHirschTuple_Check(Cpar)) {
                return PyFloat_FromDouble(self->Region->FuzzyPerimeter(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Apar)->Tuple),*(((PyHirschTuple*)Cpar)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&Apar1,&Cpar1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyFloat_FromDouble(self->Region->FuzzyPerimeter(*(((PyHirschImage*)Image1)->Image),Apar1,Cpar1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* DistGap;
    long DistGap1;
    long Threshold1;
    long AngleGap1;
    long AngleResolution1;
    PyObject* AngleResolution;
    PyObject* AngleGap;
    PyObject* Threshold;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &AngleResolution1,&Threshold1,&AngleGap1,&DistGap1)) {
            {
            // with output params
                Halcon::HTuple Dist1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->HoughLines(AngleResolution1,Threshold1,AngleGap1,DistGap1,&Dist1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Dist1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &AngleResolution,&Threshold,&AngleGap,&DistGap)) {
            if (PyHirschTuple_Check(AngleResolution) && PyHirschTuple_Check(Threshold) && PyHirschTuple_Check(AngleGap) && PyHirschTuple_Check(DistGap)) {
                Halcon::HTuple Dist;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->HoughLines(*(((PyHirschTuple*)AngleResolution)->Tuple),*(((PyHirschTuple*)Threshold)->Tuple),*(((PyHirschTuple*)AngleGap)->Tuple),*(((PyHirschTuple*)DistGap)->Tuple),&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Dist));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Region21;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyInt_FromLong(long(self->Region->TestSubsetRegion(*(((PyHirschRegion*)Region2)->Region))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Region21)) {
            if (PyHirschRegionArray_Check(Region21)) {
                return PyInt_FromLong(long(self->Region->TestSubsetRegion(*(((PyHirschRegionArray*)Region21)->RegionArray))));
            }
        }
        PyErr_Clear();
        
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
                return PyFloat_FromDouble(self->Region->TextLineOrientation(*(((PyHirschImage*)Image1)->Image),CharHeight1,OrientationFrom1,OrientationTo1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Image,&CharHeight,&OrientationFrom,&OrientationTo)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CharHeight) && PyHirschTuple_Check(OrientationFrom) && PyHirschTuple_Check(OrientationTo)) {
                return PyFloat_FromDouble(self->Region->TextLineOrientation(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CharHeight)->Tuple),*(((PyHirschTuple*)OrientationFrom)->Tuple),*(((PyHirschTuple*)OrientationTo)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->ClipRegion(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschRegion_FromHRegion(self->Region->ClipRegion(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
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
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenEllipse(Row1,Column1,Phi1,Radius11,Radius21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Radius1,&Radius2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenEllipse(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->PolarTransRegionInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)WidthIn)->Tuple),*(((PyHirschTuple*)HeightIn)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddlllls", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&WidthIn1,&HeightIn1,&Width1,&Height1,&Interpolation1)) {
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegionInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,WidthIn1,HeightIn1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegion_FromHRegion(self->Region->OpeningGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->OpeningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Distance;
    PyObject* Percent;
    double Percent1;
    double Distance1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Distance,&Percent)) {
            if (PyHirschTuple_Check(Distance) && PyHirschTuple_Check(Percent)) {
                return PyHirschRegionArray_FromHRegionArray(self->Region->PartitionDynamic(*(((PyHirschTuple*)Distance)->Tuple),*(((PyHirschTuple*)Percent)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Distance1,&Percent1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Region->PartitionDynamic(Distance1,Percent1));
        }
        PyErr_Clear();
        
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
    char* Type1;
    long Width1;
    long Height1;
    PyObject* Height;
    PyObject* Type;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Region->RegionToLabel(Type1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Type,&Width,&Height)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschImage_FromHImage(self->Region->RegionToLabel(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions21)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                double Similarity1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistance(*(((PyHirschRegionArray*)Regions21)->RegionArray),&Similarity1))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                double Similarity;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyInt_FromLong(long(self->Region->HammingDistance(*(((PyHirschRegion*)Regions2)->Region),&Similarity))));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Similarity));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->ThinningSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    double Quantization1;
    PyObject* Image;
    PyObject* Quantization;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Quantization1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->Region->GrayHistoAbs(*(((PyHirschImage*)Image1)->Image),Quantization1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Quantization)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Quantization)) {
                return PyHirschTuple_FromHTuple(self->Region->GrayHistoAbs(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Quantization)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistancePr(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            {
            // with output params
                Halcon::HTuple DistanceMax1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistancePr(Row1,Column1,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Gradient1;
    PyObject* MinAmplitude;
    long MaxGapLength1;
    PyObject* MaxGapLength;
    long MinAmplitude1;
    PyObject* Gradient;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Gradient,&MinAmplitude,&MaxGapLength)) {
            if (PyHirschImage_Check(Gradient) && PyHirschTuple_Check(MinAmplitude) && PyHirschTuple_Check(MaxGapLength)) {
                return PyHirschRegion_FromHRegion(self->Region->CloseEdgesLength(*(((PyHirschImage*)Gradient)->Image),*(((PyHirschTuple*)MinAmplitude)->Tuple),*(((PyHirschTuple*)MaxGapLength)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Gradient1,&MinAmplitude1,&MaxGapLength1)) {
            if (PyHirschImage_Check(Gradient1)) {
                return PyHirschRegion_FromHRegion(self->Region->CloseEdgesLength(*(((PyHirschImage*)Gradient1)->Image),MinAmplitude1,MaxGapLength1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    char* Class1;
    PyObject* Class;
    PyObject* Image;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Class) && PyHirschTuple_Check(FileName)) {
                self->Region->WriteOcrTrainf(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Class)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &Image1,&Class1,&FileName1)) {
            if (PyHirschImage_Check(Image1)) {
                self->Region->WriteOcrTrainf(*(((PyHirschImage*)Image1)->Image),Class1,FileName1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    char* Class1;
    PyObject* Class;
    PyObject* Image;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Class,&FileName)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Class) && PyHirschTuple_Check(FileName)) {
                self->Region->AppendOcrTrainf(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Class)->Tuple),*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oss", &Image1,&Class1,&FileName1)) {
            if (PyHirschImage_Check(Image1)) {
                self->Region->AppendOcrTrainf(*(((PyHirschImage*)Image1)->Image),Class1,FileName1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
                double Beta;
                double Gamma;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceFirstOrder(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Beta,&Gamma)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Osld", &Image1,&Algorithm1,&Iterations1,&ClippingFactor1)) {
            if (PyHirschImage_Check(Image1)) {
                double Beta1;
                double Gamma1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceFirstOrder(*(((PyHirschImage*)Image1)->Image),Algorithm1,Iterations1,ClippingFactor1,&Beta1,&Gamma1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    char* GolayElement1;
    PyObject* GolayElement;
    
    try {
        if (PyArg_ParseTuple(args, "O", &GolayElement)) {
            if (PyHirschTuple_Check(GolayElement)) {
                return PyHirschRegion_FromHRegion(self->Region->HitOrMissSeq(*(((PyHirschTuple*)GolayElement)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &GolayElement1)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissSeq(GolayElement1));
        }
        PyErr_Clear();
        
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
    long Length1;
    PyObject* Length;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Length)) {
            if (PyHirschTuple_Check(Length)) {
                return PyHirschRegion_FromHRegion(self->Region->Pruning(*(((PyHirschTuple*)Length)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Length1)) {
            return PyHirschRegion_FromHRegion(self->Region->Pruning(Length1));
        }
        PyErr_Clear();
        
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
    char* Shape1;
    double Percent1;
    PyObject* Percent;
    PyObject* Shape;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Shape1,&Percent1)) {
            return PyHirschRegion_FromHRegion(self->Region->SelectShapeStd(Shape1,Percent1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Shape,&Percent)) {
            if (PyHirschTuple_Check(Shape) && PyHirschTuple_Check(Percent)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeStd(*(((PyHirschTuple*)Shape)->Tuple),*(((PyHirschTuple*)Percent)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschRegion_FromHRegion(self->Region->RemoveNoiseRegion(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschRegion_FromHRegion(self->Region->RemoveNoiseRegion(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Orientation;
    double Orientation1;
    double Distance1;
    PyObject* Distance;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Orientation1,&Distance1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionHline(Orientation1,Distance1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Orientation,&Distance)) {
            if (PyHirschTuple_Check(Orientation) && PyHirschTuple_Check(Distance)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionHline(*(((PyHirschTuple*)Orientation)->Tuple),*(((PyHirschTuple*)Distance)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GetIcon(*(((PyHirschTuple*)WindowHandle)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GetIcon(WindowHandle1));
        }
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiAdd2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiAdd2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiSub2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiSub2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRectangle2(Row1,Column1,Phi1,Length11,Length21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRectangle2(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* AngleResolution;
    long AngleResolution1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &AngleResolution)) {
            if (PyHirschTuple_Check(AngleResolution)) {
                return PyHirschImage_FromHImage(self->Region->HoughLineTrans(*(((PyHirschTuple*)AngleResolution)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &AngleResolution1)) {
            return PyHirschImage_FromHImage(self->Region->HoughLineTrans(AngleResolution1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    double Percent1;
    PyObject* Percent;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Percent1)) {
            if (PyHirschImage_Check(Image1)) {
                double Max1;
                double Range1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MinMaxGray(*(((PyHirschImage*)Image1)->Image),Percent1,&Max1,&Range1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Max1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Range1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Percent)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Percent)) {
                double Max;
                double Range;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->MinMaxGray(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Percent)->Tuple),&Max,&Range)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Max));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Range));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImage_FromHImage(self->Region->RegionToBin(*(((PyHirschTuple*)ForegroundGray)->Tuple),*(((PyHirschTuple*)BackgroundGray)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &ForegroundGray1,&BackgroundGray1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Region->RegionToBin(ForegroundGray1,BackgroundGray1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* Image;
    PyObject* Feature;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image,&Feature)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Feature)) {
                Halcon::HTuple RelativeHisto;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->ShapeHistoAll(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Feature)->Tuple),&RelativeHisto)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image1,&Feature1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple RelativeHisto1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->ShapeHistoAll(*(((PyHirschImage*)Image1)->Image),Feature1,&RelativeHisto1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RelativeHisto1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaxDistance;
    long MaxDistance1;
    PyObject* Regions21;
    PyObject* Regions2;
    PyObject* Regions22;
    PyObject* MaxDistance2;
    PyObject* Regions23;
    long MaxDistance3;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Regions23,&MaxDistance3)) {
            if (PyHirschRegionArray_Check(Regions23)) {
                Halcon::HTuple RegionIndex23;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->FindNeighbors(*(((PyHirschRegionArray*)Regions23)->RegionArray),MaxDistance3,&RegionIndex23)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex23));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions2,&MaxDistance)) {
            if (PyHirschRegion_Check(Regions2) && PyHirschTuple_Check(MaxDistance)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->FindNeighbors(*(((PyHirschRegion*)Regions2)->Region),*(((PyHirschTuple*)MaxDistance)->Tuple),&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &Regions21,&MaxDistance1)) {
            if (PyHirschRegion_Check(Regions21)) {
                Halcon::HTuple RegionIndex21;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->FindNeighbors(*(((PyHirschRegion*)Regions21)->Region),MaxDistance1,&RegionIndex21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions22,&MaxDistance2)) {
            if (PyHirschRegionArray_Check(Regions22) && PyHirschTuple_Check(MaxDistance2)) {
                Halcon::HTuple RegionIndex22;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->FindNeighbors(*(((PyHirschRegionArray*)Regions22)->RegionArray),*(((PyHirschTuple*)MaxDistance2)->Tuple),&RegionIndex22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    char* BoundaryType1;
    PyObject* BoundaryType;
    
    try {
        if (PyArg_ParseTuple(args, "s", &BoundaryType1)) {
            return PyHirschRegion_FromHRegion(self->Region->Boundary(BoundaryType1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &BoundaryType)) {
            if (PyHirschTuple_Check(BoundaryType)) {
                return PyHirschRegion_FromHRegion(self->Region->Boundary(*(((PyHirschTuple*)BoundaryType)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MergeBorder2;
    PyObject* PrevRegions1;
    PyObject* MergeBorder;
    long MaxImagesRegion1;
    PyObject* ImageHeight;
    long MaxImagesRegion3;
    char* MergeBorder3;
    long ImageHeight3;
    PyObject* PrevRegions3;
    PyObject* PrevRegions2;
    char* MergeBorder1;
    PyObject* MaxImagesRegion2;
    long ImageHeight1;
    PyObject* MaxImagesRegion;
    PyObject* ImageHeight2;
    
    try {
        if (PyArg_ParseTuple(args, "Olsl", &PrevRegions3,&ImageHeight3,&MergeBorder3,&MaxImagesRegion3)) {
            if (PyHirschRegionArray_Check(PrevRegions3)) {
                Halcon::HRegion PrevMergedRegions3;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegionArray*)PrevRegions3)->RegionArray),&PrevMergedRegions3,ImageHeight3,MergeBorder3,MaxImagesRegion3)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olsl", &PrevRegions1,&ImageHeight1,&MergeBorder1,&MaxImagesRegion1)) {
            if (PyHirschRegion_Check(PrevRegions1)) {
                Halcon::HRegion PrevMergedRegions1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegion*)PrevRegions1)->Region),&PrevMergedRegions1,ImageHeight1,MergeBorder1,MaxImagesRegion1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &PrevRegions2,&ImageHeight2,&MergeBorder2,&MaxImagesRegion2)) {
            if (PyHirschRegionArray_Check(PrevRegions2) && PyHirschTuple_Check(ImageHeight2) && PyHirschTuple_Check(MergeBorder2) && PyHirschTuple_Check(MaxImagesRegion2)) {
                Halcon::HRegion PrevMergedRegions2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegionArray*)PrevRegions2)->RegionArray),&PrevMergedRegions2,*(((PyHirschTuple*)ImageHeight2)->Tuple),*(((PyHirschTuple*)MergeBorder2)->Tuple),*(((PyHirschTuple*)MaxImagesRegion2)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &PrevRegions,&ImageHeight,&MergeBorder,&MaxImagesRegion)) {
            if (PyHirschRegion_Check(PrevRegions) && PyHirschTuple_Check(ImageHeight) && PyHirschTuple_Check(MergeBorder) && PyHirschTuple_Check(MaxImagesRegion)) {
                Halcon::HRegion PrevMergedRegions;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(self->Region->MergeRegionsLineScan(*(((PyHirschRegion*)PrevRegions)->Region),&PrevMergedRegions,*(((PyHirschTuple*)ImageHeight)->Tuple),*(((PyHirschTuple*)MergeBorder)->Tuple),*(((PyHirschTuple*)MaxImagesRegion)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(PrevMergedRegions));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    double ScaleWidth1;
    PyObject* ScaleWidth;
    double ScaleHeight1;
    PyObject* ScaleHeight;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ScaleWidth,&ScaleHeight)) {
            if (PyHirschTuple_Check(ScaleWidth) && PyHirschTuple_Check(ScaleHeight)) {
                return PyHirschRegion_FromHRegion(self->Region->ZoomRegion(*(((PyHirschTuple*)ScaleWidth)->Tuple),*(((PyHirschTuple*)ScaleHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &ScaleWidth1,&ScaleHeight1)) {
            return PyHirschRegion_FromHRegion(self->Region->ZoomRegion(ScaleWidth1,ScaleHeight1));
        }
        PyErr_Clear();
        
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
    long Width1;
    long Number1;
    long Height1;
    PyObject* Number;
    PyObject* Height;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Width1,&Height1,&Number1)) {
            return PyHirschRegion_FromHRegion(self->Region->RankRegion(Width1,Height1,Number1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Width,&Height,&Number)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Number)) {
                return PyHirschRegion_FromHRegion(self->Region->RankRegion(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Number)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegion_FromHRegion(self->Region->HitOrMissGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->HitOrMissGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->Erosion1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->Erosion1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->Erosion2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->Erosion2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Region21;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->Intersection(*(((PyHirschRegion*)Region2)->Region)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Region21)) {
            if (PyHirschRegionArray_Check(Region21)) {
                return PyHirschRegion_FromHRegion(self->Region->Intersection(*(((PyHirschRegionArray*)Region21)->RegionArray)));
            }
        }
        PyErr_Clear();
        
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
            return PyHirschRegion_FromHRegion(self->Region->ClipRegionRel(Top1,Bottom1,Left1,Right1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Top,&Bottom,&Left,&Right)) {
            if (PyHirschTuple_Check(Top) && PyHirschTuple_Check(Bottom) && PyHirschTuple_Check(Left) && PyHirschTuple_Check(Right)) {
                return PyHirschRegion_FromHRegion(self->Region->ClipRegionRel(*(((PyHirschTuple*)Top)->Tuple),*(((PyHirschTuple*)Bottom)->Tuple),*(((PyHirschTuple*)Left)->Tuple),*(((PyHirschTuple*)Right)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschRegion_FromHRegion(self->Region->ShapeTrans(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschRegion_FromHRegion(self->Region->ShapeTrans(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschImage_FromHImage(self->Region->DistanceTransform(*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)Foreground)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssll", &Metric1,&Foreground1,&Width1,&Height1)) {
            return PyHirschImage_FromHImage(self->Region->DistanceTransform(Metric1,Foreground1,Width1,Height1));
        }
        PyErr_Clear();
        
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
    PyObject* Radius;
    long Radius1;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Radius1)) {
            return PyHirschImageArray_FromHImageArray(self->Region->HoughCircleTrans(Radius1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Radius)) {
            if (PyHirschTuple_Check(Radius)) {
                return PyHirschImageArray_FromHImageArray(self->Region->HoughCircleTrans(*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->ErosionSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    double Height1;
    PyObject* Height;
    PyObject* Width;
    double Width1;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Width1,&Height1)) {
            return PyHirschRegion_FromHRegion(self->Region->PartitionRectangle(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegion_FromHRegion(self->Region->PartitionRectangle(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Image1;
    char* Type1;
    double Grayval1;
    PyObject* Type;
    PyObject* Grayval;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "Ods", &Image1,&Grayval1,&Type1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->Region->PaintRegion(*(((PyHirschImage*)Image1)->Image),Grayval1,Type1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Image,&Grayval,&Type)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval) && PyHirschTuple_Check(Type)) {
                return PyHirschImage_FromHImage(self->Region->PaintRegion(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple),*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegion_FromHRegion(self->Region->ErosionRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* Mode1;
    PyObject* ForbiddenArea;
    PyObject* Mode;
    long Iterations1;
    PyObject* ForbiddenArea1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &ForbiddenArea,&Iterations,&Mode)) {
            if (PyHirschRegion_Check(ForbiddenArea) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Mode)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea)->Region),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ols", &ForbiddenArea1,&Iterations1,&Mode1)) {
            if (PyHirschRegion_Check(ForbiddenArea1)) {
                return PyHirschRegion_FromHRegion(self->Region->ExpandRegion(*(((PyHirschRegion*)ForbiddenArea1)->Region),Iterations1,Mode1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionLine(*(((PyHirschTuple*)BeginRow)->Tuple),*(((PyHirschTuple*)BeginCol)->Tuple),*(((PyHirschTuple*)EndRow)->Tuple),*(((PyHirschTuple*)EndCol)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &BeginRow1,&BeginCol1,&EndRow1,&EndCol1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionLine(BeginRow1,BeginCol1,EndRow1,EndCol1));
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschRegion_FromHRegion(self->Region->Interjacent(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschRegion_FromHRegion(self->Region->Interjacent(Mode1));
        }
        PyErr_Clear();
        
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
    long ElimShorter1;
    PyObject* ElimLonger;
    long ElimLonger1;
    PyObject* ElimShorter;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &ElimShorter,&ElimLonger)) {
            if (PyHirschTuple_Check(ElimShorter) && PyHirschTuple_Check(ElimLonger)) {
                return PyHirschRegion_FromHRegion(self->Region->EliminateRuns(*(((PyHirschTuple*)ElimShorter)->Tuple),*(((PyHirschTuple*)ElimLonger)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &ElimShorter1,&ElimLonger1)) {
            return PyHirschRegion_FromHRegion(self->Region->EliminateRuns(ElimShorter1,ElimLonger1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegion_FromHRegion(self->Region->DilationRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRandomRegion(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRandomRegion(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    long Length1;
    PyObject* Length;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Length,&Mode)) {
            if (PyHirschTuple_Check(Length) && PyHirschTuple_Check(Mode)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->Region->GenContoursSkeletonXld(*(((PyHirschTuple*)Length)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ls", &Length1,&Mode1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->Region->GenContoursSkeletonXld(Length1,Mode1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->Thinning(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlll", &StructElement11,&StructElement21,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement11) && PyHirschRegion_Check(StructElement21)) {
                return PyHirschRegion_FromHRegion(self->Region->Thinning(*(((PyHirschRegion*)StructElement11)->Region),*(((PyHirschRegion*)StructElement21)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    char* Type1;
    PyObject* Type;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &Type1,&Row1,&Column1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenStructElements(Type1,Row1,Column1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Type,&Row,&Column)) {
            if (PyHirschTuple_Check(Type) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenStructElements(*(((PyHirschTuple*)Type)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->Region->WriteRegion(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->Region->WriteRegion(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    PyObject* Rotation;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement1,&Iterations1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationGolay(GolayElement1,Iterations1,Rotation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &GolayElement,&Iterations,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegion_FromHRegion(self->Region->DilationGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegion_FromHRegion(self->Region->ThickeningGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistanceSr(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            {
            // with output params
                Halcon::HTuple DistanceMax1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistanceSr(Row11,Column11,Row21,Column21,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    PyObject* Rotation;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &GolayElement,&Rotation,&Row,&Column)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                Halcon::HRegion StructElement2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(Halcon::HRegion::GolayElements(&StructElement2,*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(StructElement2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slll", &GolayElement1,&Rotation1,&Row1,&Column1)) {
            {
            // with output params
                Halcon::HRegion StructElement21;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegion_FromHRegion(Halcon::HRegion::GolayElements(&StructElement21,GolayElement1,Rotation1,Row1,Column1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschRegion_FromHRegion(StructElement21));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThickeningSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->ThickeningSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
            return PyHirschRegion_FromHRegion(self->Region->PolarTransRegion(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1,Interpolation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height,&Interpolation)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Interpolation)) {
                return PyHirschRegion_FromHRegion(self->Region->PolarTransRegion(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Interpolation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Regions22;
    PyObject* Direction2;
    PyObject* Regions21;
    PyObject* Regions2;
    PyObject* Direction;
    char* Direction3;
    PyObject* Regions23;
    char* Direction1;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Regions23,&Direction3)) {
            if (PyHirschRegionArray_Check(Regions23)) {
                Halcon::HTuple RegionIndex23;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SelectRegionSpatial(*(((PyHirschRegionArray*)Regions23)->RegionArray),Direction3,&RegionIndex23)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex23));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions2,&Direction)) {
            if (PyHirschRegion_Check(Regions2) && PyHirschTuple_Check(Direction)) {
                Halcon::HTuple RegionIndex2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SelectRegionSpatial(*(((PyHirschRegion*)Regions2)->Region),*(((PyHirschTuple*)Direction)->Tuple),&RegionIndex2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Regions21,&Direction1)) {
            if (PyHirschRegion_Check(Regions21)) {
                Halcon::HTuple RegionIndex21;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SelectRegionSpatial(*(((PyHirschRegion*)Regions21)->Region),Direction1,&RegionIndex21)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex21));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Regions22,&Direction2)) {
            if (PyHirschRegionArray_Check(Regions22) && PyHirschTuple_Check(Direction2)) {
                Halcon::HTuple RegionIndex22;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->SelectRegionSpatial(*(((PyHirschRegionArray*)Regions22)->RegionArray),*(((PyHirschTuple*)Direction2)->Tuple),&RegionIndex22)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(RegionIndex22));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistanceLr(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            {
            // with output params
                Halcon::HTuple DistanceMax1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->DistanceLr(Row11,Column11,Row21,Column21,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
                double Beta;
                double Gamma;
                double Delta;
                double Epsilon;
                double Zeta;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceSecondOrder(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Beta,&Gamma,&Delta,&Epsilon,&Zeta)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta));
                
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
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->FitSurfaceSecondOrder(*(((PyHirschImage*)Image1)->Image),Algorithm1,Iterations1,ClippingFactor1,&Beta1,&Gamma1,&Delta1,&Epsilon1,&Zeta1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Beta1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Gamma1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Delta1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Epsilon1));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Zeta1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Region21;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->SymmDifference(*(((PyHirschRegion*)Region2)->Region)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Region21)) {
            if (PyHirschRegionArray_Check(Region21)) {
                return PyHirschRegion_FromHRegion(self->Region->SymmDifference(*(((PyHirschRegionArray*)Region21)->RegionArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions21)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                Hlong Row11;
                Hlong Column11;
                Hlong Row21;
                Hlong Column21;
                PyObject *ret = PyTuple_New(5);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->DistanceRrMin(*(((PyHirschRegionArray*)Regions21)->RegionArray),&Row11,&Column11,&Row21,&Column21)));
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
        }
        PyErr_Clear();
        
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
    PyObject* Pattern3;
    PyObject* Min;
    PyObject* Feature;
    double Min1;
    PyObject* Max;
    PyObject* Pattern1;
    double Max1;
    PyObject* Pattern2;
    PyObject* Min2;
    PyObject* Feature2;
    double Max3;
    char* Feature3;
    PyObject* Pattern;
    double Min3;
    PyObject* Max2;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "Osdd", &Pattern3,&Feature3,&Min3,&Max3)) {
            if (PyHirschRegionArray_Check(Pattern3)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegionArray*)Pattern3)->RegionArray),Feature3,Min3,Max3));
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
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegion*)Pattern1)->Region),Feature1,Min1,Max1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Pattern2,&Feature2,&Min2,&Max2)) {
            if (PyHirschRegionArray_Check(Pattern2) && PyHirschTuple_Check(Feature2) && PyHirschTuple_Check(Min2) && PyHirschTuple_Check(Max2)) {
                return PyHirschRegion_FromHRegion(self->Region->SelectShapeProto(*(((PyHirschRegionArray*)Pattern2)->RegionArray),*(((PyHirschTuple*)Feature2)->Tuple),*(((PyHirschTuple*)Min2)->Tuple),*(((PyHirschTuple*)Max2)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Regions21;
    PyObject* Regions2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Regions21)) {
            if (PyHirschRegionArray_Check(Regions21)) {
                return PyInt_FromLong(long(self->Region->DistanceRrMinDil(*(((PyHirschRegionArray*)Regions21)->RegionArray))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Regions2)) {
            if (PyHirschRegion_Check(Regions2)) {
                return PyInt_FromLong(long(self->Region->DistanceRrMinDil(*(((PyHirschRegion*)Regions2)->Region))));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    PyObject* Apar;
    PyObject* Cpar;
    PyObject* Image;
    long Cpar1;
    long Apar1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&Apar,&Cpar)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Apar) && PyHirschTuple_Check(Cpar)) {
                return PyFloat_FromDouble(self->Region->FuzzyEntropy(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Apar)->Tuple),*(((PyHirschTuple*)Cpar)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oll", &Image1,&Apar1,&Cpar1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyFloat_FromDouble(self->Region->FuzzyEntropy(*(((PyHirschImage*)Image1)->Image),Apar1,Cpar1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegion_FromHRegion(self->Region->MoveRegion(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyHirschRegion_FromHRegion(self->Region->MoveRegion(Row1,Column1));
        }
        PyErr_Clear();
        
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
    PyObject* WidthHeight;
    char* Mode1;
    PyObject* Mode;
    long WidthHeight1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mode,&WidthHeight)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(WidthHeight)) {
                return PyHirschRegion_FromHRegion(self->Region->MirrorRegion(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)WidthHeight)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &Mode1,&WidthHeight1)) {
            return PyHirschRegion_FromHRegion(self->Region->MirrorRegion(Mode1,WidthHeight1));
        }
        PyErr_Clear();
        
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
    PyObject* Region21;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Region2)) {
            if (PyHirschRegion_Check(Region2)) {
                return PyHirschRegion_FromHRegion(self->Region->Union2(*(((PyHirschRegion*)Region2)->Region)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Region21)) {
            if (PyHirschRegionArray_Check(Region21)) {
                return PyHirschRegion_FromHRegion(self->Region->Union2(*(((PyHirschRegionArray*)Region21)->RegionArray)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Iterations1)) {
            return PyHirschRegion_FromHRegion(self->Region->DilationSeq(GolayElement1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Iterations)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->DilationSeq(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiAdd1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiAdd1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                self->Region->SetIcon(*(((PyHirschTuple*)WindowHandle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            self->Region->SetIcon(WindowHandle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    double Radius1;
    PyObject* Radius;
    double Column1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Row,&Column,&Radius)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Radius)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenCircle(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Radius)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddd", &Row1,&Column1,&Radius1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenCircle(Row1,Column1,Radius1));
        }
        PyErr_Clear();
        
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
    long Mode1;
    PyObject* Radius;
    long Percent1;
    PyObject* Percent;
    PyObject* Mode;
    long Radius1;
    
    try {
        if (PyArg_ParseTuple(args, "lll", &Radius1,&Percent1,&Mode1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Region->HoughCircles(Radius1,Percent1,Mode1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &Radius,&Percent,&Mode)) {
            if (PyHirschTuple_Check(Radius) && PyHirschTuple_Check(Percent) && PyHirschTuple_Check(Mode)) {
                return PyHirschRegionArray_FromHRegionArray(self->Region->HoughCircles(*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)Percent)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->Thickening(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOlll", &StructElement11,&StructElement21,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement11) && PyHirschRegion_Check(StructElement21)) {
                return PyHirschRegion_FromHRegion(self->Region->Thickening(*(((PyHirschRegion*)StructElement11)->Region),*(((PyHirschRegion*)StructElement21)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegion_FromHRegion(self->Region->ClosingGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
    PyObject* StructElements1;
    PyObject* StructElements;
    
    try {
        if (PyArg_ParseTuple(args, "O", &StructElements1)) {
            if (PyHirschRegionArray_Check(StructElements1)) {
                return PyHirschRegion_FromHRegion(self->Region->Fitting(*(((PyHirschRegionArray*)StructElements1)->RegionArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &StructElements)) {
            if (PyHirschRegion_Check(StructElements)) {
                return PyHirschRegion_FromHRegion(self->Region->Fitting(*(((PyHirschRegion*)StructElements)->Region)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiSub1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->MinkowskiSub1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::ReadRegion(FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::ReadRegion(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* ColumnBegin;
    PyObject* Row;
    long Row1;
    long ColumnEnd1;
    PyObject* ColumnEnd;
    long ColumnBegin1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Row,&ColumnBegin,&ColumnEnd)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(ColumnBegin) && PyHirschTuple_Check(ColumnEnd)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionRuns(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)ColumnBegin)->Tuple),*(((PyHirschTuple*)ColumnEnd)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lll", &Row1,&ColumnBegin1,&ColumnEnd1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRegionRuns(Row1,ColumnBegin1,ColumnEnd1));
        }
        PyErr_Clear();
        
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
                return PyFloat_FromDouble(self->Region->TextLineSlant(*(((PyHirschImage*)Image1)->Image),CharHeight1,SlantFrom1,SlantTo1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Image,&CharHeight,&SlantFrom,&SlantTo)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(CharHeight) && PyHirschTuple_Check(SlantFrom) && PyHirschTuple_Check(SlantTo)) {
                return PyFloat_FromDouble(self->Region->TextLineSlant(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)CharHeight)->Tuple),*(((PyHirschTuple*)SlantFrom)->Tuple),*(((PyHirschTuple*)SlantTo)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    char* Metric3;
    PyObject* Background;
    PyObject* Background2;
    PyObject* Background3;
    PyObject* MinNumberPercent2;
    PyObject* MinNumberPercent;
    PyObject* Distance;
    char* Metric1;
    PyObject* Image2;
    double MinNumberPercent1;
    PyObject* Metric2;
    double MinNumberPercent3;
    double Distance3;
    PyObject* Image;
    PyObject* Image3;
    PyObject* Distance2;
    double Distance1;
    PyObject* Metric;
    PyObject* Background1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Background,&Image,&Metric,&Distance,&MinNumberPercent)) {
            if (PyHirschRegion_Check(Background) && PyHirschImage_Check(Image) && PyHirschTuple_Check(Metric) && PyHirschTuple_Check(Distance) && PyHirschTuple_Check(MinNumberPercent)) {
                Halcon::HTuple Center;
                double Quality;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->LearnNdimNorm(*(((PyHirschRegion*)Background)->Region),*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Metric)->Tuple),*(((PyHirschTuple*)Distance)->Tuple),*(((PyHirschTuple*)MinNumberPercent)->Tuple),&Center,&Quality)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Background2,&Image2,&Metric2,&Distance2,&MinNumberPercent2)) {
            if (PyHirschRegionArray_Check(Background2) && PyHirschImageArray_Check(Image2) && PyHirschTuple_Check(Metric2) && PyHirschTuple_Check(Distance2) && PyHirschTuple_Check(MinNumberPercent2)) {
                Halcon::HTuple Center2;
                double Quality2;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->LearnNdimNorm(*(((PyHirschRegionArray*)Background2)->RegionArray),*(((PyHirschImageArray*)Image2)->ImageArray),*(((PyHirschTuple*)Metric2)->Tuple),*(((PyHirschTuple*)Distance2)->Tuple),*(((PyHirschTuple*)MinNumberPercent2)->Tuple),&Center2,&Quality2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsdd", &Background1,&Image1,&Metric1,&Distance1,&MinNumberPercent1)) {
            if (PyHirschRegion_Check(Background1) && PyHirschImage_Check(Image1)) {
                Halcon::HTuple Center1;
                double Quality1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->LearnNdimNorm(*(((PyHirschRegion*)Background1)->Region),*(((PyHirschImage*)Image1)->Image),Metric1,Distance1,MinNumberPercent1,&Center1,&Quality1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOsdd", &Background3,&Image3,&Metric3,&Distance3,&MinNumberPercent3)) {
            if (PyHirschRegionArray_Check(Background3) && PyHirschImageArray_Check(Image3)) {
                Halcon::HTuple Center3;
                double Quality3;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->LearnNdimNorm(*(((PyHirschRegionArray*)Background3)->RegionArray),*(((PyHirschImageArray*)Image3)->ImageArray),Metric3,Distance3,MinNumberPercent3,&Center3,&Quality3)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Center3));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Quality3));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRectangle1(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenRectangle1(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
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
    long MinAmplitude1;
    PyObject* MinAmplitude;
    PyObject* EdgeImage1;
    PyObject* EdgeImage;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &EdgeImage1,&MinAmplitude1)) {
            if (PyHirschImage_Check(EdgeImage1)) {
                return PyHirschRegion_FromHRegion(self->Region->CloseEdges(*(((PyHirschImage*)EdgeImage1)->Image),MinAmplitude1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &EdgeImage,&MinAmplitude)) {
            if (PyHirschImage_Check(EdgeImage) && PyHirschTuple_Check(MinAmplitude)) {
                return PyHirschRegion_FromHRegion(self->Region->CloseEdges(*(((PyHirschImage*)EdgeImage)->Image),*(((PyHirschTuple*)MinAmplitude)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* AngleIn;
    long Thresh1;
    PyObject* DistIn;
    PyObject* Thresh;
    double AngleIn1;
    double DistIn1;
    long LineWidth1;
    PyObject* LineWidth;
    
    try {
        if (PyArg_ParseTuple(args, "ddll", &AngleIn1,&DistIn1,&LineWidth1,&Thresh1)) {
            {
            // with output params
                Halcon::HTuple AngleOut1;
                Halcon::HTuple DistOut1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Region->SelectMatchingLines(AngleIn1,DistIn1,LineWidth1,Thresh1,&AngleOut1,&DistOut1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(AngleOut1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DistOut1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &AngleIn,&DistIn,&LineWidth,&Thresh)) {
            if (PyHirschTuple_Check(AngleIn) && PyHirschTuple_Check(DistIn) && PyHirschTuple_Check(LineWidth) && PyHirschTuple_Check(Thresh)) {
                Halcon::HTuple AngleOut;
                Halcon::HTuple DistOut;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschRegionArray_FromHRegionArray(self->Region->SelectMatchingLines(*(((PyHirschTuple*)AngleIn)->Tuple),*(((PyHirschTuple*)DistIn)->Tuple),*(((PyHirschTuple*)LineWidth)->Tuple),*(((PyHirschTuple*)Thresh)->Tuple),&AngleOut,&DistOut)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(AngleOut));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(DistOut));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    PyObject* Image1;
    long Direction1;
    long LdGray1;
    PyObject* LdGray;
    PyObject* Direction;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Image,&LdGray,&Direction)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(LdGray) && PyHirschTuple_Check(Direction)) {
                double Correlation;
                double Homogeneity;
                double Contrast;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->Region->CoocFeatureImage(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)LdGray)->Tuple),*(((PyHirschTuple*)Direction)->Tuple),&Correlation,&Homogeneity,&Contrast)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Correlation));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Homogeneity));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Contrast));
                
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRegion_NoiseDistributionMean(PyHirschRegion*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* FilterSize;
    PyObject* Image;
    long FilterSize1;
    
    try {
        if (PyArg_ParseTuple(args, "Ol", &Image1,&FilterSize1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschTuple_FromHTuple(self->Region->NoiseDistributionMean(*(((PyHirschImage*)Image1)->Image),FilterSize1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&FilterSize)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(FilterSize)) {
                return PyHirschTuple_FromHTuple(self->Region->NoiseDistributionMean(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)FilterSize)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    long Width1;
    long Distance1;
    PyObject* Distance;
    long Height1;
    PyObject* Height;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Width,&Height,&Distance)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(Distance)) {
                return PyHirschRegion_FromHRegion(self->Region->HammingChangeRegion(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)Distance)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lll", &Width1,&Height1,&Distance1)) {
            return PyHirschRegion_FromHRegion(self->Region->HammingChangeRegion(Width1,Height1,Distance1));
        }
        PyErr_Clear();
        
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
    PyObject* Feature;
    double Min1;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Feature,&Min,&Max)) {
            if (PyHirschTuple_Check(Feature) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschRegion_FromHRegion(self->Region->FillUpShape(*(((PyHirschTuple*)Feature)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdd", &Feature1,&Min1,&Max1)) {
            return PyHirschRegion_FromHRegion(self->Region->FillUpShape(Feature1,Min1,Max1));
        }
        PyErr_Clear();
        
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
    PyObject* Sub1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Sub)) {
            if (PyHirschRegion_Check(Sub)) {
                return PyHirschRegion_FromHRegion(self->Region->Difference(*(((PyHirschRegion*)Sub)->Region)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Sub1)) {
            if (PyHirschRegionArray_Check(Sub1)) {
                return PyHirschRegion_FromHRegion(self->Region->Difference(*(((PyHirschRegionArray*)Sub1)->RegionArray)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Column;
    PyObject* Row;
    long Row1;
    long Column1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschRegion_FromHRegion(self->Region->TransposeRegion(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Row1,&Column1)) {
            return PyHirschRegion_FromHRegion(self->Region->TransposeRegion(Row1,Column1));
        }
        PyErr_Clear();
        
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
    long Width1;
    PyObject* Height;
    PyObject* Width;
    long Height1;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Width1,&Height1)) {
            return PyHirschRegion_FromHRegion(self->Region->ClosingRectangle1(Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Width,&Height)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschRegion_FromHRegion(self->Region->ClosingRectangle1(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->HitOrMiss(*(((PyHirschRegion*)StructElement1)->Region),*(((PyHirschRegion*)StructElement2)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOll", &StructElement11,&StructElement21,&Row1,&Column1)) {
            if (PyHirschRegion_Check(StructElement11) && PyHirschRegion_Check(StructElement21)) {
                return PyHirschRegion_FromHRegion(self->Region->HitOrMiss(*(((PyHirschRegion*)StructElement11)->Region),*(((PyHirschRegion*)StructElement21)->Region),Row1,Column1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* MaxDistance;
    long MaxDistance1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &MaxDistance)) {
            if (PyHirschTuple_Check(MaxDistance)) {
                return PyHirschRegionArray_FromHRegionArray(self->Region->SplitSkeletonRegion(*(((PyHirschTuple*)MaxDistance)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &MaxDistance1)) {
            return PyHirschRegionArray_FromHRegionArray(self->Region->SplitSkeletonRegion(MaxDistance1));
        }
        PyErr_Clear();
        
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
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                self->Region->DispRegion(*(((PyHirschTuple*)WindowHandle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            self->Region->DispRegion(WindowHandle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
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
    long WidthRegion1;
    PyObject* HeightPattern;
    long WidthPattern1;
    PyObject* HeightRegion;
    long HeightRegion1;
    long HeightPattern1;
    PyObject* WidthPattern;
    PyObject* WidthRegion;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &WidthRegion,&HeightRegion,&WidthPattern,&HeightPattern)) {
            if (PyHirschTuple_Check(WidthRegion) && PyHirschTuple_Check(HeightRegion) && PyHirschTuple_Check(WidthPattern) && PyHirschTuple_Check(HeightPattern)) {
                return PyHirschRegion_FromHRegion(Halcon::HRegion::GenCheckerRegion(*(((PyHirschTuple*)WidthRegion)->Tuple),*(((PyHirschTuple*)HeightRegion)->Tuple),*(((PyHirschTuple*)WidthPattern)->Tuple),*(((PyHirschTuple*)HeightPattern)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &WidthRegion1,&HeightRegion1,&WidthPattern1,&HeightPattern1)) {
            return PyHirschRegion_FromHRegion(Halcon::HRegion::GenCheckerRegion(WidthRegion1,HeightRegion1,WidthPattern1,HeightPattern1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Iterations;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    PyObject* Rotation;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sll", &GolayElement1,&Iterations1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ErosionGolay(GolayElement1,Iterations1,Rotation1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &GolayElement,&Iterations,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegion_FromHRegion(self->Region->ErosionGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
                return PyHirschRegion_FromHRegion(self->Region->Dilation2(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &StructElement1,&Row1,&Column1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->Dilation2(*(((PyHirschRegion*)StructElement1)->Region),Row1,Column1,Iterations1));
            }
        }
        PyErr_Clear();
        
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
    PyObject* Iterations;
    PyObject* StructElement;
    PyObject* StructElement1;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &StructElement,&Iterations)) {
            if (PyHirschRegion_Check(StructElement) && PyHirschTuple_Check(Iterations)) {
                return PyHirschRegion_FromHRegion(self->Region->Dilation1(*(((PyHirschRegion*)StructElement)->Region),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Ol", &StructElement1,&Iterations1)) {
            if (PyHirschRegion_Check(StructElement1)) {
                return PyHirschRegion_FromHRegion(self->Region->Dilation1(*(((PyHirschRegion*)StructElement1)->Region),Iterations1));
            }
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
    PyObject* Image1;
    char* Mode1;
    PyObject* Image;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Image,&Mode)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Mode)) {
                Halcon::HTuple VertProjection;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GrayProjections(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Mode)->Tuple),&VertProjection)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(VertProjection));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Image1,&Mode1)) {
            if (PyHirschImage_Check(Image1)) {
                Halcon::HTuple VertProjection1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->Region->GrayProjections(*(((PyHirschImage*)Image1)->Image),Mode1,&VertProjection1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(VertProjection1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
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
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschXLDCont_FromHXLDCont(self->Region->GenContourRegionXld(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschXLDCont_FromHXLDCont(self->Region->GenContourRegionXld(Mode1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
    PyObject* Rotation;
    char* GolayElement1;
    PyObject* GolayElement;
    long Rotation1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &GolayElement,&Rotation)) {
            if (PyHirschTuple_Check(GolayElement) && PyHirschTuple_Check(Rotation)) {
                return PyHirschRegion_FromHRegion(self->Region->ThinningGolay(*(((PyHirschTuple*)GolayElement)->Tuple),*(((PyHirschTuple*)Rotation)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &GolayElement1,&Rotation1)) {
            return PyHirschRegion_FromHRegion(self->Region->ThinningGolay(GolayElement1,Rotation1));
        }
        PyErr_Clear();
        
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
        PyErr_Clear();
        
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
