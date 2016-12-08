#!/usr/bin/python

from hirsch13 import HImage
import ctypes

# Externally create data and import into Halcon. Should
# perhaps be supported by c-binding.
Data = ctypes.create_string_buffer('AB'*(4*4))
hi = HImage()
# Doesn't work!
hi.GenImage1("byte",8,4,ctypes.addressof(Data))
print '0x%02x 0x%02x'%(hi.GetGrayval(0,0)[0],
                       hi.GetGrayval(0,1)[0])

