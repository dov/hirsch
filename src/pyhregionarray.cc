// Autogenerated file for halcon type HRegionArray

#include "pyhirsch.h"

static void
PyHirschRegionArray_dealloc(PyHirschRegionArray* self)
{
    if(self->RegionArray)
        delete self->RegionArray;
    Py_TYPE(self)->tp_free((PyObject*)self);
}

static int
PyHirschRegionArray_init(PyHirschRegionArray *self, PyObject */*args*/, PyObject */*kwds*/)
{
    // TBD - Use PyArg_ParseTupleAndKeywords() to do special initilaziation
    self->RegionArray = new Halcon::HRegionArray();

    return 0;
}

#include "hregionarray_autogen_methods_declarations.i"

static PyMethodDef PyHirschRegionArray_methods[] = {
#include "hregionarray_autogen_methods_list.i"
    {NULL}  /* Sentinel */
};

Py_ssize_t PyHirschRegionArray_Length(PyObject *o)
{
    return ((PyHirschRegionArray*)o)->RegionArray->Num();
}

PyObject *
PyHirschRegionArray_GetItem(PyObject *self, Py_ssize_t i)
{
    Halcon::HRegionArray *RegionArray = (((PyHirschRegionArray*)self)->RegionArray);
    return PyHirschRegion_FromHRegion((*RegionArray)[i]);
}

static PySequenceMethods PyHirschRegionArray_sequence_methods = {
    PyHirschRegionArray_Length,                /* sq_length */
    0,                                   /* sq_concat */
    0,                                   /* sq_repeat */
    PyHirschRegionArray_GetItem,               /* sq_item */
};


PyObject* PyHirschRegionArray_iter(PyObject *self)
{
  Py_INCREF(self);
  ((PyHirschRegionArray*)self)->iter_pos = 0;
  return self;
}

PyObject* PyHirschRegionArray_iternext(PyObject *self)
{
    PyHirschRegionArray *p = (PyHirschRegionArray *)self;
    Halcon::HRegionArray *RegionArray = (p->RegionArray);

    if (p->iter_pos < RegionArray->Num()) {
        PyObject *ret = PyHirschRegion_FromHRegion((*RegionArray)[p->iter_pos]);
        p->iter_pos+=1;

        return ret;
    }
    else {
        /* Raising of standard StopIteration exception with empty value. */
        PyErr_SetNone(PyExc_StopIteration);
        return NULL;
    }
}

PyObject *PyHirschRegionArray_FromHRegionArray(Halcon::HRegionArray RegionArray)
{
    PyHirschRegionArray *v = (PyHirschRegionArray*)PyObject_New(PyHirschRegionArray, &PyHirschRegionArrayType);
    v->RegionArray = new Halcon::HRegionArray(RegionArray);
    return (PyObject*)v;
}

#if PY_MAJOR_VERSION >= 3
#define Py_TPFLAGS_HAVE_ITER 0
#endif

PyTypeObject PyHirschRegionArrayType = {
    PyVarObject_HEAD_INIT(NULL, 0)
    "Hirsch.HRegionArray",      /*tp_name*/
    sizeof(PyHirschRegionArray), /*tp_basicsize*/
    0,                         /*tp_itemsize*/
    (destructor)PyHirschRegionArray_dealloc,       /*tp_dealloc*/
    0,                         /*tp_print*/
    0,                         /*tp_getattr*/
    0,                         /*tp_setattr*/
    0,                         /*tp_compare*/
    0,                         /*tp_repr*/
    0,                         /*tp_as_number*/
    &PyHirschRegionArray_sequence_methods,        /*tp_as_sequence*/
    0,                         /*tp_as_mapping*/
    0,                         /*tp_hash */
    0,                         /*tp_call*/
    0,                         /*tp_str*/
    0,                         /*tp_getattro*/
    0,                         /*tp_setattro*/
    0,                         /*tp_as_buffer*/
    Py_TPFLAGS_DEFAULT|Py_TPFLAGS_HAVE_ITER,        /*tp_flags*/
    "PyHirschRegionArray",        /* tp_doc */
    0,		               /* tp_traverse */
    0,		               /* tp_clear */
    0,		               /* tp_richcompare */
    0,		               /* tp_weaklistoffset */
    &PyHirschRegionArray_iter,		 /* tp_iter */
    &PyHirschRegionArray_iternext,         /* tp_iternext */
    PyHirschRegionArray_methods,  /* tp_methods */
    0,                         /* tp_members */
    0,                         /* tp_getset */
    0,                         /* tp_base */
    0,                         /* tp_dict */
    0,                         /* tp_descr_get */
    0,                         /* tp_descr_set */
    0,                         /* tp_dictoffset */
    (initproc)PyHirschRegionArray_init,          /* tp_init */
    0,                         /* tp_alloc */
    PyType_GenericNew,         /* tp_new */
};


void PyHirschRegionArrayAddToModule(PyObject *m)
{
    Py_INCREF(&PyHirschRegionArrayType);
    if (PyType_Ready(&PyHirschRegionArrayType) < 0)
        return;
    PyModule_AddObject(m, "HRegionArray", (PyObject *)&PyHirschRegionArrayType);
}

