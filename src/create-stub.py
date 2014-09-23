#!/usr/bin/python

# This code should generates a header and a c++ file of the
# requested type.

import sys
import os
import re

argp= 1

do_pointer = 0
do_iter = 0
while argp < len(sys.argv) and sys.argv[argp][0:2]=='--':
  S_ = sys.argv[argp]
  argp+=1

  if S_=='--help':
    print '''create-stub - Create the stub of a halcon type

Syntax:
    create-stub [--pointer] typename

Options:
    --pointer   Indicate that the type should be treated as a pointer.
    --iter      Add iteration functions to the type.
'''
    exit(0)
  if S_=='--pointer':
    do_pointer = True
    continue
  if S_=='--iter':
    do_iter = True
    continue

if argp >= len(sys.argv):
  type_name = 'HAffineTrans2D' # TBD: For debug!
  #print("Expected a type name!")
  #exit(-1)
else:
  type_name = sys.argv[argp]

# build the h-file
basename = type_name.lower()
py_type_name = re.sub('^H','PyHirsch',type_name)
var_name = re.sub('^H','',type_name)
h_filename = 'py'+basename + '.h'
cc_filename = 'py'+basename + '.cc'
print h_filename, cc_filename

fh = open(h_filename, 'w')

iter_h_line = '    int iter_pos;\n' if do_iter else ''
maybe_pointer = '*' if do_pointer else ''
maybe_pointer_deref = '->' if do_pointer else '.'
maybe_address_of = '' if do_pointer else '&'
basename_upper = basename.upper()

fh.write('// Autogenerated file for Halcon type {type_name}\n'
         '#ifndef PY{basename_upper}_H\n'
         '#define {basename_upper}_H\n'
         '\n'
         '#include <Python.h>\n'
         '#include <HalconCpp.h>\n'
         '\n'
         'PyObject *{py_type_name}_From{type_name}(Halcon::{type_name} {var_name});\n'
         '\n'
         'typedef struct {{\n'
         '    PyObject_HEAD;\n'
         '    Halcon::{type_name} {maybe_pointer}{var_name};\n{iter_h_line}'
         '}} {py_type_name};\n'
         '\n'
         '#define {py_type_name}_Check(op) \\\n'
         '    PyObject_TypeCheck(op, &{py_type_name}Type)\n'
         '\n'
         'void {py_type_name}AddToModule(PyObject *m);\n'
         '\n'
         'extern PyTypeObject {py_type_name}Type;\n'
         '\n'
         '#endif\n'
         .format(**locals()))


fh.close()

# build the c-file
free_var = ('    if(self->{var_name})\n'
            '        delete self->{var_name};\n'
            ).format(**locals()) if do_pointer else (
           '    // Explicit call to destructor.\n'
           '    self->{var_name}.~{type_name}();\n'
           ).format(**locals())

AllocateMember = ('    self->{var_name}=new Halcon::{type_name};\n'.format(**locals())
                  if do_pointer else '')
fh = open(cc_filename, 'w')
fh.write('// Autogenerated file for halcon type {type_name}\n'
         '\n'
         '#include "pyhirsch.h"\n'
         '\n'
         'static void\n'
         '{py_type_name}_dealloc({py_type_name}* self)\n'
         '{{\n'
         '{free_var}'
         '    self->ob_type->tp_free((PyObject*)self);\n'
         '}}\n'
         '\n'
         'static int\n'
         '{py_type_name}_init({py_type_name} */*self*/, PyObject */*args*/, PyObject */*kwds*/)\n'
         '{{\n'
         '    // TBD - Use PyArg_ParseTupleAndKeywords() to do special initialziation\n'
         '{AllocateMember}'
         '    return 0;\n'
         '}}\n'
         '\n'
         '#include "{basename}_autogen_methods_declarations.i"\n'
         '\n'
         'static PyMethodDef {py_type_name}_methods[] = {{\n'
         '#include "{basename}_autogen_methods_list.i"\n'
         '    {{NULL}}  /* Sentinel */\n'
         '}};\n\n'
         .format(**locals()))

if do_iter:
  fh.write(''
           'Py_ssize_t {py_type_name}_Length(PyObject */*o*/)\n'
           '{{\n'
           '    Halcon::{type_name} *{var_name} = {maybe_address_of}((({py_type_name}*)o)->{var_name});\n'
           '    return {var_name}->Num(); // Return the length of the sequence\n'
           '}}\n'
           '\n'
           'PyObject *\n'
           '{py_type_name}_GetItem(PyObject *o, Py_ssize_t i)\n'
           '{{\n'
           '    Halcon::{type_name} *{var_name} = {maybe_address_of}((({py_type_name}*)o)->{var_name});\n'
           '    double ret;\n'
           '\n'
           '    // TBD return value at pos i or NULL if out of bounds'
           '\n'
           '    return PyFloat_FromDouble(ret);\n'
           '}}\n'
           '\n'
           'static PySequenceMethods {py_type_name}_sequence_methods = {{\n'
           '    {py_type_name}_Length,                /* sq_length */\n'
           '    0,                                   /* sq_concat */\n'
           '    0,                                   /* sq_repeat */\n'
           '    {py_type_name}_GetItem,               /* sq_item */\n'
           '}};\n'
           '\n'
           '\n'
           'PyObject* {py_type_name}_iter(PyObject *self)\n'
           '{{\n'
           '  Py_INCREF(self);\n'
           '  (({py_type_name}*)self)->iter_pos = 0;\n'
           '  return self;\n'
           '}}\n'
           '\n'
           'PyObject* {py_type_name}_iternext(PyObject *self)\n'
           '{{\n'
           '    {py_type_name} *p = ({py_type_name} *)self;\n'
           '    Halcon::{type_name} *{var_name} = {maybe_address_of}(p->{var_name});\n'
           '\n'
           '    if (p->iter_pos < {var_name}->Num()) {{\n'
           '        int i=p->iter_pos; // shortcut\n'
           '        p->iter_pos+=1;\n'
           '        // TBD initialize and return the value at pos i\n'
           '        double ret = 0;\n'
           '\n'
           '        return PyFloat_FromDouble(ret);\n'
           '    }}\n'
           '    else {{\n'
           '        /* Raising of standard StopIteration exception with empty value. */\n'
           '        PyErr_SetNone(PyExc_StopIteration);\n'
           '        return NULL;\n'
           '    }}\n'
           '}}\n'
           '\n'
           .format(**locals())
           )

if do_pointer:
  new_method = 'PyType_GenericNew'
else:
  fh.write('static PyObject *\n'
           '{py_type_name}_new(PyTypeObject *type, PyObject */*args*/, PyObject */*kwds*/)\n'
           '{{\n'
           '    {py_type_name} *self;\n'
           '\n'
           '    self = ({py_type_name} *)type->tp_alloc(type, 0);\n'
           '    // Explicit call to constructor placement new\n'
           '    new(&self->{var_name}) Halcon::{type_name}();\n'
           '    \n'
           '    return (PyObject *)self;\n'
           '}}\n\n'
           .format(**locals()))
  new_method = '{py_type_name}_new'.format(**locals())

fh.write('PyObject *{py_type_name}_From{type_name}(Halcon::{type_name} {var_name})\n'
         '{{\n'
         '    {py_type_name} *self = ({py_type_name}*){new_method}(&{py_type_name}Type,NULL,NULL);\n'
         .format(**locals()))
fh.write(('    self->{var_name} = new Halcon::{type_name}({var_name});\n'
          if do_pointer else
          '    self->{var_name} = {var_name};\n')
         .format(**locals()))
fh.write('    return (PyObject*)self;\n'
         '}}\n\n'.format(**locals()))

if do_iter:
  sequence_methods = '&{py_type_name}_sequence_methods'.format(**locals())
  iter_method = '&{py_type_name}_iter'.format(**locals())
  iternext_method = '&{py_type_name}_iternext'.format(**locals())
  iter_flags = '|Py_TPFLAGS_HAVE_ITER'
else:  
  sequence_methods = '0'
  iter_flags = ''
  iter_method = '0'
  iternext_method = '0'

fh.write('PyTypeObject {py_type_name}Type = {{\n'
         '    PyObject_HEAD_INIT(NULL)\n'
         '    0,                         /*ob_size*/\n'
         '    "Halcon.{py_type_name}",      /*tp_name*/\n'
         '    sizeof({py_type_name}), /*tp_basicsize*/\n'
         '    0,                         /*tp_itemsize*/\n'
         '    (destructor){py_type_name}_dealloc,       /*tp_dealloc*/\n'
         '    0,                         /*tp_print*/\n'
         '    0,                         /*tp_getattr*/\n'
         '    0,                         /*tp_setattr*/\n'
         '    0,                         /*tp_compare*/\n'
         '    0,                         /*tp_repr*/\n'
         '    0,                         /*tp_as_number*/\n'
         '    {sequence_methods},        /*tp_as_sequence*/\n'
         '    0,                         /*tp_as_mapping*/\n'
         '    0,                         /*tp_hash */\n'
         '    0,                         /*tp_call*/\n'
         '    0,                         /*tp_str*/\n'
         '    0,                         /*tp_getattro*/\n'
         '    0,                         /*tp_setattro*/\n'
         '    0,                         /*tp_as_buffer*/\n'
         '    Py_TPFLAGS_DEFAULT{iter_flags},        /*tp_flags*/\n'
         '    "{py_type_name}",        /* tp_doc */\n'
         '    0,		               /* tp_traverse */\n'
         '    0,		               /* tp_clear */\n'
         '    0,		               /* tp_richcompare */\n'
         '    0,		               /* tp_weaklistoffset */\n'
         '    {iter_method},		 /* tp_iter */\n'
         '    {iternext_method},         /* tp_iternext */\n'
         '    {py_type_name}_methods,  /* tp_methods */\n'
         '    0,                         /* tp_members */\n'
         '    0,                         /* tp_getset */\n'
         '    0,                         /* tp_base */\n'
         '    0,                         /* tp_dict */\n'
         '    0,                         /* tp_descr_get */\n'
         '    0,                         /* tp_descr_set */\n'
         '    0,                         /* tp_dictoffset */\n'
         '    (initproc){py_type_name}_init,          /* tp_init */\n'
         '    0,                         /* tp_alloc */\n'
         '    {new_method},         /* tp_new */\n'
         '}};\n'
         '\n\n'.format(**locals()))

fh.write('void {py_type_name}AddToModule(PyObject *m)\n'
         '{{\n'
         '    Py_INCREF(&{py_type_name}Type);\n'
         '    if (PyType_Ready(&{py_type_name}Type) < 0)\n'
         '        return;\n'
         '    PyModule_AddObject(m, "H{var_name}", (PyObject *)&{py_type_name}Type);\n'
         '}}\n\n'.format(**locals()));
fh.close()