// Python binding for halcon
#include "pyhirsch.h"
#include <Python.h>
#include <HalconCpp.h>
#include <stdio.h>
#include <stdlib.h>

struct module_state {
    PyObject *error;
};

static PyObject *HalconError;

PyMethodDef PyHirschMethods[] = {
    {NULL, NULL, 0, NULL}        /* Sentinel */
};

static void MyHalconExceptionHandler(const Halcon::HException& except)
{
  throw except;
}

#if PY_MAJOR_VERSION >= 3
#define GETSTATE(m) ((struct module_state*)PyModule_GetState(m))
#else
#define GETSTATE(m) (&_state)
static struct module_state _state;
#endif

#if PY_MAJOR_VERSION >= 3
static int myextension_traverse(PyObject *m, visitproc visit, void *arg) {
    Py_VISIT(GETSTATE(m)->error);
    return 0;
}

static int myextension_clear(PyObject *m) {
    Py_CLEAR(GETSTATE(m)->error);
    return 0;
}

static struct PyModuleDef moduledef = {
        PyModuleDef_HEAD_INIT,
        "_hirch",
        NULL,
        sizeof(struct module_state),
        PyHirschMethods,
        NULL,
        myextension_traverse,
        myextension_clear,
        NULL
};

#define INITERROR return NULL

PyMODINIT_FUNC
pyhirsch_init_extension(void)

#else
// This may be called when initializing modules statically
void
pyhirsch_init_extension(void)
#endif
{
    PyObject *m;

#if PY_MAJOR_VERSION >= 3
    m = PyModule_Create(&moduledef);
    if (m == NULL)
        return NULL;
#else
    m = Py_InitModule("_hirsch", PyHirschMethods);
    if (m == NULL)
        return;
#endif

    PyHirschTupleAddToModule(m);
    PyHirschPoint2DAddToModule(m);
    PyHirschDPoint2DAddToModule(m);
    PyHirschRectangle1AddToModule(m);
    PyHirschRectangle2AddToModule(m);
    PyHirschRegionAddToModule(m);
    PyHirschRegionArrayAddToModule(m);
    PyHirschImageAddToModule(m);
    PyHirschImageArrayAddToModule(m);
    PyHirschXLDContArrayAddToModule(m);
    PyHirschXLDContAddToModule(m);
    PyHirschDataCode2DAddToModule(m);
    PyHirschBarCodeAddToModule(m);
    PyHirschLine2DAddToModule(m);
    PyHirschXLDAddToModule(m);
    PyHirschXLDArrayAddToModule(m);
    PyHirschCircleAddToModule(m);
    PyHirschEllipseAddToModule(m);
    PyHirschPixValAddToModule(m);

    HalconError = PyErr_NewException((char*)"halcon.error", NULL, NULL);
    Py_INCREF(HalconError);
    PyModule_AddObject(m, "HError", HalconError);

#if PY_MAJOR_VERSION >= 3
    return m;
#endif

}

// This is the python dll external entry point
PyMODINIT_FUNC
init_hirsch(void)
{
    PyObject *m;

    Halcon::HException::InstallHHandler(&MyHalconExceptionHandler);

#if PY_MAJOR_VERSION >= 3
    return pyhirsch_init_extension();
#else
    pyhirsch_init_extension();
#endif
}
