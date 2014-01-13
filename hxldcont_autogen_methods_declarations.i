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
    double Angle;
    double Size;
    double Row;
    double Col;
    
    try {
        if (PyArg_ParseTuple(args, "dddd", &Row,&Col,&Size,&Angle)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenCrossContourXld(Row,Col,Size,Angle));
        }
        
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
    
    try {
        if (PyArg_ParseTuple(args, "O", &Sub)) {
            if (PyHirschXLDCont_Check(Sub)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DifferenceClosedContoursXld(*(((PyHirschXLDCont*)Sub)->XLDCont)));
            }
            if (PyHirschXLDContArray_Check(Sub)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DifferenceClosedContoursXld(*(((PyHirschXLDContArray*)Sub)->XLDContArray)));
            }
        }
        
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
    char* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2)) {
                return PyFloat_FromDouble(self->XLDCont->DistanceCcMin(*(((PyHirschXLDCont*)Contour2)->XLDCont),Mode));
            }
            if (PyHirschXLDContArray_Check(Contour2)) {
                return PyFloat_FromDouble(self->XLDCont->DistanceCcMin(*(((PyHirschXLDContArray*)Contour2)->XLDContArray),Mode));
            }
        }
        
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
    char* Move;
    char* Rotate;
    long Degree;
    char* Scale;
    long WindowHandle;
    char* KeepRatio;
    
    try {
        if (PyArg_ParseTuple(args, "lssssl", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Degree)) {
            {
            // with output params
                Halcon::HTuple ControlRows;
                Halcon::HTuple ControlCols;
                Halcon::HTuple Knots;
                Halcon::HTuple Rows;
                Halcon::HTuple Cols;
                Halcon::HTuple Tangents;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbsInterp(WindowHandle,Rotate,Move,Scale,KeepRatio,Degree,&ControlRows,&ControlCols,&Knots,&Rows,&Cols,&Tangents)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(ControlRows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(ControlCols));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Knots));
                PyTuple_SET_ITEM(ret, 4, PyHirschTuple_FromHTuple(Rows));
                PyTuple_SET_ITEM(ret, 5, PyHirschTuple_FromHTuple(Cols));
                PyTuple_SET_ITEM(ret, 6, PyHirschTuple_FromHTuple(Tangents));
                
                return ret;
            }
        }
        
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
    long NumRegrPoints;
    double Amp;
    
    try {
        if (PyArg_ParseTuple(args, "ld", &NumRegrPoints,&Amp)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->AddNoiseWhiteContourXld(NumRegrPoints,Amp));
        }
        
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
    double Column;
    double Phi;
    double Length2;
    double Row;
    double Length1;
    
    try {
        if (PyArg_ParseTuple(args, "ddddd", &Row,&Column,&Phi,&Length1,&Length2)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenRectangle2ContourXld(Row,Column,Phi,Length1,Length2));
        }
        
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
    double Column;
    double RadiusEnd;
    double Row;
    long Width;
    double RadiusStart;
    long Height;
    long WidthIn;
    double AngleEnd;
    double AngleStart;
    long HeightIn;
    
    try {
        if (PyArg_ParseTuple(args, "ddddddllll", &Row,&Column,&AngleStart,&AngleEnd,&RadiusStart,&RadiusEnd,&WidthIn,&HeightIn,&Width,&Height)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDCont->PolarTransContourXldInv(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,WidthIn,HeightIn,Width,Height));
        }
        
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
    char* Name;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Name)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAttribXld(Name));
        }
        
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
    double MaxLineDist1;
    char* Mode;
    double MaxLineDist2;
    long SmoothCont;
    
    try {
        if (PyArg_ParseTuple(args, "sldd", &Mode,&SmoothCont,&MaxLineDist1,&MaxLineDist2)) {
            return PyHirschXLDContArray_FromHXLDContArray(self->XLDCont->SegmentContoursXld(Mode,SmoothCont,MaxLineDist1,MaxLineDist2));
        }
        
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
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenEllipseContourXld(Row,Column,Phi,Radius1,Radius2,StartPhi,EndPhi,PointOrder,Resolution));
        }
        
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
    double Column;
    double Row;
    double StartPhi;
    double Resolution;
    double Radius;
    double EndPhi;
    char* PointOrder;
    
    try {
        if (PyArg_ParseTuple(args, "dddddsd", &Row,&Column,&Radius,&StartPhi,&EndPhi,&PointOrder,&Resolution)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::GenCircleContourXld(Row,Column,Radius,StartPhi,EndPhi,PointOrder,Resolution));
        }
        
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
                double Column;
                double Radius;
                double StartPhi;
                double EndPhi;
                char PointOrder[256];
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitCircleContourXld(Algorithm,MaxNumPoints,MaxClosureDist,ClippingEndPoints,Iterations,ClippingFactor,&Column,&Radius,&StartPhi,&EndPhi,(char*)PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Radius));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(StartPhi));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(EndPhi));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder));
                
                return ret;
            }
        }
        
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
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->ShapeTransXld(Type));
        }
        
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
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SymmDifferenceClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
            if (PyHirschXLDContArray_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->SymmDifferenceClosedContoursXld(*(((PyHirschXLDContArray*)Contours2)->XLDContArray)));
            }
        }
        
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            return PyHirschXLD_FromHXLD(self->XLDCont->SelectXldPoint(Row,Column));
        }
        
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
                double Column;
                double Phi;
                double Radius1;
                double Radius2;
                double StartPhi;
                double EndPhi;
                char PointOrder[256];
                PyObject *ret = PyTuple_New(8);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitEllipseContourXld(Algorithm,MaxNumPoints,MaxClosureDist,ClippingEndPoints,VossTabSize,Iterations,ClippingFactor,&Column,&Phi,&Radius1,&Radius2,&StartPhi,&EndPhi,(char*)PointOrder)));
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
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->Union2ClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
            if (PyHirschXLDContArray_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->Union2ClosedContoursXld(*(((PyHirschXLDContArray*)Contours2)->XLDContArray)));
            }
        }
        
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistanceLc(Row1,Column1,Row2,Column2,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        
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
    char* GenParamNames;
    double GenParamValues;
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "ssd", &FileName,&GenParamNames,&GenParamValues)) {
            {
            // with output params
                char DxfStatus[256];
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::ReadContourXldDxf(FileName,GenParamNames,GenParamValues,(char*)DxfStatus)));
                PyTuple_SET_ITEM(ret, 1, PyString_FromString(DxfStatus));
                
                return ret;
            }
        }
        
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistanceSc(Row1,Column1,Row2,Column2,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        
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
    PyObject* Image;
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&Grayval)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->XLDCont->PaintXld(*(((PyHirschImage*)Image)->Image),Grayval));
            }
        }
        
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
    char* Move;
    char* Edit;
    char* Rotate;
    char* KeepRatio;
    char* Scale;
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "lsssss", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Edit)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->DrawXldMod(WindowHandle,Rotate,Move,Scale,KeepRatio,Edit));
        }
        
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
    long MaxImagesCont;
    long ImageHeight;
    double Margin;
    char* MergeBorder;
    PyObject* PrevConts;
    
    try {
        if (PyArg_ParseTuple(args, "Oldsl", &PrevConts,&ImageHeight,&Margin,&MergeBorder,&MaxImagesCont)) {
            if (PyHirschXLDCont_Check(PrevConts)) {
                Halcon::HXLDCont PrevMergedConts;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDCont*)PrevConts)->XLDCont),&PrevMergedConts,ImageHeight,Margin,MergeBorder,MaxImagesCont)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts));
                
                return ret;
            }
            if (PyHirschXLDContArray_Check(PrevConts)) {
                Halcon::HXLDCont PrevMergedConts;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(self->XLDCont->MergeContLineScanXld(*(((PyHirschXLDContArray*)PrevConts)->XLDContArray),&PrevMergedConts,ImageHeight,Margin,MergeBorder,MaxImagesCont)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLDCont_FromHXLDCont(PrevMergedConts));
                
                return ret;
            }
        }
        
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
    char* Algorithm;
    long MaxNumPoints;
    double ClippingFactor;
    long Iterations;
    long ClippingEndPoints;
    
    try {
        if (PyArg_ParseTuple(args, "sllld", &Algorithm,&MaxNumPoints,&ClippingEndPoints,&Iterations,&ClippingFactor)) {
            {
            // with output params
                double ColBegin;
                double RowEnd;
                double ColEnd;
                double Nr;
                double Nc;
                double Dist;
                PyObject *ret = PyTuple_New(7);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitLineContourXld(Algorithm,MaxNumPoints,ClippingEndPoints,Iterations,ClippingFactor,&ColBegin,&RowEnd,&ColEnd,&Nr,&Nc,&Dist)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(ColBegin));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(RowEnd));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(ColEnd));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Nr));
                PyTuple_SET_ITEM(ret, 5, PyFloat_FromDouble(Nc));
                PyTuple_SET_ITEM(ret, 6, PyFloat_FromDouble(Dist));
                
                return ret;
            }
        }
        
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
    char* Name;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Name)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourGlobalAttribXld(Name));
        }
        
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
                double MaxDist;
                double AvgDist;
                double SigmaDist;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistEllipseContourXld(Mode,MaxNumPoints,ClippingEndPoints,Row,Column,Phi,Radius1,Radius2,&MaxDist,&AvgDist,&SigmaDist)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(MaxDist));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(AvgDist));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(SigmaDist));
                
                return ret;
            }
        }
        
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            {
            // with output params
                Halcon::HTuple DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDCont->DistancePc(Row,Column,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(DistanceMax));
                
                return ret;
            }
        }
        
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
    double Length;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "sd", &Mode,&Length)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->ClipEndPointsContoursXld(Mode,Length));
        }
        
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
    char* CloseXLD;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD)) {
            return PyInt_FromLong(long(self->XLDCont->TestSelfIntersectionXld(CloseXLD)));
        }
        
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
    PyObject* Contours2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Contours2)) {
            if (PyHirschXLDCont_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->IntersectionClosedContoursXld(*(((PyHirschXLDCont*)Contours2)->XLDCont)));
            }
            if (PyHirschXLDContArray_Check(Contours2)) {
                return PyHirschXLDCont_FromHXLDCont(self->XLDCont->IntersectionClosedContoursXld(*(((PyHirschXLDContArray*)Contours2)->XLDContArray)));
            }
        }
        
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
    long WindowHandle;
    char* Rotate;
    char* Move;
    char* KeepRatio;
    char* Scale;
    
    try {
        if (PyArg_ParseTuple(args, "lssss", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawXld(WindowHandle,Rotate,Move,Scale,KeepRatio));
        }
        
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
    char* CalcMode;
    char* AngleMode;
    long Lookaround;
    
    try {
        if (PyArg_ParseTuple(args, "ssl", &AngleMode,&CalcMode,&Lookaround)) {
            return PyHirschTuple_FromHTuple(self->XLDCont->GetContourAngleXld(AngleMode,CalcMode,Lookaround));
        }
        
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            return PyInt_FromLong(long(self->XLDCont->TestXldPoint(Row,Column)));
        }
        
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
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Mode)) {
            return PyHirschRegion_FromHRegion(self->XLDCont->GenRegionContourXld(Mode));
        }
        
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
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->PolarTransContourXld(Row,Column,AngleStart,AngleEnd,RadiusStart,RadiusEnd,Width,Height));
        }
        
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
    char* Mode;
    PyObject* Contour2;
    
    try {
        if (PyArg_ParseTuple(args, "Os", &Contour2,&Mode)) {
            if (PyHirschXLDCont_Check(Contour2)) {
                double DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistanceCc(*(((PyHirschXLDCont*)Contour2)->XLDCont),Mode,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax));
                
                return ret;
            }
            if (PyHirschXLDContArray_Check(Contour2)) {
                double DistanceMax;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->DistanceCc(*(((PyHirschXLDContArray*)Contour2)->XLDContArray),Mode,&DistanceMax)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(DistanceMax));
                
                return ret;
            }
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            return PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::ReadContourXldArcInfo(FileName));
        }
        
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
    char* Move;
    char* Rotate;
    long Degree;
    char* Scale;
    long WindowHandle;
    char* KeepRatio;
    
    try {
        if (PyArg_ParseTuple(args, "lssssl", &WindowHandle,&Rotate,&Move,&Scale,&KeepRatio,&Degree)) {
            {
            // with output params
                Halcon::HTuple Rows;
                Halcon::HTuple Cols;
                Halcon::HTuple Weights;
                PyObject *ret = PyTuple_New(4);
                PyTuple_SET_ITEM(ret, 0, PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont::DrawNurbs(WindowHandle,Rotate,Move,Scale,KeepRatio,Degree,&Rows,&Cols,&Weights)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Rows));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Cols));
                PyTuple_SET_ITEM(ret, 3, PyHirschTuple_FromHTuple(Weights));
                
                return ret;
            }
        }
        
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
    double Col2;
    double Row2;
    double Row1;
    double Col1;
    char* CloseContours;
    
    try {
        if (PyArg_ParseTuple(args, "dddds", &Row1,&Col1,&Row2,&Col2,&CloseContours)) {
            return PyHirschXLDCont_FromHXLDCont(self->XLDCont->CropContoursXld(Row1,Col1,Row2,Col2,CloseContours));
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->WriteContourXldDxf(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
                double Column;
                double Phi;
                double Length1;
                double Length2;
                char PointOrder[256];
                PyObject *ret = PyTuple_New(6);
                PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLDCont->FitRectangle2ContourXld(Algorithm,MaxNumPoints,MaxClosureDist,ClippingEndPoints,Iterations,ClippingFactor,&Column,&Phi,&Length1,&Length2,(char*)PointOrder)));
                PyTuple_SET_ITEM(ret, 1, PyFloat_FromDouble(Column));
                PyTuple_SET_ITEM(ret, 2, PyFloat_FromDouble(Phi));
                PyTuple_SET_ITEM(ret, 3, PyFloat_FromDouble(Length1));
                PyTuple_SET_ITEM(ret, 4, PyFloat_FromDouble(Length2));
                PyTuple_SET_ITEM(ret, 5, PyString_FromString(PointOrder));
                
                return ret;
            }
        }
        
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
    char* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "s", &FileName)) {
            self->XLDCont->WriteContourXldArcInfo(FileName);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDCont.WriteContourXldArcInfo()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
