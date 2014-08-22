#!/usr/bin/python

# An example of how to turn a numpy image into Halcon and vice versa.

import numpy as np
import hirsch as H

def himg_to_string(im):
    """Turn a (small) binary image into a string representation"""
    chars = '.1'
    width, height = im.Width(), im.Height()
    return '\n'.join(
        [''.join([chars[im.GetGrayval(r,c)[0]>0] for c in range(width)])
         for r in range(height)])

def slow_himg_to_array(im):
    """A pixel by pixel translation of an himage to a numpy array"""
    width, height = im.Width(), im.Height()
    htype = im.PixType()
    typeconv = {'byte': np.uint8 }
    if not htype in typeconv:
        raise Exception('Unsupported halcon type!')
    a = np.zeros((height, width), dtype=typeconv[htype])
    for r in range(height):
        for c in range(width):
            a[(r,c)] = im.GetGrayval(r,c)[0]
    return a

def slow_array_to_himg(a):
    """A pixel by pixel translation of an np array to an himage"""
    height, width = a.shape
    nptype = a.dtype
    typeconv = {np.dtype('uint8') : 'byte'}
    if not nptype in typeconv:
        raise Exception('Unsupported np type for halcon conversion!')
    img = H.HImage.GenImageConst('byte',width,height)
    for r in range(height):
        for c in range(width):
            img.SetGrayval(r,c,a[(r,c)])
    return img
    
def medium_speed_himg_to_array(img):
    a = np.fromiter(img,
                    dtype=np.uint8,
                    count=img.Width()*img.Height())
    a.resize( img.Height(), img.Width())
    return a
    
# Create a small h-image
w,h = 7,5
img = H.HImage.GenImageConst('byte',w,h)
for j in range(1,h-1):
  for i in range(1,w-1):
    img.SetGrayval(j,i,1)

# Slow conversion as reference
a = slow_himg_to_array(img)

# Convert to np array using the __array_interface__
a1 = np.array(img)
assert((a==a1).all())

# Convert back to an image using the support of the __array_interface__
# in the HImage construction.
img1 = H.HImage(a)
assert(himg_to_string(img)==himg_to_string(img1))

print "ok"
