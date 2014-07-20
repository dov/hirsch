#!/usr/bin/python

# Test code39 detection

import sys

sys.path = ['./build/lib.linux-x86_64-2.7/'] + sys.path
import hirsch as halcon

BarCode = halcon.HBarCode()
empty = halcon.HTuple()
BarCode.CreateBarCodeModel(empty, empty);
BarCode.SetBarCodeParam(halcon.HTuple("check_char"), halcon.HTuple("absent"))
BarCode.SetBarCodeParam("element_size_max", 1000);

Image = halcon.HImage.ReadImage('code39.png')

Regions,DecodedStrings = BarCode.FindBarCode(Image,"Code 39");
print DecodedStrings

