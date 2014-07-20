PyObject *
PyHirschRectangle1_Overlaps(PyHirschRectangle1*self, PyObject *args)
{
    PyObject* w;
    
    try {
        if (PyArg_ParseTuple(args, "O", &w)) {
            if (PyHirschRectangle1_Check(w)) {
                return PyBool_FromLong(self->Rectangle1.Overlaps(Halcon::HRectangle1((((PyHirschRectangle1*)w)->Rectangle1))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle1.Overlaps()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_Distance(PyHirschRectangle1*self, PyObject *args)
{
    PyObject* line;
    PyObject* point;
    
    try {
        if (PyArg_ParseTuple(args, "O", &point)) {
            if (PyHirschPoint2D_Check(point)) {
                return PyFloat_FromDouble(self->Rectangle1.Distance(Halcon::HPoint2D((((PyHirschPoint2D*)point)->Point2D))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyFloat_FromDouble(self->Rectangle1.Distance(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle1.Distance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_Center(PyHirschRectangle1*self, PyObject *)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle1.Center());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_UpperLeft(PyHirschRectangle1*self, PyObject *)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle1.UpperLeft());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_Area(PyHirschRectangle1*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Rectangle1.Area());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_CenterDistance(PyHirschRectangle1*self, PyObject *args)
{
    PyObject* line;
    PyObject* point;
    
    try {
        if (PyArg_ParseTuple(args, "O", &point)) {
            if (PyHirschPoint2D_Check(point)) {
                return PyFloat_FromDouble(self->Rectangle1.CenterDistance(Halcon::HPoint2D((((PyHirschPoint2D*)point)->Point2D))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyFloat_FromDouble(self->Rectangle1.CenterDistance(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle1.CenterDistance()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_Includes(PyHirschRectangle1*self, PyObject *args)
{
    PyObject* line;
    PyObject* point;
    
    try {
        if (PyArg_ParseTuple(args, "O", &point)) {
            if (PyHirschPoint2D_Check(point)) {
                return PyBool_FromLong(self->Rectangle1.Includes(Halcon::HPoint2D((((PyHirschPoint2D*)point)->Point2D))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                return PyBool_FromLong(self->Rectangle1.Includes(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle1.Includes()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_LowerRight(PyHirschRectangle1*self, PyObject *)
{
    try {
        return PyHirschPoint2D_FromHPoint2D(self->Rectangle1.LowerRight());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_Height(PyHirschRectangle1*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Rectangle1.Height());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_Width(PyHirschRectangle1*self, PyObject *)
{
    try {
        return PyFloat_FromDouble(self->Rectangle1.Width());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_HMax(PyHirschRectangle1*self, PyObject *args)
{
    PyObject* w;
    
    try {
        if (PyArg_ParseTuple(args, "O", &w)) {
            if (PyHirschRectangle1_Check(w)) {
                return PyHirschRectangle1_FromHRectangle1(self->Rectangle1.HMax(Halcon::HRectangle1((((PyHirschRectangle1*)w)->Rectangle1))));
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle1.HMax()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_IsEmpty(PyHirschRectangle1*self, PyObject *)
{
    try {
        return PyBool_FromLong(self->Rectangle1.IsEmpty());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschRectangle1_Intersection(PyHirschRectangle1*self, PyObject *args)
{
    PyObject* w;
    PyObject* line;
    
    try {
        if (PyArg_ParseTuple(args, "O", &w)) {
            if (PyHirschRectangle1_Check(w)) {
                return PyHirschRectangle1_FromHRectangle1(self->Rectangle1.Intersection(Halcon::HRectangle1((((PyHirschRectangle1*)w)->Rectangle1))));
            }
        }
        PyErr_Clear();
        if (PyArg_ParseTuple(args, "O", &line)) {
            if (PyHirschLine2D_Check(line)) {
                Halcon::HLine2D clipping(Halcon::HPoint2D(0,0), Halcon::HPoint2D(0,0));
                PyObject *ret = PyTuple_New(2);
                PyTuple_SET_ITEM(ret, 0, PyBool_FromLong(self->Rectangle1.Intersection(Halcon::HLine2D((((PyHirschLine2D*)line)->Line2D)),clipping)));
                PyTuple_SET_ITEM(ret, 1, PyHirschLine2D_FromHLine2D(clipping));
                
                return ret;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HRectangle1.Intersection()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
