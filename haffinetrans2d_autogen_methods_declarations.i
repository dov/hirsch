PyObject *
PyHirschAffineTrans2D_Rotate(PyHirschAffineTrans2D*self, PyObject *args)
{
    double phi;
    
    try {
        if (PyArg_ParseTuple(args, "d", &phi)) {
            self->AffineTrans2D.Rotate(phi);
            Py_INCREF(Py_None);
            return Py_None;
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HAffineTrans2D.Rotate()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschAffineTrans2D_Identity(PyHirschAffineTrans2D*self, PyObject *)
{
    try {
        self->AffineTrans2D.Identity();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
