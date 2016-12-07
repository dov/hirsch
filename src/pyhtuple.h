#ifndef PYHTUPLE_H
#define PYHTUPLE_H

#include <Python.h>
#include <HalconCpp.h>

PyObject *PyHirschTuple_FromHTuple(const HalconCpp::HTuple& Tuple);

// Access a member of a tuple and return its value. Should be used for
// methods that return scalars as 1-meber tuples
PyObject *PyHirschTuple_GetItemFromTuple(const HalconCpp::HTuple& Tuple, int idx);

// Return a scalar if the length is one. Otherwise return a PyHTuple object.
PyObject *PyHirschTuple_GetAsScalarIfOne(const HalconCpp::HTuple& Tuple);

typedef struct {
    PyObject_HEAD;
    HalconCpp::HTuple *Tuple;
    int iter_pos;
} PyHirschTuple;

#define PyHirschTuple_Check(op) \
    PyObject_TypeCheck(op, &PyHirschTupleType)

void PyHirschTupleAddToModule(PyObject *m);

extern PyTypeObject PyHirschTupleType;

#endif
