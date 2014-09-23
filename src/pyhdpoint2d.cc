// Autogenerated file for halcon type HDPoint2D

#include "pyhirsch.h"

static void
PyHirschDPoint2D_dealloc(PyHirschDPoint2D* self)
{
    // Explicit call to destructor.
    self->DPoint2D.~HDPoint2D();
    self->ob_type->tp_free((PyObject*)self);
}

static int
PyHirschDPoint2D_init(PyHirschDPoint2D *self, PyObject *args, PyObject */*kwds*/)
{
    int x,y;

    if (PyArg_ParseTuple(args,"(ii)",&x,&y)) 
        self->DPoint2D = Halcon::HDPoint2D(x,y);
    else if (PyArg_ParseTuple(args,"ii",&x,&y)) 
        self->DPoint2D = Halcon::HDPoint2D(x,y);
    else
        return -1;

    PyErr_Clear();

    return 0;
}

#include "hdpoint2d_autogen_methods_declarations.i"

static PyMethodDef PyHirschDPoint2D_methods[] = {
#include "hdpoint2d_autogen_methods_list.i"
    {NULL}  /* Sentinel */
};

Py_ssize_t PyHirschDPoint2D_Length(PyObject */*o*/)
{
    return 4; // Return the length of the sequence
}

PyObject *
PyHirschDPoint2D_GetItem(PyObject *self, Py_ssize_t i)
{
    Halcon::HDPoint2D *DPoint2D = &(((PyHirschDPoint2D*)self)->DPoint2D);

    if (i==0)
        return PyFloat_FromDouble(DPoint2D->X());
    else if (i==1)
        return PyFloat_FromDouble(DPoint2D->Y());
    return NULL;

}

static PySequenceMethods PyHirschDPoint2D_sequence_methods = {
    PyHirschDPoint2D_Length,                /* sq_length */
    0,                                   /* sq_concat */
    0,                                   /* sq_repeat */
    PyHirschDPoint2D_GetItem,               /* sq_item */
};


PyObject* PyHirschDPoint2D_iter(PyObject *self)
{
  Py_INCREF(self);
  ((PyHirschDPoint2D*)self)->iter_pos = 0;
  return self;
}

PyObject* PyHirschDPoint2D_iternext(PyObject *self)
{
    PyHirschDPoint2D *p = (PyHirschDPoint2D *)self;
    Halcon::HDPoint2D *DPoint2D = &(p->DPoint2D);

    if (p->iter_pos < 2) {
        int i=p->iter_pos; 
        double ret;

        if (i==0)
            ret = DPoint2D->X();
        else 
            ret = DPoint2D->Y();

        p->iter_pos+=1;

        return PyFloat_FromDouble(ret);
    }
    else {
        /* Raising of standard StopIteration exception with empty value. */
        PyErr_SetNone(PyExc_StopIteration);
        return NULL;
    }
}

static PyObject *
PyHirschDPoint2D_new(PyTypeObject *type, PyObject */*args*/, PyObject */*kwds*/)
{
    PyHirschDPoint2D *self;

    self = (PyHirschDPoint2D *)type->tp_alloc(type, 0);
    // Explicit call to constructor placement new
    new(&self->DPoint2D) Halcon::HPoint2D();
    
    return (PyObject *)self;
}

PyObject *PyHirschDPoint2D_FromHDPoint2D(Halcon::HDPoint2D DPoint2D)
{
    PyHirschDPoint2D *self = (PyHirschDPoint2D*)PyHirschDPoint2D_new(&PyHirschDPoint2DType, NULL, NULL);
    self->DPoint2D = DPoint2D;
    return (PyObject*)self;
}

PyTypeObject PyHirschDPoint2DType = {
    PyObject_HEAD_INIT(NULL)
    0,                         /*ob_size*/
    "Halcon.DPoint2D",      /*tp_name*/
    sizeof(PyHirschDPoint2D), /*tp_basicsize*/
    0,                         /*tp_itemsize*/
    (destructor)PyHirschDPoint2D_dealloc,       /*tp_dealloc*/
    0,                         /*tp_print*/
    0,                         /*tp_getattr*/
    0,                         /*tp_setattr*/
    0,                         /*tp_compare*/
    0,                         /*tp_repr*/
    0,                         /*tp_as_number*/
    &PyHirschDPoint2D_sequence_methods,        /*tp_as_sequence*/
    0,                         /*tp_as_mapping*/
    0,                         /*tp_hash */
    0,                         /*tp_call*/
    0,                         /*tp_str*/
    0,                         /*tp_getattro*/
    0,                         /*tp_setattro*/
    0,                         /*tp_as_buffer*/
    Py_TPFLAGS_DEFAULT|Py_TPFLAGS_HAVE_ITER,        /*tp_flags*/
    "PyHirschDPoint2D",        /* tp_doc */
    0,		               /* tp_traverse */
    0,		               /* tp_clear */
    0,		               /* tp_richcompare */
    0,		               /* tp_weaklistoffset */
    &PyHirschDPoint2D_iter,		 /* tp_iter */
    &PyHirschDPoint2D_iternext,         /* tp_iternext */
    PyHirschDPoint2D_methods,  /* tp_methods */
    0,                         /* tp_members */
    0,                         /* tp_getset */
    0,                         /* tp_base */
    0,                         /* tp_dict */
    0,                         /* tp_descr_get */
    0,                         /* tp_descr_set */
    0,                         /* tp_dictoffset */
    (initproc)PyHirschDPoint2D_init,          /* tp_init */
    0,                         /* tp_alloc */
    PyHirschDPoint2D_new,       /* tp_new */
};


void PyHirschDPoint2DAddToModule(PyObject *m)
{
    Py_INCREF(&PyHirschDPoint2DType);
    if (PyType_Ready(&PyHirschDPoint2DType) < 0)
        return;
    PyModule_AddObject(m, "HDPoint2D", (PyObject *)&PyHirschDPoint2DType);
}
