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

// This may be called when initializing modules statically
void pyhirsch_init_module(void)
{
    PyObject *m;

    m = Py_InitModule("_hirsch13", PyHirschMethods);
    if (m == NULL)
        return;

    PyHirschTupleAddToModule(m);
    PyHirschRegionAddToModule(m);
    PyHirschImageAddToModule(m);
    PyHirschXLDContAddToModule(m);
    PyHirschDataCode2DAddToModule(m);
    PyHirschBarCodeAddToModule(m);
    PyHirschXLDAddToModule(m);

    HalconError = PyErr_NewException((char*)"halcon.error", NULL, NULL);
    Py_INCREF(HalconError);
    PyModule_AddObject(m, "HError", HalconError);
}

// This is the python dll external entry point
PyMODINIT_FUNC
init_hirsch13(void)
{
    PyObject *m;

    //    HalconCpp::HException::InstallHHandler(&MyHalconExceptionHandler);

    pyhirsch_init_module();
    m = Py_InitModule("_hirsch13", PyHirschMethods);
    if (m == NULL)
        return;
}
