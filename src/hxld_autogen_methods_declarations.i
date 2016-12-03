PyObject *
PyHirschXLD_SmallestCircleXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        double Radius1;
        self->XLD->SmallestCircleXld(&Row1,&Column1,&Radius1);
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
PyHirschXLD_EccentricityXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Bulkiness1;
        double StructureFactor1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->EccentricityXld(&Bulkiness1,&StructureFactor1)));
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
PyHirschXLD_AreaCenterXld(PyHirschXLD*self, PyObject *)
{
    try {
        HalconCpp::HTuple Row;
        HalconCpp::HTuple Column;
        HalconCpp::HTuple PointOrder;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyHirschTuple_FromHTuple(self->XLD->AreaCenterXld(&Row,&Column,&PointOrder)));
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
PyHirschXLD_TestClosedXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->TestClosedXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
                return PyHirschTuple_FromHTuple(self->XLD->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
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
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_CompactnessXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->CompactnessXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_EccentricityPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->EccentricityPointsXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_OrientationPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->OrientationPointsXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_GetParallelsXld(PyHirschXLD*self, PyObject *)
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
        self->XLD->GetParallelsXld(&Row1,&Col1,&Length1,&Phi1,&Row2,&Col2,&Length2,&Phi2);
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
PyHirschXLD_CircularityXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->CircularityXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_SelectObj(PyHirschXLD*self, PyObject *args)
{
    long Index1;
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschXLD_FromHXLD(self->XLD->SelectObj(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "l", &Index1)) {
            return PyHirschXLD_FromHXLD(self->XLD->SelectObj(Index1));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.SelectObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_MomentsAnyXld(PyHirschXLD*self, PyObject *args)
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
            return PyFloat_FromDouble(self->XLD->MomentsAnyXld(Mode,PointOrder,Area,CenterRow,CenterCol,P,Q));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.MomentsAnyXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_Clone(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschXLD_FromHXLD(self->XLD->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
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
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_SmallestRectangle2Xld(PyHirschXLD*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        double Phi1;
        double Length11;
        double Length21;
        self->XLD->SmallestRectangle2Xld(&Row1,&Column1,&Phi1,&Length11,&Length21);
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
PyHirschXLD_CopyObj(PyHirschXLD*self, PyObject *args)
{
    long NumObj;
    long Index;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &Index,&NumObj)) {
            return PyHirschXLD_FromHXLD(self->XLD->CopyObj(Index,NumObj));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.CopyObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_SelectShapeXld(PyHirschXLD*self, PyObject *args)
{
    char* Operation;
    double Min;
    char* Features;
    double Max;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Features,&Operation,&Min,&Max)) {
            return PyHirschXLD_FromHXLD(self->XLD->SelectShapeXld(Features,Operation,Min,Max));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.SelectShapeXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_ObjDiff(PyHirschXLD*self, PyObject *args)
{
    PyObject* ObjectsSub;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ObjectsSub)) {
            if (PyHirschXLD_Check(ObjectsSub)) {
                return PyHirschXLD_FromHXLD(self->XLD->ObjDiff(*(((PyHirschXLD*)ObjectsSub)->XLD)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.ObjDiff()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_MomentsAnyPointsXld(PyHirschXLD*self, PyObject *args)
{
    long P;
    double CenterCol;
    double Area;
    char* Mode;
    double CenterRow;
    long Q;
    
    try {
        if (PyArg_ParseTuple(args, "sdddll", &Mode,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            return PyFloat_FromDouble(self->XLD->MomentsAnyPointsXld(Mode,Area,CenterRow,CenterCol,P,Q));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.MomentsAnyPointsXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_TestSelfIntersectionXld(PyHirschXLD*self, PyObject *args)
{
    char* CloseXLD;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD)) {
            return PyHirschTuple_FromHTuple(self->XLD->TestSelfIntersectionXld(CloseXLD));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.TestSelfIntersectionXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_EllipticAxisXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Rb1;
        double Phi1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->EllipticAxisXld(&Rb1,&Phi1)));
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
PyHirschXLD_MomentsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double M201;
        double M021;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->MomentsXld(&M201,&M021)));
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
PyHirschXLD_OrientationXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->OrientationXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_GenGridRectificationMap(PyHirschXLD*self, PyObject *args)
{
    PyObject* Column;
    PyObject* Row;
    char* Rotation;
    char* MapType;
    PyObject* Image;
    long GridSpacing;
    
    try {
        if (PyArg_ParseTuple(args, "OlsOOs", &Image,&GridSpacing,&Rotation,&Row,&Column,&MapType)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                HalconCpp::HXLD Meshes;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLD->GenGridRectificationMap(*(((PyHirschImage*)Image)->Image),&Meshes,GridSpacing,Rotation,*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),MapType)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLD_FromHXLD(Meshes));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.GenGridRectificationMap()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_DiameterXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Row11;
        double Column11;
        double Row21;
        double Column21;
        double Diameter1;
        self->XLD->DiameterXld(&Row11,&Column11,&Row21,&Column21,&Diameter1);
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
PyHirschXLD_AreaCenterPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Row1;
        double Column1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->AreaCenterPointsXld(&Row1,&Column1)));
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
PyHirschXLD_CompareObj(PyHirschXLD*self, PyObject *args)
{
    PyObject* Objects21;
    double Epsilon1;
    PyObject* Objects2;
    PyObject* Epsilon;
    
    try {
        if (PyArg_ParseTuple(args, "Od", &Objects21,&Epsilon1)) {
            if (PyHirschXLD_Check(Objects21)) {
                return PyInt_FromLong(long(self->XLD->CompareObj(*(((PyHirschXLD*)Objects21)->XLD),Epsilon1)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OO", &Objects2,&Epsilon)) {
            if (PyHirschXLD_Check(Objects2) && PyHirschTuple_Check(Epsilon)) {
                return PyInt_FromLong(long(self->XLD->CompareObj(*(((PyHirschXLD*)Objects2)->XLD),*(((PyHirschTuple*)Epsilon)->Tuple))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.CompareObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_ConcatObj(PyHirschXLD*self, PyObject *args)
{
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschXLD_Check(Objects2)) {
                return PyHirschXLD_FromHXLD(self->XLD->ConcatObj(*(((PyHirschXLD*)Objects2)->XLD)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.ConcatObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_TestEqualObj(PyHirschXLD*self, PyObject *args)
{
    PyObject* Objects2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Objects2)) {
            if (PyHirschXLD_Check(Objects2)) {
                return PyInt_FromLong(long(self->XLD->TestEqualObj(*(((PyHirschXLD*)Objects2)->XLD))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.TestEqualObj()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_ShapeTransXld(PyHirschXLD*self, PyObject *args)
{
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschXLD_FromHXLD(self->XLD->ShapeTransXld(Type));
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HXLD.ShapeTransXld()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_LengthXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->LengthXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_MomentsPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double M201;
        double M021;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->MomentsPointsXld(&M201,&M021)));
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
PyHirschXLD_EllipticAxisPointsXld(PyHirschXLD*self, PyObject *)
{
    try {
        double Rb1;
        double Phi1;
        PyObject *ret = PyTuple_New(3);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->EllipticAxisPointsXld(&Rb1,&Phi1)));
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
PyHirschXLD_ConvexityXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->XLD->ConvexityXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_SmallestRectangle1Xld(PyHirschXLD*self, PyObject *)
{
    try {
        double Row11;
        double Column11;
        double Row21;
        double Column21;
        self->XLD->SmallestRectangle1Xld(&Row11,&Column11,&Row21,&Column21);
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
