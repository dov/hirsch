PyObject *
PyHirschPixVal_ToByte(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->ToByte();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPixVal_ToFloat(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->ToFloat();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPixVal_ToInt1(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->ToInt1();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPixVal_ToInt4(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->ToInt4();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPixVal_ToUInt2(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->ToUInt2();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPixVal_ToComplexD(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->ToComplexD();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPixVal_ToInt2(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->ToInt2();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPixVal_Delete(PyHirschPixVal*self, PyObject *)
{
    try {
        self->PixVal->Delete();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
