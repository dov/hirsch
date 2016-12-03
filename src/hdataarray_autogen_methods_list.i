    {"Length", (PyCFunction)PyHirschDataArray_Length, METH_NOARGS, "Length()\n\n" },
    {"ConvertToTuple", (PyCFunction)PyHirschDataArray_ConvertToTuple, METH_NOARGS, "ConvertToTuple()\n\nGet concatenated data tuple for data array" },
    {"Clear", (PyCFunction)PyHirschDataArray_Clear, METH_NOARGS, "Clear()\n\n" },
    {"SetFromTuple", (PyCFunction)PyHirschDataArray_SetFromTuple, METH_VARARGS, "SetFromTuple(concatenated)\n\nCreate data class array from splittable tuple" },