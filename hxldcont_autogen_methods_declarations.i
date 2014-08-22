PyObject *
PyHirschXLDCont_ProjectiveTransContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "O", &HomMat2D)) {
            if (PyHirschTuple_Check(HomMat2D)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ProjectiveTransContourXld(*(((PyHirschTuple*)HomMat2D)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ProjectiveTransContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenCrossContourXld(PyHirschXLDCont*, PyObject *args)
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
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenCrossContourXld(Row1,Col1,Size1,Angle1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Col,&Size,&Angle)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Size) && PyHirschTuple_Check(Angle)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenCrossContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Size)->Tuple),*(((PyHirschTuple*)Angle)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenCrossContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DifferenceClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Sub;
    PyObject* Sub1;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Sub)) {
            if (PyHirschXLDCont_Check(Sub)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DifferenceClosedContoursXld(*(((PyHirschXLDCont*)Sub)->XLDCont)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Sub1)) {
            if (PyHirschXLDContArray_Check(Sub1)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DifferenceClosedContoursXld(*(((PyHirschXLDContArray*)Sub1)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DifferenceClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistanceCcMin(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contour21;
    char* Mode1;
    PyObject* Contour23;
    PyObject* Contour22;
    char* Mode3;
    PyObject* Mode2;
    PyObject* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour21,&Mode1)) {
            if (PyHirschXLDCont_Check(Contour21)) {
                return PyFloat_FromDouble(self->XLDCont->DistanceCcMin(*(((PyHirschXLDCont*)Contour21)->XLDCont),Mode1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Contour23,&Mode3)) {
            if (PyHirschXLDContArray_Check(Contour23)) {
                return PyFloat_FromDouble(self->XLDCont->DistanceCcMin(*(((PyHirschXLDContArray*)Contour23)->XLDContArray),Mode3));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Contour22,&Mode2)) {
            if (PyHirschXLDContArray_Check(Contour22) && PyHirschTuple_Check(Mode2)) {
                return PyFloat_FromDouble(self->XLDCont->DistanceCcMin(*(((PyHirschXLDContArray*)Contour22)->XLDContArray),*(((PyHirschTuple*)Mode2)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2) && PyHirschTuple_Check(Mode)) {
                return PyFloat_FromDouble(self->XLDCont->DistanceCcMin(*(((PyHirschXLDCont*)Contour2)->XLDCont),*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceCcMin()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DrawNurbsInterp(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Move;
    long WindowHandle1;
    PyObject* KeepRatio;
    char* KeepRatio1;
    PyObject* Degree;
    char* Rotate1;
    PyObject* Scale;
    long Degree1;
    char* Move1;
    PyObject* Rotate;
    char* Scale1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Degree)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Rotate) && PyHirschTuple_Check(Move) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(KeepRatio) && PyHirschTuple_Check(Degree)) {
                Halcon::HTuple ControlRows;
                Halcon::HTuple ControlCols;
                Halcon::HTuple Knots;
                Halcon::HTuple Rows;
                Halcon::HTuple Cols;
                Halcon::HTuple Tangents;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbsInterp(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Rotate)->Tuple),*(((PyHirschTuple*)Move)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)KeepRatio)->Tuple),*(((PyHirschTuple*)Degree)->Tuple),&ControlRows,&ControlCols,&Knots,&Rows,&Cols,&Tangents)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ControlRows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(ControlCols));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Knots));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Rows));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Cols));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Tangents));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lssssl", &WindowHandle1,&Rotate1,&Move1,&Scale1,&KeepRatio1,&Degree1)) {
            {
            // with output params
                Halcon::HTuple ControlRows1;
                Halcon::HTuple ControlCols1;
                Halcon::HTuple Knots1;
                Halcon::HTuple Rows1;
                Halcon::HTuple Cols1;
                Halcon::HTuple Tangents1;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbsInterp(WindowHandle1,Rotate1,Move1,Scale1,KeepRatio1,Degree1,&ControlRows1,&ControlCols1,&Knots1,&Rows1,&Cols1,&Tangents1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ControlRows1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(ControlCols1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Knots1));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Rows1));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Cols1));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Tangents1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DrawNurbsInterp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_AddNoiseWhiteContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Amp;
    PyObject* NumRegrPoints;
    double Amp1;
    long NumRegrPoints1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &NumRegrPoints,&Amp)) {
            if (PyHirschTuple_Check(NumRegrPoints) && PyHirschTuple_Check(Amp)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->AddNoiseWhiteContourXld(*(((PyHirschTuple*)NumRegrPoints)->Tuple),*(((PyHirschTuple*)Amp)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ld", &NumRegrPoints1,&Amp1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->AddNoiseWhiteContourXld(NumRegrPoints1,Amp1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.AddNoiseWhiteContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistEllipseContourPointsXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Radius1;
    PyObject* Row;
    PyObject* ClippingEndPoints;
    double Phi1;
    PyObject* Radius2;
    double Radius11;
    PyObject* Column;
    char* DistanceMode1;
    PyObject* DistanceMode;
    PyObject* Phi;
    double Radius21;
    double Column1;
    long ClippingEndPoints1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "slddddd", &DistanceMode1,&ClippingEndPoints1,&Row1,&Column1,&Phi1,&Radius11,&Radius21)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->DistEllipseContourPointsXld(DistanceMode1,ClippingEndPoints1,Row1,Column1,Phi1,Radius11,Radius21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &DistanceMode,&ClippingEndPoints,&Row,&Column,&Phi,&Radius1,&Radius2)) {
            if (PyHirschTuple_Check(DistanceMode) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2)) {
                return PyHirschTuple_FromHTuple(self->XLDCont->DistEllipseContourPointsXld(*(((PyHirschTuple*)DistanceMode)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistEllipseContourPointsXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsAnyXld(PyHirschXLDCont*self, PyObject *args)
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
                return PyFloat_FromDouble(self->XLDCont->MomentsAnyXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdddll", &Mode1,&PointOrder1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyXld(Mode1,PointOrder1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.MomentsAnyXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsAnyPointsXld(PyHirschXLDCont*self, PyObject *args)
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
                return PyFloat_FromDouble(self->XLDCont->MomentsAnyPointsXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddll", &Mode1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLDCont->MomentsAnyPointsXld(Mode1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.MomentsAnyPointsXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EccentricityXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Bulkiness;
        double StructureFactor;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->EccentricityXld(&Bulkiness,&StructureFactor)));
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
PyHirschXLDCont_AreaCenterPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Row;
        double Column;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->AreaCenterPointsXld(&Row,&Column)));
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
PyHirschXLDCont_SmallestRectangle2Xld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Column;
        double Phi;
        double Length1;
        double Length2;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->SmallestRectangle2Xld(&Column,&Phi,&Length1,&Length2)));
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
PyHirschXLDCont_GenRectangle2ContourXld(PyHirschXLDCont*, PyObject *args)
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
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenRectangle2ContourXld(Row1,Column1,Phi1,Length11,Length21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenRectangle2ContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenRectangle2ContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_PolarTransContourXldInv(PyHirschXLDCont*self, PyObject *args)
{
    long HeightIn1;
    PyObject* Column;
    PyObject* Row;
    double AngleStart1;
    PyObject* AngleEnd;
    long Width1;
    PyObject* HeightIn;
    long Height1;
    long WidthIn1;
    PyObject* WidthIn;
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
        if (PyArg_ParseTuple(args, "ddddddllll", &Row1,&Column1,&AngleStart1,&AngleEnd1,&RadiusStart1,&RadiusEnd1,&WidthIn1,&HeightIn1,&Width1,&Height1)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDCont->PolarTransContourXldInv(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,WidthIn1,HeightIn1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&WidthIn,&HeightIn,&Width,&Height)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(WidthIn) && PyHirschTuple_Check(HeightIn) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDCont->PolarTransContourXldInv(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)WidthIn)->Tuple),*(((PyHirschTuple*)HeightIn)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.PolarTransContourXldInv()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetContourAttribXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Name1;
    PyObject* Name;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Name1)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAttribXld(Name1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Name)) {
            if (PyHirschTuple_Check(Name)) {
                return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAttribXld(*(((PyHirschTuple*)Name)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GetContourAttribXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CompactnessXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLDCont->CompactnessXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_OrientationXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLDCont->OrientationXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EccentricityPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLDCont->EccentricityPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_OrientationPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLDCont->OrientationPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SegmentContoursXld(PyHirschXLDCont*self, PyObject *args)
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
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDCont->SegmentContoursXld(Mode1,SmoothCont1,MaxLineDist11,MaxLineDist21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOO", &Mode,&SmoothCont,&MaxLineDist1,&MaxLineDist2)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(SmoothCont) && PyHirschTuple_Check(MaxLineDist1) && PyHirschTuple_Check(MaxLineDist2)) {
                return PyHirschXLDContArray_FromHXLDContArray(self->XLDCont->SegmentContoursXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)SmoothCont)->Tuple),*(((PyHirschTuple*)MaxLineDist1)->Tuple),*(((PyHirschTuple*)MaxLineDist2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SegmentContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_Shared(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyBool_FromLong(self->XLDCont->Shared());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenEllipseContourXld(PyHirschXLDCont*, PyObject *args)
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
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenEllipseContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple),*(((PyHirschTuple*)StartPhi)->Tuple),*(((PyHirschTuple*)EndPhi)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Resolution)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dddddddsd", &Row1,&Column1,&Phi1,&Radius11,&Radius21,&StartPhi1,&EndPhi1,&PointOrder1,&Resolution1)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenEllipseContourXld(Row1,Column1,Phi1,Radius11,Radius21,StartPhi1,EndPhi1,PointOrder1,Resolution1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenEllipseContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenCircleContourXld(PyHirschXLDCont*, PyObject *args)
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
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenCircleContourXld(Row1,Column1,Radius1,StartPhi1,EndPhi1,PointOrder1,Resolution1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOO", &Row,&Column,&Radius,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(StartPhi) && PyHirschTuple_Check(EndPhi) && PyHirschTuple_Check(PointOrder) && PyHirschTuple_Check(Resolution)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenCircleContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)StartPhi)->Tuple),*(((PyHirschTuple*)EndPhi)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Resolution)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenCircleContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ClassDBID(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->XLDCont->ClassDBID()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_QueryContourAttribsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->QueryContourAttribsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_FitCircleContourXld(PyHirschXLDCont*self, PyObject *args)
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
                double Column;
                double Radius;
                double StartPhi;
                double EndPhi;
                char PointOrder[256];
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitCircleContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)MaxClosureDist)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Column,&Radius,&StartPhi,&EndPhi,(char*)PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(StartPhi));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(EndPhi));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                double Column1;
                double Radius1;
                double StartPhi1;
                double EndPhi1;
                char PointOrder1[256];
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitCircleContourXld(Algorithm1,MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,Iterations1,ClippingFactor1,&Column1,&Radius1,&StartPhi1,&EndPhi1,(char*)PointOrder1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(StartPhi1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(EndPhi1));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.FitCircleContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ShapeTransXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->ShapeTransXld(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschXLD_FromHXLD(self->XLDCont->ShapeTransXld(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ShapeTransXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SmallestCircleXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Column;
        double Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->SmallestCircleXld(&Column,&Radius)));
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
PyHirschXLDCont_SymmDifferenceClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contours21;
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SymmDifferenceClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Contours21)) {
            if (PyHirschXLDContArray_Check(Contours21)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SymmDifferenceClosedContoursXld(*(((PyHirschXLDContArray*)Contours21)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SymmDifferenceClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetCirclePose(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Radius;
    PyObject* OutputType;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParam,&Radius,&OutputType)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(OutputType)) {
                Halcon::HTuple Pose2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->GetCirclePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)OutputType)->Tuple),&Pose2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Pose2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GetCirclePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SelectXldPoint(PyHirschXLDCont*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.SelectXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_FitEllipseContourXld(PyHirschXLDCont*self, PyObject *args)
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
                double Column;
                double Phi;
                double Radius1;
                double Radius2;
                double StartPhi;
                double EndPhi;
                char PointOrder[256];
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitEllipseContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)MaxClosureDist)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)VossTabSize)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,(char*)PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Radius1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Radius2));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(StartPhi));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(EndPhi));
                PyTuple_SET_ITEM(ret, 7, PyString_FromString(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldllld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&VossTabSize1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                double Column1;
                double Phi1;
                double Radius11;
                double Radius21;
                double StartPhi1;
                double EndPhi1;
                char PointOrder1[256];
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitEllipseContourXld(Algorithm1,MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,VossTabSize1,Iterations1,ClippingFactor1,&Column1,&Phi1,&Radius11,&Radius21,&StartPhi1,&EndPhi1,(char*)PointOrder1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Radius11));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Radius21));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(StartPhi1));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(EndPhi1));
                PyTuple_SET_ITEM(ret, 7, PyString_FromString(PointOrder1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.FitEllipseContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_Union2ClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contours21;
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->Union2ClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Contours21)) {
            if (PyHirschXLDContArray_Check(Contours21)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->Union2ClosedContoursXld(*(((PyHirschXLDContArray*)Contours21)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.Union2ClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistanceLc(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMax)));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistanceLc(Row11,Column11,Row21,Column21,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceLc()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ReadContourXldDxf(PyHirschXLDCont*, PyObject *args)
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
                char DxfStatus1[256];
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::ReadContourXldDxf(FileName1,GenParamNames1,GenParamValues1,(char*)DxfStatus1)));
                PyTuple_SET_ITEM(ret, 1, PyString_FromString(DxfStatus1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &FileName,&GenParamNames,&GenParamValues)) {
            if (PyHirschTuple_Check(FileName) && PyHirschTuple_Check(GenParamNames) && PyHirschTuple_Check(GenParamValues)) {
                char DxfStatus[256];
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::ReadContourXldDxf(*(((PyHirschTuple*)FileName)->Tuple),*(((PyHirschTuple*)GenParamNames)->Tuple),*(((PyHirschTuple*)GenParamValues)->Tuple),(char*)DxfStatus)));
                PyTuple_SET_ITEM(ret, 1, PyString_FromString(DxfStatus));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ReadContourXldDxf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EllipticAxisPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Rb;
        double Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->EllipticAxisPointsXld(&Rb,&Phi)));
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
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistanceSc(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),&DistanceMax)));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistanceSc(Row11,Column11,Row21,Column21,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceSc()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DrawXldMod(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Edit;
    PyObject* Move;
    long WindowHandle1;
    PyObject* KeepRatio;
    char* KeepRatio1;
    char* Rotate1;
    PyObject* Scale;
    char* Move1;
    PyObject* Rotate;
    char* Edit1;
    char* Scale1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "lsssss", &WindowHandle1,&Rotate1,&Move1,&Scale1,&KeepRatio1,&Edit1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DrawXldMod(WindowHandle1,Rotate1,Move1,Scale1,KeepRatio1,Edit1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Edit)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Rotate) && PyHirschTuple_Check(Move) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(KeepRatio) && PyHirschTuple_Check(Edit)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DrawXldMod(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Rotate)->Tuple),*(((PyHirschTuple*)Move)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)KeepRatio)->Tuple),*(((PyHirschTuple*)Edit)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DrawXldMod()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MergeContLineScanXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* MaxImagesCont;
    PyObject* MergeBorder2;
    PyObject* Margin2;
    double Margin1;
    PyObject* MergeBorder;
    char* MergeBorder3;
    char* MergeBorder1;
    long ImageHeight3;
    PyObject* ImageHeight;
    PyObject* PrevConts3;
    PyObject* PrevConts2;
    PyObject* MaxImagesCont2;
    double Margin3;
    PyObject* PrevConts1;
    PyObject* Margin;
    PyObject* PrevConts;
    long ImageHeight1;
    long MaxImagesCont1;
    long MaxImagesCont3;
    PyObject* ImageHeight2;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &PrevConts,&ImageHeight,&Margin,&MergeBorder,&MaxImagesCont)) {
            if (PyHirschXLDCont_Check(PrevConts) && PyHirschTuple_Check(ImageHeight) && PyHirschTuple_Check(Margin) && PyHirschTuple_Check(MergeBorder) && PyHirschTuple_Check(MaxImagesCont)) {
                Halcon::HXLDCont PrevMergedConts;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDCont*)PrevConts)->XLDCont),&PrevMergedConts,*(((PyHirschTuple*)ImageHeight)->Tuple),*(((PyHirschTuple*)Margin)->Tuple),*(((PyHirschTuple*)MergeBorder)->Tuple),*(((PyHirschTuple*)MaxImagesCont)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts1,&ImageHeight1,&Margin1,&MergeBorder1,&MaxImagesCont1)) {
            if (PyHirschXLDCont_Check(PrevConts1)) {
                Halcon::HXLDCont PrevMergedConts1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDCont*)PrevConts1)->XLDCont),&PrevMergedConts1,ImageHeight1,Margin1,MergeBorder1,MaxImagesCont1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts3,&ImageHeight3,&Margin3,&MergeBorder3,&MaxImagesCont3)) {
            if (PyHirschXLDContArray_Check(PrevConts3)) {
                Halcon::HXLDCont PrevMergedConts3;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDContArray*)PrevConts3)->XLDContArray),&PrevMergedConts3,ImageHeight3,Margin3,MergeBorder3,MaxImagesCont3)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &PrevConts2,&ImageHeight2,&Margin2,&MergeBorder2,&MaxImagesCont2)) {
            if (PyHirschXLDContArray_Check(PrevConts2) && PyHirschTuple_Check(ImageHeight2) && PyHirschTuple_Check(Margin2) && PyHirschTuple_Check(MergeBorder2) && PyHirschTuple_Check(MaxImagesCont2)) {
                Halcon::HXLDCont PrevMergedConts2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDContArray*)PrevConts2)->XLDContArray),&PrevMergedConts2,*(((PyHirschTuple*)ImageHeight2)->Tuple),*(((PyHirschTuple*)Margin2)->Tuple),*(((PyHirschTuple*)MergeBorder2)->Tuple),*(((PyHirschTuple*)MaxImagesCont2)->Tuple))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.MergeContLineScanXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_FitLineContourXld(PyHirschXLDCont*self, PyObject *args)
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
                double ColBegin1;
                double RowEnd1;
                double ColEnd1;
                double Nr1;
                double Nc1;
                double Dist1;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitLineContourXld(Algorithm1,MaxNumPoints1,ClippingEndPoints1,Iterations1,ClippingFactor1,&ColBegin1,&RowEnd1,&ColEnd1,&Nr1,&Nc1,&Dist1)));
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
        if (PyArg_ParseTuple(args, "OOOOO", &Algorithm,&MaxNumPoints,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            if (PyHirschTuple_Check(Algorithm) && PyHirschTuple_Check(MaxNumPoints) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Iterations) && PyHirschTuple_Check(ClippingFactor)) {
                double ColBegin;
                double RowEnd;
                double ColEnd;
                double Nr;
                double Nc;
                double Dist;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitLineContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&ColBegin,&RowEnd,&ColEnd,&Nr,&Nc,&Dist)));
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DiameterXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Column1;
        double Row2;
        double Column2;
        double Diameter;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DiameterXld(&Column1,&Row2,&Column2,&Diameter)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Row2));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Column2));
        PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Diameter));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_QueryContourGlobalAttribsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDCont->QueryContourGlobalAttribsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ContourToWorldPlaneXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Scale;
    PyObject* WorldPose;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParam,&WorldPose,&Scale)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(WorldPose) && PyHirschTuple_Check(Scale)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ContourToWorldPlaneXld(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)WorldPose)->Tuple),*(((PyHirschTuple*)Scale)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ContourToWorldPlaneXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenContourNurbsXld(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Degree;
    PyObject* MaxDistance;
    PyObject* Cols;
    PyObject* MaxError;
    PyObject* Weights;
    PyObject* Rows;
    PyObject* Knots;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOO", &Rows,&Cols,&Knots,&Weights,&Degree,&MaxError,&MaxDistance)) {
            if (PyHirschTuple_Check(Rows) && PyHirschTuple_Check(Cols) && PyHirschTuple_Check(Knots) && PyHirschTuple_Check(Weights) && PyHirschTuple_Check(Degree) && PyHirschTuple_Check(MaxError) && PyHirschTuple_Check(MaxDistance)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenContourNurbsXld(*(((PyHirschTuple*)Rows)->Tuple),*(((PyHirschTuple*)Cols)->Tuple),*(((PyHirschTuple*)Knots)->Tuple),*(((PyHirschTuple*)Weights)->Tuple),*(((PyHirschTuple*)Degree)->Tuple),*(((PyHirschTuple*)MaxError)->Tuple),*(((PyHirschTuple*)MaxDistance)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenContourNurbsXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_LengthXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLDCont->LengthXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistEllipseContourXld(PyHirschXLDCont*self, PyObject *args)
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
                double MaxDist1;
                double AvgDist1;
                double SigmaDist1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistEllipseContourXld(Mode1,MaxNumPoints1,ClippingEndPoints1,Row1,Column1,Phi1,Radius11,Radius21,&MaxDist1,&AvgDist1,&SigmaDist1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(MaxDist1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(AvgDist1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(SigmaDist1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Mode,&MaxNumPoints,&ClippingEndPoints,&Row,&Column,&Phi,&Radius1,&Radius2)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(MaxNumPoints) && PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Radius1) && PyHirschTuple_Check(Radius2)) {
                double MaxDist;
                double AvgDist;
                double SigmaDist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistEllipseContourXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Radius1)->Tuple),*(((PyHirschTuple*)Radius2)->Tuple),&MaxDist,&AvgDist,&SigmaDist)));
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistancePc(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),&DistanceMax)));
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistancePc(Row1,Column1,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistancePc()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ClipEndPointsContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode1;
    PyObject* Length;
    PyObject* Mode;
    double Length1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Mode,&Length)) {
            if (PyHirschTuple_Check(Mode) && PyHirschTuple_Check(Length)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipEndPointsContoursXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Length)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sd", &Mode1,&Length1)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipEndPointsContoursXld(Mode1,Length1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ClipEndPointsContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_TestSelfIntersectionXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* CloseXLD;
    char* CloseXLD1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD1)) {
            return PyInt_FromLong(long(self->XLDCont->TestSelfIntersectionXld(CloseXLD1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &CloseXLD)) {
            if (PyHirschTuple_Check(CloseXLD)) {
                return PyInt_FromLong(long(self->XLDCont->TestSelfIntersectionXld(*(((PyHirschTuple*)CloseXLD)->Tuple))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.TestSelfIntersectionXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_IntersectionClosedContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contours21;
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->IntersectionClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Contours21)) {
            if (PyHirschXLDContArray_Check(Contours21)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->IntersectionClosedContoursXld(*(((PyHirschXLDContArray*)Contours21)->XLDContArray)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.IntersectionClosedContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DrawNurbsMod(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Edit;
    PyObject* Move;
    PyObject* KeepRatio;
    PyObject* Degree;
    PyObject* Scale;
    PyObject* WeightsIn;
    PyObject* ColsIn;
    PyObject* Rotate;
    PyObject* WindowHandle;
    PyObject* RowsIn;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOO", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Edit,&Degree,&RowsIn,&ColsIn,&WeightsIn)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Rotate) && PyHirschTuple_Check(Move) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(KeepRatio) && PyHirschTuple_Check(Edit) && PyHirschTuple_Check(Degree) && PyHirschTuple_Check(RowsIn) && PyHirschTuple_Check(ColsIn) && PyHirschTuple_Check(WeightsIn)) {
                Halcon::HTuple Rows;
                Halcon::HTuple Cols;
                Halcon::HTuple Weights;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbsMod(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Rotate)->Tuple),*(((PyHirschTuple*)Move)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)KeepRatio)->Tuple),*(((PyHirschTuple*)Edit)->Tuple),*(((PyHirschTuple*)Degree)->Tuple),*(((PyHirschTuple*)RowsIn)->Tuple),*(((PyHirschTuple*)ColsIn)->Tuple),*(((PyHirschTuple*)WeightsIn)->Tuple),&Rows,&Cols,&Weights)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Cols));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Weights));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DrawNurbsMod()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_AffineTransContourXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* HomMat2D;
    
    try {
        if (PyArg_ParseTuple(args, "O", &HomMat2D)) {
            if (PyHirschTuple_Check(HomMat2D)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->AffineTransContourXld(*(((PyHirschTuple*)HomMat2D)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.AffineTransContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_SmallestRectangle1Xld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Column1;
        double Row2;
        double Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->SmallestRectangle1Xld(&Column1,&Row2,&Column2)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Row2));
        PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Column2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DrawXld(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Move;
    PyObject* KeepRatio;
    char* KeepRatio1;
    char* Rotate1;
    long WindowHandle1;
    char* Move1;
    PyObject* Rotate;
    char* Scale1;
    PyObject* WindowHandle;
    PyObject* Scale;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOO", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Rotate) && PyHirschTuple_Check(Move) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(KeepRatio)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawXld(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Rotate)->Tuple),*(((PyHirschTuple*)Move)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)KeepRatio)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lssss", &WindowHandle1,&Rotate1,&Move1,&Scale1,&KeepRatio1)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawXld(WindowHandle1,Rotate1,Move1,Scale1,KeepRatio1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DrawXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double M20;
        double M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->MomentsXld(&M20,&M02)));
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
PyHirschXLDCont_DistRectangle2ContourPointsXld(PyHirschXLDCont*self, PyObject *args)
{
    double Length21;
    PyObject* Column;
    PyObject* Row;
    PyObject* Length1;
    PyObject* ClippingEndPoints;
    double Phi1;
    PyObject* Length2;
    double Length11;
    PyObject* Phi;
    double Column1;
    long ClippingEndPoints1;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "lddddd", &ClippingEndPoints1,&Row1,&Column1,&Phi1,&Length11,&Length21)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->DistRectangle2ContourPointsXld(ClippingEndPoints1,Row1,Column1,Phi1,Length11,Length21));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOO", &ClippingEndPoints,&Row,&Column,&Phi,&Length1,&Length2)) {
            if (PyHirschTuple_Check(ClippingEndPoints) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(Phi) && PyHirschTuple_Check(Length1) && PyHirschTuple_Check(Length2)) {
                return PyHirschTuple_FromHTuple(self->XLDCont->DistRectangle2ContourPointsXld(*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)Phi)->Tuple),*(((PyHirschTuple*)Length1)->Tuple),*(((PyHirschTuple*)Length2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistRectangle2ContourPointsXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetParallelsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        Halcon::HTuple Col1;
        Halcon::HTuple Length1;
        Halcon::HTuple Phi1;
        Halcon::HTuple Row2;
        Halcon::HTuple Col2;
        Halcon::HTuple Length2;
        Halcon::HTuple Phi2;
        PyObject *ret = PyTuple_New(8);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->GetParallelsXld(&Col1,&Length1,&Phi1,&Row2,&Col2,&Length2,&Phi2)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Col1));
        PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Length1));
        PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Phi1));
        PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Row2));
        PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Col2));
        PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Length2));
        PyTuple_SET_ITEM(ret, 7, PyHirschTuple_FromHTuple(Phi2));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenContourPolygonRoundedXld(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Radius;
    PyObject* Row;
    PyObject* Col;
    PyObject* SamplingInterval;
    
    try {
        if (PyArg_ParseTuple(args, "OOOO", &Row,&Col,&Radius,&SamplingInterval)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(SamplingInterval)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenContourPolygonRoundedXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)SamplingInterval)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenContourPolygonRoundedXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetContourAngleXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* AngleMode;
    char* AngleMode1;
    char* CalcMode1;
    PyObject* Lookaround;
    PyObject* CalcMode;
    long Lookaround1;
    
    try {
        if (PyArg_ParseTuple(args, "ssl", &AngleMode1,&CalcMode1,&Lookaround1)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAngleXld(AngleMode1,CalcMode1,Lookaround1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOO", &AngleMode,&CalcMode,&Lookaround)) {
            if (PyHirschTuple_Check(AngleMode) && PyHirschTuple_Check(CalcMode) && PyHirschTuple_Check(Lookaround)) {
                return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAngleXld(*(((PyHirschTuple*)AngleMode)->Tuple),*(((PyHirschTuple*)CalcMode)->Tuple),*(((PyHirschTuple*)Lookaround)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GetContourAngleXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
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
                return PyInt_FromLong(long(self->XLDCont->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple))));
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
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GenRegionContourXld(PyHirschXLDCont*self, PyObject *args)
{
    char* Mode1;
    PyObject* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mode)) {
            if (PyHirschTuple_Check(Mode)) {
                return PyHirschRegion_FromHRegion(self->XLDCont->GenRegionContourXld(*(((PyHirschTuple*)Mode)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Mode1)) {
            return PyHirschRegion_FromHRegion(self->XLDCont->GenRegionContourXld(Mode1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenRegionContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_PolarTransContourXld(PyHirschXLDCont*self, PyObject *args)
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
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->PolarTransContourXld(Row1,Column1,AngleStart1,AngleEnd1,RadiusStart1,RadiusEnd1,Width1,Height1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOOOOO", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&Width,&Height)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column) && PyHirschTuple_Check(AngleStart) && PyHirschTuple_Check(AngleEnd) && PyHirschTuple_Check(RadiusStart) && PyHirschTuple_Check(RadiusEnd) && PyHirschTuple_Check(Width) && PyHirschTuple_Check(Height)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->PolarTransContourXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),*(((PyHirschTuple*)AngleStart)->Tuple),*(((PyHirschTuple*)AngleEnd)->Tuple),*(((PyHirschTuple*)RadiusStart)->Tuple),*(((PyHirschTuple*)RadiusEnd)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.PolarTransContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DistanceCc(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* Contour21;
    char* Mode1;
    PyObject* Contour23;
    PyObject* Contour22;
    char* Mode3;
    PyObject* Mode2;
    PyObject* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour21,&Mode1)) {
            if (PyHirschXLDCont_Check(Contour21)) {
                double DistanceMax1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistanceCc(*(((PyHirschXLDCont*)Contour21)->XLDCont),Mode1,&DistanceMax1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax1));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "Os", &Contour23,&Mode3)) {
            if (PyHirschXLDContArray_Check(Contour23)) {
                double DistanceMax3;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistanceCc(*(((PyHirschXLDContArray*)Contour23)->XLDContArray),Mode3,&DistanceMax3)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax3));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Contour22,&Mode2)) {
            if (PyHirschXLDContArray_Check(Contour22) && PyHirschTuple_Check(Mode2)) {
                double DistanceMax2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistanceCc(*(((PyHirschXLDContArray*)Contour22)->XLDContArray),*(((PyHirschTuple*)Mode2)->Tuple),&DistanceMax2)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2) && PyHirschTuple_Check(Mode)) {
                double DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistanceCc(*(((PyHirschXLDCont*)Contour2)->XLDCont),*(((PyHirschTuple*)Mode)->Tuple),&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DistanceCc()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ReadContourXldArcInfo(PyHirschXLDCont*, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::ReadContourXldArcInfo(FileName1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::ReadContourXldArcInfo(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ReadContourXldArcInfo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_InstClassName(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLDCont->InstClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CircularityXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLDCont->CircularityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetContourXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        Halcon::HTuple Col;
        PyObject *ret = PyTuple_New(2);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->GetContourXld(&Col)));
        PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Col));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DrawNurbs(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Move;
    long WindowHandle1;
    PyObject* KeepRatio;
    char* KeepRatio1;
    PyObject* Degree;
    char* Rotate1;
    PyObject* Scale;
    long Degree1;
    char* Move1;
    PyObject* Rotate;
    char* Scale1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOO", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Degree)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Rotate) && PyHirschTuple_Check(Move) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(KeepRatio) && PyHirschTuple_Check(Degree)) {
                Halcon::HTuple Rows;
                Halcon::HTuple Cols;
                Halcon::HTuple Weights;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbs(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Rotate)->Tuple),*(((PyHirschTuple*)Move)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)KeepRatio)->Tuple),*(((PyHirschTuple*)Degree)->Tuple),&Rows,&Cols,&Weights)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Cols));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Weights));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "lssssl", &WindowHandle1,&Rotate1,&Move1,&Scale1,&KeepRatio1,&Degree1)) {
            {
            // with output params
                Halcon::HTuple Rows1;
                Halcon::HTuple Cols1;
                Halcon::HTuple Weights1;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbs(WindowHandle1,Rotate1,Move1,Scale1,KeepRatio1,Degree1,&Rows1,&Cols1,&Weights1)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rows1));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Cols1));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Weights1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DrawNurbs()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_HClassName(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLDCont->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_CropContoursXld(PyHirschXLDCont*self, PyObject *args)
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
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CropContoursXld(Row11,Col11,Row21,Col21,CloseContours1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OOOOO", &Row1,&Col1,&Row2,&Col2,&CloseContours)) {
            if (PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Col1) && PyHirschTuple_Check(Row2) && PyHirschTuple_Check(Col2) && PyHirschTuple_Check(CloseContours)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CropContoursXld(*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Col1)->Tuple),*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Col2)->Tuple),*(((PyHirschTuple*)CloseContours)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.CropContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_MomentsPointsXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double M20;
        double M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->MomentsPointsXld(&M20,&M02)));
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
PyHirschXLDCont_AreaCenterXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Row;
        double Column;
        char PointOrder[256];
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->AreaCenterXld(&Row,&Column,(char*)PointOrder)));
        PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Row));
        PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Column));
        PyTuple_SET_ITEM(ret, 3, PyString_FromString(PointOrder));
        
        return ret;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_WriteContourXldDxf(PyHirschXLDCont*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->XLDCont->WriteContourXldDxf(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->XLDCont->WriteContourXldDxf(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.WriteContourXldDxf()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ChangeRadialDistortionContoursXld(PyHirschXLDCont*self, PyObject *args)
{
    PyObject* CamParamOut;
    PyObject* CamParamIn;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &CamParamIn,&CamParamOut)) {
            if (PyHirschTuple_Check(CamParamIn) && PyHirschTuple_Check(CamParamOut)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ChangeRadialDistortionContoursXld(*(((PyHirschTuple*)CamParamIn)->Tuple),*(((PyHirschTuple*)CamParamOut)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.ChangeRadialDistortionContoursXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_DrawNurbsInterpMod(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Edit;
    PyObject* Move;
    PyObject* KeepRatio;
    PyObject* Degree;
    PyObject* Scale;
    PyObject* ColsIn;
    PyObject* Rotate;
    PyObject* TangentsIn;
    PyObject* WindowHandle;
    PyObject* RowsIn;
    
    try {
        if (PyArg_ParseTuple(args, "OOOOOOOOOO", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Edit,&Degree,&RowsIn,&ColsIn,&TangentsIn)) {
            if (PyHirschTuple_Check(WindowHandle) && PyHirschTuple_Check(Rotate) && PyHirschTuple_Check(Move) && PyHirschTuple_Check(Scale) && PyHirschTuple_Check(KeepRatio) && PyHirschTuple_Check(Edit) && PyHirschTuple_Check(Degree) && PyHirschTuple_Check(RowsIn) && PyHirschTuple_Check(ColsIn) && PyHirschTuple_Check(TangentsIn)) {
                Halcon::HTuple ControlRows;
                Halcon::HTuple ControlCols;
                Halcon::HTuple Knots;
                Halcon::HTuple Rows;
                Halcon::HTuple Cols;
                Halcon::HTuple Tangents;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbsInterpMod(*(((PyHirschTuple*)WindowHandle)->Tuple),*(((PyHirschTuple*)Rotate)->Tuple),*(((PyHirschTuple*)Move)->Tuple),*(((PyHirschTuple*)Scale)->Tuple),*(((PyHirschTuple*)KeepRatio)->Tuple),*(((PyHirschTuple*)Edit)->Tuple),*(((PyHirschTuple*)Degree)->Tuple),*(((PyHirschTuple*)RowsIn)->Tuple),*(((PyHirschTuple*)ColsIn)->Tuple),*(((PyHirschTuple*)TangentsIn)->Tuple),&ControlRows,&ControlCols,&Knots,&Rows,&Cols,&Tangents)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ControlRows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(ControlCols));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Knots));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Rows));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Cols));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Tangents));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.DrawNurbsInterpMod()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_FitRectangle2ContourXld(PyHirschXLDCont*self, PyObject *args)
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
                double Column;
                double Phi;
                double Length1;
                double Length2;
                char PointOrder[256];
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitRectangle2ContourXld(*(((PyHirschTuple*)Algorithm)->Tuple),*(((PyHirschTuple*)MaxNumPoints)->Tuple),*(((PyHirschTuple*)MaxClosureDist)->Tuple),*(((PyHirschTuple*)ClippingEndPoints)->Tuple),*(((PyHirschTuple*)Iterations)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&Column,&Phi,&Length1,&Length2,(char*)PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Length1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Length2));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sldlld", &Algorithm1,&MaxNumPoints1,&MaxClosureDist1,&ClippingEndPoints1,&Iterations1,&ClippingFactor1)) {
            {
            // with output params
                double Column1;
                double Phi1;
                double Length11;
                double Length21;
                char PointOrder1[256];
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitRectangle2ContourXld(Algorithm1,MaxNumPoints1,MaxClosureDist1,ClippingEndPoints1,Iterations1,ClippingFactor1,&Column1,&Phi1,&Length11,&Length21,(char*)PointOrder1)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column1));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi1));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Length11));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Length21));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder1));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.FitRectangle2ContourXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_GetRectanglePose(PyHirschXLDCont*self, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->GetRectanglePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)WeightingMode)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&CovPose,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovPose));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GetRectanglePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ConvexityXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLDCont->ConvexityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_ContourPointNumXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->XLDCont->ContourPointNumXld()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_EllipticAxisXld(PyHirschXLDCont*self, PyObject *)
{
    try {
        double Rb;
        double Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->EllipticAxisXld(&Rb,&Phi)));
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
PyHirschXLDCont_GenContourPolygonXld(PyHirschXLDCont*, PyObject *args)
{
    PyObject* Row;
    PyObject* Col;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Col)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Col)) {
                return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenContourPolygonXld(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Col)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.GenContourPolygonXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDCont_WriteContourXldArcInfo(PyHirschXLDCont*self, PyObject *args)
{
    char* FileName1;
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName1)) {
            self->XLDCont->WriteContourXldArcInfo(FileName1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->XLDCont->WriteContourXldArcInfo(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.WriteContourXldArcInfo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
