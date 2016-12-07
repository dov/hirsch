PyObject *
PyHirschHomMat2DArray_Length(PyHirschHomMat2DArray*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->HomMat2DArray.Length()));
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2DArray_ConvertToTuple(PyHirschHomMat2DArray*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->HomMat2DArray.ConvertToTuple());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2DArray_Clear(PyHirschHomMat2DArray*self, PyObject *)
{
    try {
        self->HomMat2DArray.Clear();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschHomMat2DArray_SetFromTuple(PyHirschHomMat2DArray*self, PyObject *args)
{
    PyObject* concatenated;
    
    try {
        if (PyArg_ParseTuple(args, "O", &concatenated)) {
            if (PyHirschTuple_Check(concatenated)) {
                self->HomMat2DArray.SetFromTuple(*(((PyHirschTuple*)concatenated)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HHomMat2DArray.SetFromTuple()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
