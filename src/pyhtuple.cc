#include "pyhirsch.h"
#include "HTupleElement.h"

PyObject *
PyHirschTuple_GetItem(PyObject *o, Py_ssize_t i);

static void
PyHirschTuple_dealloc(PyHirschTuple* self)
{
    if(self->Tuple)
        delete self->Tuple;
    PyObject_Del(self);
}

static int
PyHirschTuple_init(PyHirschTuple *self, PyObject *args, PyObject */*kwds*/)
{
    PyObject *v;
    bool error = false;
    self->Tuple = new HalconCpp::HTuple();

    // Support for tuple scalars
    if (PyArg_ParseTuple(args,"O",&v)) {
        if (PyInt_Check(v))
          self->Tuple->Append(PyInt_AsLong(v));
        else if (PyFloat_Check(v))
          self->Tuple->Append(PyFloat_AsDouble(v));
        else if (PyString_Check(v))
          self->Tuple->Append(PyString_AsString(v));
        else if (PySequence_Check(v)) {
            for (int i=0; i<PySequence_Length(v); i++) {
                PyObject *el = PySequence_GetItem(v, i);
                
                if (PyInt_Check(el))
                    self->Tuple->Append(PyInt_AsLong(el));
                else if (PyFloat_Check(el))
                    self->Tuple->Append(PyFloat_AsDouble(el));
                else if (PyString_Check(el))
                    self->Tuple->Append(PyString_AsString(el));
                else {
                    error = true;
                }
  
                Py_DECREF(el);
                if (error) {
                    PyObject *ErrorMessage = PyString_FromFormat("Unsupported type of element %d in sequence when initializing PyHTuple!", i+1);
                    PyErr_SetString(PyExc_RuntimeError, PyString_AsString(ErrorMessage));
                    Py_DECREF(ErrorMessage);
                    break;
                }

                if (error)
                  break;
            }
        }
        else
          error = true;

        // Check if there is an error and we have not yet set the error
        if (error && !PyErr_Occurred()) {
            PyObject *ErrorMessage = PyString_FromFormat("Unsupported type of element when initializing PyHTuple!");
            PyErr_SetString(PyExc_RuntimeError, PyString_AsString(ErrorMessage));
            Py_DECREF(ErrorMessage);
        }
    }

    if (error)
        return -1;

    PyErr_Clear();

    return 0;
}

static PyObject *
PyHirschTuple_str(PyObject *ob)
{
    PyHirschTuple *self = (PyHirschTuple *)ob;
    PyObject *Tuple = PyTuple_New(self->Tuple->Length());
    for (int i=0; i<self->Tuple->Length(); i++)
        PyTuple_SET_ITEM(Tuple, i, PyHirschTuple_GetItem(ob,i));

    PyObject *Ret = PyObject_Str(Tuple);
    Py_DECREF(Tuple);

    return Ret;
}


#include "htuple_autogen_methods_declarations.i"

static PyMethodDef PyHirschTuple_methods[] = {
#include "htuple_autogen_methods_list.i"
    {NULL}  /* Sentinel */
};

Py_ssize_t PyHirschTuple_Length(PyObject *o)
{
    HalconCpp::HTuple *Tuple = (((PyHirschTuple*)o)->Tuple);
    return Tuple->Length(); // Return the length of the sequence
}

PyObject *
PyObjectFromHTupleElement(const HalconCpp::HTupleElement& Val)
{
    PyObject *ret = NULL;

    switch (Val.Type()) {
    case HalconCpp::eElementTypeLong:
        ret = PyInt_FromLong(long(Val.L()));
        break;
    case HalconCpp::eElementTypeDouble:
        ret = PyFloat_FromDouble(Val.D());
        break;
    case HalconCpp::eElementTypeString:
        ret = PyString_FromString(Val.S());
        break;
    // tbd - support mixed
    default:
        PyErr_SetString(PyExc_RuntimeError, "Unknown Halcon type!");
        return NULL;
    }

    return ret;
}

PyObject *
PyHirschTuple_GetItem(PyObject *o, Py_ssize_t i)
{
    HalconCpp::HTuple *Tuple = (((PyHirschTuple*)o)->Tuple);
    const HalconCpp::HTupleElement& Val((*Tuple)[i]);
    return PyObjectFromHTupleElement(Val);
}

// Turn the tuple into a list and return a slice.
PyObject *
PyHirschTuple_GetSlice(PyObject *o, Py_ssize_t i1, Py_ssize_t i2)
{
  PyObject *asList = PySequence_List(o);
  PyObject *Slice = PySequence_GetSlice(asList, i1, i2);
  Py_DECREF(asList);
  return Slice;
}

static PySequenceMethods PyHirschTuple_sequence_methods = {
    PyHirschTuple_Length,                /* sq_length */
    0,                                   /* sq_concat */
    0,                                   /* sq_repeat */
    PyHirschTuple_GetItem,               /* sq_item */
    PyHirschTuple_GetSlice,              /* sq_item */
};


PyObject* PyHirschTuple_iter(PyObject *self)
{
  Py_INCREF(self);
  ((PyHirschTuple*)self)->iter_pos = 0;
  return self;
}

PyObject* PyHirschTuple_iternext(PyObject *self)
{
    PyHirschTuple *p = (PyHirschTuple *)self;
    HalconCpp::HTuple *Tuple = (p->Tuple);

    if (p->iter_pos < Tuple->Length()) {
        PyObject *ret = PyHirschTuple_GetItem(self,p->iter_pos);
        p->iter_pos+=1;
        return ret;
    }
    else {
        /* Raising of standard StopIteration exception with empty value. */
        PyErr_SetNone(PyExc_StopIteration);
        return NULL;
    }
}

PyObject *PyHirschTuple_FromHTuple(HalconCpp::HTuple Tuple)
{
    PyHirschTuple *v = (PyHirschTuple*)PyObject_New(PyHirschTuple, &PyHirschTupleType);
    v->Tuple = new HalconCpp::HTuple(Tuple);
    return (PyObject*)v;
}

PyTypeObject PyHirschTupleType = {
    PyObject_HEAD_INIT(NULL)
    0,                         /*ob_size*/
    "Halcon.Tuple",      /*tp_name*/
    sizeof(PyHirschTuple), /*tp_basicsize*/
    0,                         /*tp_itemsize*/
    (destructor)PyHirschTuple_dealloc,       /*tp_dealloc*/
    0,                         /*tp_print*/
    0,                         /*tp_getattr*/
    0,                         /*tp_setattr*/
    0,                         /*tp_compare*/
    PyHirschTuple_str,                         /*tp_repr*/
    0,                         /*tp_as_number*/
    &PyHirschTuple_sequence_methods,        /*tp_as_sequence*/
    0,                         /*tp_as_mapping*/
    0,                         /*tp_hash */
    0,                         /*tp_call*/
    PyHirschTuple_str,                         /*tp_str*/
    0,                         /*tp_getattro*/
    0,                         /*tp_setattro*/
    0,                         /*tp_as_buffer*/
    Py_TPFLAGS_DEFAULT|Py_TPFLAGS_HAVE_ITER,        /*tp_flags*/
    "PyHirschTuple",        /* tp_doc */
    0,		               /* tp_traverse */
    0,		               /* tp_clear */
    0,		               /* tp_richcompare */
    0,		               /* tp_weaklistoffset */
    &PyHirschTuple_iter,		 /* tp_iter */
    &PyHirschTuple_iternext,         /* tp_iternext */
    PyHirschTuple_methods,  /* tp_methods */
    0,                         /* tp_members */
    0,                         /* tp_getset */
    0,                         /* tp_base */
    0,                         /* tp_dict */
    0,                         /* tp_descr_get */
    0,                         /* tp_descr_set */
    0,                         /* tp_dictoffset */
    (initproc)PyHirschTuple_init,          /* tp_init */
    0,                         /* tp_alloc */
    PyType_GenericNew,         /* tp_new */
};


void PyHirschTupleAddToModule(PyObject *m)
{
    Py_INCREF(&PyHirschTupleType);
    if (PyType_Ready(&PyHirschTupleType) < 0)
        return;
    PyModule_AddObject(m, "HTuple", (PyObject *)&PyHirschTupleType);
}
