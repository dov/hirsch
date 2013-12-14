PyObject *
PyHirschRectangle2_Overlaps(PyHirschRectangle2*self, PyObject *args)
{
    PyObject* w;
    
    try {
        if (PyArg_ParseTuple(args, "O", &w)) {
            if (PyHirschRectangle2_Check(w)) {
                return PyBool_FromLong(self->Rectangle2.Overlaps(Halcon::HRectangle2((((PyHirschRectangle2*)w)->Rectangle2))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle2.Overlaps()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Distance(PyHirschRectangle2*self, PyObject *args)
{
    PyObject* line;
    PyObject* point;
    
    try {
        if (PyArg_ParseTuple(args, "O", &point)) {
            if (PyHirschPoint2D_Check(point)) {
                return PyFloat_FromDouble(self->Rectangle2.Distance(Halcon::HPoint2D((((PyHirschPoint2D*)point)->Point2D))));
            }
        }
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyFloat_FromDouble(self->Rectangle2.Distance(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle2.Distance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Phi(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Rectangle2.Phi());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Center(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle2.Center());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_CenterDistance(PyHirschRectangle2*self, PyObject *args)
{
    PyObject* line;
    PyObject* point;
    
    try {
        if (PyArg_ParseTuple(args, "O", &point)) {
            if (PyHirschPoint2D_Check(point)) {
                return PyFloat_FromDouble(self->Rectangle2.CenterDistance(Halcon::HPoint2D((((PyHirschPoint2D*)point)->Point2D))));
            }
        }
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyFloat_FromDouble(self->Rectangle2.CenterDistance(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle2.CenterDistance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Includes(PyHirschRectangle2*self, PyObject *args)
{
    PyObject* w;
    PyObject* line;
    PyObject* point;
    
    try {
        if (PyArg_ParseTuple(args, "O", &w)) {
            if (PyHirschRectangle2_Check(w)) {
                return PyBool_FromLong(self->Rectangle2.Includes(Halcon::HRectangle2((((PyHirschRectangle2*)w)->Rectangle2))));
            }
        }
        if (PyArg_ParseTuple(args, "O", &point)) {
            if (PyHirschPoint2D_Check(point)) {
                return PyBool_FromLong(self->Rectangle2.Includes(Halcon::HPoint2D((((PyHirschPoint2D*)point)->Point2D))));
            }
        }
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyBool_FromLong(self->Rectangle2.Includes(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle2.Includes()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Point1(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle2.Point1());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Point2(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle2.Point2());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Point3(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle2.Point3());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Point4(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle2.Point4());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Ra(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Rectangle2.Ra());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Rb(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyFloat_FromDouble(self->Rectangle2.Rb());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_IsEmpty(PyHirschRectangle2*self, PyObject *args)
{
    try {
        return PyBool_FromLong(self->Rectangle2.IsEmpty());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle2_Intersection(PyHirschRectangle2*self, PyObject *args)
{
    PyObject* line;
    
    try {
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                Halcon::HLine2D clipping(Halcon::HPoint2D(0,0), Halcon::HPoint2D(0,0));
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyBool_FromLong(self->Rectangle2.Intersection(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D)),clipping)));
                PyTuple_SET_ITEM(ret, 1, PyHirschLine2D_FromHLine2D(clipping));
                
                return ret;
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle2.Intersection()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
