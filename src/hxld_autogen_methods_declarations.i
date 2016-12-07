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
        double Row1;
        double Column1;
        HalconCpp::HString PointOrder1;
        PyObject *ret = PyTuple_New(4);
        PyTuple_SET_ITEM(ret, 0, PyFloat_FromDouble(self->XLD->AreaCenterXld(&Row1,&Column1,&PointOrder1)));
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
PyHirschXLD_TestClosedXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->TestClosedXld());
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
                return PyHirschTuple_GetAsScalarIfOne(self->XLD->TestXldPoint(*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple)));
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->CompactnessXld());
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->EccentricityPointsXld());
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->OrientationPointsXld());
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
PyHirschXLD_CircularityXld(PyHirschXLD*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->CircularityXld());
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
            return PyFloat_FromDouble(self->XLD->MomentsAnyXld(Mode2,PointOrder2,Area2,CenterRow2,CenterCol2,P2,Q2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdddll", &Mode1,&PointOrder1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLD->MomentsAnyXld(HalconCpp::HString(Mode1),HalconCpp::HString(PointOrder1),Area1,CenterRow1,CenterCol1,P1,Q1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOOOOO", &Mode,&PointOrder,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            if (PyHirschTuple_Check(PointOrder) && PyHirschTuple_Check(Area) && PyHirschTuple_Check(CenterRow) && PyHirschTuple_Check(CenterCol) && PyHirschTuple_Check(P) && PyHirschTuple_Check(Q)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLD->MomentsAnyXld(HalconCpp::HString(Mode),*(((PyHirschTuple*)PointOrder)->Tuple),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
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
    char* Operation2;
    char* Features2;
    char* Features1;
    char* Operation1;
    double Min1;
    PyObject* Max;
    PyObject* Min;
    double Max1;
    double Min2;
    double Max2;
    PyObject* Features;
    
    try {
        if (PyArg_ParseTuple(args, "ssdd", &Features2,&Operation2,&Min2,&Max2)) {
            return PyHirschXLD_FromHXLD(self->XLD->SelectShapeXld(Features2,Operation2,Min2,Max2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "ssdd", &Features1,&Operation1,&Min1,&Max1)) {
            return PyHirschXLD_FromHXLD(self->XLD->SelectShapeXld(HalconCpp::HString(Features1),HalconCpp::HString(Operation1),Min1,Max1));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OsOO", &Features,&Operation,&Min,&Max)) {
            if (PyHirschTuple_Check(Features) && PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max)) {
                return PyHirschXLD_FromHXLD(self->XLD->SelectShapeXld(*(((PyHirschTuple*)Features)->Tuple),HalconCpp::HString(Operation),*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple)));
            }
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
            return PyFloat_FromDouble(self->XLD->MomentsAnyPointsXld(Mode2,Area2,CenterRow2,CenterCol2,P2,Q2));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sOOOOO", &Mode,&Area,&CenterRow,&CenterCol,&P,&Q)) {
            if (PyHirschTuple_Check(Area) && PyHirschTuple_Check(CenterRow) && PyHirschTuple_Check(CenterCol) && PyHirschTuple_Check(P) && PyHirschTuple_Check(Q)) {
                return PyHirschTuple_GetAsScalarIfOne(self->XLD->MomentsAnyPointsXld(HalconCpp::HString(Mode),*(((PyHirschTuple*)Area)->Tuple),*(((PyHirschTuple*)CenterRow)->Tuple),*(((PyHirschTuple*)CenterCol)->Tuple),*(((PyHirschTuple*)P)->Tuple),*(((PyHirschTuple*)Q)->Tuple)));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "sdddll", &Mode1,&Area1,&CenterRow1,&CenterCol1,&P1,&Q1)) {
            return PyFloat_FromDouble(self->XLD->MomentsAnyPointsXld(HalconCpp::HString(Mode1),Area1,CenterRow1,CenterCol1,P1,Q1));
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
    char* CloseXLD1;
    
    try {
        if (PyArg_ParseTuple(args, "s", &CloseXLD)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLD->TestSelfIntersectionXld(HalconCpp::HString(CloseXLD)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &CloseXLD1)) {
            return PyHirschTuple_GetAsScalarIfOne(self->XLD->TestSelfIntersectionXld(CloseXLD1));
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->OrientationXld());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschXLD_GenGridRectificationMap(PyHirschXLD*self, PyObject *args)
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
                HalconCpp::HXLD Meshes2;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLD->GenGridRectificationMap(*(((PyHirschImage*)Image2)->Image),&Meshes2,GridSpacing2,Rotation2,*(((PyHirschTuple*)Row2)->Tuple),*(((PyHirschTuple*)Column2)->Tuple),MapType2)));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLD_FromHXLD(Meshes2));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlOOOs", &Image,&GridSpacing,&Rotation,&Row,&Column,&MapType)) {
            if (PyHirschImage_Check(Image) && PyHirschTuple_Check(Rotation) && PyHirschTuple_Check(Row) && PyHirschTuple_Check(Column)) {
                HalconCpp::HXLD Meshes;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLD->GenGridRectificationMap(*(((PyHirschImage*)Image)->Image),&Meshes,GridSpacing,*(((PyHirschTuple*)Rotation)->Tuple),*(((PyHirschTuple*)Row)->Tuple),*(((PyHirschTuple*)Column)->Tuple),HalconCpp::HString(MapType))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLD_FromHXLD(Meshes));
                
                return ret;
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "OlsOOs", &Image1,&GridSpacing1,&Rotation1,&Row1,&Column1,&MapType1)) {
            if (PyHirschImage_Check(Image1) && PyHirschTuple_Check(Row1) && PyHirschTuple_Check(Column1)) {
                HalconCpp::HXLD Meshes1;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschImage_FromHImage(self->XLD->GenGridRectificationMap(*(((PyHirschImage*)Image1)->Image),&Meshes1,GridSpacing1,HalconCpp::HString(Rotation1),*(((PyHirschTuple*)Row1)->Tuple),*(((PyHirschTuple*)Column1)->Tuple),HalconCpp::HString(MapType1))));
                PyTuple_SET_ITEM(ret, 1, PyHirschXLD_FromHXLD(Meshes1));
                
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
    char* Type1;
    char* Type;
    
    try {
        if (PyArg_ParseTuple(args, "s", &Type)) {
            return PyHirschXLD_FromHXLD(self->XLD->ShapeTransXld(HalconCpp::HString(Type)));
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "s", &Type1)) {
            return PyHirschXLD_FromHXLD(self->XLD->ShapeTransXld(Type1));
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->LengthXld());
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
        return PyHirschTuple_GetAsScalarIfOne(self->XLD->ConvexityXld());
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
