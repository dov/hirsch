PyObject *
PyHirschPoint2D_Y(PyHirschPoint2D*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Point2D.Y());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPoint2D_X(PyHirschPoint2D*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Point2D.X());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPoint2D_Inside(PyHirschPoint2D*self, PyObject *args)
{
    PyObject* pp;
    PyObject* lr;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &pp,&lr)) {
            if (PyHirschPoint2D_Check(pp) && PyHirschPoint2D_Check(lr)) {
                return PyBool_FromLong(self->Point2D.Inside(Halcon::HPoint2D((((PyHirschPoint2D*)pp)->Point2D)),Halcon::HPoint2D((((PyHirschPoint2D*)lr)->Point2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HPoint2D.Inside()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschPoint2D_Z(PyHirschPoint2D*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Point2D.Z());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
