from optparse import OptionParser
from distutils.core import setup, Extension
import sys

# monkey-patch for parallel compilation. See: http://stackoverflow.com/questions/11013851/speeding-up-build-process-with-distutils
def parallelCCompile(self, sources, output_dir=None, macros=None, include_dirs=None, debug=0, extra_preargs=None, extra_postargs=None, depends=None):
    # those lines are copied from distutils.ccompiler.CCompiler directly
    macros, objects, extra_postargs, pp_opts, build = self._setup_compile(output_dir, macros, include_dirs, sources, depends, extra_postargs)
    cc_args = self._get_cc_args(pp_opts, debug, extra_preargs)
    # parallel code
    N=2 # number of parallel compilations
    import multiprocessing.pool
    def _single_compile(obj):
        try: src, ext = build[obj]
        except KeyError: return
        self._compile(obj, src, ext, cc_args, extra_postargs, pp_opts)
    # convert to list, imap is evaluated on-demand
    list(multiprocessing.pool.ThreadPool(N).imap(_single_compile,objects))
    return objects
import distutils.ccompiler
distutils.ccompiler.CCompiler.compile=parallelCCompile

# Set to include and library directory of halcon
HalconBaseDir = '/space/halcon13'
HalconIncludeDirs = [HalconBaseDir + '/include/halconcpp',
                     HalconBaseDir + '/include']
                     
HalconLibraryDir = HalconBaseDir + '/lib/x64-linux'

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
       py_modules=['hirsch13.giv']
       )

