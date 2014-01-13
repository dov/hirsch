PyObject *
PyHirschXLDContArray_GenCrossContourXld(PyHirschXLDContArray*, PyObject *args)
{
    double Angle;
    double Size;
    double Row;
    double Col;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Row,&Col,&Size,&Angle)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenCrossContourXld(Row,Col,Size,Angle));
        }
        
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
    char* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDContArray_Check(Contour2)) {
                return PyHirschTuple_FromHTuple(self->XLDContArray->DistanceCcMin(*(((PyHirschXLDContArray*)Contour2)->XLDContArray),Mode));
            }
        }
        
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
    double MaxDistAbs;
    char* Mode;
    double MaxDistRel;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaxDistAbs,&MaxDistRel,&Mode)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionAdjacentContoursXld(MaxDistAbs,MaxDistRel,Mode));
        }
        
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
    long Width;
    long RefLineEndRow;
    long MaxWidth;
    long RefLineStartColumn;
    long FilterSize;
    long RefLineEndColumn;
    long RefLineStartRow;
    
    try {
        if (PyArg_ParseTuple(args, "lllllll", &RefLineStartRow,&RefLineStartColumn,&RefLineEndRow,&RefLineEndColumn,&Width,&MaxWidth,&FilterSize)) {
            {
            // with output params
                Halcon::HXLDContArray SelectedContours;
                Halcon::HTuple HistoValues;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionStraightContoursHistoXld(&SelectedContours,RefLineStartRow,RefLineStartColumn,RefLineEndRow,RefLineEndColumn,Width,MaxWidth,FilterSize,&HistoValues)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDContArray_FromHXLDContArray(SelectedContours));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(HistoValues));
                
                return ret;
            }
        }
        
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
    long Q;
    long P;
    double CenterCol;
    double Area;
    char* PointOrder;
    double CenterRow;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ssdddll", &Mode,&PointOrder,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->MomentsAnyXld(Mode,PointOrder,Area,CenterRow,CenterCol,P,Q));
        }
        
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
    double Column;
    double Phi;
    double Length2;
    double Row;
    double Length1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row,&Column,&Phi,&Length1,&Length2)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenRectangle2ContourXld(Row,Column,Phi,Length1,Length2));
        }
        
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
    double Col2;
    double Row2;
    double Row1;
    double Col1;
    char* CloseContours;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Row1,&Col1,&Row2,&Col2,&CloseContours)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->CropContoursXld(Row1,Col1,Row2,Col2,CloseContours));
        }
        
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
    double MaxLineDist1;
    char* Mode;
    double MaxLineDist2;
    long SmoothCont;
    
    try {
        if (PyArg_ParseTuple(args, "sldd", &Mode,&SmoothCont,&MaxLineDist1,&MaxLineDist2)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SegmentContoursXld(Mode,SmoothCont,MaxLineDist1,MaxLineDist2));
        }
        
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
    long Iterations;
    double MaxArcAngleDiff;
    double MaxCenterDist;
    double MaxDist;
    double MaxArcOverlap;
    double MaxTangentAngle;
    char* MergeSmallContours;
    double MaxRadiusDiff;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddsl", &MaxArcAngleDiff,&MaxArcOverlap,&MaxTangentAngle,&MaxDist,&MaxRadiusDiff,&MaxCenterDist,&MergeSmallContours,&Iterations)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCocircularContoursXld(MaxArcAngleDiff,MaxArcOverlap,MaxTangentAngle,MaxDist,MaxRadiusDiff,MaxCenterDist,MergeSmallContours,Iterations));
        }
        
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
    double Column;
    double Row;
    double StartPhi;
    double Radius1;
    double Resolution;
    double Radius2;
    char* PointOrder;
    double Phi;
    double EndPhi;
    
    try {
        if (PyArg_ParseTuple(args, "dddddddsd", &Row,&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenEllipseContourXld(Row,Column,Phi,Radius1,Radius2,StartPhi,EndPhi,PointOrder,Resolution));
        }
        
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
    double Column;
    double Row;
    double StartPhi;
    double Resolution;
    double Radius;
    double EndPhi;
    char* PointOrder;
    
    try {
        if (PyArg_ParseTuple(args, "dddddsd", &Row,&Column,&Radius,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::GenCircleContourXld(Row,Column,Radius,StartPhi,EndPhi,PointOrder,Resolution));
        }
        
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
    long Iterations;
    char* Algorithm;
    long MaxNumPoints;
    double ClippingFactor;
    double MaxClosureDist;
    long ClippingEndPoints;
    
    try {
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            {
            // with output params
                Halcon::HTuple Column;
                Halcon::HTuple Radius;
                Halcon::HTuple StartPhi;
                Halcon::HTuple EndPhi;
                Halcon::HTuple PointOrder;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitCircleContourXld(Algorithm,MaxNumPoints,MaxClosureDist,ClippingEndPoints,Iterations,ClippingFactor,&Column,&Radius,&StartPhi,&EndPhi,&PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Radius));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(StartPhi));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(EndPhi));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(PointOrder));
                
                return ret;
            }
        }
        
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
    double MaxOverlap;
    double MaxRegrError;
    double WeightDist;
    double MaxAngle;
    double WeightLink;
    char* Mode;
    double MaxCosts;
    double WeightRegr;
    double MaxDistRel;
    double MaxDistAbs;
    double WeightShift;
    double WeightAngle;
    double MaxShift;
    
    try {
        if (PyArg_ParseTuple(args, "dddddddddddds", &MaxDistAbs,&MaxDistRel,&MaxShift,&MaxAngle,&MaxOverlap,&MaxRegrError,&MaxCosts,&WeightDist,&WeightShift,&WeightAngle,&WeightLink,&WeightRegr,&Mode)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCollinearContoursExtXld(MaxDistAbs,MaxDistRel,MaxShift,MaxAngle,MaxOverlap,MaxRegrError,MaxCosts,WeightDist,WeightShift,WeightAngle,WeightLink,WeightRegr,Mode));
        }
        
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->SelectXldPoint(Row,Column));
        }
        
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
    char* Mode;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &Mode,&Iterations)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->RegressContoursXld(Mode,Iterations));
        }
        
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
    PyObject* Image;
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&Grayval)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->XLDContArray->PaintXld(*(((PyHirschImage*)Image)->Image),Grayval));
            }
        }
        
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
    char* GenParamNames;
    double GenParamValues;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "ssd", &FileName,&GenParamNames,&GenParamValues)) {
            {
            // with output params
                Halcon::HTuple DxfStatus;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::ReadContourXldDxf(FileName,GenParamNames,GenParamValues,&DxfStatus)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DxfStatus));
                
                return ret;
            }
        }
        
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
    double MaxDistAbs;
    char* Mode;
    double MaxAngle;
    double MaxShift;
    double MaxDistRel;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &MaxDistAbs,&MaxDistRel,&MaxShift,&MaxAngle,&Mode)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->UnionCollinearContoursXld(MaxDistAbs,MaxDistRel,MaxShift,MaxAngle,Mode));
        }
        
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
    char* Operation;
    double Min;
    char* Features;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Features,&Operation,&Min,&Max)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->SelectShapeXld(Features,Operation,Min,Max));
        }
        
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
    char* SortMode;
    char* RowOrCol;
    char* Order;
    
    try {
        if (PyArg_ParseTuple(args, "sss", &SortMode,&Order,&RowOrCol)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SortContoursXld(SortMode,Order,RowOrCol));
        }
        
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
    long MaxImagesCont;
    long ImageHeight;
    double Margin;
    char* MergeBorder;
    PyObject* PrevConts;
    
    try {
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts,&ImageHeight,&Margin,&MergeBorder,&MaxImagesCont)) {
            if (PyHirschXLDContArray_Check(PrevConts)) {
                Halcon::HXLDContArray PrevMergedConts;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->MergeContLineScanXld(*(((PyHirschXLDContArray*)PrevConts)->XLDContArray),&PrevMergedConts,ImageHeight,Margin,MergeBorder,MaxImagesCont)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDContArray_FromHXLDContArray(PrevMergedConts));
                
                return ret;
            }
        }
        
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
    char* Algorithm;
    long MaxNumPoints;
    double ClippingFactor;
    long Iterations;
    long ClippingEndPoints;
    
    try {
        if (PyArg_ParseTuple(args, "sllld", &Algorithm,&MaxNumPoints,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            {
            // with output params
                Halcon::HTuple ColBegin;
                Halcon::HTuple RowEnd;
                Halcon::HTuple ColEnd;
                Halcon::HTuple Nr;
                Halcon::HTuple Nc;
                Halcon::HTuple Dist;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitLineContourXld(Algorithm,MaxNumPoints,ClippingEndPoints,Iterations,ClippingFactor,&ColBegin,&RowEnd,&ColEnd,&Nr,&Nc,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ColBegin));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(RowEnd));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(ColEnd));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Nr));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Nc));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Dist));
                
                return ret;
            }
        }
        
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
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ClipContoursXld(Row1,Column1,Row2,Column2));
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            return PyHirschXLDContArray_FromHXLDContArray(Halcon::HXLDContArray::ReadContourXldArcInfo(FileName));
        }
        
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
    long NumRegrPoints;
    double Amp;
    
    try {
        if (PyArg_ParseTuple(args, "ld", &NumRegrPoints,&Amp)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->AddNoiseWhiteContourXld(NumRegrPoints,Amp));
        }
        
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
    long P;
    double CenterCol;
    double Area;
    char* Mode;
    double CenterRow;
    long Q;
    
    try {
        if (PyArg_ParseTuple(args, "sdddll", &Mode,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->MomentsAnyPointsXld(Mode,Area,CenterRow,CenterCol,P,Q));
        }
        
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
    double Column;
    double Row;
    double Radius1;
    long MaxNumPoints;
    long ClippingEndPoints;
    double Radius2;
    double Phi;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sllddddd", &Mode,&MaxNumPoints,&ClippingEndPoints,&Row,&Column,&Phi,&Radius1,&Radius2)) {
            {
            // with output params
                Halcon::HTuple MaxDist;
                Halcon::HTuple AvgDist;
                Halcon::HTuple SigmaDist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->DistEllipseContourXld(Mode,MaxNumPoints,ClippingEndPoints,Row,Column,Phi,Radius1,Radius2,&MaxDist,&AvgDist,&SigmaDist)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(MaxDist));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(AvgDist));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(SigmaDist));
                
                return ret;
            }
        }
        
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
    double PrincipalPointVar;
    long RandSeed;
    long Width;
    long Height;
    char* DistortionModel;
    char* DistortionCenter;
    double InlierThreshold;
    
    try {
        if (PyArg_ParseTuple(args, "lldlssd", &Width,&Height,&InlierThreshold,&RandSeed,&DistortionModel,&DistortionCenter,&PrincipalPointVar)) {
            {
            // with output params
                Halcon::HTuple CamParam;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->RadialDistortionSelfCalibration(Width,Height,InlierThreshold,RandSeed,DistortionModel,DistortionCenter,PrincipalPointVar,&CamParam)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CamParam));
                
                return ret;
            }
        }
        
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
    double Length;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode,&Length)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->ClipEndPointsContoursXld(Mode,Length));
        }
        
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
    char* CloseXLD;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->TestSelfIntersectionXld(CloseXLD));
        }
        
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
    long MinPercent;
    long MinDiff;
    PyObject* Image;
    long Distance;
    
    try {
        if (PyArg_ParseTuple(args, "Olll", &Image,&MinPercent,&MinDiff,&Distance)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->LocalMaxContoursXld(*(((PyHirschImage*)Image)->Image),MinPercent,MinDiff,Distance));
            }
        }
        
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
    double Distance;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode,&Distance)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->GenParallelContourXld(Mode,Distance));
        }
        
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            return PyHirschTuple_FromHTuple(self->XLDContArray->TestXldPoint(Row,Column));
        }
        
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
    double Column;
    double RadiusEnd;
    double Row;
    long Width;
    double RadiusStart;
    long Height;
    double AngleEnd;
    double AngleStart;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddll", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->PolarTransContourXld(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height));
        }
        
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
    char* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDContArray_Check(Contour2)) {
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->DistanceCc(*(((PyHirschXLDContArray*)Contour2)->XLDContArray),Mode,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        
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
    long Iterations;
    char* Algorithm;
    long MaxNumPoints;
    double ClippingFactor;
    double MaxClosureDist;
    long ClippingEndPoints;
    long VossTabSize;
    
    try {
        if (PyArg_ParseTuple(args, "sldllld", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&VossTabSize,&Iterations,&ClippingFactor)) {
            {
            // with output params
                Halcon::HTuple Column;
                Halcon::HTuple Phi;
                Halcon::HTuple Radius1;
                Halcon::HTuple Radius2;
                Halcon::HTuple StartPhi;
                Halcon::HTuple EndPhi;
                Halcon::HTuple PointOrder;
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitEllipseContourXld(Algorithm,MaxNumPoints,MaxClosureDist,ClippingEndPoints,VossTabSize,Iterations,ClippingFactor,&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,&PointOrder)));
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
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDContArray->ShapeTransXld(Type));
        }
        
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
    long NumRegrPoints;
    
    try {
        if (PyArg_ParseTuple(args, "l", &NumRegrPoints)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SmoothContoursXld(NumRegrPoints));
        }
        
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
    double Max2;
    double Max1;
    char* Feature;
    double Min2;
    double Min1;
    
    try {
        if (PyArg_ParseTuple(args, "sdddd", &Feature,&Min1,&Max1,&Min2,&Max2)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->SelectContoursXld(Feature,Min1,Max1,Min2,Max2));
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDContArray->WriteContourXldDxf(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            self->XLDContArray->DispXld(WindowHandle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
    long Iterations;
    char* Algorithm;
    long MaxNumPoints;
    double ClippingFactor;
    double MaxClosureDist;
    long ClippingEndPoints;
    
    try {
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            {
            // with output params
                Halcon::HTuple Column;
                Halcon::HTuple Phi;
                Halcon::HTuple Length1;
                Halcon::HTuple Length2;
                Halcon::HTuple PointOrder;
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDContArray->FitRectangle2ContourXld(Algorithm,MaxNumPoints,MaxClosureDist,ClippingEndPoints,Iterations,ClippingFactor,&Column,&Phi,&Length1,&Length2,&PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Phi));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Length1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Length2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(PointOrder));
                
                return ret;
            }
        }
        
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
    PyObject* conts;
    
    try {
        if (PyArg_ParseTuple(args, "O", &conts)) {
            if (PyHirschXLDContArray_Check(conts)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->Append(*(((PyHirschXLDContArray*)conts)->XLDContArray)));
            }
        }
        if (PyArg_ParseTuple(args, "O", &cont)) {
            if (PyHirschXLDCont_Check(cont)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDContArray->Append(*(((PyHirschXLDCont*)cont)->XLDCont)));
            }
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDContArray->WriteContourXldArcInfo(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDContArray.WriteContourXldArcInfo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
