#!/usr/bin/python

from hirsch13 import HImage, HDataCode2D

Filename = 'qrfoo.tif'
img = HImage(Filename)
print "Image size=", img.Width(), img.Height()

QrDetector = HDataCode2D("QR Code","default_parameters","enhanced_recognition")
Contours,Handles,DataStrings = QrDetector.FindDataCode2d(img,"stop_after_result_num",1)
print 'DataString=',DataStrings
