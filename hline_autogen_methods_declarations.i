PyObject *
PyHirschLine_Length(PyHirschLine*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Line.Length());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
