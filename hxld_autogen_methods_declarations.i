PyObject *
PyHirschXLD_SmallestCircleXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Column;
        double Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->SmallestCircleXld(&Column,&Radius)));
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
PyHirschXLD_EccentricityXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Bulkiness;
        double StructureFactor;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->EccentricityXld(&Bulkiness,&StructureFactor)));
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
PyHirschXLD_AreaCenterXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Row;
        double Column;
        char PointOrder[256];
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->AreaCenterXld(&Row,&Column,(char*)PointOrder)));
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
PyHirschXLD_TestXldPoint(PyHirschXLD*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyInt_FromLong(long(self->XLD->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyInt_FromLong(long(self->XLD->TestXldPoint(Row1,Column1)));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.TestXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_CompactnessXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLD->CompactnessXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_OrientationXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLD->OrientationXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_EccentricityPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLD->EccentricityPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_OrientationPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLD->OrientationPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_Shared(PyHirschXLD*self, PyObject *)
{
    try {
        return PyBool_FromLong(self->XLD->Shared());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_SelectXldPoint(PyHirschXLD*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschXLD_FromHXLD(self->XLD->SelectXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyHirschXLD_FromHXLD(self->XLD->SelectXldPoint(Row1,Column1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.SelectXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_GetParallelsXld(PyHirschXLD*self, PyObject *)
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
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLD->GetParallelsXld(&Col1,&Length1,&Phi1,&Row2,&Col2,&Length2,&Phi2)));
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
PyHirschXLD_MomentsAnyXld(PyHirschXLD*self, PyObject *args)
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
                return PyFloat_FromDouble(self->XLD->MomentsAnyXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdddll", &Mode1,&PointOrder1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLD->MomentsAnyXld(Mode1,PointOrder1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.MomentsAnyXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_PaintXld(PyHirschXLD*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Grayval;
    PyObject* Image;
    double Grayval1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Grayval1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->XLD->PaintXld(*(((PyHirschImage*)Image1)->Image),Grayval1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Grayval)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->XLD->PaintXld(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.PaintXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_SmallestRectangle2Xld(PyHirschXLD*self, PyObject *)
{
    try {
        double Column;
        double Phi;
        double Length1;
        double Length2;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->SmallestRectangle2Xld(&Column,&Phi,&Length1,&Length2)));
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
PyHirschXLD_MomentsAnyPointsXld(PyHirschXLD*self, PyObject *args)
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
                return PyFloat_FromDouble(self->XLD->MomentsAnyPointsXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddll", &Mode1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLD->MomentsAnyPointsXld(Mode1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.MomentsAnyPointsXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_TestSelfIntersectionXld(PyHirschXLD*self, PyObject *args)
{
    PyObject* CloseXLD;
    char* CloseXLD1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD1)) {
            return PyInt_FromLong(long(self->XLD->TestSelfIntersectionXld(CloseXLD1)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &CloseXLD)) {
            if (PyHirschTuple_Check(CloseXLD)) {
                return PyInt_FromLong(long(self->XLD->TestSelfIntersectionXld(*(((PyHirschTuple*)CloseXLD)->Tuple))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.TestSelfIntersectionXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_EllipticAxisXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Rb;
        double Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->EllipticAxisXld(&Rb,&Phi)));
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
PyHirschXLD_GetCirclePose(PyHirschXLD*self, PyObject *args)
{
    PyObject* Radius;
    PyObject* OutputType;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParam,&Radius,&OutputType)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(OutputType)) {
                Halcon::HTuple Pose2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLD->GetCirclePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)OutputType)->Tuple),&Pose2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Pose2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.GetCirclePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_MomentsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double M20;
        double M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->MomentsXld(&M20,&M02)));
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
PyHirschXLD_AreaCenterPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Row;
        double Column;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->AreaCenterPointsXld(&Row,&Column)));
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
PyHirschXLD_DiameterXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Column1;
        double Row2;
        double Column2;
        double Diameter;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->DiameterXld(&Column1,&Row2,&Column2,&Diameter)));
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
PyHirschXLD_InstClassName(PyHirschXLD*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLD->InstClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_CircularityXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLD->CircularityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_ShapeTransXld(PyHirschXLD*self, PyObject *args)
{
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschXLD_FromHXLD(self->XLD->ShapeTransXld(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschXLD_FromHXLD(self->XLD->ShapeTransXld(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.ShapeTransXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_HClassName(PyHirschXLD*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLD->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_LengthXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLD->LengthXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_MomentsPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double M20;
        double M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->MomentsPointsXld(&M20,&M02)));
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
PyHirschXLD_EllipticAxisPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Rb;
        double Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->EllipticAxisPointsXld(&Rb,&Phi)));
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
PyHirschXLD_GetRectanglePose(PyHirschXLD*self, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLD->GetRectanglePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)WeightingMode)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&CovPose,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovPose));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.GetRectanglePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_ConvexityXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->XLD->ConvexityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLD_SmallestRectangle1Xld(PyHirschXLD*self, PyObject *)
{
    try {
        double Column1;
        double Row2;
        double Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->SmallestRectangle1Xld(&Column1,&Row2,&Column2)));
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
