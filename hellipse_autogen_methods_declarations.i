PyObject *
PyHirschEllipse_Phi(PyHirschEllipse*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Ellipse.Phi());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschEllipse_Center(PyHirschEllipse*self, PyObject *args)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Ellipse.Center());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschEllipse_Rb(PyHirschEllipse*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Ellipse.Rb());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschEllipse_Ra(PyHirschEllipse*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Ellipse.Ra());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
