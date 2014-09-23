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

#include "pyhpoint2d.h"
#include "pyhdpoint2d.h"
#include "pyhrectangle1.h"
#include "pyhrectangle2.h"
#include "pyhimage.h"
#include "pyhimagearray.h"
#include "pyhregion.h"
#include "pyhregionarray.h"
#include "pyhxldcont.h"
#include "pyhxldcontarray.h"
#include "pyhtuple.h"
#include "pyhdatacode2d.h"
#include "pyhbarcode.h"
#include "pyhpixval.h"
#include "pyhimagearray.h"
#include "pyhtemplate.h"
#include "pyhline2d.h"
#include "pyhxld.h"
#include "pyhxldarray.h"
#include "pyhcircle.h"
#include "pyhellipse.h"
#include "pyhaffinetrans2d.h"

// This may be called when initializing the module statically
void pyhirsch_init_module(void);

#endif /* HALCON */
