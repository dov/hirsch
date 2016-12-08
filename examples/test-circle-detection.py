import hirsch13
import hirsch13.giv

ImageFilename = 'QRWithCircles.tiff'
ImgIn = hirsch13.HImage(ImageFilename)

Edges = ImgIn.EdgesSubPix('canny',1,10,40)
Circles = Edges.SelectShapeXld('circularity', 'and', .50,1)
print Circles, len(Circles)
LargeCircles = Circles

SortedCircles = LargeCircles.SortContoursXld('character', 'true', 'row')
print SortedCircles
hirsch13.giv.ViewContours(Edges,
                        image=ImgIn,
                        color='red')
hirsch13.giv.ViewContours(Circles,
                          image=ImgIn,
                          color='green')
