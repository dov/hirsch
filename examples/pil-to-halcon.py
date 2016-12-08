#!/usr/bin/python

from hirsch13 import HImage
import ctypes
from PIL import Image

def PILImageToHImage(img):
    """Convert a PIL image to a halcon image. Currently only works with 8-bit gray images"""
    # Convert it to Halcon
    if img.mode != 'L':
        raise Exception('Currently only support PIL images of type L')
    data = ctypes.create_string_buffer(img.tobytes())
    width,height = img.size
    img = HImage()

    # Still doesn't work!
    img.GenImage1("byte",width,height,ctypes.addressof(data))
    return img
    

# Create an image 
im = Image.new("L", (8,4), "white")
im.putpixel((0,0),0x42)
im.putpixel((1,0),0x43)

# Convert it to Halcon
hi = PILImageToHImage(im)
print '0x%02x 0x%02x'%(hi.GetGrayval(0,0)[0],
                       hi.GetGrayval(0,1)[0])

