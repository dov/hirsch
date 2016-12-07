/********************************************************************
 * Project: python                                                  *
 * Module: halcon                                                   *
 * Module Description:                                              *
 *                                                                  *
 * Compilation:                                                     *
 *                                                                  *
 * Author: Dov Grobgeld                                             *
 ********************************************************************/

#ifndef _PYHIRSCH_H_
#define _PYHIRSCH_H_

#if defined(WIN32) || defined(_WIN32) || defined(WIN64)
#pragma warning( push )
#pragma warning( disable :4244)

#include "HalconCpp.h"

#pragma warning( pop )
#endif

#include "pyhimage.h"
#include "pyhregion.h"
#include "pyhxldcont.h"
#include "pyhtuple.h"
#include "pyhdatacode2d.h"
#include "pyhbarcode.h"
#include "pyhtemplate.h"
#include "pyhxld.h"
#include "pyhhommat2d.h"
#include "pyhhommat2darray.h"

#define HTRY1(f) \
    try { \
        f;                                      \
    } \
    catch (HalconCpp::HException &except) { \
        PyErr_SetString(PyExc_RuntimeError, except.ErrorMessage().Text()); \
        return -1; \
    }

// This may be called when initializing the module statically
void pyhirsch_init_module(void);

#endif /* HALCON */
