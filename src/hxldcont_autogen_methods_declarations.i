PyObject *
PyHirschXLDCont_DistanceCcMin(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contour21;
    char* Mode1;
    char* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour21,&Mode1)) {
            if (PyHirschXLDCont_Check(Contour21)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->DistanceCcMin(*(((PyHirschXLDCont*)Contour21)->XLDCont),Mode1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->DistanceCcMin(*(((PyHirschXLDCont*)Contour2)->XLDCont),HalconCpp::HString(Mode)));
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
PyHirschXLDCont_DistanceContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* ContourTo1;
    char* Mode1;
    char* Mode;
    PyObject* ContourTo;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &ContourTo1,&Mode1)) {
            if (PyHirschXLDCont_Check(ContourTo1)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DistanceContoursXld(*(((PyHirschXLDCont*)ContourTo1)->XLDCont),Mode1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &ContourTo,&Mode)) {
            if (PyHirschXLDCont_Check(ContourTo)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DistanceContoursXld(*(((PyHirschXLDCont*)ContourTo)->XLDCont),HalconCpp::HString(Mode)));
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
PyHirschXLDCont_CompactnessXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->CompactnessXld());
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->EccentricityPointsXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SegmentContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxLineDist11;
    char* Mode1;
    double MaxLineDist21;
    double MaxLineDist2;
    long SmoothCont1;
    double MaxLineDist1;
    long SmoothCont;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sldd", &Mode1,&SmoothCont1,&MaxLineDist11,&MaxLineDist21)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SegmentContoursXld(Mode1,SmoothCont1,MaxLineDist11,MaxLineDist21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldd", &Mode,&SmoothCont,&MaxLineDist1,&MaxLineDist2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SegmentContoursXld(HalconCpp::HString(Mode),SmoothCont,MaxLineDist1,MaxLineDist2));
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
    double Column2;
    PyObject* Column;
    PyObject* Row;
    double Resolution2;
    double Radius2;
    double Radius1;
    PyObject* PointOrder;
    double Resolution;
    PyObject* Radius;
    double EndPhi1;
    char* PointOrder1;
    PyObject* EndPhi;
    PyObject* StartPhi;
    double EndPhi2;
    double Resolution1;
    double Row2;
    char* PointOrder2;
    double Column1;
    double StartPhi2;
    double Row1;
    double StartPhi1;
    
    try {
        if (PyArg_ParseTuple(args, "dddddsd", &Row2,&Column2,&Radius2,&StartPhi2,&EndPhi2,&PointOrder2,&Resolution2)) {
            self->XLDCont->GenCircleContourXld(Row2,Column2,Radius2,StartPhi2,EndPhi2,PointOrder2,Resolution2);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddsd", &Row1,&Column1,&Radius1,&StartPhi1,&EndPhi1,&PointOrder1,&Resolution1)) {
            self->XLDCont->GenCircleContourXld(Row1,Column1,Radius1,StartPhi1,EndPhi1,HalconCpp::HString(PointOrder1),Resolution1);
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
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectXldPoint(Row3,Column3));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->SelectXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectXldPoint(Row1,Column1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Row2,&Column2)) {
            if (PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Column2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectXldPoint(*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple)));
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
    char* Mode1;
    double MaxDistRel1;
    double MaxShift1;
    double MaxDistAbs1;
    double MaxAngle;
    double MaxAngle1;
    double MaxDistRel;
    double MaxDistAbs;
    char* Mode;
    double MaxShift;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &MaxDistAbs1,&MaxDistRel1,&MaxShift1,&MaxAngle1,&Mode1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCollinearContoursXld(MaxDistAbs1,MaxDistRel1,MaxShift1,MaxAngle1,Mode1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddds", &MaxDistAbs,&MaxDistRel,&MaxShift,&MaxAngle,&Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCollinearContoursXld(MaxDistAbs,MaxDistRel,MaxShift,MaxAngle,HalconCpp::HString(Mode)));
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
    PyObject* Max3;
    char* Operation2;
    double Min1;
    char* Features1;
    char* Operation3;
    PyObject* Min3;
    char* Operation4;
    char* Features4;
    char* Features5;
    double Max5;
    double Max2;
    char* Features2;
    double Min5;
    char* Operation1;
    PyObject* Features3;
    double Max4;
    double Min4;
    PyObject* Max;
    PyObject* Min;
    double Min2;
    double Max1;
    char* Operation5;
    PyObject* Features;
    char* Operation;
    
    try {
        if (PyArg_ParseTuple(args, "OsOO", &Features3,&Operation3,&Min3,&Max3)) {
            if (PyHirschTuple_Check(Features3) && PyHirschTuple_Check(Min3) && PyHirschTuple_Check(Max3)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectShapeXld(*(((PyHirschTuple*)Features3)->Tuple),HalconCpp::HString(Operation3),*(((PyHirschTuple*)Min3)->Tuple),*(((PyHirschTuple*)Max3)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features4,&Operation4,&Min4,&Max4)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectShapeXld(HalconCpp::HString(Features4),HalconCpp::HString(Operation4),Min4,Max4));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features2,&Operation2,&Min2,&Max2)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectShapeXld(Features2,Operation2,Min2,Max2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features1,&Operation1,&Min1,&Max1)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectShapeXld(HalconCpp::HString(Features1),HalconCpp::HString(Operation1),Min1,Max1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OsOO", &Features,&Operation,&Min,&Max)) {
            if (PyHirschTuple_Check(Features) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->SelectShapeXld(*(((PyHirschTuple*)Features)->Tuple),HalconCpp::HString(Operation),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features5,&Operation5,&Min5,&Max5)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectShapeXld(Features5,Operation5,Min5,Max5));
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
PyHirschXLDCont_FitEllipseContourXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxClosureDist2;
    long MaxNumPoints2;
    long Iterations;
    long VossTabSize2;
    char* Algorithm;
    double ClippingFactor1;
    long MaxNumPoints;
    double ClippingFactor;
    double MaxClosureDist;
    long ClippingEndPoints;
    double ClippingFactor2;
    long ClippingEndPoints2;
    long Iterations2;
    long Iterations1;
    char* Algorithm2;
    long ClippingEndPoints1;
    long VossTabSize1;
    char* Algorithm1;
    long VossTabSize;
    long MaxNumPoints1;
    double MaxClosureDist1;
    
    try {
        if (PyArg_ParseTuple(args, "sldllld", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&VossTabSize,&Iterations,&ClippingFactor)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Phi;
                HalconCpp::HTuple Radius1;
                HalconCpp::HTuple Radius2;
                HalconCpp::HTuple StartPhi;
                HalconCpp::HTuple EndPhi;
                HalconCpp::HTuple PointOrder;
                self->XLDCont->FitEllipseContourXld(HalconCpp::HString(Algorithm),MaxNumPoints,MaxClosureDist,ClippingEndPoints,VossTabSize,Iterations,ClippingFactor,&Row,&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,&PointOrder);
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Phi));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Radius1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Radius2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(StartPhi));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(EndPhi));
                PyTuple_SET_ITEM(ret, 7, PyHirschTuple_GetAsScalarIfOne(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldllld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&VossTabSize1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                double Row1;
                double Column1;
                double Phi1;
                double Radius11;
                double Radius21;
                double StartPhi1;
                double EndPhi1;
                HalconCpp::HString PointOrder1;
                self->XLDCont->FitEllipseContourXld(HalconCpp::HString(Algorithm1),MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,VossTabSize1,Iterations1,ClippingFactor1,&Row1,&Column1,&Phi1,&Radius11,&Radius21,&StartPhi1,&EndPhi1,&PointOrder1);
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Radius11));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Radius21));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(StartPhi1));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(EndPhi1));
                PyTuple_SET_ITEM(ret, 7, PyString_FromString(PointOrder1.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldllld", &Algorithm2,&MaxNumPoints2,&MaxClosureDist2,&ClippingEndPoints2,&VossTabSize2,&Iterations2,&ClippingFactor2)) {
            {
            // with output params
                double Row2;
                double Column2;
                double Phi2;
                double Radius12;
                double Radius22;
                double StartPhi2;
                double EndPhi2;
                HalconCpp::HString PointOrder2;
                self->XLDCont->FitEllipseContourXld(Algorithm2,MaxNumPoints2,MaxClosureDist2,ClippingEndPoints2,VossTabSize2,Iterations2,ClippingFactor2,&Row2,&Column2,&Phi2,&Radius12,&Radius22,&StartPhi2,&EndPhi2,&PointOrder2);
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Radius12));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Radius22));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(StartPhi2));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(EndPhi2));
                PyTuple_SET_ITEM(ret, 7, PyString_FromString(PointOrder2.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.FitEllipseContourXld()");
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
    char* CloseXLD1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->TestSelfIntersectionXld(HalconCpp::HString(CloseXLD)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &CloseXLD1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->TestSelfIntersectionXld(CloseXLD1));
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
PyHirschXLDCont_GenContourNurbsXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxError1;
    double MaxDistance2;
    char* Weights2;
    double MaxDistance1;
    char* Weights1;
    char* Knots1;
    long Degree2;
    PyObject* MaxDistance;
    double MaxError2;
    PyObject* Cols;
    long Degree1;
    char* Knots2;
    PyObject* Rows1;
    PyObject* MaxError;
    PyObject* Cols1;
    long Degree;
    PyObject* Weights;
    PyObject* Rows;
    PyObject* Rows2;
    PyObject* Cols2;
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
        if (PyArg_ParseTuple(args, "OOssldd", &Rows2,&Cols2,&Knots2,&Weights2,&Degree2,&MaxError2,&MaxDistance2)) {
            if (PyHirschTuple_Check(Rows2) && PyHirschTuple_Check(Cols2)) {
                self->XLDCont->GenContourNurbsXld(*(((PyHirschTuple*)Rows2)->Tuple),*(((PyHirschTuple*)Cols2)->Tuple),Knots2,Weights2,Degree2,MaxError2,MaxDistance2);
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOssldd", &Rows1,&Cols1,&Knots1,&Weights1,&Degree1,&MaxError1,&MaxDistance1)) {
            if (PyHirschTuple_Check(Rows1) && PyHirschTuple_Check(Cols1)) {
                self->XLDCont->GenContourNurbsXld(*(((PyHirschTuple*)Rows1)->Tuple),*(((PyHirschTuple*)Cols1)->Tuple),HalconCpp::HString(Knots1),HalconCpp::HString(Weights1),Degree1,MaxError1,MaxDistance1);
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
PyHirschXLDCont_ReadContourXldArcInfo(PyHirschXLDCont*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->XLDCont->ReadContourXldArcInfo(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->ReadContourXldArcInfo(HalconCpp::HString(FileName));
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->ContourPointNumXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ShapeTransXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Type3;
    char* Type1;
    char* Type2;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->ShapeTransXld(HalconCpp::HString(Type)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Type2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ShapeTransXld(HalconCpp::HString(Type2)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Type3)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ShapeTransXld(Type3));
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
    double Phi1;
    double Radius1;
    double Radius11;
    long ClippingEndPoints;
    double Radius2;
    char* DistanceMode;
    char* DistanceMode1;
    double Radius21;
    double Column1;
    double Phi;
    double Row1;
    long ClippingEndPoints1;
    
    try {
        if (PyArg_ParseTuple(args, "slddddd", &DistanceMode1,&ClippingEndPoints1,&Row1,&Column1,&Phi1,&Radius11,&Radius21)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->DistEllipseContourPointsXld(DistanceMode1,ClippingEndPoints1,Row1,Column1,Phi1,Radius11,Radius21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "slddddd", &DistanceMode,&ClippingEndPoints,&Row,&Column,&Phi,&Radius1,&Radius2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->DistEllipseContourPointsXld(HalconCpp::HString(DistanceMode),ClippingEndPoints,Row,Column,Phi,Radius1,Radius2));
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
        double Row1;
        double Column1;
        HalconCpp::HString PointOrder1;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->AreaCenterXld(&Row1,&Column1,&PointOrder1)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Row1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Column1));
        PyTuple_SET_ITEM(ret, 3, PyString_FromString(PointOrder1.Text()));
        
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->TestClosedXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CropContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Row1;
    PyObject* Col2;
    double Row22;
    double Col21;
    char* CloseContours1;
    char* CloseContours;
    double Row11;
    PyObject* Col1;
    double Row12;
    double Col12;
    double Col11;
    PyObject* Row2;
    double Col22;
    double Row21;
    char* CloseContours2;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Row11,&Col11,&Row21,&Col21,&CloseContours1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CropContoursXld(Row11,Col11,Row21,Col21,HalconCpp::HString(CloseContours1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddds", &Row12,&Col12,&Row22,&Col22,&CloseContours2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CropContoursXld(Row12,Col12,Row22,Col22,CloseContours2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOs", &Row1,&Col1,&Row2,&Col2,&CloseContours)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Col1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Col2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CropContoursXld(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Col1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Col2)->Tuple),HalconCpp::HString(CloseContours)));
            }
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
PyHirschXLDCont_MomentsAnyPointsXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* CenterRow;
    char* Mode1;
    long Q2;
    double CenterRow2;
    double Area1;
    PyObject* P;
    char* Mode2;
    long Q1;
    double Area2;
    PyObject* Q;
    long P2;
    PyObject* CenterCol;
    double CenterCol1;
    PyObject* Area;
    double CenterRow1;
    char* Mode;
    long P1;
    double CenterCol2;
    
    try {
        if (PyArg_ParseTuple(args, "sdddll", &Mode2,&Area2,&CenterRow2,&CenterCol2,&P2,&Q2)) {
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyPointsXld(Mode2,Area2,CenterRow2,CenterCol2,P2,Q2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOOOO", &Mode,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            if (PyHirschTuple_Check(Area) && PyHirschTuple_Check(CenterRow) && PyHirschTuple_Check(CenterCol) && PyHirschTuple_Check(P) && PyHirschTuple_Check(Q)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->MomentsAnyPointsXld(HalconCpp::HString(Mode),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddll", &Mode1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyPointsXld(HalconCpp::HString(Mode1),Area1,CenterRow1,CenterCol1,P1,Q1));
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
PyHirschXLDCont_UnionCollinearContoursExtXld(PyHirschXLDCont*self, PyObject *args)
{
    double MaxRegrError1;
    char* Mode1;
    double MaxDistAbs1;
    double MaxAngle;
    double MaxDistRel;
    double MaxRegrError;
    double WeightDist;
    double MaxAngle1;
    double MaxShift;
    double WeightAngle1;
    double WeightShift;
    char* Mode;
    double WeightDist1;
    double MaxOverlap;
    double MaxDistRel1;
    double WeightLink1;
    double WeightShift1;
    double WeightRegr;
    double MaxCosts1;
    double MaxShift1;
    double WeightAngle;
    double WeightLink;
    double MaxCosts;
    double MaxDistAbs;
    double MaxOverlap1;
    double WeightRegr1;
    
    try {
        if (PyArg_ParseTuple(args, "dddddddddddds", &MaxDistAbs,&MaxDistRel,&MaxShift,&MaxAngle,&MaxOverlap,&MaxRegrError,&MaxCosts,&WeightDist,&WeightShift,&WeightAngle,&WeightLink,&WeightRegr,&Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCollinearContoursExtXld(MaxDistAbs,MaxDistRel,MaxShift,MaxAngle,MaxOverlap,MaxRegrError,MaxCosts,WeightDist,WeightShift,WeightAngle,WeightLink,WeightRegr,HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddddddddds", &MaxDistAbs1,&MaxDistRel1,&MaxShift1,&MaxAngle1,&MaxOverlap1,&MaxRegrError1,&MaxCosts1,&WeightDist1,&WeightShift1,&WeightAngle1,&WeightLink1,&WeightRegr1,&Mode1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCollinearContoursExtXld(MaxDistAbs1,MaxDistRel1,MaxShift1,MaxAngle1,MaxOverlap1,MaxRegrError1,MaxCosts1,WeightDist1,WeightShift1,WeightAngle1,WeightLink1,WeightRegr1,Mode1));
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
    char* Operation2;
    char* Attribute1;
    char* Operation1;
    double Min1;
    PyObject* Attribute;
    char* Attribute2;
    PyObject* Min;
    double Max1;
    double Min2;
    double Max2;
    PyObject* Max;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Attribute2,&Operation2,&Min2,&Max2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SegmentContourAttribXld(Attribute2,Operation2,Min2,Max2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Attribute1,&Operation1,&Min1,&Max1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SegmentContourAttribXld(HalconCpp::HString(Attribute1),HalconCpp::HString(Operation1),Min1,Max1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OsOO", &Attribute,&Operation,&Min,&Max)) {
            if (PyHirschTuple_Check(Attribute) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SegmentContourAttribXld(*(((PyHirschTuple*)Attribute)->Tuple),HalconCpp::HString(Operation),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
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
PyHirschXLDCont_MomentsAnyXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* CenterRow;
    char* Mode1;
    long Q2;
    double CenterRow2;
    double Area1;
    PyObject* P;
    PyObject* PointOrder;
    long P2;
    char* Mode2;
    char* PointOrder1;
    long Q1;
    double Area2;
    PyObject* Q;
    char* PointOrder2;
    PyObject* CenterCol;
    double CenterCol1;
    PyObject* Area;
    double CenterRow1;
    char* Mode;
    long P1;
    double CenterCol2;
    
    try {
        if (PyArg_ParseTuple(args, "ssdddll", &Mode2,&PointOrder2,&Area2,&CenterRow2,&CenterCol2,&P2,&Q2)) {
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyXld(Mode2,PointOrder2,Area2,CenterRow2,CenterCol2,P2,Q2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdddll", &Mode1,&PointOrder1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyXld(HalconCpp::HString(Mode1),HalconCpp::HString(PointOrder1),Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOOOOO", &Mode,&PointOrder,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            if (PyHirschTuple_Check(PointOrder) && PyHirschTuple_Check(Area) && PyHirschTuple_Check(CenterRow) && PyHirschTuple_Check(CenterCol) && PyHirschTuple_Check(P) && PyHirschTuple_Check(Q)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->MomentsAnyXld(HalconCpp::HString(Mode),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
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
PyHirschXLDCont_ReadContourXldDxf(PyHirschXLDCont*self, PyObject *args)
{
    char* GenParamName1;
    PyObject* GenParamName;
    char* FileName1;
    char* GenParamName2;
    double GenParamValue2;
    PyObject* GenParamValue;
    char* FileName;
    char* FileName2;
    double GenParamValue1;
    
    try {
        if (PyArg_ParseTuple(args, "sOO", &FileName,&GenParamName,&GenParamValue)) {
            if (PyHirschTuple_Check(GenParamName) && PyHirschTuple_Check(GenParamValue)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->ReadContourXldDxf(HalconCpp::HString(FileName),*(((PyHirschTuple*)GenParamName)->Tuple),*(((PyHirschTuple*)GenParamValue)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssd", &FileName2,&GenParamName2,&GenParamValue2)) {
            return PyString_FromString(self->XLDCont->ReadContourXldDxf(FileName2,GenParamName2,GenParamValue2).Text());
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssd", &FileName1,&GenParamName1,&GenParamValue1)) {
            return PyString_FromString(self->XLDCont->ReadContourXldDxf(HalconCpp::HString(FileName1),HalconCpp::HString(GenParamName1),GenParamValue1).Text());
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ReadContourXldDxf()");
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
    double Margin1;
    long MaxImagesCont1;
    long MaxImagesCont;
    char* MergeBorder1;
    char* MergeBorder;
    double Margin2;
    PyObject* PrevConts2;
    PyObject* PrevConts1;
    PyObject* Margin;
    PyObject* PrevConts;
    long ImageHeight1;
    long MaxImagesCont2;
    char* MergeBorder2;
    long ImageHeight;
    long ImageHeight2;
    
    try {
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts2,&ImageHeight2,&Margin2,&MergeBorder2,&MaxImagesCont2)) {
            if (PyHirschXLDCont_Check(PrevConts2)) {
                HalconCpp::HXLDCont PrevMergedConts2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDCont*)PrevConts2)->XLDCont),&PrevMergedConts2,ImageHeight2,Margin2,MergeBorder2,MaxImagesCont2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts1,&ImageHeight1,&Margin1,&MergeBorder1,&MaxImagesCont1)) {
            if (PyHirschXLDCont_Check(PrevConts1)) {
                HalconCpp::HXLDCont PrevMergedConts1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDCont*)PrevConts1)->XLDCont),&PrevMergedConts1,ImageHeight1,Margin1,HalconCpp::HString(MergeBorder1),MaxImagesCont1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlOsl", &PrevConts,&ImageHeight,&Margin,&MergeBorder,&MaxImagesCont)) {
            if (PyHirschXLDCont_Check(PrevConts) && PyHirschTuple_Check(Margin)) {
                HalconCpp::HXLDCont PrevMergedConts;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDCont*)PrevConts)->XLDCont),&PrevMergedConts,ImageHeight,*(((PyHirschTuple*)Margin)->Tuple),HalconCpp::HString(MergeBorder),MaxImagesCont)));
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
    long Iterations;
    char* Algorithm;
    double ClippingFactor1;
    long MaxNumPoints;
    double ClippingFactor;
    long ClippingEndPoints;
    double ClippingFactor2;
    long ClippingEndPoints2;
    long Iterations2;
    long Iterations1;
    char* Algorithm2;
    long ClippingEndPoints1;
    long MaxNumPoints2;
    char* Algorithm1;
    long MaxNumPoints1;
    
    try {
        if (PyArg_ParseTuple(args, "sllld", &Algorithm2,&MaxNumPoints2,&ClippingEndPoints2,&Iterations2,&ClippingFactor2)) {
            {
            // with output params
                double RowBegin2;
                double ColBegin2;
                double RowEnd2;
                double ColEnd2;
                double Nr2;
                double Nc2;
                double Dist2;
                self->XLDCont->FitLineContourXld(Algorithm2,MaxNumPoints2,ClippingEndPoints2,Iterations2,ClippingFactor2,&RowBegin2,&ColBegin2,&RowEnd2,&ColEnd2,&Nr2,&Nc2,&Dist2);
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(RowBegin2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(ColBegin2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(RowEnd2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(ColEnd2));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Nr2));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Nc2));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(Dist2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllld", &Algorithm1,&MaxNumPoints1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                double RowBegin1;
                double ColBegin1;
                double RowEnd1;
                double ColEnd1;
                double Nr1;
                double Nc1;
                double Dist1;
                self->XLDCont->FitLineContourXld(HalconCpp::HString(Algorithm1),MaxNumPoints1,ClippingEndPoints1,Iterations1,ClippingFactor1,&RowBegin1,&ColBegin1,&RowEnd1,&ColEnd1,&Nr1,&Nc1,&Dist1);
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(RowBegin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(ColBegin1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(RowEnd1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(ColEnd1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Nr1));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Nc1));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(Dist1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllld", &Algorithm,&MaxNumPoints,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            {
            // with output params
                HalconCpp::HTuple RowBegin;
                HalconCpp::HTuple ColBegin;
                HalconCpp::HTuple RowEnd;
                HalconCpp::HTuple ColEnd;
                HalconCpp::HTuple Nr;
                HalconCpp::HTuple Nc;
                HalconCpp::HTuple Dist;
                self->XLDCont->FitLineContourXld(HalconCpp::HString(Algorithm),MaxNumPoints,ClippingEndPoints,Iterations,ClippingFactor,&RowBegin,&ColBegin,&RowEnd,&ColEnd,&Nr,&Nc,&Dist);
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(RowBegin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(ColBegin));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(RowEnd));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(ColEnd));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Nr));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Nc));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(Dist));
                
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
    double MaxOverlap2;
    double MaxDist1;
    double MaxDistPerp;
    double MaxOverlap;
    char* Mode1;
    double FitClippingLength1;
    double FitLength2;
    double FitLength1;
    double MaxTangAngle2;
    double MaxDist;
    double MaxDist2;
    double MaxDistPerp2;
    double FitClippingLength2;
    double MaxTangAngle;
    double MaxTangAngle1;
    char* Mode2;
    double FitClippingLength;
    double MaxOverlap1;
    double MaxDistPerp1;
    char* Mode;
    PyObject* FitLength;
    
    try {
        if (PyArg_ParseTuple(args, "dddddds", &FitClippingLength2,&FitLength2,&MaxTangAngle2,&MaxDist2,&MaxDistPerp2,&MaxOverlap2,&Mode2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCotangentialContoursXld(FitClippingLength2,FitLength2,MaxTangAngle2,MaxDist2,MaxDistPerp2,MaxOverlap2,Mode2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dOdddds", &FitClippingLength,&FitLength,&MaxTangAngle,&MaxDist,&MaxDistPerp,&MaxOverlap,&Mode)) {
            if (PyHirschTuple_Check(FitLength)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCotangentialContoursXld(FitClippingLength,*(((PyHirschTuple*)FitLength)->Tuple),MaxTangAngle,MaxDist,MaxDistPerp,MaxOverlap,HalconCpp::HString(Mode)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddds", &FitClippingLength1,&FitLength1,&MaxTangAngle1,&MaxDist1,&MaxDistPerp1,&MaxOverlap1,&Mode1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCotangentialContoursXld(FitClippingLength1,FitLength1,MaxTangAngle1,MaxDist1,MaxDistPerp1,MaxOverlap1,HalconCpp::HString(Mode1)));
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
    PyObject* Iterations;
    char* Mode1;
    double MaxDiff1;
    double MaxDist1;
    double Percent;
    char* Iterations1;
    char* Mode2;
    double MaxDist;
    double Percent1;
    char* Iterations2;
    double MaxDist2;
    double Percent2;
    double MaxDiff2;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dddss", &MaxDist1,&MaxDiff1,&Percent1,&Mode1,&Iterations1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionStraightContoursXld(MaxDist1,MaxDiff1,Percent1,HalconCpp::HString(Mode1),HalconCpp::HString(Iterations1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddsO", &MaxDist,&MaxDiff,&Percent,&Mode,&Iterations)) {
            if (PyHirschTuple_Check(Iterations)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionStraightContoursXld(MaxDist,MaxDiff,Percent,HalconCpp::HString(Mode),*(((PyHirschTuple*)Iterations)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddss", &MaxDist2,&MaxDiff2,&Percent2,&Mode2,&Iterations2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionStraightContoursXld(MaxDist2,MaxDiff2,Percent2,Mode2,Iterations2));
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
    
    try {
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
    char* Mode1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschRegion_FromHRegion(self->XLDCont->GenRegionContourXld(HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschRegion_FromHRegion(self->XLDCont->GenRegionContourXld(Mode1));
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
PyHirschXLDCont_GenParallelContourXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode1;
    PyObject* Distance;
    char* Mode2;
    double Distance1;
    double Distance2;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode1,&Distance1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->GenParallelContourXld(HalconCpp::HString(Mode1),Distance1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sO", &Mode,&Distance)) {
            if (PyHirschTuple_Check(Distance)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->GenParallelContourXld(HalconCpp::HString(Mode),*(((PyHirschTuple*)Distance)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Mode2,&Distance2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->GenParallelContourXld(Mode2,Distance2));
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
PyHirschXLDCont_CircularityXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->CircularityXld());
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
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Col));
        
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->LengthXld());
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
    double Max21;
    double Min1;
    double Max1;
    double Min2;
    double Min11;
    double Max11;
    double Min21;
    char* Feature;
    char* Feature1;
    
    try {
        if (PyArg_ParseTuple(args, "sdddd", &Feature,&Min1,&Max1,&Min2,&Max2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectContoursXld(HalconCpp::HString(Feature),Min1,Max1,Min2,Max2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddd", &Feature1,&Min11,&Max11,&Min21,&Max21)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectContoursXld(Feature1,Min11,Max11,Min21,Max21));
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
PyHirschXLDCont_FitRectangle2ContourXld(PyHirschXLDCont*self, PyObject *args)
{
    long Iterations;
    char* Algorithm;
    double ClippingFactor1;
    long MaxNumPoints;
    double ClippingFactor;
    double MaxClosureDist;
    long ClippingEndPoints;
    double ClippingFactor2;
    long ClippingEndPoints2;
    long Iterations2;
    long Iterations1;
    char* Algorithm2;
    long ClippingEndPoints1;
    long MaxNumPoints2;
    char* Algorithm1;
    double MaxClosureDist2;
    long MaxNumPoints1;
    double MaxClosureDist1;
    
    try {
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm2,&MaxNumPoints2,&MaxClosureDist2,&ClippingEndPoints2,&Iterations2,&ClippingFactor2)) {
            {
            // with output params
                double Row2;
                double Column2;
                double Phi2;
                double Length12;
                double Length22;
                HalconCpp::HString PointOrder2;
                self->XLDCont->FitRectangle2ContourXld(Algorithm2,MaxNumPoints2,MaxClosureDist2,ClippingEndPoints2,Iterations2,ClippingFactor2,&Row2,&Column2,&Phi2,&Length12,&Length22,&PointOrder2);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Length12));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Length22));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder2.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Phi;
                HalconCpp::HTuple Length1;
                HalconCpp::HTuple Length2;
                HalconCpp::HTuple PointOrder;
                self->XLDCont->FitRectangle2ContourXld(HalconCpp::HString(Algorithm),MaxNumPoints,MaxClosureDist,ClippingEndPoints,Iterations,ClippingFactor,&Row,&Column,&Phi,&Length1,&Length2,&PointOrder);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Phi));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Length1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Length2));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                double Row1;
                double Column1;
                double Phi1;
                double Length11;
                double Length21;
                HalconCpp::HString PointOrder1;
                self->XLDCont->FitRectangle2ContourXld(HalconCpp::HString(Algorithm1),MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,Iterations1,ClippingFactor1,&Row1,&Column1,&Phi1,&Length11,&Length21,&PointOrder1);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Length11));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Length21));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder1.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.FitRectangle2ContourXld()");
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
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(HistoValues));
                
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
    PyObject* MaxTangentAngle;
    double MaxRadiusDiff1;
    double MaxTangentAngle1;
    double MaxArcOverlap1;
    double MaxArcAngleDiff1;
    double MaxCenterDist2;
    PyObject* MaxArcOverlap;
    PyObject* MaxRadiusDiff;
    long Iterations;
    double MaxCenterDist1;
    double MaxDist2;
    char* MergeSmallContours2;
    PyObject* MaxArcAngleDiff;
    long Iterations2;
    double MaxTangentAngle2;
    PyObject* MaxDist;
    double MaxArcOverlap2;
    double MaxArcAngleDiff2;
    double MaxRadiusDiff2;
    PyObject* MaxCenterDist;
    double MaxDist1;
    char* MergeSmallContours1;
    long Iterations1;
    char* MergeSmallContours;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddsl", &MaxArcAngleDiff1,&MaxArcOverlap1,&MaxTangentAngle1,&MaxDist1,&MaxRadiusDiff1,&MaxCenterDist1,&MergeSmallContours1,&Iterations1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCocircularContoursXld(MaxArcAngleDiff1,MaxArcOverlap1,MaxTangentAngle1,MaxDist1,MaxRadiusDiff1,MaxCenterDist1,HalconCpp::HString(MergeSmallContours1),Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ddddddsl", &MaxArcAngleDiff2,&MaxArcOverlap2,&MaxTangentAngle2,&MaxDist2,&MaxRadiusDiff2,&MaxCenterDist2,&MergeSmallContours2,&Iterations2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCocircularContoursXld(MaxArcAngleDiff2,MaxArcOverlap2,MaxTangentAngle2,MaxDist2,MaxRadiusDiff2,MaxCenterDist2,MergeSmallContours2,Iterations2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOsl", &MaxArcAngleDiff,&MaxArcOverlap,&MaxTangentAngle,&MaxDist,&MaxRadiusDiff,&MaxCenterDist,&MergeSmallContours,&Iterations)) {
            if (PyHirschTuple_Check(MaxArcAngleDiff) && PyHirschTuple_Check(MaxArcOverlap) && PyHirschTuple_Check(MaxTangentAngle) && PyHirschTuple_Check(MaxDist) && PyHirschTuple_Check(MaxRadiusDiff) && PyHirschTuple_Check(MaxCenterDist)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionCocircularContoursXld(*(((PyHirschTuple*)MaxArcAngleDiff)->Tuple),*(((PyHirschTuple*)MaxArcOverlap)->Tuple),*(((PyHirschTuple*)MaxTangentAngle)->Tuple),*(((PyHirschTuple*)MaxDist)->Tuple),*(((PyHirschTuple*)MaxRadiusDiff)->Tuple),*(((PyHirschTuple*)MaxCenterDist)->Tuple),HalconCpp::HString(MergeSmallContours),Iterations));
            }
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
    PyObject* Radius1;
    double EndPhi2;
    double Phi1;
    PyObject* PointOrder;
    double Row2;
    double Column2;
    char* PointOrder1;
    PyObject* Radius2;
    double Resolution;
    PyObject* StartPhi;
    double Resolution1;
    double StartPhi1;
    PyObject* Column;
    PyObject* Row;
    double Radius12;
    double Resolution2;
    double EndPhi1;
    PyObject* EndPhi;
    PyObject* Phi;
    double Radius21;
    double Row1;
    double Phi2;
    double Radius11;
    double Radius22;
    char* PointOrder2;
    double StartPhi2;
    double Column1;
    
    try {
        if (PyArg_ParseTuple(args, "dddddddsd", &Row1,&Column1,&Phi1,&Radius11,&Radius21,&StartPhi1,&EndPhi1,&PointOrder1,&Resolution1)) {
            self->XLDCont->GenEllipseContourXld(Row1,Column1,Phi1,Radius11,Radius21,StartPhi1,EndPhi1,HalconCpp::HString(PointOrder1),Resolution1);
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
        if (PyArg_ParseTuple(args, "dddddddsd", &Row2,&Column2,&Phi2,&Radius12,&Radius22,&StartPhi2,&EndPhi2,&PointOrder2,&Resolution2)) {
            self->XLDCont->GenEllipseContourXld(Row2,Column2,Phi2,Radius12,Radius22,StartPhi2,EndPhi2,PointOrder2,Resolution2);
            Py_INCREF(Py_None);
            return Py_None;
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
    char* Mode1;
    char* Mode;
    long Iterations1;
    long Iterations;
    
    try {
        if (PyArg_ParseTuple(args, "sl", &Mode1,&Iterations1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->RegressContoursXld(Mode1,Iterations1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sl", &Mode,&Iterations)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->RegressContoursXld(HalconCpp::HString(Mode),Iterations));
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
    char* RowOrCol1;
    char* Order1;
    char* SortMode;
    char* RowOrCol;
    char* SortMode1;
    char* Order;
    
    try {
        if (PyArg_ParseTuple(args, "sss", &SortMode1,&Order1,&RowOrCol1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SortContoursXld(SortMode1,Order1,RowOrCol1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sss", &SortMode,&Order,&RowOrCol)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SortContoursXld(HalconCpp::HString(SortMode),HalconCpp::HString(Order),HalconCpp::HString(RowOrCol)));
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
    char* Name2;
    char* Name1;
    PyObject* Name;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Name2)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetContourGlobalAttribXld(Name2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Name1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetContourGlobalAttribXld(HalconCpp::HString(Name1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Name)) {
            if (PyHirschTuple_Check(Name)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetContourGlobalAttribXld(*(((PyHirschTuple*)Name)->Tuple)));
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
    char* Mode1;
    double MaxDistRel1;
    double MaxDistAbs1;
    double MaxDistRel;
    double MaxDistAbs;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "dds", &MaxDistAbs,&MaxDistRel,&Mode)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionAdjacentContoursXld(MaxDistAbs,MaxDistRel,HalconCpp::HString(Mode)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dds", &MaxDistAbs1,&MaxDistRel1,&Mode1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->UnionAdjacentContoursXld(MaxDistAbs1,MaxDistRel1,Mode1));
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
PyHirschXLDCont_OrientationXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->OrientationXld());
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->QueryContourGlobalAttribsXld());
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
    char* Rotation2;
    PyObject* Column1;
    PyObject* Column2;
    char* Rotation1;
    char* MapType;
    long GridSpacing2;
    char* MapType1;
    PyObject* Rotation;
    long GridSpacing1;
    PyObject* Image;
    long GridSpacing;
    PyObject* Row2;
    PyObject* Image2;
    char* MapType2;
    
    try {
        if (PyArg_ParseTuple(args, "OlsOOs", &Image2,&GridSpacing2,&Rotation2,&Row2,&Column2,&MapType2)) {
            if (PyHirschImage_Check(Image2) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Column2)) {
                HalconCpp::HXLDCont Meshes2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLDCont->GenGridRectificationMap(*(((PyHirschImage*)Image2)->Image),&Meshes2,GridSpacing2,Rotation2,*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),MapType2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(Meshes2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlOOOs", &Image,&GridSpacing,&Rotation,&Row,&Column,&MapType)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                HalconCpp::HXLDCont Meshes;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLDCont->GenGridRectificationMap(*(((PyHirschImage*)Image)->Image),&Meshes,GridSpacing,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),HalconCpp::HString(MapType))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(Meshes));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlsOOs", &Image1,&GridSpacing1,&Rotation1,&Row1,&Column1,&MapType1)) {
            if (PyHirschImage_Check(Image1) && PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Column1)) {
                HalconCpp::HXLDCont Meshes1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLDCont->GenGridRectificationMap(*(((PyHirschImage*)Image1)->Image),&Meshes1,GridSpacing1,HalconCpp::HString(Rotation1),*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),HalconCpp::HString(MapType1))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(Meshes1));
                
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
    double Row2;
    char* Mode1;
    double Phi1;
    double Radius22;
    long MaxNumPoints2;
    double Column2;
    double Row;
    double Radius1;
    long ClippingEndPoints1;
    char* Mode2;
    double Column;
    double Radius12;
    long MaxNumPoints;
    double Radius2;
    double Radius21;
    double Row1;
    long MaxNumPoints1;
    double Phi2;
    double Radius11;
    long ClippingEndPoints;
    char* Mode;
    long ClippingEndPoints2;
    double Column1;
    double Phi;
    
    try {
        if (PyArg_ParseTuple(args, "sllddddd", &Mode,&MaxNumPoints,&ClippingEndPoints,&Row,&Column,&Phi,&Radius1,&Radius2)) {
            {
            // with output params
                HalconCpp::HTuple MinDist;
                HalconCpp::HTuple MaxDist;
                HalconCpp::HTuple AvgDist;
                HalconCpp::HTuple SigmaDist;
                self->XLDCont->DistEllipseContourXld(HalconCpp::HString(Mode),MaxNumPoints,ClippingEndPoints,Row,Column,Phi,Radius1,Radius2,&MinDist,&MaxDist,&AvgDist,&SigmaDist);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(MinDist));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(MaxDist));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(AvgDist));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(SigmaDist));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllddddd", &Mode2,&MaxNumPoints2,&ClippingEndPoints2,&Row2,&Column2,&Phi2,&Radius12,&Radius22)) {
            {
            // with output params
                double MinDist2;
                double MaxDist2;
                double AvgDist2;
                double SigmaDist2;
                self->XLDCont->DistEllipseContourXld(Mode2,MaxNumPoints2,ClippingEndPoints2,Row2,Column2,Phi2,Radius12,Radius22,&MinDist2,&MaxDist2,&AvgDist2,&SigmaDist2);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(MinDist2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(MaxDist2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(AvgDist2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(SigmaDist2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sllddddd", &Mode1,&MaxNumPoints1,&ClippingEndPoints1,&Row1,&Column1,&Phi1,&Radius11,&Radius21)) {
            {
            // with output params
                double MinDist1;
                double MaxDist1;
                double AvgDist1;
                double SigmaDist1;
                self->XLDCont->DistEllipseContourXld(HalconCpp::HString(Mode1),MaxNumPoints1,ClippingEndPoints1,Row1,Column1,Phi1,Radius11,Radius21,&MinDist1,&MaxDist1,&AvgDist1,&SigmaDist1);
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(MinDist1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(MaxDist1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(AvgDist1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(SigmaDist1));
                
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
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->DistRectangle2ContourPointsXld(ClippingEndPoints,Row,Column,Phi,Length1,Length2));
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
    PyObject* Objects2;
    
    try {
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
    PyObject* Objects2;
    
    try {
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
PyHirschXLDCont_TestXldPoint(PyHirschXLDCont*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
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
PyHirschXLDCont_QueryContourAttribsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->QueryContourAttribsXld());
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
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetRegressParamsXld(&Nx,&Ny,&Dist,&Fpx,&Fpy,&Lpx,&Lpy,&Mean,&Deviation)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Nx));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Ny));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Dist));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Fpx));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Fpy));
        PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(Lpx));
        PyTuple_SET_ITEM(ret, 7, PyHirschTuple_GetAsScalarIfOne(Lpy));
        PyTuple_SET_ITEM(ret, 8, PyHirschTuple_GetAsScalarIfOne(Mean));
        PyTuple_SET_ITEM(ret, 9, PyHirschTuple_GetAsScalarIfOne(Deviation));
        
        return ret;
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
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row1));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Col1));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Length1));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(Phi1));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(Row2));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(Col2));
        PyTuple_SET_ITEM(ret, 6, PyHirschTuple_GetAsScalarIfOne(Length2));
        PyTuple_SET_ITEM(ret, 7, PyHirschTuple_GetAsScalarIfOne(Phi2));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_FitCircleContourXld(PyHirschXLDCont*self, PyObject *args)
{
    long Iterations;
    char* Algorithm;
    double ClippingFactor1;
    long MaxNumPoints;
    double ClippingFactor;
    double MaxClosureDist;
    long ClippingEndPoints;
    double ClippingFactor2;
    long ClippingEndPoints2;
    long Iterations2;
    long Iterations1;
    char* Algorithm2;
    long ClippingEndPoints1;
    long MaxNumPoints2;
    char* Algorithm1;
    double MaxClosureDist2;
    long MaxNumPoints1;
    double MaxClosureDist1;
    
    try {
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm2,&MaxNumPoints2,&MaxClosureDist2,&ClippingEndPoints2,&Iterations2,&ClippingFactor2)) {
            {
            // with output params
                double Row2;
                double Column2;
                double Radius2;
                double StartPhi2;
                double EndPhi2;
                HalconCpp::HString PointOrder2;
                self->XLDCont->FitCircleContourXld(Algorithm2,MaxNumPoints2,MaxClosureDist2,ClippingEndPoints2,Iterations2,ClippingFactor2,&Row2,&Column2,&Radius2,&StartPhi2,&EndPhi2,&PointOrder2);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column2));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius2));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(StartPhi2));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(EndPhi2));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder2.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm,&MaxNumPoints,&MaxClosureDist,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            {
            // with output params
                HalconCpp::HTuple Row;
                HalconCpp::HTuple Column;
                HalconCpp::HTuple Radius;
                HalconCpp::HTuple StartPhi;
                HalconCpp::HTuple EndPhi;
                HalconCpp::HTuple PointOrder;
                self->XLDCont->FitCircleContourXld(HalconCpp::HString(Algorithm),MaxNumPoints,MaxClosureDist,ClippingEndPoints,Iterations,ClippingFactor,&Row,&Column,&Radius,&StartPhi,&EndPhi,&PointOrder);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(Row));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(Column));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_GetAsScalarIfOne(Radius));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_GetAsScalarIfOne(StartPhi));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_GetAsScalarIfOne(EndPhi));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_GetAsScalarIfOne(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                double Row1;
                double Column1;
                double Radius1;
                double StartPhi1;
                double EndPhi1;
                HalconCpp::HString PointOrder1;
                self->XLDCont->FitCircleContourXld(HalconCpp::HString(Algorithm1),MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,Iterations1,ClippingFactor1,&Row1,&Column1,&Radius1,&StartPhi1,&EndPhi1,&PointOrder1);
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(Row1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(StartPhi1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(EndPhi1));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder1.Text()));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.FitCircleContourXld()");
        return NULL;
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
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectObj(Index3));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->SelectObj(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Index1)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectObj(Index1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Index2)) {
            if (PyHirschTuple_Check(Index2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SelectObj(*(((PyHirschTuple*)Index2)->Tuple)));
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
PyHirschXLDCont_CopyObj(PyHirschXLDCont*self, PyObject *args)
{
    long NumObj;
    long Index1;
    long NumObj1;
    long Index;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Index1,&NumObj1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CopyObj(Index1,NumObj1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ll", &Index,&NumObj)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->CopyObj(Index,NumObj));
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
    char* Mode1;
    char* Mode2;
    double Length2;
    PyObject* Length;
    double Length1;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode1,&Length1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipEndPointsContoursXld(HalconCpp::HString(Mode1),Length1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sO", &Mode,&Length)) {
            if (PyHirschTuple_Check(Length)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipEndPointsContoursXld(HalconCpp::HString(Mode),*(((PyHirschTuple*)Length)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Mode2,&Length2)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipEndPointsContoursXld(Mode2,Length2));
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
PyHirschXLDCont_GetContourAngleXld(PyHirschXLDCont*self, PyObject *args)
{
    char* AngleMode1;
    char* CalcMode;
    long Lookaround;
    char* CalcMode1;
    char* AngleMode;
    long Lookaround1;
    
    try {
        if (PyArg_ParseTuple(args, "ssl", &AngleMode1,&CalcMode1,&Lookaround1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetContourAngleXld(AngleMode1,CalcMode1,Lookaround1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssl", &AngleMode,&CalcMode,&Lookaround)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetContourAngleXld(HalconCpp::HString(AngleMode),HalconCpp::HString(CalcMode),Lookaround));
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
PyHirschXLDCont_GetContourAttribXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Name1;
    char* Name;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Name)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetContourAttribXld(HalconCpp::HString(Name)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Name1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->GetContourAttribXld(Name1));
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->OrientationPointsXld());
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
    PyObject* Contour21;
    char* Mode1;
    char* Mode2;
    PyObject* Contour22;
    PyObject* Contour2;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour22,&Mode2)) {
            if (PyHirschXLDCont_Check(Contour22)) {
                double DistanceMin2;
                double DistanceMax2;
                self->XLDCont->DistanceCc(*(((PyHirschXLDCont*)Contour22)->XLDCont),Mode2,&DistanceMin2,&DistanceMax2);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin2));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Contour21,&Mode1)) {
            if (PyHirschXLDCont_Check(Contour21)) {
                double DistanceMin1;
                double DistanceMax1;
                self->XLDCont->DistanceCc(*(((PyHirschXLDCont*)Contour21)->XLDCont),HalconCpp::HString(Mode1),&DistanceMin1,&DistanceMax1);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(DistanceMin1));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2)) {
                HalconCpp::HTuple DistanceMin;
                HalconCpp::HTuple DistanceMax;
                self->XLDCont->DistanceCc(*(((PyHirschXLDCont*)Contour2)->XLDCont),HalconCpp::HString(Mode),&DistanceMin,&DistanceMax);
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(DistanceMin));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(DistanceMax));
                
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
    PyObject* Objects21;
    double Epsilon1;
    PyObject* Objects2;
    PyObject* Epsilon;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Objects21,&Epsilon1)) {
            if (PyHirschXLDCont_Check(Objects21)) {
                return PyInt_FromLong(long(self->XLDCont->CompareObj(*(((PyHirschXLDCont*)Objects21)->XLDCont),Epsilon1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Objects2,&Epsilon)) {
            if (PyHirschXLDCont_Check(Objects2) && PyHirschTuple_Check(Epsilon)) {
                return PyInt_FromLong(long(self->XLDCont->CompareObj(*(((PyHirschXLDCont*)Objects2)->XLDCont),*(((PyHirschTuple*)Epsilon)->Tuple))));
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
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->XLDCont->WriteContourXldDxf(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->WriteContourXldDxf(HalconCpp::HString(FileName));
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLDCont->ConvexityXld());
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
PyHirschXLDCont_WriteContourXldArcInfo(PyHirschXLDCont*self, PyObject *args)
{
    char* FileName1;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->XLDCont->WriteContourXldArcInfo(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->WriteContourXldArcInfo(HalconCpp::HString(FileName));
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
