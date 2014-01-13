// Python binding for halcon
#include "pyhirsch.h"
#include <Python.h>
#include <HalconCpp.h>
#include <stdio.h>
#include <stdlib.h>

static PyObject *HalconError;

PyMethodDef PyHirschMethods[] = {
    {NULL, NULL, 0, NULL}        /* Sentinel */
};

static void MyHalconExceptionHandler(const Halcon::HException& except)
{
  throw except;
}

// This may be called when initializing modules statically
void pyhirsch_init_module(void)
{
    PyObject *m;

    m = Py_InitModule("_hirsch", PyHirschMethods);
    if (m == NULL)
        return;

    PyHirschTupleAddToModule(m);
    PyHirschPoint2DAddToModule(m);
    PyHirschDPoint2DAddToModule(m);
    PyHirschRectangle1AddToModule(m);
    PyHirschRectangle2AddToModule(m);
    PyHirschRegionAddToModule(m);
    PyHirschRegionArrayAddToModule(m);
    PyHirschImageAddToModule(m);
    PyHirschXLDContArrayAddToModule(m);
    PyHirschXLDContAddToModule(m);
    PyHirschDataCode2DAddToModule(m);
    PyHirschBarCodeAddToModule(m);
    PyHirschLine2DAddToModule(m);
    PyHirschXLDAddToModule(m);
    PyHirschXLDArrayAddToModule(m);
    PyHirschCircleAddToModule(m);
    PyHirschEllipseAddToModule(m);

    HalconError = PyErr_NewException((char*)"halcon.error", NULL, NULL);
    Py_INCREF(HalconError);
    PyModule_AddObject(m, "HError", HalconError);
}

// This is the python dll external entry point
PyMODINIT_FUNC
init_hirsch(void)
{
    PyObject *m;

    Halcon::HException::InstallHHandler(&MyHalconExceptionHandler);

    pyhirsch_init_module();
    m = Py_InitModule("_hirsch", PyHirschMethods);
    if (m == NULL)
        return;
}
