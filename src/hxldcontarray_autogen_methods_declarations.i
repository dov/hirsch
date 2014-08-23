PyObject *
PyHirschXLDContArray_GenCrossContourXld(PyHirschXLDContArray*, PyObject *args)
{
    PyObject* Angle;
    PyObject* Row;
    double Angle1;
    double Col1;
    PyObject* Col;
    PyObject* Size;
    double Row1;
    double Size1;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Row1,&Col1,&Size1,&Angle1)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenCrossContourXld(Row1,Col1,Size1,Angle1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Col,&Size,&Angle)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Size) && PyHirschTuple_Check(Angle)) {
                return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenCrossContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Size)->Tuple),*(((PyHirschTuple*)Angle)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.GenCrossContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_IntersectionClosedContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDContArray_Check(Contours2)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->IntersectionClosedContoursXld(*(((PyHirschXLDContArray*)Contours2)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.IntersectionClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_DistanceCcMin(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Contour21;
    char* Mode1;
    PyObject* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour21,&Mode1)) {
            if (PyHirschXLDContArray_Check(Contour21)) {
                return PyHirschTuple_FromHTuple(self->XLDContArray->DistanceCcMin(*(((PyHirschXLDContArray*)Contour21)->XLDContArray),Mode1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Contour2,&Mode)) {
            if (PyHirschXLDContArray_Check(Contour2) && PyHirschTuple_Check(Mode)) {
                return PyHirschTuple_FromHTuple(self->XLDContArray->DistanceCcMin(*(((PyHirschXLDContArray*)Contour2)->XLDContArray),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.DistanceCcMin()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_UnionAdjacentContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    char* Mode1;
    double MaxDistRel1;
    double MaxDistAbs1;
    PyObject* Mode;
    PyObject* MaxDistAbs;
    PyObject* MaxDistRel;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaxDistAbs1,&MaxDistRel1,&Mode1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionAdjacentContoursXld(MaxDistAbs1,MaxDistRel1,Mode1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &MaxDistAbs,&MaxDistRel,&Mode)) {
            if (PyHirschTuple_Check(MaxDistAbs) && PyHirschTuple_Check(MaxDistRel) && PyHirschTuple_Check(Mode)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionAdjacentContoursXld(*(((PyHirschTuple*)MaxDistAbs)->Tuple),*(((PyHirschTuple*)MaxDistRel)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.UnionAdjacentContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_UnionStraightContoursHistoXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* RefLineEndRow;
    long RefLineStartColumn1;
    long RefLineEndColumn1;
    long Width1;
    long RefLineStartRow1;
    long FilterSize1;
    long MaxWidth1;
    PyObject* RefLineStartRow;
    PyObject* FilterSize;
    PyObject* RefLineEndColumn;
    long RefLineEndRow1;
    PyObject* RefLineStartColumn;
    PyObject* Width;
    PyObject* MaxWidth;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &RefLineStartRow,&RefLineStartColumn,&RefLineEndRow,&RefLineEndColumn,&Width,&MaxWidth,&FilterSize)) {
            if (PyHirschTuple_Check(RefLineStartRow) && PyHirschTuple_Check(RefLineStartColumn) && PyHirschTuple_Check(RefLineEndRow) && PyHirschTuple_Check(RefLineEndColumn) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(MaxWidth) && PyHirschTuple_Check(FilterSize)) {
                Halcon::HXLDContArray SelectedContours;
                Halcon::HTuple HistoValues;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionStraightContoursHistoXld(&SelectedContours,*(((PyHirschTuple*)RefLineStartRow)->Tuple),*(((PyHirschTuple*)RefLineStartColumn)->Tuple),*(((PyHirschTuple*)RefLineEndRow)->Tuple),*(((PyHirschTuple*)RefLineEndColumn)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)MaxWidth)->Tuple),*(((PyHirschTuple*)FilterSize)->Tuple),&HistoValues)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDContArray_FromHXLDContArray(SelectedContours));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(HistoValues));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lllllll", &RefLineStartRow1,&RefLineStartColumn1,&RefLineEndRow1,&RefLineEndColumn1,&Width1,&MaxWidth1,&FilterSize1)) {
            {
            // with output params
                Halcon::HXLDContArray SelectedContours1;
                Halcon::HTuple HistoValues1;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionStraightContoursHistoXld(&SelectedContours1,RefLineStartRow1,RefLineStartColumn1,RefLineEndRow1,RefLineEndColumn1,Width1,MaxWidth1,FilterSize1,&HistoValues1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDContArray_FromHXLDContArray(SelectedContours1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(HistoValues1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.UnionStraightContoursHistoXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_CopyHXLDArray(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* in;
    
    try {
        if (PyArg_ParseTuple(args, "O", &in)) {
            if (PyHirschXLDArray_Check(in)) {
                self->XLDContArray->CopyHXLDArray(*(((PyHirschXLDArray*)in)->XLDArray));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.CopyHXLDArray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_MomentsAnyXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* CenterRow;
    char* Mode1;
    double Area1;
    PyObject* P;
    PyObject* PointOrder;
    long Q1;
    PyObject* Mode;
    PyObject* Q;
    PyObject* CenterCol;
    double CenterCol1;
    PyObject* Area;
    double CenterRow1;
    char* PointOrder1;
    long P1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Mode,&PointOrder,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(PointOrder) && PyHirschTuple_Check(Area) && PyHirschTuple_Check(CenterRow) && PyHirschTuple_Check(CenterCol) && PyHirschTuple_Check(P) && PyHirschTuple_Check(Q)) {
                return PyHirschTuple_FromHTuple(self->XLDContArray->MomentsAnyXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdddll", &Mode1,&PointOrder1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->MomentsAnyXld(Mode1,PointOrder1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.MomentsAnyXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_EccentricityXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Bulkiness;
        Halcon::HTuple StructureFactor;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->EccentricityXld(&Bulkiness,&StructureFactor)));
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
PyHirschXLDContArray_GetRegressParamsXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Nx;
        Halcon::HTuple Ny;
        Halcon::HTuple Dist;
        Halcon::HTuple Fpx;
        Halcon::HTuple Fpy;
        Halcon::HTuple Lpx;
        Halcon::HTuple Lpy;
        Halcon::HTuple Mean;
        Halcon::HTuple Deviation;
        PyObject *ret = PyTuple_New(10);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->GetRegressParamsXld(&Nx,&Ny,&Dist,&Fpx,&Fpy,&Lpx,&Lpy,&Mean,&Deviation)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Nx));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Ny));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Dist));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Fpx));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Fpy));
        PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Lpx));
        PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(Lpy));
        PyTuple_SET_ITEM(ret, 8, PyHirschTuple_FromHTuple(Mean));
        PyTuple_SET_ITEM(ret, 9, PyHirschTuple_FromHTuple(Deviation));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_AreaCenterPointsXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Row;
        Halcon::HTuple Column;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->AreaCenterPointsXld(&Row,&Column)));
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
PyHirschXLDContArray_SmallestRectangle2Xld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Phi;
        Halcon::HTuple Length1;
        Halcon::HTuple Length2;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->SmallestRectangle2Xld(&Column,&Phi,&Length1,&Length2)));
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
PyHirschXLDContArray_GenRectangle2ContourXld(PyHirschXLDContArray*, PyObject *args)
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
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenRectangle2ContourXld(Row1,Column1,Phi1,Length11,Length21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenRectangle2ContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.GenRectangle2ContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_CropContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Row1;
    PyObject* Col2;
    double Col21;
    char* CloseContours1;
    double Row11;
    PyObject* Col1;
    PyObject* CloseContours;
    double Col11;
    PyObject* Row2;
    double Row21;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Row11,&Col11,&Row21,&Col21,&CloseContours1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->CropContoursXld(Row11,Col11,Row21,Col21,CloseContours1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row1,&Col1,&Row2,&Col2,&CloseContours)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Col1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Col2) && PyHirschTuple_Check(CloseContours)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->CropContoursXld(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Col1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Col2)->Tuple),*(((PyHirschTuple*)CloseContours)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.CropContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_DifferenceClosedContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Sub;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Sub)) {
            if (PyHirschXLDContArray_Check(Sub)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->DifferenceClosedContoursXld(*(((PyHirschXLDContArray*)Sub)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.DifferenceClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_CompactnessXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->CompactnessXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_MomentsPointsXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple M20;
        Halcon::HTuple M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->MomentsPointsXld(&M20,&M02)));
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
PyHirschXLDContArray_EccentricityPointsXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->EccentricityPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_OrientationPointsXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->OrientationPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SegmentContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    char* Mode1;
    PyObject* MaxLineDist1;
    double MaxLineDist21;
    PyObject* MaxLineDist2;
    long SmoothCont1;
    PyObject* SmoothCont;
    PyObject* Mode;
    double MaxLineDist11;
    
    try {
        if (PyArg_ParseTuple(args, "sldd", &Mode1,&SmoothCont1,&MaxLineDist11,&MaxLineDist21)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SegmentContoursXld(Mode1,SmoothCont1,MaxLineDist11,MaxLineDist21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Mode,&SmoothCont,&MaxLineDist1,&MaxLineDist2)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(SmoothCont) && PyHirschTuple_Check(MaxLineDist1) && PyHirschTuple_Check(MaxLineDist2)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SegmentContoursXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)SmoothCont)->Tuple),*(((PyHirschTuple*)MaxLineDist1)->Tuple),*(((PyHirschTuple*)MaxLineDist2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.SegmentContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_UnionCocircularContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* MaxTangentAngle;
    double MaxRadiusDiff1;
    PyObject* MaxDist;
    double MaxDist1;
    double MaxCenterDist1;
    double MaxTangentAngle1;
    double MaxArcOverlap1;
    PyObject* MergeSmallContours;
    double MaxArcAngleDiff1;
    PyObject* MaxArcOverlap;
    PyObject* MaxArcAngleDiff;
    long Iterations1;
    char* MergeSmallContours1;
    PyObject* MaxCenterDist;
    PyObject* MaxRadiusDiff;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddsl", &MaxArcAngleDiff1,&MaxArcOverlap1,&MaxTangentAngle1,&MaxDist1,&MaxRadiusDiff1,&MaxCenterDist1,&MergeSmallContours1,&Iterations1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCocircularContoursXld(MaxArcAngleDiff1,MaxArcOverlap1,MaxTangentAngle1,MaxDist1,MaxRadiusDiff1,MaxCenterDist1,MergeSmallContours1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &MaxArcAngleDiff,&MaxArcOverlap,&MaxTangentAngle,&MaxDist,&MaxRadiusDiff,&MaxCenterDist,&MergeSmallContours,&Iterations)) {
            if (PyHirschTuple_Check(MaxArcAngleDiff) && PyHirschTuple_Check(MaxArcOverlap) && PyHirschTuple_Check(MaxTangentAngle) && PyHirschTuple_Check(MaxDist) && PyHirschTuple_Check(MaxRadiusDiff) && PyHirschTuple_Check(MaxCenterDist) && PyHirschTuple_Check(MergeSmallContours) && PyHirschTuple_Check(Iterations)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCocircularContoursXld(*(((PyHirschTuple*)MaxArcAngleDiff)->Tuple),*(((PyHirschTuple*)MaxArcOverlap)->Tuple),*(((PyHirschTuple*)MaxTangentAngle)->Tuple),*(((PyHirschTuple*)MaxDist)->Tuple),*(((PyHirschTuple*)MaxRadiusDiff)->Tuple),*(((PyHirschTuple*)MaxCenterDist)->Tuple),*(((PyHirschTuple*)MergeSmallContours)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.UnionCocircularContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_GenEllipseContourXld(PyHirschXLDContArray*, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double Phi1;
    PyObject* Radius2;
    PyObject* PointOrder;
    double Radius11;
    PyObject* Radius1;
    PyObject* Resolution;
    char* PointOrder1;
    PyObject* EndPhi;
    PyObject* StartPhi;
    PyObject* Phi;
    double EndPhi1;
    double Radius21;
    double Column1;
    double Resolution1;
    double Row1;
    double StartPhi1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOO", &Row,&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2) && PyHirschTuple_Check(StartPhi) && PyHirschTuple_Check(EndPhi) && PyHirschTuple_Check(PointOrder) && PyHirschTuple_Check(Resolution)) {
                return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenEllipseContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple),*(((PyHirschTuple*)StartPhi)->Tuple),*(((PyHirschTuple*)EndPhi)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Resolution)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddddsd", &Row1,&Column1,&Phi1,&Radius11,&Radius21,&StartPhi1,&EndPhi1,&PointOrder1,&Resolution1)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenEllipseContourXld(Row1,Column1,Phi1,Radius11,Radius21,StartPhi1,EndPhi1,PointOrder1,Resolution1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.GenEllipseContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_GenCircleContourXld(PyHirschXLDContArray*, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double Radius1;
    PyObject* PointOrder;
    PyObject* Radius;
    PyObject* Resolution;
    char* PointOrder1;
    PyObject* EndPhi;
    PyObject* StartPhi;
    double Resolution1;
    double EndPhi1;
    double Column1;
    double Row1;
    double StartPhi1;
    
    try {
        if (PyArg_ParseTuple(args, "dddddsd", &Row1,&Column1,&Radius1,&StartPhi1,&EndPhi1,&PointOrder1,&Resolution1)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenCircleContourXld(Row1,Column1,Radius1,StartPhi1,EndPhi1,PointOrder1,Resolution1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Row,&Column,&Radius,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(StartPhi) && PyHirschTuple_Check(EndPhi) && PyHirschTuple_Check(PointOrder) && PyHirschTuple_Check(Resolution)) {
                return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenCircleContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)StartPhi)->Tuple),*(((PyHirschTuple*)EndPhi)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Resolution)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.GenCircleContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ClassDBID(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->XLDContArray->ClassDBID()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_FitCircleContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* ClippingEndPoints;
    PyObject* Algorithm;
    double ClippingFactor1;
    PyObject* MaxClosureDist;
    long Iterations1;
    long ClippingEndPoints1;
    PyObject* MaxNumPoints;
    char* Algorithm1;
    PyObject* ClippingFactor;
    long MaxNumPoints1;
    double MaxClosureDist1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            if (PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(MaxNumPoints) && PyHirschTuple_Check(MaxClosureDist) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(ClippingFactor)) {
                Halcon::HTuple Column;
                Halcon::HTuple Radius;
                Halcon::HTuple StartPhi;
                Halcon::HTuple EndPhi;
                Halcon::HTuple PointOrder;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitCircleContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)MaxClosureDist)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Column,&Radius,&StartPhi,&EndPhi,&PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Radius));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(StartPhi));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(EndPhi));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                Halcon::HTuple Radius1;
                Halcon::HTuple StartPhi1;
                Halcon::HTuple EndPhi1;
                Halcon::HTuple PointOrder1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitCircleContourXld(Algorithm1,MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,Iterations1,ClippingFactor1,&Column1,&Radius1,&StartPhi1,&EndPhi1,&PointOrder1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Radius1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(StartPhi1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(EndPhi1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(PointOrder1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.FitCircleContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_CopyHXLDContArray(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* in;
    
    try {
        if (PyArg_ParseTuple(args, "O", &in)) {
            if (PyHirschXLDContArray_Check(in)) {
                self->XLDContArray->CopyHXLDContArray(*(((PyHirschXLDContArray*)in)->XLDContArray));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.CopyHXLDContArray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_UnionCollinearContoursExtXld(PyHirschXLDContArray*self, PyObject *args)
{
    double MaxRegrError1;
    char* Mode1;
    double MaxDistAbs1;
    PyObject* WeightAngle;
    PyObject* MaxRegrError;
    PyObject* MaxShift;
    PyObject* WeightLink;
    double MaxAngle1;
    PyObject* Mode;
    double WeightAngle1;
    PyObject* MaxDistAbs;
    double WeightDist1;
    PyObject* MaxAngle;
    double MaxCosts1;
    double MaxDistRel1;
    double WeightLink1;
    double WeightShift1;
    PyObject* MaxOverlap;
    PyObject* WeightShift;
    PyObject* WeightDist;
    PyObject* WeightRegr;
    double MaxShift1;
    PyObject* MaxCosts;
    double MaxOverlap1;
    double WeightRegr1;
    PyObject* MaxDistRel;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOOOOO", &MaxDistAbs,&MaxDistRel,&MaxShift,&MaxAngle,&MaxOverlap,&MaxRegrError,&MaxCosts,&WeightDist,&WeightShift,&WeightAngle,&WeightLink,&WeightRegr,&Mode)) {
            if (PyHirschTuple_Check(MaxDistAbs) && PyHirschTuple_Check(MaxDistRel) && PyHirschTuple_Check(MaxShift) && PyHirschTuple_Check(MaxAngle) && PyHirschTuple_Check(MaxOverlap) && PyHirschTuple_Check(MaxRegrError) && PyHirschTuple_Check(MaxCosts) && PyHirschTuple_Check(WeightDist) && PyHirschTuple_Check(WeightShift) && PyHirschTuple_Check(WeightAngle) && PyHirschTuple_Check(WeightLink) && PyHirschTuple_Check(WeightRegr) && PyHirschTuple_Check(Mode)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCollinearContoursExtXld(*(((PyHirschTuple*)MaxDistAbs)->Tuple),*(((PyHirschTuple*)MaxDistRel)->Tuple),*(((PyHirschTuple*)MaxShift)->Tuple),*(((PyHirschTuple*)MaxAngle)->Tuple),*(((PyHirschTuple*)MaxOverlap)->Tuple),*(((PyHirschTuple*)MaxRegrError)->Tuple),*(((PyHirschTuple*)MaxCosts)->Tuple),*(((PyHirschTuple*)WeightDist)->Tuple),*(((PyHirschTuple*)WeightShift)->Tuple),*(((PyHirschTuple*)WeightAngle)->Tuple),*(((PyHirschTuple*)WeightLink)->Tuple),*(((PyHirschTuple*)WeightRegr)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddddddddds", &MaxDistAbs1,&MaxDistRel1,&MaxShift1,&MaxAngle1,&MaxOverlap1,&MaxRegrError1,&MaxCosts1,&WeightDist1,&WeightShift1,&WeightAngle1,&WeightLink1,&WeightRegr1,&Mode1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCollinearContoursExtXld(MaxDistAbs1,MaxDistRel1,MaxShift1,MaxAngle1,MaxOverlap1,MaxRegrError1,MaxCosts1,WeightDist1,WeightShift1,WeightAngle1,WeightLink1,WeightRegr1,Mode1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.UnionCollinearContoursExtXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SmallestCircleXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->SmallestCircleXld(&Column,&Radius)));
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
PyHirschXLDContArray_EllipticAxisPointsXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Rb;
        Halcon::HTuple Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->EllipticAxisPointsXld(&Rb,&Phi)));
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
PyHirschXLDContArray_SelectXldPoint(PyHirschXLDContArray*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->SelectXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->SelectXldPoint(Row1,Column1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.SelectXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_RegressContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Iterations;
    char* Mode1;
    PyObject* Mode;
    long Iterations1;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &Mode1,&Iterations1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->RegressContoursXld(Mode1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Mode,&Iterations)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Iterations)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->RegressContoursXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.RegressContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_Union2ClosedContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDContArray_Check(Contours2)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->Union2ClosedContoursXld(*(((PyHirschXLDContArray*)Contours2)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.Union2ClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_PaintXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Grayval;
    PyObject* Image;
    double Grayval1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Grayval1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->XLDContArray->PaintXld(*(((PyHirschImage*)Image1)->Image),Grayval1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Grayval)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->XLDContArray->PaintXld(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.PaintXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ReadContourXldDxf(PyHirschXLDContArray*, PyObject *args)
{
    char* GenParamNames1;
    PyObject* GenParamValues;
    PyObject* GenParamNames;
    double GenParamValues1;
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "ssd", &FileName1,&GenParamNames1,&GenParamValues1)) {
            {
            // with output params
                Halcon::HTuple DxfStatus1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::ReadContourXldDxf(FileName1,GenParamNames1,GenParamValues1,&DxfStatus1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DxfStatus1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &FileName,&GenParamNames,&GenParamValues)) {
            if (PyHirschTuple_Check(FileName) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                Halcon::HTuple DxfStatus;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::ReadContourXldDxf(*(((PyHirschTuple*)FileName)->Tuple),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple),&DxfStatus)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DxfStatus));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ReadContourXldDxf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_UnionCollinearContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    char* Mode1;
    double MaxDistRel1;
    double MaxShift1;
    double MaxDistAbs1;
    double MaxAngle1;
    PyObject* MaxShift;
    PyObject* Mode;
    PyObject* MaxDistAbs;
    PyObject* MaxDistRel;
    PyObject* MaxAngle;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &MaxDistAbs1,&MaxDistRel1,&MaxShift1,&MaxAngle1,&Mode1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCollinearContoursXld(MaxDistAbs1,MaxDistRel1,MaxShift1,MaxAngle1,Mode1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &MaxDistAbs,&MaxDistRel,&MaxShift,&MaxAngle,&Mode)) {
            if (PyHirschTuple_Check(MaxDistAbs) && PyHirschTuple_Check(MaxDistRel) && PyHirschTuple_Check(MaxShift) && PyHirschTuple_Check(MaxAngle) && PyHirschTuple_Check(Mode)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCollinearContoursXld(*(((PyHirschTuple*)MaxDistAbs)->Tuple),*(((PyHirschTuple*)MaxDistRel)->Tuple),*(((PyHirschTuple*)MaxShift)->Tuple),*(((PyHirschTuple*)MaxAngle)->Tuple),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.UnionCollinearContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SymmDifferenceClosedContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDContArray_Check(Contours2)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SymmDifferenceClosedContoursXld(*(((PyHirschXLDContArray*)Contours2)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.SymmDifferenceClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SelectShapeXld(PyHirschXLDContArray*self, PyObject *args)
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
                return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->SelectShapeXld(*(((PyHirschTuple*)Features)->Tuple),*(((PyHirschTuple*)Operation)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features1,&Operation1,&Min1,&Max1)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->SelectShapeXld(Features1,Operation1,Min1,Max1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.SelectShapeXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SortContoursXld(PyHirschXLDContArray*self, PyObject *args)
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
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SortContoursXld(*(((PyHirschTuple*)SortMode)->Tuple),*(((PyHirschTuple*)Order)->Tuple),*(((PyHirschTuple*)RowOrCol)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &SortMode1,&Order1,&RowOrCol1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SortContoursXld(SortMode1,Order1,RowOrCol1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.SortContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_MergeContLineScanXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* MaxImagesCont;
    double Margin1;
    PyObject* MergeBorder;
    char* MergeBorder1;
    PyObject* ImageHeight;
    PyObject* PrevConts1;
    PyObject* Margin;
    PyObject* PrevConts;
    long ImageHeight1;
    long MaxImagesCont1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &PrevConts,&ImageHeight,&Margin,&MergeBorder,&MaxImagesCont)) {
            if (PyHirschXLDContArray_Check(PrevConts) && PyHirschTuple_Check(ImageHeight) && PyHirschTuple_Check(Margin) && PyHirschTuple_Check(MergeBorder) && PyHirschTuple_Check(MaxImagesCont)) {
                Halcon::HXLDContArray PrevMergedConts;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->MergeContLineScanXld(*(((PyHirschXLDContArray*)PrevConts)->XLDContArray),&PrevMergedConts,*(((PyHirschTuple*)ImageHeight)->Tuple),*(((PyHirschTuple*)Margin)->Tuple),*(((PyHirschTuple*)MergeBorder)->Tuple),*(((PyHirschTuple*)MaxImagesCont)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDContArray_FromHXLDContArray(PrevMergedConts));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts1,&ImageHeight1,&Margin1,&MergeBorder1,&MaxImagesCont1)) {
            if (PyHirschXLDContArray_Check(PrevConts1)) {
                Halcon::HXLDContArray PrevMergedConts1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->MergeContLineScanXld(*(((PyHirschXLDContArray*)PrevConts1)->XLDContArray),&PrevMergedConts1,ImageHeight1,Margin1,MergeBorder1,MaxImagesCont1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDContArray_FromHXLDContArray(PrevMergedConts1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.MergeContLineScanXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_FitLineContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* ClippingEndPoints;
    PyObject* Algorithm;
    double ClippingFactor1;
    PyObject* MaxNumPoints;
    long Iterations1;
    long ClippingEndPoints1;
    char* Algorithm1;
    PyObject* ClippingFactor;
    long MaxNumPoints1;
    
    try {
        if (PyArg_ParseTuple(args, "sllld", &Algorithm1,&MaxNumPoints1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                Halcon::HTuple ColBegin1;
                Halcon::HTuple RowEnd1;
                Halcon::HTuple ColEnd1;
                Halcon::HTuple Nr1;
                Halcon::HTuple Nc1;
                Halcon::HTuple Dist1;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitLineContourXld(Algorithm1,MaxNumPoints1,ClippingEndPoints1,Iterations1,ClippingFactor1,&ColBegin1,&RowEnd1,&ColEnd1,&Nr1,&Nc1,&Dist1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColBegin1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(RowEnd1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ColEnd1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Nr1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Nc1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Dist1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Algorithm,&MaxNumPoints,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            if (PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(MaxNumPoints) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(ClippingFactor)) {
                Halcon::HTuple ColBegin;
                Halcon::HTuple RowEnd;
                Halcon::HTuple ColEnd;
                Halcon::HTuple Nr;
                Halcon::HTuple Nc;
                Halcon::HTuple Dist;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitLineContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&ColBegin,&RowEnd,&ColEnd,&Nr,&Nc,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColBegin));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(RowEnd));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ColEnd));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Nr));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Nc));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Dist));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.FitLineContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_DiameterXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column1;
        Halcon::HTuple Row2;
        Halcon::HTuple Column2;
        Halcon::HTuple Diameter;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->DiameterXld(&Column1,&Row2,&Column2,&Diameter)));
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

PyObject *
PyHirschXLDContArray_ClipContoursXld(PyHirschXLDContArray*self, PyObject *args)
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
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ClipContoursXld(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "llll", &Row11,&Column11,&Row21,&Column21)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ClipContoursXld(Row11,Column11,Row21,Column21));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ClipContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ReadContourXldArcInfo(PyHirschXLDContArray*, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::ReadContourXldArcInfo(FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::ReadContourXldArcInfo(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ReadContourXldArcInfo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_AddNoiseWhiteContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Amp;
    PyObject* NumRegrPoints;
    double Amp1;
    long NumRegrPoints1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &NumRegrPoints,&Amp)) {
            if (PyHirschTuple_Check(NumRegrPoints) && PyHirschTuple_Check(Amp)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->AddNoiseWhiteContourXld(*(((PyHirschTuple*)NumRegrPoints)->Tuple),*(((PyHirschTuple*)Amp)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ld", &NumRegrPoints1,&Amp1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->AddNoiseWhiteContourXld(NumRegrPoints1,Amp1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.AddNoiseWhiteContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_LengthXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->LengthXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_MomentsAnyPointsXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* CenterRow;
    char* Mode1;
    double Area1;
    PyObject* P;
    long Q1;
    PyObject* Mode;
    PyObject* Q;
    PyObject* CenterCol;
    double CenterCol1;
    PyObject* Area;
    double CenterRow1;
    long P1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Mode,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Area) && PyHirschTuple_Check(CenterRow) && PyHirschTuple_Check(CenterCol) && PyHirschTuple_Check(P) && PyHirschTuple_Check(Q)) {
                return PyHirschTuple_FromHTuple(self->XLDContArray->MomentsAnyPointsXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddll", &Mode1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->MomentsAnyPointsXld(Mode1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.MomentsAnyPointsXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_DistEllipseContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    PyObject* ClippingEndPoints;
    double Phi1;
    PyObject* Radius2;
    double Radius11;
    PyObject* Radius1;
    PyObject* MaxNumPoints;
    char* Mode1;
    PyObject* Phi;
    PyObject* Mode;
    double Radius21;
    double Column1;
    long ClippingEndPoints1;
    double Row1;
    long MaxNumPoints1;
    
    try {
        if (PyArg_ParseTuple(args, "sllddddd", &Mode1,&MaxNumPoints1,&ClippingEndPoints1,&Row1,&Column1,&Phi1,&Radius11,&Radius21)) {
            {
            // with output params
                Halcon::HTuple MaxDist1;
                Halcon::HTuple AvgDist1;
                Halcon::HTuple SigmaDist1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->DistEllipseContourXld(Mode1,MaxNumPoints1,ClippingEndPoints1,Row1,Column1,Phi1,Radius11,Radius21,&MaxDist1,&AvgDist1,&SigmaDist1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(MaxDist1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(AvgDist1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(SigmaDist1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Mode,&MaxNumPoints,&ClippingEndPoints,&Row,&Column,&Phi,&Radius1,&Radius2)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(MaxNumPoints) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2)) {
                Halcon::HTuple MaxDist;
                Halcon::HTuple AvgDist;
                Halcon::HTuple SigmaDist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->DistEllipseContourXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple),&MaxDist,&AvgDist,&SigmaDist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(MaxDist));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(AvgDist));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(SigmaDist));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.DistEllipseContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_RadialDistortionSelfCalibration(PyHirschXLDContArray*self, PyObject *args)
{
    char* DistortionModel1;
    long Width1;
    PyObject* DistortionModel;
    PyObject* InlierThreshold;
    PyObject* DistortionCenter;
    long Height1;
    double InlierThreshold1;
    char* DistortionCenter1;
    PyObject* PrincipalPointVar;
    double PrincipalPointVar1;
    PyObject* Height;
    long RandSeed1;
    PyObject* RandSeed;
    PyObject* Width;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Width,&Height,&InlierThreshold,&RandSeed,&DistortionModel,&DistortionCenter,&PrincipalPointVar)) {
            if (PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(InlierThreshold) && PyHirschTuple_Check(RandSeed) && PyHirschTuple_Check(DistortionModel) && PyHirschTuple_Check(DistortionCenter) && PyHirschTuple_Check(PrincipalPointVar)) {
                Halcon::HTuple CamParam;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->RadialDistortionSelfCalibration(*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)InlierThreshold)->Tuple),*(((PyHirschTuple*)RandSeed)->Tuple),*(((PyHirschTuple*)DistortionModel)->Tuple),*(((PyHirschTuple*)DistortionCenter)->Tuple),*(((PyHirschTuple*)PrincipalPointVar)->Tuple),&CamParam)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CamParam));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lldlssd", &Width1,&Height1,&InlierThreshold1,&RandSeed1,&DistortionModel1,&DistortionCenter1,&PrincipalPointVar1)) {
            {
            // with output params
                Halcon::HTuple CamParam1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->RadialDistortionSelfCalibration(Width1,Height1,InlierThreshold1,RandSeed1,DistortionModel1,DistortionCenter1,PrincipalPointVar1,&CamParam1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CamParam1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.RadialDistortionSelfCalibration()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ClipEndPointsContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    char* Mode1;
    PyObject* Length;
    PyObject* Mode;
    double Length1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mode,&Length)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Length)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ClipEndPointsContoursXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Length)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Mode1,&Length1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ClipEndPointsContoursXld(Mode1,Length1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ClipEndPointsContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_TestSelfIntersectionXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* CloseXLD;
    char* CloseXLD1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD1)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->TestSelfIntersectionXld(CloseXLD1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &CloseXLD)) {
            if (PyHirschTuple_Check(CloseXLD)) {
                return PyHirschTuple_FromHTuple(self->XLDContArray->TestSelfIntersectionXld(*(((PyHirschTuple*)CloseXLD)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.TestSelfIntersectionXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_Elem(PyHirschXLDContArray*self, PyObject *args)
{
    long index;
    
    try {
        if (PyArg_ParseTuple(args, "l", &index)) {
            return PyHirschXLD_FromHXLD(self->XLDContArray->Elem(index));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.Elem()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_LocalMaxContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Image1;
    long Distance1;
    long MinPercent1;
    PyObject* MinPercent;
    long MinDiff1;
    PyObject* MinDiff;
    PyObject* Distance;
    PyObject* Image;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Image,&MinPercent,&MinDiff,&Distance)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(MinPercent) && PyHirschTuple_Check(MinDiff) && PyHirschTuple_Check(Distance)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->LocalMaxContoursXld(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)MinPercent)->Tuple),*(((PyHirschTuple*)MinDiff)->Tuple),*(((PyHirschTuple*)Distance)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &Image1,&MinPercent1,&MinDiff1,&Distance1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->LocalMaxContoursXld(*(((PyHirschImage*)Image1)->Image),MinPercent1,MinDiff1,Distance1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.LocalMaxContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ProjectiveTransContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "O", &HomMat2D)) {
            if (PyHirschTuple_Check(HomMat2D)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ProjectiveTransContourXld(*(((PyHirschTuple*)HomMat2D)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ProjectiveTransContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_AffineTransContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "O", &HomMat2D)) {
            if (PyHirschTuple_Check(HomMat2D)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->AffineTransContourXld(*(((PyHirschTuple*)HomMat2D)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.AffineTransContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_CloseContoursXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->CloseContoursXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_UnionStraightContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* Percent;
    PyObject* MaxDiff;
    PyObject* MaxDist;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &MaxDist,&MaxDiff,&Percent,&Mode,&Iterations)) {
            if (PyHirschTuple_Check(MaxDist) && PyHirschTuple_Check(MaxDiff) && PyHirschTuple_Check(Percent) && PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Iterations)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionStraightContoursXld(*(((PyHirschTuple*)MaxDist)->Tuple),*(((PyHirschTuple*)MaxDiff)->Tuple),*(((PyHirschTuple*)Percent)->Tuple),*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.UnionStraightContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_MomentsXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple M20;
        Halcon::HTuple M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->MomentsXld(&M20,&M02)));
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
PyHirschXLDContArray_GenParallelContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Distance;
    char* Mode1;
    PyObject* Mode;
    double Distance1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mode,&Distance)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Distance)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->GenParallelContourXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Distance)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Mode1,&Distance1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->GenParallelContourXld(Mode1,Distance1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.GenParallelContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_TestXldPoint(PyHirschXLDContArray*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschTuple_FromHTuple(self->XLDContArray->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->TestXldPoint(Row1,Column1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.TestXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ContourToWorldPlaneXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Scale;
    PyObject* WorldPose;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParam,&WorldPose,&Scale)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(WorldPose) && PyHirschTuple_Check(Scale)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ContourToWorldPlaneXld(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)WorldPose)->Tuple),*(((PyHirschTuple*)Scale)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ContourToWorldPlaneXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_PolarTransContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double AngleStart1;
    PyObject* AngleEnd;
    long Width1;
    long Height1;
    double RadiusEnd1;
    PyObject* RadiusEnd;
    PyObject* Height;
    double AngleEnd1;
    PyObject* AngleStart;
    double Column1;
    PyObject* RadiusStart;
    double Row1;
    PyObject* Width;
    double RadiusStart1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddll", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&Width1,&Height1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->PolarTransContourXld(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->PolarTransContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.PolarTransContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_DistanceCc(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Contour21;
    char* Mode1;
    PyObject* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour21,&Mode1)) {
            if (PyHirschXLDContArray_Check(Contour21)) {
                Halcon::HTuple DistanceMax1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->DistanceCc(*(((PyHirschXLDContArray*)Contour21)->XLDContArray),Mode1,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Contour2,&Mode)) {
            if (PyHirschXLDContArray_Check(Contour2) && PyHirschTuple_Check(Mode)) {
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->DistanceCc(*(((PyHirschXLDContArray*)Contour2)->XLDContArray),*(((PyHirschTuple*)Mode)->Tuple),&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.DistanceCc()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_FitEllipseContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Iterations;
    long VossTabSize1;
    PyObject* ClippingEndPoints;
    PyObject* Algorithm;
    double ClippingFactor1;
    long ClippingEndPoints1;
    PyObject* MaxClosureDist;
    long Iterations1;
    PyObject* VossTabSize;
    PyObject* MaxNumPoints;
    char* Algorithm1;
    PyObject* ClippingFactor;
    long MaxNumPoints1;
    double MaxClosureDist1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&VossTabSize,&Iterations,&ClippingFactor)) {
            if (PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(MaxNumPoints) && PyHirschTuple_Check(MaxClosureDist) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(VossTabSize) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(ClippingFactor)) {
                Halcon::HTuple Column;
                Halcon::HTuple Phi;
                Halcon::HTuple Radius1;
                Halcon::HTuple Radius2;
                Halcon::HTuple StartPhi;
                Halcon::HTuple EndPhi;
                Halcon::HTuple PointOrder;
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitEllipseContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)MaxClosureDist)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)VossTabSize)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,&PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Radius1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Radius2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(StartPhi));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(EndPhi));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldllld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&VossTabSize1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                Halcon::HTuple Phi1;
                Halcon::HTuple Radius11;
                Halcon::HTuple Radius21;
                Halcon::HTuple StartPhi1;
                Halcon::HTuple EndPhi1;
                Halcon::HTuple PointOrder1;
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitEllipseContourXld(Algorithm1,MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,VossTabSize1,Iterations1,ClippingFactor1,&Column1,&Phi1,&Radius11,&Radius21,&StartPhi1,&EndPhi1,&PointOrder1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Radius11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Radius21));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(StartPhi1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(EndPhi1));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(PointOrder1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.FitEllipseContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_InstClassName(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLDContArray->InstClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_CircularityXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->CircularityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_OrientationXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->OrientationXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ShapeTransXld(PyHirschXLDContArray*self, PyObject *args)
{
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->ShapeTransXld(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->ShapeTransXld(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ShapeTransXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_HClassName(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLDContArray->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SmoothContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* NumRegrPoints;
    long NumRegrPoints1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &NumRegrPoints)) {
            if (PyHirschTuple_Check(NumRegrPoints)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SmoothContoursXld(*(((PyHirschTuple*)NumRegrPoints)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &NumRegrPoints1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SmoothContoursXld(NumRegrPoints1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.SmoothContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_GetCirclePose(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Radius;
    PyObject* OutputType;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParam,&Radius,&OutputType)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(OutputType)) {
                Halcon::HTuple Pose2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->GetCirclePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)OutputType)->Tuple),&Pose2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Pose2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.GetCirclePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SelectContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    double Max21;
    PyObject* Feature;
    double Min21;
    PyObject* Min2;
    PyObject* Max1;
    double Min11;
    double Max11;
    PyObject* Min1;
    PyObject* Max2;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &Feature,&Min1,&Max1,&Min2,&Max2)) {
            if (PyHirschTuple_Check(Feature) && PyHirschTuple_Check(Min1) && PyHirschTuple_Check(Max1) && PyHirschTuple_Check(Min2) && PyHirschTuple_Check(Max2)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SelectContoursXld(*(((PyHirschTuple*)Feature)->Tuple),*(((PyHirschTuple*)Min1)->Tuple),*(((PyHirschTuple*)Max1)->Tuple),*(((PyHirschTuple*)Min2)->Tuple),*(((PyHirschTuple*)Max2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddd", &Feature1,&Min11,&Max11,&Min21,&Max21)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SelectContoursXld(Feature1,Min11,Max11,Min21,Max21));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.SelectContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_AreaCenterXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Row;
        Halcon::HTuple Column;
        Halcon::HTuple PointOrder;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->AreaCenterXld(&Row,&Column,&PointOrder)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Row));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Column));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(PointOrder));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_WriteContourXldDxf(PyHirschXLDContArray*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->XLDContArray->WriteContourXldDxf(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->XLDContArray->WriteContourXldDxf(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.WriteContourXldDxf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ChangeRadialDistortionContoursXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* CamParamOut;
    PyObject* CamParamIn;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &CamParamIn,&CamParamOut)) {
            if (PyHirschTuple_Check(CamParamIn) && PyHirschTuple_Check(CamParamOut)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ChangeRadialDistortionContoursXld(*(((PyHirschTuple*)CamParamIn)->Tuple),*(((PyHirschTuple*)CamParamOut)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.ChangeRadialDistortionContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_DispXld(PyHirschXLDContArray*self, PyObject *args)
{
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                self->XLDContArray->DispXld(*(((PyHirschTuple*)WindowHandle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            self->XLDContArray->DispXld(WindowHandle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.DispXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_EllipticAxisXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Rb;
        Halcon::HTuple Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->EllipticAxisXld(&Rb,&Phi)));
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
PyHirschXLDContArray_FitRectangle2ContourXld(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Iterations;
    PyObject* ClippingEndPoints;
    PyObject* Algorithm;
    double ClippingFactor1;
    PyObject* MaxClosureDist;
    long Iterations1;
    long ClippingEndPoints1;
    PyObject* MaxNumPoints;
    char* Algorithm1;
    PyObject* ClippingFactor;
    long MaxNumPoints1;
    double MaxClosureDist1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            if (PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(MaxNumPoints) && PyHirschTuple_Check(MaxClosureDist) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(ClippingFactor)) {
                Halcon::HTuple Column;
                Halcon::HTuple Phi;
                Halcon::HTuple Length1;
                Halcon::HTuple Length2;
                Halcon::HTuple PointOrder;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitRectangle2ContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)MaxClosureDist)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Column,&Phi,&Length1,&Length2,&PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Length1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Length2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                Halcon::HTuple Column1;
                Halcon::HTuple Phi1;
                Halcon::HTuple Length11;
                Halcon::HTuple Length21;
                Halcon::HTuple PointOrder1;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitRectangle2ContourXld(Algorithm1,MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,Iterations1,ClippingFactor1,&Column1,&Phi1,&Length11,&Length21,&PointOrder1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Length11));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Length21));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(PointOrder1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.FitRectangle2ContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_GetRectanglePose(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* Height;
    PyObject* WeightingMode;
    PyObject* Width;
    PyObject* CamParam;
    PyObject* ClippingFactor;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &CamParam,&Width,&Height,&WeightingMode,&ClippingFactor)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height) && PyHirschTuple_Check(WeightingMode) && PyHirschTuple_Check(ClippingFactor)) {
                Halcon::HTuple CovPose;
                Halcon::HTuple Error;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->GetRectanglePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)WeightingMode)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&CovPose,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovPose));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.GetRectanglePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ConvexityXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->ConvexityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_ContourPointNumXld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDContArray->ContourPointNumXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_DeleteArray(PyHirschXLDContArray*self, PyObject *)
{
    try {
        self->XLDContArray->DeleteArray();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_SmallestRectangle1Xld(PyHirschXLDContArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column1;
        Halcon::HTuple Row2;
        Halcon::HTuple Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->SmallestRectangle1Xld(&Column1,&Row2,&Column2)));
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
PyHirschXLDContArray_Append(PyHirschXLDContArray*self, PyObject *args)
{
    PyObject* cont;
    PyObject* xlds;
    PyObject* conts;
    PyObject* xld1;
    PyObject* xlds1;
    PyObject* xld;
    
    try {
        if (PyArg_ParseTuple(args, "O", &xld1)) {
            if (PyHirschXLD_Check(xld1)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->Append(*(((PyHirschXLD*)xld1)->XLD)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &xlds1)) {
            if (PyHirschXLDArray_Check(xlds1)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->Append(*(((PyHirschXLDArray*)xlds1)->XLDArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &xld)) {
            if (PyHirschXLD_Check(xld)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->Append(*(((PyHirschXLD*)xld)->XLD)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &xlds)) {
            if (PyHirschXLDArray_Check(xlds)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->Append(*(((PyHirschXLDArray*)xlds)->XLDArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &conts)) {
            if (PyHirschXLDContArray_Check(conts)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->Append(*(((PyHirschXLDContArray*)conts)->XLDContArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &cont)) {
            if (PyHirschXLDCont_Check(cont)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->Append(*(((PyHirschXLDCont*)cont)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.Append()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDContArray_WriteContourXldArcInfo(PyHirschXLDContArray*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->XLDContArray->WriteContourXldArcInfo(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->XLDContArray->WriteContourXldArcInfo(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.WriteContourXldArcInfo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
