PyObject *
PyHirschDataArray_Length(PyHirschDataArray*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->DataArray.Length()));
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataArray_ConvertToTuple(PyHirschDataArray*self, PyObject *)
{
    try {
        return PyHirschTuple_GetAsScalarIfOne(self->DataArray.ConvertToTuple());
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataArray_Clear(PyHirschDataArray*self, PyObject *)
{
    try {
        self->DataArray.Clear();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}

PyObject *
PyHirschDataArray_SetFromTuple(PyHirschDataArray*self, PyObject *args)
{
    PyObject* concatenated;
    
    try {
        if (PyArg_ParseTuple(args, "O", &concatenated)) {
            if (PyHirschTuple_Check(concatenated)) {
                self->DataArray.SetFromTuple(*(((PyHirschTuple*)concatenated)->Tuple));
                Py_INCREF(Py_None);
                return Py_None;
            }
        }
        PyErr_Clear();
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HDataArray.SetFromTuple()");
        return NULL;
    }
    catch (HalconCpp::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text());
        return NULL;
    }
}
