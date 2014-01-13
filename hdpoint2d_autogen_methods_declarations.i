PyObject *
PyHirschDPoint2D_Y(PyHirschDPoint2D*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->DPoint2D.Y()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDPoint2D_X(PyHirschDPoint2D*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->DPoint2D.X()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDPoint2D_Inside(PyHirschDPoint2D*self, PyObject *args)
{
    PyObject* pp;
    PyObject* lr;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &pp,&lr)) {
            if (PyHirschDPoint2D_Check(pp) && PyHirschDPoint2D_Check(lr)) {
                return PyBool_FromLong(self->DPoint2D.Inside(Halcon::HDPoint2D((((PyHirschDPoint2D*)pp)->DPoint2D)),Halcon::HDPoint2D((((PyHirschDPoint2D*)lr)->DPoint2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDPoint2D.Inside()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschDPoint2D_Z(PyHirschDPoint2D*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->DPoint2D.Z()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
