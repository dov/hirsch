from optparse import OptionParser
from distutils.core import setup, Extension
import sys

# Set to include and library directory of halcon
HalconIncludeDirs = ['/space/halcon13/include/halconcpp',
                     '/space/halcon13/include']
                     
HalconLibraryDir = '/space/halcon13/lib/x64-linux'

module1 = Extension('_hirsch13',
                    include_dirs = ['./src/'] + HalconIncludeDirs,
                    library_dirs = [HalconLibraryDir],
                    libraries=['halcon','halconcpp'],
                    language = "c++",
                    sources = ['src/pyhirsch.cc',
                               'src/pyhtemplate.cc',
                               'src/pyhregion.cc',
                               'src/pyhimage.cc',
                               'src/pyhxldcont.cc',
                               'src/pyhtuple.cc',
                               'src/pyhdatacode2d.cc',
                               'src/pyhbarcode.cc',
                               'src/pyhxld.cc',
                               'src/pyhhommat2d.cc',
                               'src/pyhhommat2darray.cc',
                               ],
                    )

setup (name = 'Hirsch13',
       version = '0.1',
       description = 'Python binding to MVTec HALCON13',
       ext_modules = [module1],
       py_modules=['hirsch.giv']
       )

