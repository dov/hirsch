# Dov Grobgeld <dov.grobgeld@gmail.com>
# 2013-11-12 Tue
#
# Some utilities for displaying halcon through giv.

def RunGiv(GivFilename, UnlinkGiv):
  """Cross platform execution of giv command"""
  if os.name in ['nt']:
    # Search for giv in likely places
    for d in ['c:/devtools/',
              'd:/devtools/',
              'c:/Program Files/',
              'c:/Program Files (x86)/'
              ]:
      GivPath = d+"Giv/bin/giv.exe"
      if os.path.exists(GivPath):
        os.spawnl(os.P_NOWAIT, GivPath, '"'+GivPath+'"', GivFilename)
        return
    raise Exception("Failed finding giv executable!")
  else:
    # On Linux, just rely on giv being in the path
    os.system('giv ' + GivFilename+'&')
    if UnlinkGiv:

      import time 
      time.sleep(.1) #time delay in order to open the image before it's deleted...

      os.remove(GivFilename)
      os.remove(GivFilename.replace('.giv','.tif'))

def RegionToGiv(region, color='red', balloon=None, path=None):
  polygons = ''
  for row,colStart,colEnd in zip(*region.GetRegionRuns()):
    polygons += ('m {colStart} {row}\n'
                '{colStart} {rowEnd}\n'
                '{colEnd} {rowEnd}\n'
                '{colEnd} {row}\n'
                '{colStart} {row}\n'.format
                (colStart = colStart,
                 colEnd = colEnd+1,
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
    curve += '{col} {row}\n'.format(col=col+0.5,row=row+0.5)
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
                format='%.2f',
                givFilename = None):
  """Display regions on top of on image"""
  import tempfile

  if props is None:
    props = ['Area','X','Y']

  if givFilename is None:
    givFilename = tempfile.NamedTemporaryFile(suffix='.giv').name
    unlinkGiv = True
  else:
    unlinkGiv = False

  fh = open(givFilename, 'w')
  if not image is None:
    ImgFilename = givFilename.replace('.giv','.tif')
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
  RunGiv(givFilename,unlinkGiv)

def ViewContours(contours,
                 color='red/0.5',
                 image=None,
                 imageFilename=None,
                 props=None,
                 format='%.2f',
                 linewidth=1,
                 givFilename = None):
  """Display contours on top of on image"""
  import tempfile

  if props is None:
    props = ['LengthXld']

  if givFilename is None:
    givFilename = tempfile.NamedTemporaryFile(suffix='.giv').name
    unlinkGiv = True
  else:
    unlinkGiv = False    
    
  fh = open(givFilename, 'w')
  if not image is None:
    ImgFilename = givFilename.replace('.giv','.tif')
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
  RunGiv(givFilename,unlinkGiv)

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

  regions = img.Threshold(40,140).Connection()
  
  for i,edge in enumerate(edges):
    fh.write(ContourToGiv(edge,
                          balloon='Length=%.3f'%edge.LengthXld(),
                          path='Contour/%d'%i
                          ))

#  os.system('giv /tmp/foo.giv')

  ViewContours(edges,image=img)

  ViewRegions(regions,image=img)

          
  
