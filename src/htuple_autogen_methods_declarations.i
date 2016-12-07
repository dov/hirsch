PyObject *
PyHirschTuple_TupleBnot(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleBnot());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLsh(PyHirschTuple*self, PyObject *args)
{
    PyObject* Shift;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Shift)) {
            if (PyHirschTuple_Check(Shift)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLsh(*(((PyHirschTuple*)Shift)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleLsh()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleChrt(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleChrt());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLessElem(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLessElem(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleLessElem()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleNumber(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleNumber());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleEqualElem(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleEqualElem(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleEqualElem()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleString(PyHirschTuple*self, PyObject *args)
{
    PyObject* Format;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Format)) {
            if (PyHirschTuple_Check(Format)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleString(*(((PyHirschTuple*)Format)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleString()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_WriteTuple(PyHirschTuple*self, PyObject *args)
{
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                self->Tuple->WriteTuple(*(((PyHirschTuple*)FileName)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.WriteTuple()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSelectRange(PyHirschTuple*self, PyObject *args)
{
    PyObject* Leftindex;
    PyObject* Rightindex;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Leftindex,&Rightindex)) {
            if (PyHirschTuple_Check(Leftindex) && PyHirschTuple_Check(Rightindex)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSelectRange(*(((PyHirschTuple*)Leftindex)->Tuple),*(((PyHirschTuple*)Rightindex)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSelectRange()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_ReadTuple(PyHirschTuple*, PyObject *args)
{
    PyObject* FileName;
    
    try {
        if (PyArg_ParseTuple(args, "O", &FileName)) {
            if (PyHirschTuple_Check(FileName)) {
                return PyHirschTuple_GetAsScalarIfOne(HalconCpp::HTuple::ReadTuple(*(((PyHirschTuple*)FileName)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.ReadTuple()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleGreaterElem(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleGreaterElem(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleGreaterElem()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSelect(PyHirschTuple*self, PyObject *args)
{
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSelect(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSelect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSort(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSort());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TuplePow(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TuplePow(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TuplePow()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleDifference(PyHirschTuple*self, PyObject *args)
{
    PyObject* Set2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Set2)) {
            if (PyHirschTuple_Check(Set2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleDifference(*(((PyHirschTuple*)Set2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleDifference()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLog10(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLog10());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleFind(PyHirschTuple*self, PyObject *args)
{
    PyObject* ToFind;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ToFind)) {
            if (PyHirschTuple_Check(ToFind)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleFind(*(((PyHirschTuple*)ToFind)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleFind()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleAbs(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleAbs());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_DeleteArr(PyHirschTuple*, PyObject *)
{
    try {
        HalconCpp::HString arr2;
        HalconCpp::HTuple::DeleteArr(&arr2);
        PyObject *ret = PyTuple_New(1);
        PyTuple_SET_ITEM(ret, 0, PyString_FromString(arr2.Text()));
        
        return ret;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSymmdiff(PyHirschTuple*self, PyObject *args)
{
    PyObject* Set2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Set2)) {
            if (PyHirschTuple_Check(Set2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSymmdiff(*(((PyHirschTuple*)Set2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSymmdiff()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleFirstN(PyHirschTuple*self, PyObject *args)
{
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleFirstN(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleFirstN()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleBxor(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleBxor(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleBxor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSin(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSin());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_D(PyHirschTuple*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Tuple->D());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_L(PyHirschTuple*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Tuple->L()));
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_Length(PyHirschTuple*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Tuple->Length()));
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrrchr(PyHirschTuple*self, PyObject *args)
{
    PyObject* ToFind;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ToFind)) {
            if (PyHirschTuple_Check(ToFind)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrrchr(*(((PyHirschTuple*)ToFind)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleStrrchr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrBitSelect(PyHirschTuple*self, PyObject *args)
{
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrBitSelect(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleStrBitSelect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleGreaterEqualElem(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleGreaterEqualElem(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleGreaterEqualElem()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleReal(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleReal());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrstr(PyHirschTuple*self, PyObject *args)
{
    PyObject* ToFind;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ToFind)) {
            if (PyHirschTuple_Check(ToFind)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrstr(*(((PyHirschTuple*)ToFind)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleStrstr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMult(PyHirschTuple*self, PyObject *args)
{
    PyObject* P2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &P2)) {
            if (PyHirschTuple_Check(P2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMult(*(((PyHirschTuple*)P2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleMult()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleOrd(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleOrd());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMax(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMax());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleTan(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleTan());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSub(PyHirschTuple*self, PyObject *args)
{
    PyObject* D2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &D2)) {
            if (PyHirschTuple_Check(D2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSub(*(((PyHirschTuple*)D2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSub()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSum(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSum());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMin(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMin());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleXor(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleXor(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleXor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSortIndex(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSortIndex());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRand(PyHirschTuple*, PyObject *args)
{
    PyObject* Length;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Length)) {
            if (PyHirschTuple_Check(Length)) {
                return PyHirschTuple_GetAsScalarIfOne(HalconCpp::HTuple::TupleRand(*(((PyHirschTuple*)Length)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleRand()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMedian(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMedian());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleBand(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleBand(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleBand()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleCosh(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleCosh());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleCos(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleCos());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrlen(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrlen());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleReplace(PyHirschTuple*self, PyObject *args)
{
    PyObject* ReplaceTuple;
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Index,&ReplaceTuple)) {
            if (PyHirschTuple_Check(Index) && PyHirschTuple_Check(ReplaceTuple)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleReplace(*(((PyHirschTuple*)Index)->Tuple),*(((PyHirschTuple*)ReplaceTuple)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleReplace()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSgn(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSgn());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleNeg(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleNeg());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_S(PyHirschTuple*self, PyObject *)
{
    try {
        return PyString_FromString(self->Tuple->S().Text());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleNotEqual(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleNotEqual(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleNotEqual()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleTypeElem(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleTypeElem());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsInt(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsInt());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleUniq(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleUniq());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleExp(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleExp());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleAdd(PyHirschTuple*self, PyObject *args)
{
    PyObject* S2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &S2)) {
            if (PyHirschTuple_Check(S2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleAdd(*(((PyHirschTuple*)S2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleAdd()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMod(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMod(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleMod()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrLastN(PyHirschTuple*self, PyObject *args)
{
    PyObject* Position;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Position)) {
            if (PyHirschTuple_Check(Position)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrLastN(*(((PyHirschTuple*)Position)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleStrLastN()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleChr(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleChr());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleAcos(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleAcos());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLastN(PyHirschTuple*self, PyObject *args)
{
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLastN(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleLastN()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleInt(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleInt());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleCeil(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleCeil());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLength(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLength());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleDeviation(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleDeviation());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLdexp(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLdexp(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleLdexp()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleFloor(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleFloor());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSqrt(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSqrt());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLog(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLog());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrFirstN(PyHirschTuple*self, PyObject *args)
{
    PyObject* Position;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Position)) {
            if (PyHirschTuple_Check(Position)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrFirstN(*(((PyHirschTuple*)Position)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleStrFirstN()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRad(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRad());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSelectRank(PyHirschTuple*self, PyObject *args)
{
    PyObject* RankIndex;
    
    try {
        if (PyArg_ParseTuple(args, "O", &RankIndex)) {
            if (PyHirschTuple_Check(RankIndex)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSelectRank(*(((PyHirschTuple*)RankIndex)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSelectRank()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleGreater(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleGreater(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleGreater()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLessEqual(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLessEqual(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleLessEqual()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrchr(PyHirschTuple*self, PyObject *args)
{
    PyObject* ToFind;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ToFind)) {
            if (PyHirschTuple_Check(ToFind)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrchr(*(((PyHirschTuple*)ToFind)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleStrchr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRemove(PyHirschTuple*self, PyObject *args)
{
    PyObject* Index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Index)) {
            if (PyHirschTuple_Check(Index)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRemove(*(((PyHirschTuple*)Index)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleRemove()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsRealElem(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsRealElem());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleConcat(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleConcat(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleConcat()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleCumul(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleCumul());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleBor(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleBor(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleBor()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleAnd(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleAnd(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleAnd()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleAtan(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleAtan());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleUnion(PyHirschTuple*self, PyObject *args)
{
    PyObject* Set2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Set2)) {
            if (PyHirschTuple_Check(Set2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleUnion(*(((PyHirschTuple*)Set2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleUnion()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleOrds(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleOrds());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleOr(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleOr(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleOr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleFabs(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleFabs());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleType(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleType());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRegexpReplace(PyHirschTuple*self, PyObject *args)
{
    PyObject* Expression;
    PyObject* Replace;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Expression,&Replace)) {
            if (PyHirschTuple_Check(Expression) && PyHirschTuple_Check(Replace)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRegexpReplace(*(((PyHirschTuple*)Expression)->Tuple),*(((PyHirschTuple*)Replace)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleRegexpReplace()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRound(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRound());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleInsert(PyHirschTuple*self, PyObject *args)
{
    PyObject* Index;
    PyObject* InsertTuple;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Index,&InsertTuple)) {
            if (PyHirschTuple_Check(Index) && PyHirschTuple_Check(InsertTuple)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleInsert(*(((PyHirschTuple*)Index)->Tuple),*(((PyHirschTuple*)InsertTuple)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleInsert()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleFindFirst(PyHirschTuple*self, PyObject *args)
{
    PyObject* ToFind;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ToFind)) {
            if (PyHirschTuple_Check(ToFind)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleFindFirst(*(((PyHirschTuple*)ToFind)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleFindFirst()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRegexpMatch(PyHirschTuple*self, PyObject *args)
{
    PyObject* Expression;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Expression)) {
            if (PyHirschTuple_Check(Expression)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRegexpMatch(*(((PyHirschTuple*)Expression)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleRegexpMatch()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRsh(PyHirschTuple*self, PyObject *args)
{
    PyObject* Shift;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Shift)) {
            if (PyHirschTuple_Check(Shift)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRsh(*(((PyHirschTuple*)Shift)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleRsh()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleDiv(PyHirschTuple*self, PyObject *args)
{
    PyObject* Q2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Q2)) {
            if (PyHirschTuple_Check(Q2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleDiv(*(((PyHirschTuple*)Q2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleDiv()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIntersection(PyHirschTuple*self, PyObject *args)
{
    PyObject* Set2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Set2)) {
            if (PyHirschTuple_Check(Set2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIntersection(*(((PyHirschTuple*)Set2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleIntersection()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMin2(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMin2(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleMin2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsString(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsString());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMean(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMean());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleTanh(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleTanh());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSinh(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSinh());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleGenConst(PyHirschTuple*, PyObject *args)
{
    PyObject* Const;
    PyObject* Length;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Length,&Const)) {
            if (PyHirschTuple_Check(Length) && PyHirschTuple_Check(Const)) {
                return PyHirschTuple_GetAsScalarIfOne(HalconCpp::HTuple::TupleGenConst(*(((PyHirschTuple*)Length)->Tuple),*(((PyHirschTuple*)Const)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleGenConst()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleAsin(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleAsin());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleGreaterEqual(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleGreaterEqual(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleGreaterEqual()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleDeg(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleDeg());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleHistoRange(PyHirschTuple*self, PyObject *args)
{
    PyObject* Max;
    PyObject* Min;
    PyObject* NumBins;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Min,&Max,&NumBins)) {
            if (PyHirschTuple_Check(Min) && PyHirschTuple_Check(Max) && PyHirschTuple_Check(NumBins)) {
                HalconCpp::HTuple BinSize;
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleHistoRange(*(((PyHirschTuple*)Min)->Tuple),*(((PyHirschTuple*)Max)->Tuple),*(((PyHirschTuple*)NumBins)->Tuple),&BinSize)));
                PyTuple_SET_ITEM(ret, 1, PyHirschTuple_GetAsScalarIfOne(BinSize));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleHistoRange()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_Clone(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->Clone());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsStringElem(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsStringElem());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSelectMask(PyHirschTuple*self, PyObject *args)
{
    PyObject* Mask;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Mask)) {
            if (PyHirschTuple_Check(Mask)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSelectMask(*(((PyHirschTuple*)Mask)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSelectMask()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsMixed(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsMixed());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleFmod(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleFmod(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleFmod()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRegexpSelect(PyHirschTuple*self, PyObject *args)
{
    PyObject* Expression;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Expression)) {
            if (PyHirschTuple_Check(Expression)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRegexpSelect(*(((PyHirschTuple*)Expression)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleRegexpSelect()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSplit(PyHirschTuple*self, PyObject *args)
{
    PyObject* Separator;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Separator)) {
            if (PyHirschTuple_Check(Separator)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSplit(*(((PyHirschTuple*)Separator)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSplit()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleRegexpTest(PyHirschTuple*self, PyObject *args)
{
    PyObject* Expression;
    
    try {
        if (PyArg_ParseTuple(args, "O", &Expression)) {
            if (PyHirschTuple_Check(Expression)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleRegexpTest(*(((PyHirschTuple*)Expression)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleRegexpTest()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleGenSequence(PyHirschTuple*, PyObject *args)
{
    PyObject* Start;
    PyObject* End;
    PyObject* Step;
    
    try {
        if (PyArg_ParseTuple(args, "OOO", &Start,&End,&Step)) {
            if (PyHirschTuple_Check(Start) && PyHirschTuple_Check(End) && PyHirschTuple_Check(Step)) {
                return PyHirschTuple_GetAsScalarIfOne(HalconCpp::HTuple::TupleGenSequence(*(((PyHirschTuple*)Start)->Tuple),*(((PyHirschTuple*)End)->Tuple),*(((PyHirschTuple*)Step)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleGenSequence()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsReal(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsReal());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_I(PyHirschTuple*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Tuple->I()));
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_Clear(PyHirschTuple*self, PyObject *)
{
    try {
        self->Tuple->Clear();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleNotEqualElem(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleNotEqualElem(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleNotEqualElem()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLessEqualElem(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLessEqualElem(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleLessEqualElem()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleEnvironment(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleEnvironment());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_Continue(PyHirschTuple*self, PyObject *args)
{
    PyObject* increment;
    PyObject* final_value;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &final_value,&increment)) {
            if (PyHirschTuple_Check(final_value) && PyHirschTuple_Check(increment)) {
                return PyBool_FromLong(self->Tuple->Continue(*(((PyHirschTuple*)final_value)->Tuple),*(((PyHirschTuple*)increment)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Continue()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsIntElem(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsIntElem());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleNot(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleNot());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleStrrstr(PyHirschTuple*self, PyObject *args)
{
    PyObject* ToFind;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ToFind)) {
            if (PyHirschTuple_Check(ToFind)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleStrrstr(*(((PyHirschTuple*)ToFind)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleStrrstr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleLess(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleLess(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleLess()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleInverse(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleInverse());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleAtan2(PyHirschTuple*self, PyObject *args)
{
    PyObject* X;
    
    try {
        if (PyArg_ParseTuple(args, "O", &X)) {
            if (PyHirschTuple_Check(X)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleAtan2(*(((PyHirschTuple*)X)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleAtan2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleEqual(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleEqual(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleEqual()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleIsNumber(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleIsNumber());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleMax2(PyHirschTuple*self, PyObject *args)
{
    PyObject* T2;
    
    try {
        if (PyArg_ParseTuple(args, "O", &T2)) {
            if (PyHirschTuple_Check(T2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleMax2(*(((PyHirschTuple*)T2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleMax2()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_Append(PyHirschTuple*self, PyObject *args)
{
    PyObject* tuple;
    
    try {
        if (PyArg_ParseTuple(args, "O", &tuple)) {
            if (PyHirschTuple_Check(tuple)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->Append(*(((PyHirschTuple*)tuple)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Append()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_ToString(PyHirschTuple*self, PyObject *)
{
    try {
        return PyString_FromString(self->Tuple->ToString().Text());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleSubstr(PyHirschTuple*self, PyObject *args)
{
    PyObject* Position2;
    PyObject* Position1;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &Position1,&Position2)) {
            if (PyHirschTuple_Check(Position1) && PyHirschTuple_Check(Position2)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleSubstr(*(((PyHirschTuple*)Position1)->Tuple),*(((PyHirschTuple*)Position2)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleSubstr()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschTuple_TupleFindLast(PyHirschTuple*self, PyObject *args)
{
    PyObject* ToFind;
    
    try {
        if (PyArg_ParseTuple(args, "O", &ToFind)) {
            if (PyHirschTuple_Check(ToFind)) {
                return PyHirschTuple_GetAsScalarIfOne(self->Tuple->TupleFindLast(*(((PyHirschTuple*)ToFind)->Tuple)));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.TupleFindLast()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
