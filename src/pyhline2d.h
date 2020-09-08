// Autogenerated file for halcon type HLine2D
#ifndef PYHLINE2D_H
#define HLINE2D_H

#include <Python.h>
#include <HalconCpp.h>

PyObject *PyHirschLine2D_FromHLine2D(Halcon::HLine2D Line2D);

// Rewrite for static types without default constructor.
struct PyHirschLine2D {
    PyHirschLine2D(void)
        : Line2D(Halcon::HPoint2D(0,0),Halcon::HPoint2D(0,0)) {}
    PyObject_HEAD;
    Halcon::HLine2D Line2D;
};

#define PyHirschLine2D_Check(op) \
    PyObject_TypeCheck(op, &PyHirschLine2DType)

void PyHirschLine2DAddToModule(PyObject *m);

extern PyTypeObject  PyHirschLine2DType;

#endif
