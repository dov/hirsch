PyObject *
PyHirschXLDCont_DistanceCcMin(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2)) {
                return PyHirschTuple_FromHTuple(self->XLDCont->DistanceCcMin(*(((PyHirschXLDCont*)Contour2)->XLDCont),Mode));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceCcMin()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double M201;
        double M021;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->MomentsXld(&M201,&M021)));
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
PyHirschXLDCont_CompactnessXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->CompactnessXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EccentricityPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->EccentricityPointsXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SegmentContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxLineDist1;
    char* Mode;
    double MaxLineDist2;
    long SmoothCont;
    
    try {
        if (PyArg_ParseTuple(args, "sldd", &Mode,&SmoothCont,&MaxLineDist1,&MaxLineDist2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SegmentContoursXld(Mode,SmoothCont,MaxLineDist1,MaxLineDist2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SegmentContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenCircleContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double Radius1;
    PyObject* PointOrder;
    double Resolution;
    PyObject* Radius;
    double EndPhi1;
    char* PointOrder1;
    PyObject* EndPhi;
    PyObject* StartPhi;
    double Resolution1;
    double Column1;
    double Row1;
    double StartPhi1;
    
    try {
        if (PyArg_ParseTuple(args, "dddddsd", &Row1,&Column1,&Radius1,&StartPhi1,&EndPhi1,&PointOrder1,&Resolution1)) {
            self->XLDCont->GenCircleContourXld(Row1,Column1,Radius1,StartPhi1,EndPhi1,PointOrder1,Resolution1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOd", &Row,&Column,&Radius,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(StartPhi) && PyHirschTuple_Check(EndPhi) && PyHirschTuple_Check(PointOrder)) {
                self->XLDCont->GenCircleContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)StartPhi)->Tuple),*(((PyHirschTuple*)EndPhi)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),Resolution);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenCircleContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SelectXldPoint(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double Row3;
    double Column3;
    PyObject* Column2;
    PyObject* Row2;
    double Column1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row3,&Column3)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectXldPoint(Row3,Column3));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectXldPoint(Row1,Column1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Row2,&Column2)) {
            if (PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Column2)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->SelectXldPoint(*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SelectXldPoint()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_UnionCollinearContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxDistAbs;
    char* Mode;
    double MaxAngle;
    double MaxShift;
    double MaxDistRel;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &MaxDistAbs,&MaxDistRel,&MaxShift,&MaxAngle,&Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCollinearContoursXld(MaxDistAbs,MaxDistRel,MaxShift,MaxAngle,Mode));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.UnionCollinearContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SymmDifferenceClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SymmDifferenceClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SymmDifferenceClosedContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SelectShapeXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Operation;
    char* Operation1;
    char* Features;
    double Min1;
    char* Features1;
    double Max1;
    double Min;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Features,&Operation,&Min,&Max)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectShapeXld(Features,Operation,Min,Max));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features1,&Operation1,&Min1,&Max1)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectShapeXld(Features1,Operation1,Min1,Max1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SelectShapeXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ClipContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    long Column2;
    long Row1;
    long Column1;
    long Row2;
    
    try {
        if (PyArg_ParseTuple(args, "llll", &Row1,&Column1,&Row2,&Column2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipContoursXld(Row1,Column1,Row2,Column2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ClipContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenContourNurbsXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxError1;
    double MaxDistance1;
    char* Weights1;
    char* Knots1;
    PyObject* MaxDistance;
    PyObject* Cols;
    long Degree1;
    PyObject* Rows1;
    PyObject* MaxError;
    PyObject* Cols1;
    long Degree;
    PyObject* Weights;
    PyObject* Rows;
    PyObject* Knots;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOlOO", &Rows,&Cols,&Knots,&Weights,&Degree,&MaxError,&MaxDistance)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Cols) && PyHirschTuple_Check(Knots) && PyHirschTuple_Check(Weights) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(MaxDistance)) {
                self->XLDCont->GenContourNurbsXld(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Cols)->Tuple),*(((PyHirschTuple*)Knots)->Tuple),*(((PyHirschTuple*)Weights)->Tuple),Degree,*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)MaxDistance)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssldd", &Rows1,&Cols1,&Knots1,&Weights1,&Degree1,&MaxError1,&MaxDistance1)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1)) {
                self->XLDCont->GenContourNurbsXld(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),Knots1,Weights1,Degree1,MaxError1,MaxDistance1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenContourNurbsXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistancePc(PyHirschXLDCont*self, PyObject *args)
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
                self->XLDCont->DistancePc(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            {
            // with output params
                double DistanceMin1;
                double DistanceMax1;
                self->XLDCont->DistancePc(Row1,Column1,&DistanceMin1,&DistanceMax1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistancePc()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_TestSelfIntersectionXld(PyHirschXLDCont*self, PyObject *args)
{
    char* CloseXLD;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->TestSelfIntersectionXld(CloseXLD));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.TestSelfIntersectionXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_AffineTransContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "O", &HomMat2D)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->AffineTransContourXld(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.AffineTransContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistanceContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode;
    PyObject* ContourTo;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &ContourTo,&Mode)) {
            if (PyHirschXLDCont_Check(ContourTo)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DistanceContoursXld(*(((PyHirschXLDCont*)ContourTo)->XLDCont),Mode));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DiameterXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Row11;
        double Column11;
        double Row21;
        double Column21;
        double Diameter1;
        self->XLDCont->DiameterXld(&Row11,&Column11,&Row21,&Column21,&Diameter1);
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row11));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column11));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Row21));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Column21));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Diameter1));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetContourAngleXld(PyHirschXLDCont*self, PyObject *args)
{
    char* CalcMode;
    char* AngleMode;
    long Lookaround;
    
    try {
        if (PyArg_ParseTuple(args, "ssl", &AngleMode,&CalcMode,&Lookaround)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAngleXld(AngleMode,CalcMode,Lookaround));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GetContourAngleXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double M201;
        double M021;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->MomentsPointsXld(&M201,&M021)));
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
PyHirschXLDCont_ContourPointNumXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->ContourPointNumXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ShapeTransXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Type1;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ShapeTransXld(Type));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->ShapeTransXld(Type1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ShapeTransXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistEllipseContourPointsXld(PyHirschXLDCont*self, PyObject *args)
{
    double Column;
    double Row;
    double Radius1;
    long ClippingEndPoints;
    double Radius2;
    char* DistanceMode;
    double Phi;
    
    try {
        if (PyArg_ParseTuple(args, "slddddd", &DistanceMode,&ClippingEndPoints,&Row,&Column,&Phi,&Radius1,&Radius2)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->DistEllipseContourPointsXld(DistanceMode,ClippingEndPoints,Row,Column,Phi,Radius1,Radius2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistEllipseContourPointsXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_AreaCenterXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        HalconCpp::HTuple Row;
        HalconCpp::HTuple Column;
        HalconCpp::HTuple PointOrder;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->AreaCenterXld(&Row,&Column,&PointOrder)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Row));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Column));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(PointOrder));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenRectangle2ContourXld(PyHirschXLDCont*self, PyObject *args)
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
            self->XLDCont->GenRectangle2ContourXld(Row1,Column1,Phi1,Length11,Length21);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                self->XLDCont->GenRectangle2ContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenRectangle2ContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_TestClosedXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->TestClosedXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CropContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double Col2;
    double Row2;
    double Row1;
    double Col1;
    char* CloseContours;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Row1,&Col1,&Row2,&Col2,&CloseContours)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CropContoursXld(Row1,Col1,Row2,Col2,CloseContours));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.CropContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetContourAttribXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Name;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Name)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAttribXld(Name));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GetContourAttribXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_UnionCollinearContoursExtXld(PyHirschXLDCont*self, PyObject *args)
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
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCollinearContoursExtXld(MaxDistAbs,MaxDistRel,MaxShift,MaxAngle,MaxOverlap,MaxRegrError,MaxCosts,WeightDist,WeightShift,WeightAngle,WeightLink,WeightRegr,Mode));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.UnionCollinearContoursExtXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SegmentContourAttribXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Operation;
    char* Attribute;
    double Max;
    double Min;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Attribute,&Operation,&Min,&Max)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SegmentContourAttribXld(Attribute,Operation,Min,Max));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SegmentContourAttribXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_QueryContourAttribsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->QueryContourAttribsXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsAnyXld(PyHirschXLDCont*self, PyObject *args)
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
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyXld(Mode,PointOrder,Area,CenterRow,CenterCol,P,Q));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.MomentsAnyXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_PaintXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Grayval;
    PyObject* Image;
    double Grayval1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Grayval1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->XLDCont->PaintXld(*(((PyHirschImage*)Image1)->Image),Grayval1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Grayval)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->XLDCont->PaintXld(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.PaintXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MergeContLineScanXld(PyHirschXLDCont*self, PyObject *args)
{
    long MaxImagesCont;
    long ImageHeight;
    double Margin;
    char* MergeBorder;
    PyObject* PrevConts;
    
    try {
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts,&ImageHeight,&Margin,&MergeBorder,&MaxImagesCont)) {
            if (PyHirschXLDCont_Check(PrevConts)) {
                HalconCpp::HXLDCont PrevMergedConts;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDCont*)PrevConts)->XLDCont),&PrevMergedConts,ImageHeight,Margin,MergeBorder,MaxImagesCont)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.MergeContLineScanXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_FitLineContourXld(PyHirschXLDCont*self, PyObject *args)
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
                double RowBegin;
                double ColBegin;
                double RowEnd;
                double ColEnd;
                double Nr;
                double Nc;
                double Dist;
                self->XLDCont->FitLineContourXld(Algorithm,MaxNumPoints,ClippingEndPoints,Iterations,ClippingFactor,&RowBegin,&ColBegin,&RowEnd,&ColEnd,&Nr,&Nc,&Dist);
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(RowBegin));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(ColBegin));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(RowEnd));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(ColEnd));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Nr));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Nc));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(Dist));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.FitLineContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_UnionCotangentialContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxDistPerp;
    double MaxOverlap;
    double MaxDist;
    double FitLength;
    double MaxTangAngle;
    char* Mode;
    double FitClippingLength;
    
    try {
        if (PyArg_ParseTuple(args, "dddddds", &FitClippingLength,&FitLength,&MaxTangAngle,&MaxDist,&MaxDistPerp,&MaxOverlap,&Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCotangentialContoursXld(FitClippingLength,FitLength,MaxTangAngle,MaxDist,MaxDistPerp,MaxOverlap,Mode));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.UnionCotangentialContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_UnionStraightContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxDiff;
    double Percent;
    char* Iterations;
    double MaxDist;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dddss", &MaxDist,&MaxDiff,&Percent,&Mode,&Iterations)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionStraightContoursXld(MaxDist,MaxDiff,Percent,Mode,Iterations));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.UnionStraightContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ObjDiff(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* ObjectsSub;
    PyObject* ObjectsSub1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ObjectsSub1)) {
            if (PyHirschXLD_Check(ObjectsSub1)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->ObjDiff(*(((PyHirschXLD*)ObjectsSub1)->XLD)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &ObjectsSub)) {
            if (PyHirschXLDCont_Check(ObjectsSub)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ObjDiff(*(((PyHirschXLDCont*)ObjectsSub)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ObjDiff()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenRegionContourXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschRegion_FromHRegion(self->XLDCont->GenRegionContourXld(Mode));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenRegionContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_OrientationXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->OrientationXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CircularityXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->CircularityXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetContourXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        HalconCpp::HTuple Row;
        HalconCpp::HTuple Col;
        self->XLDCont->GetContourXld(&Row,&Col);
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Col));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SmallestRectangle1Xld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Row11;
        double Column11;
        double Row21;
        double Column21;
        self->XLDCont->SmallestRectangle1Xld(&Row11,&Column11,&Row21,&Column21);
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row11));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column11));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Row21));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Column21));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SmoothContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    long NumRegrPoints;
    
    try {
        if (PyArg_ParseTuple(args, "l", &NumRegrPoints)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SmoothContoursXld(NumRegrPoints));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SmoothContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_LengthXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->LengthXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SelectContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double Max2;
    double Max1;
    char* Feature;
    double Min2;
    double Min1;
    
    try {
        if (PyArg_ParseTuple(args, "sdddd", &Feature,&Min1,&Max1,&Min2,&Max2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectContoursXld(Feature,Min1,Max1,Min2,Max2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SelectContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenCrossContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Row;
    double Angle1;
    double Col1;
    PyObject* Col;
    PyObject* Size;
    double Angle;
    double Row1;
    double Size1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOd", &Row,&Col,&Size,&Angle)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Size)) {
                self->XLDCont->GenCrossContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Size)->Tuple),Angle);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row1,&Col1,&Size1,&Angle1)) {
            self->XLDCont->GenCrossContourXld(Row1,Col1,Size1,Angle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenCrossContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SmallestCircleXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        double Radius1;
        self->XLDCont->SmallestCircleXld(&Row1,&Column1,&Radius1);
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
PyHirschXLDCont_UnionStraightContoursHistoXld(PyHirschXLDCont*self, PyObject *args)
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
                HalconCpp::HXLDCont SelectedContours;
                HalconCpp::HTuple HistoValues;
                PyObject *ret = PyTuple_New(3);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionStraightContoursHistoXld(&SelectedContours,RefLineStartRow,RefLineStartColumn,RefLineEndRow,RefLineEndColumn,Width,MaxWidth,FilterSize,&HistoValues)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(SelectedContours));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(HistoValues));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.UnionStraightContoursHistoXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_UnionCocircularContoursXld(PyHirschXLDCont*self, PyObject *args)
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
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCocircularContoursXld(MaxArcAngleDiff,MaxArcOverlap,MaxTangentAngle,MaxDist,MaxRadiusDiff,MaxCenterDist,MergeSmallContours,Iterations));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.UnionCocircularContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenEllipseContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double Phi1;
    PyObject* Radius2;
    double Radius11;
    PyObject* PointOrder;
    double Resolution;
    PyObject* Radius1;
    double EndPhi1;
    char* PointOrder1;
    PyObject* EndPhi;
    PyObject* StartPhi;
    PyObject* Phi;
    double Radius21;
    double Column1;
    double Resolution1;
    double Row1;
    double StartPhi1;
    
    try {
        if (PyArg_ParseTuple(args, "dddddddsd", &Row1,&Column1,&Phi1,&Radius11,&Radius21,&StartPhi1,&EndPhi1,&PointOrder1,&Resolution1)) {
            self->XLDCont->GenEllipseContourXld(Row1,Column1,Phi1,Radius11,Radius21,StartPhi1,EndPhi1,PointOrder1,Resolution1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOd", &Row,&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2) && PyHirschTuple_Check(StartPhi) && PyHirschTuple_Check(EndPhi) && PyHirschTuple_Check(PointOrder)) {
                self->XLDCont->GenEllipseContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple),*(((PyHirschTuple*)StartPhi)->Tuple),*(((PyHirschTuple*)EndPhi)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),Resolution);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenEllipseContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_RegressContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &Mode,&Iterations)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->RegressContoursXld(Mode,Iterations));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.RegressContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CloseContoursXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CloseContoursXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_Union2ClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->Union2ClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.Union2ClosedContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistanceLc(PyHirschXLDCont*self, PyObject *args)
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
                self->XLDCont->DistanceLc(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            {
            // with output params
                double DistanceMin1;
                double DistanceMax1;
                self->XLDCont->DistanceLc(Row11,Column11,Row21,Column21,&DistanceMin1,&DistanceMax1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceLc()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SmallestRectangle2Xld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        double Phi1;
        double Length11;
        double Length21;
        self->XLDCont->SmallestRectangle2Xld(&Row1,&Column1,&Phi1,&Length11,&Length21);
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
PyHirschXLDCont_DistanceSc(PyHirschXLDCont*self, PyObject *args)
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
                self->XLDCont->DistanceSc(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddd", &Row11,&Column11,&Row21,&Column21)) {
            {
            // with output params
                double DistanceMin1;
                double DistanceMax1;
                self->XLDCont->DistanceSc(Row11,Column11,Row21,Column21,&DistanceMin1,&DistanceMax1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceSc()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SortContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    char* SortMode;
    char* RowOrCol;
    char* Order;
    
    try {
        if (PyArg_ParseTuple(args, "sss", &SortMode,&Order,&RowOrCol)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SortContoursXld(SortMode,Order,RowOrCol));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SortContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetContourGlobalAttribXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Name1;
    PyObject* Name;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Name1)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourGlobalAttribXld(Name1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Name)) {
            if (PyHirschTuple_Check(Name)) {
                return PyHirschTuple_FromHTuple(self->XLDCont->GetContourGlobalAttribXld(*(((PyHirschTuple*)Name)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GetContourGlobalAttribXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ProjectiveTransContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "O", &HomMat2D)) {
            if (PyHirschHomMat2D_Check(HomMat2D)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ProjectiveTransContourXld(HalconCpp::HHomMat2D((((PyHirschHomMat2D*)HomMat2D)->HomMat2D))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ProjectiveTransContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_UnionAdjacentContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxDistAbs;
    char* Mode;
    double MaxDistRel;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaxDistAbs,&MaxDistRel,&Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionAdjacentContoursXld(MaxDistAbs,MaxDistRel,Mode));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.UnionAdjacentContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenParallelContourXld(PyHirschXLDCont*self, PyObject *args)
{
    double Distance;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode,&Distance)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->GenParallelContourXld(Mode,Distance));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenParallelContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_QueryContourGlobalAttribsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->QueryContourGlobalAttribsXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenGridRectificationMap(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Row1;
    PyObject* Column;
    PyObject* Row;
    char* Rotation;
    PyObject* Column1;
    char* Rotation1;
    char* MapType;
    char* MapType1;
    long GridSpacing1;
    PyObject* Image;
    long GridSpacing;
    
    try {
        if (PyArg_ParseTuple(args, "OlsOOs", &Image,&GridSpacing,&Rotation,&Row,&Column,&MapType)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                HalconCpp::HXLDCont Meshes;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLDCont->GenGridRectificationMap(*(((PyHirschImage*)Image)->Image),&Meshes,GridSpacing,Rotation,*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),MapType)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(Meshes));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenGridRectificationMap()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistEllipseContourXld(PyHirschXLDCont*self, PyObject *args)
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
                double MinDist;
                double MaxDist;
                double AvgDist;
                double SigmaDist;
                self->XLDCont->DistEllipseContourXld(Mode,MaxNumPoints,ClippingEndPoints,Row,Column,Phi,Radius1,Radius2,&MinDist,&MaxDist,&AvgDist,&SigmaDist);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(MinDist));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(MaxDist));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(AvgDist));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(SigmaDist));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistEllipseContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistRectangle2ContourPointsXld(PyHirschXLDCont*self, PyObject *args)
{
    double Column;
    double Row;
    double Length2;
    long ClippingEndPoints;
    double Length1;
    double Phi;
    
    try {
        if (PyArg_ParseTuple(args, "lddddd", &ClippingEndPoints,&Row,&Column,&Phi,&Length1,&Length2)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->DistRectangle2ContourPointsXld(ClippingEndPoints,Row,Column,Phi,Length1,Length2));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistRectangle2ContourPointsXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ConcatObj(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Objects21;
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects21)) {
            if (PyHirschXLD_Check(Objects21)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->ConcatObj(*(((PyHirschXLD*)Objects21)->XLD)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschXLDCont_Check(Objects2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ConcatObj(*(((PyHirschXLDCont*)Objects2)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ConcatObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_TestEqualObj(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Objects21;
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects21)) {
            if (PyHirschXLD_Check(Objects21)) {
                return PyInt_FromLong(long(self->XLDCont->TestEqualObj(*(((PyHirschXLD*)Objects21)->XLD))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschXLDCont_Check(Objects2)) {
                return PyInt_FromLong(long(self->XLDCont->TestEqualObj(*(((PyHirschXLDCont*)Objects2)->XLDCont))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.TestEqualObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_PolarTransContourXldInv(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double AngleStart1;
    long Width;
    long Height1;
    long Width1;
    long WidthIn1;
    long Height;
    long WidthIn;
    double AngleEnd;
    double RadiusEnd1;
    PyObject* RadiusEnd;
    double AngleEnd1;
    double RadiusStart1;
    double AngleStart;
    double Column1;
    PyObject* RadiusStart;
    double Row1;
    long HeightIn;
    long HeightIn1;
    
    try {
        if (PyArg_ParseTuple(args, "OOddOOllll", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&WidthIn,&HeightIn,&Width,&Height)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->PolarTransContourXldInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),AngleStart,AngleEnd,*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),WidthIn,HeightIn,Width,Height));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddllll", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&WidthIn1,&HeightIn1,&Width1,&Height1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->PolarTransContourXldInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,WidthIn1,HeightIn1,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.PolarTransContourXldInv()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EllipticAxisPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Rb1;
        double Phi1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->EllipticAxisPointsXld(&Rb1,&Phi1)));
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
PyHirschXLDCont_DifferenceClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Sub;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Sub)) {
            if (PyHirschXLDCont_Check(Sub)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DifferenceClosedContoursXld(*(((PyHirschXLDCont*)Sub)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DifferenceClosedContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EccentricityXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Bulkiness1;
        double StructureFactor1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->EccentricityXld(&Bulkiness1,&StructureFactor1)));
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
PyHirschXLDCont_GetRegressParamsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        HalconCpp::HTuple Nx;
        HalconCpp::HTuple Ny;
        HalconCpp::HTuple Dist;
        HalconCpp::HTuple Fpx;
        HalconCpp::HTuple Fpy;
        HalconCpp::HTuple Lpx;
        HalconCpp::HTuple Lpy;
        HalconCpp::HTuple Mean;
        HalconCpp::HTuple Deviation;
        PyObject *ret = PyTuple_New(10);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->GetRegressParamsXld(&Nx,&Ny,&Dist,&Fpx,&Fpy,&Lpx,&Lpy,&Mean,&Deviation)));
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
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_TestXldPoint(PyHirschXLDCont*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschTuple_FromHTuple(self->XLDCont->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyInt_FromLong(long(self->XLDCont->TestXldPoint(Row1,Column1)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.TestXldPoint()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetParallelsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        HalconCpp::HTuple Row1;
        HalconCpp::HTuple Col1;
        HalconCpp::HTuple Length1;
        HalconCpp::HTuple Phi1;
        HalconCpp::HTuple Row2;
        HalconCpp::HTuple Col2;
        HalconCpp::HTuple Length2;
        HalconCpp::HTuple Phi2;
        self->XLDCont->GetParallelsXld(&Row1,&Col1,&Length1,&Phi1,&Row2,&Col2,&Length2,&Phi2);
        PyObject *ret = PyTuple_New(8);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(Row1));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Col1));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Length1));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Phi1));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Row2));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Col2));
        PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Length2));
        PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(Phi2));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SelectObj(PyHirschXLDCont*self, PyObject *args)
{
    long Index3;
    long Index1;
    PyObject* Index;
    PyObject* Index2;
    
    try {
        if (PyArg_ParseTuple(args, "l", &Index3)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectObj(Index3));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectObj(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Index1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectObj(Index1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Index2)) {
            if (PyHirschTuple_Check(Index2)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->SelectObj(*(((PyHirschTuple*)Index2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SelectObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenContourPolygonXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Row;
    PyObject* Col;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Col)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col)) {
                self->XLDCont->GenContourPolygonXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenContourPolygonXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CopyObj(PyHirschXLDCont*self, PyObject *args)
{
    long NumObj;
    long Index1;
    long NumObj1;
    long Index;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Index1,&NumObj1)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->CopyObj(Index1,NumObj1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Index,&NumObj)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CopyObj(Index,NumObj));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.CopyObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ClipEndPointsContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double Length;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode,&Length)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipEndPointsContoursXld(Mode,Length));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ClipEndPointsContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ReadContourXldArcInfo(PyHirschXLDCont*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->ReadContourXldArcInfo(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ReadContourXldArcInfo()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_AddNoiseWhiteContourXld(PyHirschXLDCont*self, PyObject *args)
{
    long NumRegrPoints;
    double Amp;
    
    try {
        if (PyArg_ParseTuple(args, "ld", &NumRegrPoints,&Amp)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->AddNoiseWhiteContourXld(NumRegrPoints,Amp));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.AddNoiseWhiteContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsAnyPointsXld(PyHirschXLDCont*self, PyObject *args)
{
    long P;
    double CenterCol;
    double Area;
    char* Mode;
    double CenterRow;
    long Q;
    
    try {
        if (PyArg_ParseTuple(args, "sdddll", &Mode,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyPointsXld(Mode,Area,CenterRow,CenterCol,P,Q));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.MomentsAnyPointsXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_LocalMaxContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Image1;
    long Distance1;
    long MinPercent1;
    PyObject* MinPercent;
    long MinDiff;
    long MinDiff1;
    PyObject* Image;
    long Distance;
    
    try {
        if (PyArg_ParseTuple(args, "OOll", &Image,&MinPercent,&MinDiff,&Distance)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(MinPercent)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->LocalMaxContoursXld(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)MinPercent)->Tuple),MinDiff,Distance));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Olll", &Image1,&MinPercent1,&MinDiff1,&Distance1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->LocalMaxContoursXld(*(((PyHirschImage*)Image1)->Image),MinPercent1,MinDiff1,Distance1));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.LocalMaxContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EllipticAxisXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Rb1;
        double Phi1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->EllipticAxisXld(&Rb1,&Phi1)));
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
PyHirschXLDCont_OrientationPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->OrientationPointsXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenContourPolygonRoundedXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Row1;
    PyObject* Radius;
    PyObject* Row;
    PyObject* Col1;
    double SamplingInterval1;
    PyObject* SamplingInterval;
    PyObject* Col;
    PyObject* Radius1;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Col,&Radius,&SamplingInterval)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(SamplingInterval)) {
                self->XLDCont->GenContourPolygonRoundedXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)SamplingInterval)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOd", &Row1,&Col1,&Radius1,&SamplingInterval1)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Col1) && PyHirschTuple_Check(Radius1)) {
                self->XLDCont->GenContourPolygonRoundedXld(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Col1)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),SamplingInterval1);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenContourPolygonRoundedXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_PolarTransContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    double AngleStart1;
    long Width;
    long Height1;
    long Width1;
    long Height;
    double AngleEnd;
    double RadiusEnd1;
    PyObject* RadiusEnd;
    double AngleEnd1;
    double RadiusStart1;
    double AngleStart;
    double Column1;
    PyObject* RadiusStart;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OOddOOll", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->PolarTransContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),AngleStart,AngleEnd,*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),Width,Height));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddll", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&Width1,&Height1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->PolarTransContourXld(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.PolarTransContourXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistanceCc(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2)) {
                double DistanceMin;
                double DistanceMax;
                self->XLDCont->DistanceCc(*(((PyHirschXLDCont*)Contour2)->XLDCont),Mode,&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceCc()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_AreaCenterPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->AreaCenterPointsXld(&Row1,&Column1)));
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
PyHirschXLDCont_CompareObj(PyHirschXLDCont*self, PyObject *args)
{
    double Epsilon1;
    PyObject* Objects2;
    PyObject* Epsilon2;
    PyObject* Epsilon;
    double Epsilon3;
    PyObject* Objects23;
    PyObject* Objects22;
    PyObject* Objects21;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Objects21,&Epsilon1)) {
            if (PyHirschXLDCont_Check(Objects21)) {
                return PyInt_FromLong(long(self->XLDCont->CompareObj(*(((PyHirschXLDCont*)Objects21)->XLDCont),Epsilon1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Od", &Objects23,&Epsilon3)) {
            if (PyHirschXLD_Check(Objects23)) {
                return PyInt_FromLong(long(self->XLDCont->CompareObj(*(((PyHirschXLD*)Objects23)->XLD),Epsilon3)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Objects2,&Epsilon)) {
            if (PyHirschXLDCont_Check(Objects2) && PyHirschTuple_Check(Epsilon)) {
                return PyInt_FromLong(long(self->XLDCont->CompareObj(*(((PyHirschXLDCont*)Objects2)->XLDCont),*(((PyHirschTuple*)Epsilon)->Tuple))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Objects22,&Epsilon2)) {
            if (PyHirschXLD_Check(Objects22) && PyHirschTuple_Check(Epsilon2)) {
                return PyInt_FromLong(long(self->XLDCont->CompareObj(*(((PyHirschXLD*)Objects22)->XLD),*(((PyHirschTuple*)Epsilon2)->Tuple))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.CompareObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_IntersectionClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->IntersectionClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.IntersectionClosedContoursXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_WriteContourXldDxf(PyHirschXLDCont*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->WriteContourXldDxf(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.WriteContourXldDxf()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ConvexityXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->ConvexityXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_Clone(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschXLD_FromHXLD(self->XLDCont->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_WriteContourXldArcInfo(PyHirschXLDCont*self, PyObject *args)
{
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->WriteContourXldArcInfo(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.WriteContourXldArcInfo()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
