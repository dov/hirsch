// Autogenerated file for halcon type HXLDCont

#include "pyhirsch.h"

static void
PyHirschXLDCont_dealloc(PyHirschXLDCont* self)
{
    if(self->XLDCont)
        delete self->XLDCont;
    Py_TYPE(self)->tp_free((PyObject*)self);
}

static int
PyHirschXLDCont_init(PyHirschXLDCont *self, PyObject */*args*/, PyObject */*kwds*/)
{
    self->XLDCont = new Halcon::HXLDCont();

    return 0;
}

#include "hxldcont_autogen_methods_declarations.i"

static PyMethodDef PyHirschXLDCont_methods[] = {
#include "hxldcont_autogen_methods_list.i"
    {NULL}  /* Sentinel */
};

PyObject *PyHirschXLDCont_FromHXLDCont(Halcon::HXLDCont XLDCont)
{
    PyHirschXLDCont *v = (PyHirschXLDCont*)PyObject_New(PyHirschXLDCont, &PyHirschXLDContType);
    v->XLDCont = new Halcon::HXLDCont(XLDCont);
    return (PyObject*)v;
}

PyTypeObject PyHirschXLDContType = {
    PyVarObject_HEAD_INIT(NULL, 0)
    "Halcon.hxldcont",        /*tp_name*/
    sizeof(PyHirschXLDCont), /*tp_basicsize*/
    0,                         /*tp_itemsize*/
    (destructor)PyHirschXLDCont_dealloc,       /*tp_dealloc*/
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
    "PyHirschXLDCont",        /* tp_doc */
    0,		               /* tp_traverse */
    0,		               /* tp_clear */
    0,		               /* tp_richcompare */
    0,		               /* tp_weaklistoffset */
    0,		 /* tp_iter */
    0,         /* tp_iternext */
    PyHirschXLDCont_methods,  /* tp_methods */
    0,                         /* tp_members */
    0,                         /* tp_getset */
    0,                         /* tp_base */
    0,                         /* tp_dict */
    0,                         /* tp_descr_get */
    0,                         /* tp_descr_set */
    0,                         /* tp_dictoffset */
    (initproc)PyHirschXLDCont_init,          /* tp_init */
    0,                         /* tp_alloc */
    PyType_GenericNew,         /* tp_new */
};


void PyHirschXLDContAddToModule(PyObject *m)
{
    Py_INCREF(&PyHirschXLDContType);
    if (PyType_Ready(&PyHirschXLDContType) < 0)
        return;
    PyModule_AddObject(m, "HXLDCont", (PyObject *)&PyHirschXLDContType);
}
