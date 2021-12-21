// Autogenerated file for halcon type HImage

#include "pyhirsch.h"

static void
PyHirschImage_dealloc(PyHirschImage* self)
{
    if(self->Image)
        delete self->Image;
    Py_TYPE(self)->tp_free((PyObject*)self);
}

#if PY_MAJOR_VERSION >= 3
#define PyInt_FromLong PyLong_FromLong
#define PyInt_AsLong PyLong_AsLong
#define PyString_Check PyUnicode_Check
#define PyString_AsString PyUnicode_AsUTF8 
#define PyString_FromString PyUnicode_FromString
#endif

static Halcon::HImage *array_to_himage(PyObject *array)
{
    const char *htype = NULL;
    PyObject *a;

    if ((a=PyObject_GetAttrString(array, "__array_interface__")) == NULL
        || !PyDict_Check(a))
        return NULL;

    int ndims = -1;
    PyObject *shape = PyDict_GetItemString(a, "shape");
    if (shape && PyTuple_Check(shape))
        ndims = (int)PyTuple_GET_SIZE(shape);

    if (ndims != 2)
        return NULL;

    int height = (int)PyInt_AsLong(PyTuple_GetItem(shape, 0));
    int width = (int)PyInt_AsLong(PyTuple_GetItem(shape, 1));

    PyObject *otypestr = PyDict_GetItemString(a, "typestr");
    const char *typestr = NULL;
    if (otypestr && PyString_Check(otypestr))
        typestr = PyString_AsString(otypestr);
    if (!typestr)
        return NULL;

    // Currently only support byte images
    int itemsize = 1;
    if (strcmp(typestr, "|u1") == 0)
        htype = "byte";
    else
        printf("Unsupported typestr = %s\n", typestr);

    if (htype == NULL)
        return NULL;

    // Get the data ptr
    PyObject *odata = PyDict_GetItemString(a, "data");
    void *in_buf;

    if (PyBytes_Check(odata))
      in_buf = PyBytes_AsString(odata);
    else if (PyTuple_Check(odata))
      in_buf = (void*)PyLong_AsSize_t(PyTuple_GetItem(odata, 0));
    else
      // Unknown type!
      return NULL;
    
    Halcon::HImage *img = new Halcon::HImage(Halcon::HImage::GenImageConst(htype,width, height));

    Halcon::HTuple IType,IHeight,IWidth;
    void *out_buf = (void*)img->GetImagePointer1(&IType,&IWidth,&IHeight);

    memcpy(out_buf, in_buf, width*height*itemsize);
    
    return img;
}

static int
PyHirschImage_init(PyHirschImage *self, PyObject *args, PyObject *kwds)
{
    PyObject *filename_or_image = NULL;
    const char *type = "byte";
    int width=1, height=1;
    static char *kwlist[] = {(char*)"Filename", (char*)"Width", (char*)"Height", NULL, (char*)"Image"};
    PyObject *image = NULL;
    
    if (! PyArg_ParseTupleAndKeywords(args, kwds, "|OiiO",
                                      kwlist,
                                      &filename_or_image,
                                      &width,
                                      &height,
                                      &image))
        return -1; 
  
    if (filename_or_image) {
        if (PyString_Check(filename_or_image))
            self->Image = new Halcon::HImage(Halcon::HImage::ReadImage(PyString_AsString(filename_or_image)));
        else if (PyHirschImage_Check(filename_or_image))
            self->Image = new Halcon::HImage(((PyHirschImage*)filename_or_image)->Image->CopyImage());
        // TBD - support new style buffer protocol
        else if ((self->Image = array_to_himage(filename_or_image)) == 0) {
            PyErr_SetString(PyExc_RuntimeError, "Failed HImage construction");
            return -1;
        }
    }
    else if (image) {
        if ((self->Image = array_to_himage(image)) == 0) {
            PyErr_SetString(PyExc_RuntimeError, "Failed HImage construction");
            return -1;
        }
    }
    else
        // Uniform colored image
        self->Image = new Halcon::HImage(Halcon::HImage::GenImageConst(type, width, height));

    return 0;
}

#include "himage_autogen_methods_declarations.i"

static PyMethodDef PyHirschImage_methods[] = {
#include "himage_autogen_methods_list.i"
    {NULL}  /* Sentinel */
};

Py_ssize_t PyHirschImage_Length(PyObject *o)
{
    Halcon::HImage *Image = (((PyHirschImage*)o)->Image);
    return Image->Width() * Image->Height(); // Return the length of the sequence
}


static PySequenceMethods PyHirschImage_sequence_methods = {
    PyHirschImage_Length,                /* sq_length */
    0,                                   /* sq_concat */
    0,                                   /* sq_repeat */ 
    0,                                   /* sq_item */
    0                                    /* sq_item */
};

PyObject* PyHirschImage_iter(PyObject *self)
{
    Py_INCREF(self);
    PyHirschImage *p = (PyHirschImage *)self;
    Halcon::HImage *Image = p->Image;
    ((PyHirschImage*)self)->iter_pos = 0;
    ((PyHirschImage*)self)->iter_width = Image->Width();
    ((PyHirschImage*)self)->iter_size = Image->Width()*Image->Height();
    return self;
}

PyObject* PyHirschImage_iternext(PyObject *self)
{
    PyHirschImage *p = (PyHirschImage *)self;
    Halcon::HImage *Image = (p->Image);

    if (p->iter_pos < p->iter_size) {
        int Row = p->iter_pos / p->iter_width;
        int Col = p->iter_pos % p->iter_width;
        Halcon::HCtrlVal Val = Image->GetGrayval(Row,Col)[0];
        PyObject *ret =  PyObjectFromHCtrlVar(Val);
        p->iter_pos+=1;
        return ret;
    }
    else {
        /* Raising of standard StopIteration exception with empty value. */
        PyErr_SetNone(PyExc_StopIteration);
        return NULL;
    }
}

static int PyHirschImage_getbuffer(PyObject *obj, Py_buffer *view, int flags)
{
    PyHirschImage *self = (PyHirschImage *)obj;
    Halcon::HImage *image = (self->Image);

    if (view == NULL) {
        // TBD - set an error
        return 0;
    }

    int itemsize = 1; // Currently only byte buffers are supported
    Halcon::HTuple IType,IHeight,IWidth;
    void *buf = (void*)image->GetImagePointer1(&IType,&IWidth,&IHeight);
    int width = IWidth[0].L();
    int height = IHeight[0].L();
    const char *typestr = "B";
    const char *htype = IType[0].S();
    if (strcmp(htype,"byte")==0)
        typestr = "B";
    else if (strcmp(htype,"int1")==0)
        typestr = "b";
    else if (strcmp(htype,"uint2")==0) {
        typestr = "H";
        itemsize = 2;
    }
    else if (strcmp(htype,"int2")==0) {
        typestr = "h";
        itemsize = 2;
    }
    else if (strcmp(htype,"int4")==0) {
        typestr = "l";
        itemsize = 4;
    }
    else if (strcmp(htype,"real")==0) { // ?
        typestr = "f";
        itemsize = 4;
    }
    else {
        PyErr_SetString(PyExc_RuntimeError, "Unsupported halcon type");
        return -1;
    }

    self->buffer_shape[0] = height;
    self->buffer_shape[1] = width;
    self->buffer_strides[0] = self->buffer_shape[1] * itemsize;
    self->buffer_strides[1] = itemsize;

    view->obj = (PyObject*)self;
    view->buf = buf;
    view->len = width * height * itemsize;
    view->readonly = 0;
    view->itemsize = itemsize;
    view->format = (char*)typestr;  
    view->ndim = 2;
    view->shape = self->buffer_shape;  
    view->strides = self->buffer_strides;
    view->suboffsets = NULL;
    view->internal = NULL;
    
    Py_INCREF(self);  // need to increase the reference count

    return 0;
}

static PyBufferProcs PyHirschImage_as_buffer = {
#if PY_MAJOR_VERSION < 3
    0,
    0, 
    0,
    0,
#endif
    &PyHirschImage_getbuffer,
    0
};

// numpy interface
static PyObject *
PyHirschImage__interface_get(PyObject *obj)
{
    PyObject *ai = PyDict_New();
    if (ai == NULL)
        return NULL;

    PyHirschImage *self = (PyHirschImage *)obj;
    Halcon::HImage *image = (self->Image);
    Halcon::HTuple IType,IHeight,IWidth;
    void *buf = (void*)image->GetImagePointer1(&IType,&IWidth,&IHeight);
    int width = IWidth[0].L();
    int height = IHeight[0].L();
    const char* typestr = "i1";
    const char *htype = IType[0].S();
    if (strcmp(htype,"byte")==0)
        typestr = "|u1";
    else if (strcmp(htype,"int1")==0)
        typestr = "|i1";
    else if (strcmp(htype,"uint2")==0)
        typestr = "<u2";
    else if (strcmp(htype,"int2")==0)
        typestr = "<i2";
    else if (strcmp(htype,"int4")==0)
        typestr = "<i4";
    else if (strcmp(htype,"real")==0) // ?
        typestr = "<f4";
    else {
        PyErr_SetString(PyExc_RuntimeError, "Unsupported halcon type");
        return NULL;
    }

    PyDict_SetItemString(ai,"data",Py_BuildValue("(ni)",buf,0));
    PyDict_SetItemString(ai,"descr",Py_BuildValue("(ss)","",typestr));
    PyDict_SetItemString(ai,"typestr",Py_BuildValue("s",typestr));
    PyDict_SetItemString(ai,"strides",Py_None);
    Py_INCREF(Py_None);
    PyDict_SetItemString(ai,"shape",Py_BuildValue("(ii)",height,width));
    PyDict_SetItemString(ai,"version",Py_BuildValue("i",1));
    return ai;
}

static PyGetSetDef PyHirschImage_getsetlist[] = {
    {"__array_interface__", (getter)PyHirschImage__interface_get, NULL, NULL},
    {NULL,NULL,NULL,NULL}
};


PyObject *PyHirschImage_FromHImage(Halcon::HImage Image)
{
    PyHirschImage *v = (PyHirschImage*)PyObject_New(PyHirschImage, &PyHirschImageType);
    v->Image = new Halcon::HImage(Image);
    return (PyObject*)v;
}

#if PY_MAJOR_VERSION >= 3
#define Py_TPFLAGS_HAVE_ITER 0
#define Py_TPFLAGS_HAVE_NEWBUFFER 0
#endif

PyTypeObject PyHirschImageType = {
    PyVarObject_HEAD_INIT(NULL, 0)
    "Hirsch.Image",      /*tp_name*/
    sizeof(PyHirschImage), /*tp_basicsize*/
    0,                         /*tp_itemsize*/
    (destructor)PyHirschImage_dealloc,       /*tp_dealloc*/
    0,                         /*tp_print*/
    0,                         /*tp_getattr*/
    0,                         /*tp_setattr*/
    0,                         /*tp_compare*/
    0,                         /*tp_repr*/
    0,                         /*tp_as_number*/
    &PyHirschImage_sequence_methods,        /*tp_as_sequence*/
    0,                         /*tp_as_mapping*/
    0,                         /*tp_hash */
    0,                         /*tp_call*/
    0,                         /*tp_str*/
    0,                         /*tp_getattro*/
    0,                         /*tp_setattro*/
    &PyHirschImage_as_buffer,  /*tp_as_buffer*/
    Py_TPFLAGS_DEFAULT|Py_TPFLAGS_HAVE_ITER|Py_TPFLAGS_HAVE_NEWBUFFER, /*tp_flags*/
    "PyHirschImage",        /* tp_doc */
    0,		               /* tp_traverse */
    0,		               /* tp_clear */
    0,		               /* tp_richcompare */
    0,		               /* tp_weaklistoffset */
    &PyHirschImage_iter,		 /* tp_iter */
    &PyHirschImage_iternext,         /* tp_iternext */
    PyHirschImage_methods,  /* tp_methods */
    0,                         /* tp_members */
    PyHirschImage_getsetlist,                         /* tp_getset */
    0,                         /* tp_base */
    0,                         /* tp_dict */
    0,                         /* tp_descr_get */
    0,                         /* tp_descr_set */
    0,                         /* tp_dictoffset */
    (initproc)PyHirschImage_init,          /* tp_init */
    0,                         /* tp_alloc */
    PyType_GenericNew,         /* tp_new */
};


void PyHirschImageAddToModule(PyObject *m)
{
    Py_INCREF(&PyHirschImageType);
    if (PyType_Ready(&PyHirschImageType) < 0)
        return;
    PyModule_AddObject(m, "HImage", (PyObject *)&PyHirschImageType);
}
