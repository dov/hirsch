from optparse import OptionParser
from distutils.core import setup, Extension
import sys

# Set to include and library directory of halcon
HalconIncludeDir = '/opt/halcon/include'
HalconLibraryDir = '/opt/halcon/lib'

module1 = Extension('_hirsch',
                    include_dirs = [HalconIncludeDir],
                    library_dirs = [HalconLibraryDir],
                    libraries=['halcon','halconcpp'],
                    language = "c++",
                    sources = ['pyhirsch.cc',
                               'pyhaffinetrans2d.cc',
                               'pyhellipse.cc',
                               'pyhcircle.cc',
                               'pyhrectangle1.cc',
                               'pyhrectangle2.cc',
                               'pyhpixval.cc',
                               'pyhtemplate.cc',
                               'pyhimagearray.cc',
                               'pyhpoint2d.cc',
                               'pyhdpoint2d.cc',
                               'pyhregion.cc',
                               'pyhregionarray.cc',
                               'pyhimage.cc',
                               'pyhxldcont.cc',
                               'pyhxldcontarray.cc',
                               'pyhtuple.cc',
                               'pyhdatacode2d.cc',
                               'pyhbarcode.cc',
                               'pyhxld.cc',
                               'pyhxldarray.cc',
                               'pyhline2d.cc',
                               ],
                    )

setup (name = 'Hirsch',
       version = '0.1',
       description = 'Python binding to MVTec HALCON',
       ext_modules = [module1],
       py_modules=['hirsch.giv']
       )
