/********************************************************************
 * Project: python                                                  *
 * Module: halcon                                                   *
 * Module Description:                                              *
 *                                                                  *
 * Compilation:                                                     *
 *                                                                  *
 * Author: Dov Grobgeld                                             *
 ********************************************************************/

#ifndef _HALCON_H_
#define _HALCON_H_

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

// This may be called when initializing the module statically
void pyhirsch_init_module(void);

#endif /* HALCON */
