// Utilities for handling HTuple types.
#ifndef HTUPLE_UTIL_H
#define HTUPLE_UTIL_H

#include <Python.h>
#include <HalconCpp.h>

#define HTUPLE_TYPE_UNKNOWN = -1;

PyObject *HTupleToPyTuple(Halcon::HTuple Tuple,
                          int TypeHint = -1);

#endif /* HTUPLE_UTIL */
