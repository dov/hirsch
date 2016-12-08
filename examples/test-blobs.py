#!/usr/bin/python

from hirsch13 import HImage
import hirsch13.giv as giv

Filename = 'qrfoo.tif'
img = HImage(Filename)

blobs = img.Threshold(0,128).Connection()

# A pythonesque way of filtering the blobs
blobs = [b for b in blobs if b.Circularity() > 0.5]

giv.ViewRegions(blobs,image=img, props=['Circularity','Area'])
