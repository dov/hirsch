PyObject *
PyHirschLine2D_Distance(PyHirschLine2D*self, PyObject *args)
{
    PyObject* line;
    
    try {
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyFloat_FromDouble(self->Line2D.Distance(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HLine2D.Distance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschLine2D_Direction(PyHirschLine2D*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Line2D.Direction());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschLine2D_End(PyHirschLine2D*self, PyObject *)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Line2D.End());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschLine2D_Start(PyHirschLine2D*self, PyObject *)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Line2D.Start());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschLine2D_Length(PyHirschLine2D*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Line2D.Length());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschLine2D_PerpLinePoint(PyHirschLine2D*self, PyObject *args)
{
    PyObject* p;
    
    try {
        if (PyArg_ParseTuple(args, "O", &p)) {
            if (PyHirschPoint2D_Check(p)) {
                return PyHirschPoint2D_FromHPoint2D(self->Line2D.PerpLinePoint(Halcon::HPoint2D((((PyHirschPoint2D*)p)->Point2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HLine2D.PerpLinePoint()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschLine2D_Intersection(PyHirschLine2D*self, PyObject *args)
{
    PyObject* line;
    
    try {
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyHirschPoint2D_FromHPoint2D(self->Line2D.Intersection(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HLine2D.Intersection()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschLine2D_Parameter(PyHirschLine2D*self, PyObject *args)
{
    PyObject* p;
    
    try {
        if (PyArg_ParseTuple(args, "O", &p)) {
            if (PyHirschPoint2D_Check(p)) {
                return PyFloat_FromDouble(self->Line2D.Parameter(Halcon::HPoint2D((((PyHirschPoint2D*)p)->Point2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HLine2D.Parameter()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
