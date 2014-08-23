PyObject *
PyHirschXLDArray_SmallestCircleXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Radius;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->SmallestCircleXld(&Column,&Radius)));
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
PyHirschXLDArray_CopyHXLDArray(PyHirschXLDArray*self, PyObject *args)
{
    PyObject* in;
    
    try {
        if (PyArg_ParseTuple(args, "O", &in)) {
            if (PyHirschXLDArray_Check(in)) {
                self->XLDArray->CopyHXLDArray(*(((PyHirschXLDArray*)in)->XLDArray));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.CopyHXLDArray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_EccentricityXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Bulkiness;
        Halcon::HTuple StructureFactor;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->EccentricityXld(&Bulkiness,&StructureFactor)));
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
PyHirschXLDArray_AreaCenterXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Row;
        Halcon::HTuple Column;
        Halcon::HTuple PointOrder;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->AreaCenterXld(&Row,&Column,&PointOrder)));
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
PyHirschXLDArray_TestXldPoint(PyHirschXLDArray*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschTuple_FromHTuple(self->XLDArray->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->TestXldPoint(Row1,Column1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.TestXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_CompactnessXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDArray->CompactnessXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_OrientationXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDArray->OrientationXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_EccentricityPointsXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDArray->EccentricityPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_OrientationPointsXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDArray->OrientationPointsXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_SelectXldPoint(PyHirschXLDArray*self, PyObject *args)
{
    double Column1;
    PyObject* Column;
    PyObject* Row;
    double Row1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Row,&Column)) {
            if (PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDArray->SelectXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "dd", &Row1,&Column1)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDArray->SelectXldPoint(Row1,Column1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.SelectXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_MomentsAnyXld(PyHirschXLDArray*self, PyObject *args)
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
                return PyHirschTuple_FromHTuple(self->XLDArray->MomentsAnyXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdddll", &Mode1,&PointOrder1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->MomentsAnyXld(Mode1,PointOrder1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.MomentsAnyXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_PaintXld(PyHirschXLDArray*self, PyObject *args)
{
    PyObject* Image1;
    PyObject* Grayval;
    PyObject* Image;
    double Grayval1;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image1,&Grayval1)) {
            if (PyHirschImage_Check(Image1)) {
                return PyHirschImage_FromHImage(self->XLDArray->PaintXld(*(((PyHirschImage*)Image1)->Image),Grayval1));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Image,&Grayval)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Grayval)) {
                return PyHirschImage_FromHImage(self->XLDArray->PaintXld(*(((PyHirschImage*)Image)->Image),*(((PyHirschTuple*)Grayval)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.PaintXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_SmallestRectangle2Xld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column;
        Halcon::HTuple Phi;
        Halcon::HTuple Length1;
        Halcon::HTuple Length2;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->SmallestRectangle2Xld(&Column,&Phi,&Length1,&Length2)));
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
PyHirschXLDArray_SelectShapeXld(PyHirschXLDArray*self, PyObject *args)
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
                return PyHirschXLDArray_FromHXLDArray(self->XLDArray->SelectShapeXld(*(((PyHirschTuple*)Features)->Tuple),*(((PyHirschTuple*)Operation)->Tuple),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features1,&Operation1,&Min1,&Max1)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDArray->SelectShapeXld(Features1,Operation1,Min1,Max1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.SelectShapeXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_MomentsAnyPointsXld(PyHirschXLDArray*self, PyObject *args)
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
                return PyHirschTuple_FromHTuple(self->XLDArray->MomentsAnyPointsXld(*(((PyHirschTuple*)Mode)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddll", &Mode1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->MomentsAnyPointsXld(Mode1,Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.MomentsAnyPointsXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_TestSelfIntersectionXld(PyHirschXLDArray*self, PyObject *args)
{
    PyObject* CloseXLD;
    char* CloseXLD1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD1)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->TestSelfIntersectionXld(CloseXLD1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &CloseXLD)) {
            if (PyHirschTuple_Check(CloseXLD)) {
                return PyHirschTuple_FromHTuple(self->XLDArray->TestSelfIntersectionXld(*(((PyHirschTuple*)CloseXLD)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.TestSelfIntersectionXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_Elem(PyHirschXLDArray*self, PyObject *args)
{
    long index;
    
    try {
        if (PyArg_ParseTuple(args, "l", &index)) {
            return PyHirschXLD_FromHXLD(self->XLDArray->Elem(index));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.Elem()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_EllipticAxisXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Rb;
        Halcon::HTuple Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->EllipticAxisXld(&Rb,&Phi)));
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
PyHirschXLDArray_GetCirclePose(PyHirschXLDArray*self, PyObject *args)
{
    PyObject* Radius;
    PyObject* OutputType;
    PyObject* CamParam;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &CamParam,&Radius,&OutputType)) {
            if (PyHirschTuple_Check(CamParam) && PyHirschTuple_Check(Radius) && PyHirschTuple_Check(OutputType)) {
                Halcon::HTuple Pose2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->GetCirclePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Radius)->Tuple),*(((PyHirschTuple*)OutputType)->Tuple),&Pose2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(Pose2));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.GetCirclePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_MomentsXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple M20;
        Halcon::HTuple M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->MomentsXld(&M20,&M02)));
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
PyHirschXLDArray_InstClassName(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLDArray->InstClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_DiameterXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column1;
        Halcon::HTuple Row2;
        Halcon::HTuple Column2;
        Halcon::HTuple Diameter;
        PyObject *ret = PyTuple_New(5);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->DiameterXld(&Column1,&Row2,&Column2,&Diameter)));
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
PyHirschXLDArray_AreaCenterPointsXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Row;
        Halcon::HTuple Column;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->AreaCenterPointsXld(&Row,&Column)));
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
PyHirschXLDArray_CircularityXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDArray->CircularityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_ShapeTransXld(PyHirschXLDArray*self, PyObject *args)
{
    char* Type1;
    PyObject* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDArray->ShapeTransXld(Type1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &Type)) {
            if (PyHirschTuple_Check(Type)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDArray->ShapeTransXld(*(((PyHirschTuple*)Type)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.ShapeTransXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_HClassName(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyString_FromString(self->XLDArray->HClassName());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_LengthXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDArray->LengthXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_MomentsPointsXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple M20;
        Halcon::HTuple M02;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->MomentsPointsXld(&M20,&M02)));
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
PyHirschXLDArray_EllipticAxisPointsXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Rb;
        Halcon::HTuple Phi;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->EllipticAxisPointsXld(&Rb,&Phi)));
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
PyHirschXLDArray_DispXld(PyHirschXLDArray*self, PyObject *args)
{
    long WindowHandle1;
    PyObject* WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "O", &WindowHandle)) {
            if (PyHirschTuple_Check(WindowHandle)) {
                self->XLDArray->DispXld(*(((PyHirschTuple*)WindowHandle)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &WindowHandle1)) {
            self->XLDArray->DispXld(WindowHandle1);
            Py_INCREF(Py_None);
            return Py_None;
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.DispXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_GetRectanglePose(PyHirschXLDArray*self, PyObject *args)
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
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->GetRectanglePose(*(((PyHirschTuple*)CamParam)->Tuple),*(((PyHirschTuple*)Width)->Tuple),*(((PyHirschTuple*)Height)->Tuple),*(((PyHirschTuple*)WeightingMode)->Tuple),*(((PyHirschTuple*)ClippingFactor)->Tuple),&CovPose,&Error)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_FromHTuple(CovPose));
                PyTuple_SET_ITEM(ret, 2, PyHirschTuple_FromHTuple(Error));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.GetRectanglePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_ConvexityXld(PyHirschXLDArray*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLDArray->ConvexityXld());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_DeleteArray(PyHirschXLDArray*self, PyObject *)
{
    try {
        self->XLDArray->DeleteArray();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_SmallestRectangle1Xld(PyHirschXLDArray*self, PyObject *)
{
    try {
        Halcon::HTuple Column1;
        Halcon::HTuple Row2;
        Halcon::HTuple Column2;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLDArray->SmallestRectangle1Xld(&Column1,&Row2,&Column2)));
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
PyHirschXLDArray_Append(PyHirschXLDArray*self, PyObject *args)
{
    PyObject* xld;
    PyObject* xlds;
    
    try {
        if (PyArg_ParseTuple(args, "O", &xlds)) {
            if (PyHirschXLDArray_Check(xlds)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDArray->Append(*(((PyHirschXLDArray*)xlds)->XLDArray)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &xld)) {
            if (PyHirschXLD_Check(xld)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDArray->Append(*(((PyHirschXLD*)xld)->XLD)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.Append()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
