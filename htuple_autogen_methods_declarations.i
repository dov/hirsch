PyObject *
PyHirschTuple_Strchr(PyHirschTuple*self, PyObject *args)
{
    char* pattern;
    
    try {
        if (PyArg_ParseTuple(args, "s", &pattern)) {
            return PyHirschTuple_FromHTuple(self->Tuple->Strchr(pattern));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Strchr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Asin(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Asin());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Chrt(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Chrt());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Xor(PyHirschTuple*self, PyObject *args)
{
    PyObject* pattern;
    
    try {
        if (PyArg_ParseTuple(args, "O", &pattern)) {
            if (PyHirschTuple_Check(pattern)) {
                return PyBool_FromLong(self->Tuple->Xor(*(((PyHirschTuple*)pattern)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Xor()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Log(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Log());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Min(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Min());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Sum(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Sum());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Sqrt(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Sqrt());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Strrstr(PyHirschTuple*self, PyObject *args)
{
    char* pattern;
    
    try {
        if (PyArg_ParseTuple(args, "s", &pattern)) {
            return PyHirschTuple_FromHTuple(self->Tuple->Strrstr(pattern));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Strrstr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Chr(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Chr());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Inverse(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Inverse());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Split(PyHirschTuple*self, PyObject *args)
{
    char* pattern;
    
    try {
        if (PyArg_ParseTuple(args, "s", &pattern)) {
            return PyHirschTuple_FromHTuple(self->Tuple->Split(pattern));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Split()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Strrchr(PyHirschTuple*self, PyObject *args)
{
    char* pattern;
    
    try {
        if (PyArg_ParseTuple(args, "s", &pattern)) {
            return PyHirschTuple_FromHTuple(self->Tuple->Strrchr(pattern));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Strrchr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Ceil(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Ceil());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Ords(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Ords());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Sin(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Sin());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_RegexpTest(PyHirschTuple*self, PyObject *args)
{
    char* expression;
    
    try {
        if (PyArg_ParseTuple(args, "s", &expression)) {
            return PyInt_FromLong(long(self->Tuple->RegexpTest(expression)));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.RegexpTest()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Deviation(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Deviation());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_RegexpMatch(PyHirschTuple*self, PyObject *args)
{
    char* expression;
    
    try {
        if (PyArg_ParseTuple(args, "s", &expression)) {
            return PyHirschTuple_FromHTuple(self->Tuple->RegexpMatch(expression));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.RegexpMatch()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Atan(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Atan());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Max(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Max());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Cumul(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Cumul());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Floor(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Floor());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Getenv(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Getenv());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Log10(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Log10());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Sort(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Sort());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Sinh(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Sinh());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Fmod(PyHirschTuple*self, PyObject *args)
{
    PyObject* op;
    
    try {
        if (PyArg_ParseTuple(args, "O", &op)) {
            if (PyHirschTuple_Check(op)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Fmod(*(((PyHirschTuple*)op)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Fmod()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Ord(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Ord());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Mean(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Mean());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Concat(PyHirschTuple*self, PyObject *args)
{
    PyObject* t;
    
    try {
        if (PyArg_ParseTuple(args, "O", &t)) {
            if (PyHirschTuple_Check(t)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Concat(*(((PyHirschTuple*)t)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Concat()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Reset(PyHirschTuple*self, PyObject *)
{
    try {
        self->Tuple->Reset();
        Py_INCREF(Py_None);
        return Py_None;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Real(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Real());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Cos(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Cos());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Strstr(PyHirschTuple*self, PyObject *args)
{
    char* pattern;
    
    try {
        if (PyArg_ParseTuple(args, "s", &pattern)) {
            return PyHirschTuple_FromHTuple(self->Tuple->Strstr(pattern));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Strstr()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Tanh(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Tanh());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Max2(PyHirschTuple*self, PyObject *args)
{
    PyObject* op;
    
    try {
        if (PyArg_ParseTuple(args, "O", &op)) {
            if (PyHirschTuple_Check(op)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Max2(*(((PyHirschTuple*)op)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Max2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_StrBitSelect(PyHirschTuple*self, PyObject *args)
{
    long index;
    
    try {
        if (PyArg_ParseTuple(args, "l", &index)) {
            return PyHirschTuple_FromHTuple(self->Tuple->StrBitSelect(index));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.StrBitSelect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Median(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Median());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Remove(PyHirschTuple*self, PyObject *args)
{
    PyObject* index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &index)) {
            if (PyHirschTuple_Check(index)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Remove(*(((PyHirschTuple*)index)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Remove()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Atan2(PyHirschTuple*self, PyObject *args)
{
    PyObject* op;
    
    try {
        if (PyArg_ParseTuple(args, "O", &op)) {
            if (PyHirschTuple_Check(op)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Atan2(*(((PyHirschTuple*)op)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Atan2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Continue(PyHirschTuple*self, PyObject *args)
{
    PyObject* FinalValue;
    PyObject* Increment;
    
    try {
        if (PyArg_ParseTuple(args, "OO", &FinalValue,&Increment)) {
            if (PyHirschTuple_Check(FinalValue) && PyHirschTuple_Check(Increment)) {
                return PyBool_FromLong(self->Tuple->Continue(*(((PyHirschTuple*)FinalValue)->Tuple),*(((PyHirschTuple*)Increment)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Continue()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_RegexpReplace(PyHirschTuple*self, PyObject *args)
{
    char* expression;
    char* replace;
    
    try {
        if (PyArg_ParseTuple(args, "ss", &expression,&replace)) {
            return PyHirschTuple_FromHTuple(self->Tuple->RegexpReplace(expression,replace));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.RegexpReplace()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Exp(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Exp());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Acos(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Acos());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Round(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Round());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Deg(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Deg());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Subset(PyHirschTuple*self, PyObject *args)
{
    PyObject* index;
    
    try {
        if (PyArg_ParseTuple(args, "O", &index)) {
            if (PyHirschTuple_Check(index)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Subset(*(((PyHirschTuple*)index)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Subset()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Rand(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Rand());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Rad(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Rad());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Uniq(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Uniq());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_State(PyHirschTuple*self, PyObject *)
{
    try {
        return PyInt_FromLong(long(self->Tuple->State()));
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Int(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Int());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Pow(PyHirschTuple*self, PyObject *args)
{
    PyObject* op;
    
    try {
        if (PyArg_ParseTuple(args, "O", &op)) {
            if (PyHirschTuple_Check(op)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Pow(*(((PyHirschTuple*)op)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Pow()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_SortIndex(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->SortIndex());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_RegexpSelect(PyHirschTuple*self, PyObject *args)
{
    char* expression;
    
    try {
        if (PyArg_ParseTuple(args, "s", &expression)) {
            return PyHirschTuple_FromHTuple(self->Tuple->RegexpSelect(expression));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.RegexpSelect()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Number(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Number());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Cosh(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Cosh());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Ldexp(PyHirschTuple*self, PyObject *args)
{
    PyObject* op;
    
    try {
        if (PyArg_ParseTuple(args, "O", &op)) {
            if (PyHirschTuple_Check(op)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Ldexp(*(((PyHirschTuple*)op)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Ldexp()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_SelectRank(PyHirschTuple*self, PyObject *args)
{
    long index;
    
    try {
        if (PyArg_ParseTuple(args, "l", &index)) {
            return PyHirschTuple_FromHTuple(self->Tuple->SelectRank(index));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.SelectRank()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Abs(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Abs());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Append(PyHirschTuple*self, PyObject *args)
{
    PyObject* t;
    
    try {
        if (PyArg_ParseTuple(args, "O", &t)) {
            if (PyHirschTuple_Check(t)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Append(*(((PyHirschTuple*)t)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Append()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Sgn(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Sgn());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_ToString(PyHirschTuple*self, PyObject *args)
{
    char* pattern;
    
    try {
        if (PyArg_ParseTuple(args, "s", &pattern)) {
            return PyHirschTuple_FromHTuple(self->Tuple->ToString(pattern));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.ToString()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Tan(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Tan());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_IsNumber(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->IsNumber());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Strlen(PyHirschTuple*self, PyObject *)
{
    try {
        return PyHirschTuple_FromHTuple(self->Tuple->Strlen());
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Find(PyHirschTuple*self, PyObject *args)
{
    PyObject* op;
    
    try {
        if (PyArg_ParseTuple(args, "O", &op)) {
            if (PyHirschTuple_Check(op)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Find(*(((PyHirschTuple*)op)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Find()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Substring(PyHirschTuple*self, PyObject *args)
{
    long index1;
    long index2;
    
    try {
        if (PyArg_ParseTuple(args, "ll", &index1,&index2)) {
            return PyHirschTuple_FromHTuple(self->Tuple->Substring(index1,index2));
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Substring()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}

PyObject *
PyHirschTuple_Min2(PyHirschTuple*self, PyObject *args)
{
    PyObject* op;
    
    try {
        if (PyArg_ParseTuple(args, "O", &op)) {
            if (PyHirschTuple_Check(op)) {
                return PyHirschTuple_FromHTuple(self->Tuple->Min2(*(((PyHirschTuple*)op)->Tuple)));
            }
        }
        
        PyErr_SetString(PyExc_TypeError, "Illegal parameters in call to HTuple.Min2()");
        return NULL;
    }
    catch (Halcon::HException &except) {
        PyErr_SetString(PyExc_RuntimeError, except.message);
        return NULL;
    }
}
