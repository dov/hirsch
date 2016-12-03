    {"Length", (PyCFunction)PyHirschHomMat2DArray_Length, METH_NOARGS, "Length()\n\n" },
    {"ConvertToTuple", (PyCFunction)PyHirschHomMat2DArray_ConvertToTuple, METH_NOARGS, "ConvertToTuple()\n\nGet concatenated data tuple for data array" },
    {"Clear", (PyCFunction)PyHirschHomMat2DArray_Clear, METH_NOARGS, "Clear()\n\n" },
    {"SetFromTuple", (PyCFunction)PyHirschHomMat2DArray_SetFromTuple, METH_VARARGS, "SetFromTuple(concatenated)\n\nCreate data class array from splittable tuple" },