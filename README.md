![HirschLogo](hirsch-logo.png?raw=true)

# Hirsch - A python binding to the MvTec HALCON library

* Author: Dov Grobgeld <dov.grobgeld@gmail.com>
* Created: 2013-12-14 Sat
* Keywords: Python, Halcon
* URL: <http://github.com/dov/hirsch>
* Version: 0.1

# Description

Hirsch is a python binding to the MVTec proprietory image processing 
library HALCON, see: http://www.halcon.com/ . It has currently been tested with HALCON version 9.0 . 

Note about the name. Since HALCON is a proprietary name belonging to MVTec, I have decided to name this binding Hirsch. 

# Licence

The use of Hirsch requires a licence to the HALCON library. Please refer to the HALCON End User Legal Agreement (EULA) for details.

The licence of the Python binding is LGPL3 and of the automatic python generator, GPL3.

See license.md for license details about Hirsch.


# Building

There are two steps concerning building the Hirsch binding:

## Creating python binding code

This step parses the Halcon include files and generates python binding. It is run by doing:

    python h-parse.py
    
Note that you will need to edit h-parse.py to set the halcon include directory at the top of the files.

This distribution contains pregenerated bindings for halcon version 9, so this step may be skipped.

## Compiling the python binding

Please edit setup.py to specify include and library paths for halcon. Install as standard python modules:

    python setup.py install 

# Testing

Here is an example of how to use Hirsch:

    from hirsch import HImage, HDataCode2D
    
    Filename = 'qr.tiff'
    img = HImage.ReadImage(Filename)
    print "Image size=", img.Width(), img.Height()
    
    QrDetector = HDataCode2D("QR Code","default_parameters","enhanced_recognition")
    QRContours,Handles,DataStrings = QrDetector.FindDataCode2d(img,"stop_after_result_num",1)
    print DataStrings

A few more examples are available in examples.

# Interface with giv

No effort has been made yet to do bindings for the built in visualization. Instead the library `hirsch.giv` provides a simple interface for using the
image viewer `giv` for visualization, see: http://giv.sourceforge.net/giv/index.html .

Here is an example of how to view blobs with blob info with giv.

    from hirsch import HImage, HDataCode2D
    import hirsch.giv as giv
    
    Filename = 'qrfoo.tif'
    img = HImage.ReadImage(Filename)
    blobs = img.Threshold(0,128).Connection().ErosionCircle(3)
    
    blobs = [b for b in blobs if b.Circularity() > 0.5]
    
    giv.ViewRegions(blobs,image=img, props=['Circularity','Area'])

Here is the resulting giv image:

![QR blob detection](qrblobexample.png?raw=true)

When hoovering over the red blobs, the Circularity and the Area properties for those blobs are shown in a popup window.
                
# Interface with numpy

`HImage` transparently and quickly converts to and from a `numpy.array`. 
I.e. the following code can be used for converting from a 2D 
`numpy.array` to an `HImage` and the other way around:

      my_array = numpy.array(my_himg, copy=0)
      my_himg1 = hirsch.HImage(my_array)

Note that an `HImage` can be used directly whenever an `numpy.array`
is expected. E.g. to show an `HImage` with pylab:

      imshow(my_himg)

The option `copy=0` to `numpy.array()` specifies that `my_array` will
be pointing to the same memory as is used by the `my_himg`. Omitting
this option will copy this memory. See `numpy.array`.

# Interaction with ipython

One of the nice aspects of the python binding is that it works
transparently with ipython (interactive python). In particular the
ipython autocompletion and help system are great tools for working
interactively with hirsch. Here is an example of an interactive
session:

    In [1]: from hirsch import *
    
    In [2]: from hirsch.giv import *
    
    In [3]: img = HImage.Read<tab>
    HImage.ReadGraySe    HImage.ReadImage     HImage.ReadSequence
    
    In [3]: img = HImage.ReadImage('test_data/<tab>
    test_data/maja.png
    test_data/qrfoo.tif
    
    In [3]: img = HImage.ReadImage('test_data/maja.png')
    
    In [5]: img.Ed<tab>
    img.EdgesColor        img.EdgesImage        
    img.EdgesColorSubPix  img.EdgesSubPix       
    
    # The help text is the comment above the corresponding 
    # method in the C++ h-file.
    In [5]: img.EdgesSubPix?
    Type:       builtin_function_or_method
    String Form:<built-in method EdgesSubPix of Halcon.Image object at 0x9c5bf20>
    Docstring:
    EdgesSubPix(Filter,Alpha,Low,High)
    
    Extract sub-pixel precise edges using Deriche, Lanser, Shen, or Canny
    filters.
    
    In [6]: edges = img.EdgesSubPix('canny',2,1,10)
    
    In [7]: len(edges)
    Out[7]: 432
    
    In [8]: ViewContours(edges,image=img,color='red',linewidth=2)
    
![QR blob detection](maja-contour.png?raw=true)

    In [9]: edges[0]
    
    Out[9]: <Halcon.hxldcont at 0xb76cbde0>
    
    # Note: Need to assign to a variable to use completion of an array.
    In [10]: e = edges[0]
    
    In [11]: e.MomentsXld? 
    Type:       builtin_function_or_method
    String Form:<built-in method MomentsXld of Halcon.hxldcont object at 0xb76cbc80>
    Docstring:
    MomentsXld()
    
    Geometric moments M20, M02, and M11 of contours or polygons.

    In [11]: e.MomentsXld()
    Out[11]: (-5002.824723977863, 2913.0275057177496, 10901.533649534855)
    
    In [12]: e.LengthXld()
    Out[12]: 56.4611522953062
    
    In [13]: max([e.LengthXld() for e in edges])
    Out[13]: 327.5589860358794
    
    In [14]: LongEdges = [e for e in edges if e.LengthXld()>300]

    In [15]: ViewContours(LongEdges,image=img,color='red',linewidth=2)


# Implementation notes

The autogenerated codes resides in .i files. There are two such files for each Hirsch class. One containing the "list" code that define the mapping between python method names, the c-function implementation, and its documentation. The second contains the implementation of the c-functions.

I have tried to make the binding as pythonesque as possible. This means that I have tried to use python structures as much as possible. E.g. for functions taking both HTuple and pod (plain old data) as input, the HTuple versions were skipped. 

One problem that I have not satisfactory solved are functions that return scalars by HTuple's. There is no indication in the header files that the returned value is a scalar and not an arbitrary length array. In these cases I return a Python Tuple as a return value and the user must dereference it.

I have succesfully taken care of operator overloading.
