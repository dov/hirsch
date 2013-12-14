# Dov Grobgeld <dov.grobgeld@gmail.com>
# 2013-11-12 Tue
#
# Some utilities for displaying halcon through giv.

def RegionToGiv(region, color='red', balloon=None, path=None):
  polygons = ''
  for row,colStart,colEnd in zip(*region.GetRegionRuns()):
    polygons += ('m {colStart} {row}\n'
                '{colStart} {rowEnd}\n'
                '{colEnd} {rowEnd}\n'
                '{colEnd} {row}\n'
                '{colStart} {row}\n'.format
                (colStart = colStart,
                 colEnd = colEnd,
                 row = row,
                 rowEnd = row+1))
  header = ('$color {color}\n'
            '$polygon\n'.format(color=color))

  if not balloon is None:
    header += '$balloon ' + balloon.replace('\n','\n$balloon ') + '\n'
  if not path is None:
    header += '$path ' + path + '\n'
  return (header
          + polygons
          + '\n'
          )

def ContourToGiv(contour, color='red', balloon=None, path=None, linewidth=1):
  curve = ''
  for row,col in zip(*contour.GetContourXld()):
    curve += '{col} {row}\n'.format(col=col,row=row)
  header = ('$color {color}\n'
            '$lw {linewidth}\n'
            .format(color=color,
                    linewidth=linewidth))

  if not balloon is None:
    header += '$balloon ' + balloon.replace('\n','\n$balloon ') + '\n'

  if not path is None:
    header += '$path ' + path + '\n'

  return (header
          + curve
          + '\n')

def ViewRegions(regions,
                color='red/0.5',
                image=None,
                imageFilename=None,
                props=None,
                format='%.2f'):
  """Display regions on top of on image"""
  import os, tempfile

  if props is None:
    props = ['Area','X','Y']

  GivFilename = tempfile.NamedTemporaryFile(suffix='.giv').name
  fh = open(GivFilename, 'w')
  if not image is None:
    ImgFilename = tempfile.NamedTemporaryFile(suffix='.tif').name
    image.WriteImage('tiff',0,ImgFilename)
    fh.write('$image ' + ImgFilename + '\n')
  elif not imageFilename is None:
    fh.write('$image ' + imageFilename + '\n')
  for i,blob in enumerate(regions):
    balloons = ['Blob id: %d'%i]
    for p in props:
      balloons += [p+': '+format%(eval('blob.'+p+'()'))]
    fh.write(RegionToGiv(blob, color,balloon='\n'.join(balloons)))
  fh.close()
  os.system('(giv ' + GivFilename + '; unlink %s)&'%GivFilename)

def ViewContours(contours,
                 color='red/0.5',
                 image=None,
                 imageFilename=None,
                 props=None,
                 format='%.2f',
                 linewidth=1):
  """Display contours on top of on image"""
  import os, tempfile

  if props is None:
    props = ['LengthXld']

  GivFilename = tempfile.NamedTemporaryFile(suffix='.giv').name
  fh = open(GivFilename, 'w')
  if not image is None:
    ImgFilename = tempfile.NamedTemporaryFile(suffix='.tif').name
    image.WriteImage('tiff',0,ImgFilename)
    fh.write('$image ' + ImgFilename + '\n')
  elif not imageFilename is None:
    fh.write('$image ' + imageFilename + '\n')
  for i,contour in enumerate(contours):
    balloons = ['Blob id: %d'%i]
    for p in props:
      balloons += [p+': '+ format%eval('contour.%s()'%p)]
    fh.write(ContourToGiv(contour, color,linewidth=linewidth,balloon='\n'.join(balloons)))
  fh.close()
  os.system('(giv ' + GivFilename + '; unlink %s)&'%GivFilename)

if __name__ == '__main__':
  import sys,os
  import platform
  sys.path.insert(0,'/home/dov/git/python-halcon/build/lib.linux-{machine}-2.7/'.\
                  format(machine=platform.machine()))
  import halcon
  
  Filename = '/home/dov/git/learning/halcon/maja.tif'
  img = halcon.HImage(Filename=Filename)
  
  ## Threshold the image
  region = img.Threshold(128,255)
  blobs = region.Connection()
  fh = open('/tmp/foo.giv','w')
  for i,blob in enumerate(blobs):
    fh.write('$image ' + Filename + '\n'
             + RegionToGiv(blob,
                           color='green/0.8',
                           balloon = 'Area=%d'%blob.Area(),
                           path='Blobs/%d'%i))

  edges = img.EdgesSubPix('canny', 2,1,10)
  for i,edge in enumerate(edges):
    fh.write(ContourToGiv(edge,
                          balloon='Length=%.3f'%edge.LengthXld(),
                          path='Contour/%d'%i
                          ))

  os.system('giv /tmp/foo.giv')

          
  
