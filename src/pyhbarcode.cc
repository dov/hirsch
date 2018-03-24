// Autogenerated file for halcon type HBarCode

#include "pyhirsch.h"

static void
PyHirschBarCode_dealloc(PyHirschBarCode* self)
{
    if(self->BarCode)
        delete self->BarCode;
    PyObject_Del(self);
}

static int
PyHirschBarCode_init(PyHirschBarCode *self, PyObject */*args*/, PyObject */*kwds*/)
{
    self->BarCode = new Halcon::HBarCode();

    return 0;
}

#include "hbarcode_autogen_methods_declarations.i"

static PyMethodDef PyHirschBarCode_methods[] = {
#include "hbarcode_autogen_methods_list.i"
    {NULL}  /* Sentinel */
};

PyObject *PyHirschBarCode_FromHBarCode(Halcon::HBarCode BarCode)
{
    PyHirschBarCode *v = (PyHirschBarCode*)PyObject_New(PyHirschBarCode, &PyHirschBarCodeType);
    v->BarCode = new Halcon::HBarCode(BarCode);
    return (PyObject*)v;
}

PyTypeObject PyHirschBarCodeType = {
    PyVarObject_HEAD_INIT(NULL, 0)
    "Hirsch.HBarCode",      /*tp_name*/
    sizeof(PyHirschBarCode), /*tp_basicsize*/
    0,                         /*tp_itemsize*/
    (destructor)PyHirschBarCode_dealloc,       /*tp_dealloc*/
    0,                         /*tp_print*/
    0,                         /*tp_getattr*/
    0,                         /*tp_setattr*/
    0,                         /*tp_compare*/
    0,                         /*tp_repr*/
    0,                         /*tp_as_number*/
    0,        /*tp_as_sequence*/
    0,                         /*tp_as_mapping*/
    0,                         /*tp_hash */
    0,                         /*tp_call*/
    0,                         /*tp_str*/
    0,                         /*tp_getattro*/
    0,                         /*tp_setattro*/
    0,                         /*tp_as_buffer*/
    Py_TPFLAGS_DEFAULT,        /*tp_flags*/
    "PyHirschBarCode",        /* tp_doc */
    0,		               /* tp_traverse */
    0,		               /* tp_clear */
    0,		               /* tp_richcompare */
    0,		               /* tp_weaklistoffset */
    0,		 /* tp_iter */
    0,         /* tp_iternext */
    PyHirschBarCode_methods,  /* tp_methods */
    0,                         /* tp_members */
    0,                         /* tp_getset */
    0,                         /* tp_base */
    0,                         /* tp_dict */
    0,                         /* tp_descr_get */
    0,                         /* tp_descr_set */
    0,                         /* tp_dictoffset */
    (initproc)PyHirschBarCode_init,          /* tp_init */
    0,                         /* tp_alloc */
    PyType_GenericNew,         /* tp_new */
};


void PyHirschBarCodeAddToModule(PyObject *m)
{
    Py_INCREF(&PyHirschBarCodeType);
    if (PyType_Ready(&PyHirschBarCodeType) < 0)
        return;
    PyModule_AddObject(m, "HBarCode", (PyObject *)&PyHirschBarCodeType);
}

