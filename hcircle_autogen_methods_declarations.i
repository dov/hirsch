PyObject *
PyHirschCircle_Phi(PyHirschCircle*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Circle.Phi());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschCircle_Radius(PyHirschCircle*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Circle.Radius());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschCircle_Center(PyHirschCircle*self, PyObject *args)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Circle.Center());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschCircle_Rb(PyHirschCircle*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Circle.Rb());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschCircle_Ra(PyHirschCircle*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Circle.Ra());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
