#include "htuple_util.h"

PyObject *HTupleToPyTuple(HalconCpp::HTuple Tuple,
                          int /*TypeHint*/)
{
    PyObject *ret = NULL;

    int Len = Tuple.Num();
    ret = PyTuple_New(Len);

    // TBD - Optimize by only asking for element types if
    // the tuple type is mixed.
#if 0
    int tupleType = TypeHint;
    if (TupleType == HTUPLE_TYPE_UNKNOWN)
        TupleType = Tuple.TupleType().L();
#endif
    
    PyObject *el;
    for (int i=0; i<Len; i++) {
        HalconCpp::HCtrlVal& Val(Tuple[i]);
        switch (Val.ValType()) {
        case LONG_PAR:
            el = PyInt_FromLong(Val.L());
            break;
        case DOUBLE_PAR:
            el = PyFloat_FromDouble(Val.D());
            break;
        case STRING_PAR:
            el = PyString_FromString(Val.S());
            break;
        default:
            PyErr_SetString(PyExc_RuntimeError, "Unknown Halcon type!");
            Py_DECREF(ret);
            return NULL;
        }
        PyTuple_SET_ITEM(ret, i, el);
    }
                
    return ret;
}
