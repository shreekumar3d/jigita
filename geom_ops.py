import tripy
from shapely.geometry import Polygon
import math
import copy

def expand_small_hole(poly_verts, printable_threshold, area=None):
    if area is None:
        tris = tripy.earclip(poly_verts)
        area = tripy.calculate_total_area(tris)
    if area < printable_threshold:
        spoly = Polygon(poly_verts)
        # search in 0.01 mm offset increments
        # this helps achieve a good fit with the minimum
        # Note here we are not considering the gap that will be applied
        # additionally while generating the shell, so we are guaranteed to
        # be always higher than the safe limit
        search_steps = 10
        for offset in range(search_steps):
            offset_val = (offset+1)/search_steps
            offset_poly = spoly.buffer(offset_val)
            if offset_poly.area >= printable_threshold:
                print(f'  offset = {offset_val} improved area to {offset_poly.area} from {spoly.area}')
                poly_verts = offset_poly.exterior.coords
                break
    return poly_verts

def veclen(p):
    return math.sqrt(p[0]*p[0]+p[1]*p[1])

def line2vec(p1, p2):
    return [p2[0]-p1[0], p2[1]-p1[1]]

def angle2lines(p1,p2,p3): # (p2,p1) and (p2,p3)
    #print('points = ', p1,p2,p3)
    vec1 = line2vec(p2, p1)
    l1 = veclen(vec1)
    if l1==0.0:
        return 180
    vec2 = line2vec(p2, p3)
    l2 = veclen(vec2)
    if l2==0.0:
        return 180
    vec1 = [v/l1 for v in vec1]
    vec2 = [v/l2 for v in vec2]
    dotproduct = vec1[0]*vec2[0]+vec1[1]*vec2[1]
    return math.acos(dotproduct)*180/math.pi

def extract_corners_2D(poly_points, angular_thresh=10.0):
    """ Input is a 2D polygon. This function extracts "corners"
        in the polygon.  A corner is basically where two consective
        line segments have an angle more than the specified threshold """
    #print('  extract_corners_2D')
    xy = [ [pt[0], pt[1]] for pt in poly_points ]
    pt0 = xy[0]
    ptN = xy[-1]
    # NOTE: sometimes last point and first are same ! In that
    # case no need to replicate start and end points
    if not (pt0[0] == ptN[0] and pt0[1] == ptN[1]):
        #print('    extend both sides')
        xy.insert(0,ptN)
        xy.append(pt0)
    #print('    xy=',xy)
    angles = []
    result = []
    # we iterate and get angles between every two consecutive line
    # segments in the polygon (including the first and the last)
    # Any angle not close to 180 by angular_thresh is a corner.
    for idx in range(1,len(xy)-1):
        # FIXME : probably not the best performing code. Do some
        # numpy magic ?
        this_angle = angle2lines(xy[idx-1], xy[idx], xy[idx+1])
        angles.append(this_angle)
        if this_angle < (180-angular_thresh):
            result.append(copy.copy(xy[idx]))
    #print('    angles=',angles)
    #print('    corners=', len(result), ' which are', result)
    return result
