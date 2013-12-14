PyObject *
PyHirschXLDArray_SmallestCircleXld(PyHirschXLDArray*self, PyObject *args)
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.CopyHXLDArray()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_EccentricityXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_AreaCenterXld(PyHirschXLDArray*self, PyObject *args)
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->TestXldPoint(Row,Column));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.TestXldPoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_CompactnessXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_OrientationXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_EccentricityPointsXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_OrientationPointsXld(PyHirschXLDArray*self, PyObject *args)
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
    double Column;
    double Row;
    
    try {
        if (PyArg_ParseTuple(args, "dd", &Row,&Column)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDArray->SelectXldPoint(Row,Column));
        }
        
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
    long Q;
    long P;
    double CenterCol;
    double Area;
    char* PointOrder;
    double CenterRow;
    char* Mode;
    
    try {
        if (PyArg_ParseTuple(args, "ssdddll", &Mode,&PointOrder,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->MomentsAnyXld(Mode,PointOrder,Area,CenterRow,CenterCol,P,Q));
        }
        
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
    PyObject* Image;
    double Grayval;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Image,&Grayval)) {
            if (PyHirschImage_Check(Image)) {
                return PyHirschImage_FromHImage(self->XLDArray->PaintXld(*(((PyHirschImage*)Image)->Image),Grayval));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.PaintXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_SmallestRectangle2Xld(PyHirschXLDArray*self, PyObject *args)
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
    char* Operation;
    double Min;
    char* Features;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Features,&Operation,&Min,&Max)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDArray->SelectShapeXld(Features,Operation,Min,Max));
        }
        
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
    long P;
    double CenterCol;
    double Area;
    char* Mode;
    double CenterRow;
    long Q;
    
    try {
        if (PyArg_ParseTuple(args, "sdddll", &Mode,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->MomentsAnyPointsXld(Mode,Area,CenterRow,CenterCol,P,Q));
        }
        
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
    char* CloseXLD;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD)) {
            return PyHirschTuple_FromHTuple(self->XLDArray->TestSelfIntersectionXld(CloseXLD));
        }
        
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.Elem()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_EllipticAxisXld(PyHirschXLDArray*self, PyObject *args)
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.GetCirclePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_MomentsXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_InstClassName(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_DiameterXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_AreaCenterPointsXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_CircularityXld(PyHirschXLDArray*self, PyObject *args)
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
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschXLDArray_FromHXLDArray(self->XLDArray->ShapeTransXld(Type));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.ShapeTransXld()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_HClassName(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_LengthXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_MomentsPointsXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_EllipticAxisPointsXld(PyHirschXLDArray*self, PyObject *args)
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
    long WindowHandle;
    
    try {
        if (PyArg_ParseTuple(args, "l", &WindowHandle)) {
            self->XLDArray->DispXld(WindowHandle);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
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
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.GetRectanglePose()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschXLDArray_ConvexityXld(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_DeleteArray(PyHirschXLDArray*self, PyObject *args)
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
PyHirschXLDArray_SmallestRectangle1Xld(PyHirschXLDArray*self, PyObject *args)
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
        if (PyArg_ParseTuple(args, "O", &xld)) {
            if (PyHirschXLD_Check(xld)) {
                return PyHirschXLDArray_FromHXLDArray(self->XLDArray->Append(*(((PyHirschXLD*)xld)->XLD)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLDArray.Append()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
