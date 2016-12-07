// Utilities for handling HTuple types.
#ifndef PYHTUPLE_UTIL_H
#define PYHTUPLE_UTIL_H

#include <Python.h>
#include <HalconCpp.h>

#define HTUPLE_TYPE_UNKNOWN = -1;

PyObject *HTupleToPyTuple(HalconCpp::HTuple Tuple,
                          int TypeHint = -1);

#endif /* HTUPLE_UTIL */
