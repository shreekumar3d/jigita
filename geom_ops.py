import tripy
from shapely.geometry import Polygon, Point
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
                poly_verts = list(offset_poly.exterior.coords)
                break
    return poly_verts

def veclen(p):
    return math.sqrt(p[0]*p[0]+p[1]*p[1])

def line2vec(p1, p2):
    return [p2[0]-p1[0], p2[1]-p1[1]]

def compute_corner(p1,p2,p3): # (p2,p1) and (p2,p3)
    #print('points = ', p1,p2,p3)
    vec1 = line2vec(p2, p1)
    l1 = veclen(vec1)
    if l1==0.0:
        return 180, None, None
    vec2 = line2vec(p2, p3)
    l2 = veclen(vec2)
    if l2==0.0:
        return 180, None, None
    vec1 = [v/l1 for v in vec1]
    vec2 = [v/l2 for v in vec2]
    dotproduct = vec1[0]*vec2[0]+vec1[1]*vec2[1]
    angle = math.acos(dotproduct)

    t_angle = -(angle/2)
    sin_t = math.sin(t_angle)
    cos_t = math.cos(t_angle)
    # standard formula for rotating by angle theta
    # x' = x*cos(theta)-y*sin(theta)
    # y' = x*sin(theta)+y*cos(theta)
    tangent1 = [ vec1[0]*cos_t - vec1[1]*sin_t,
                 vec1[0]*sin_t + vec1[1]*cos_t ]

    # other tangent will be diametrically opposite
    tangent2 = [ -tangent1[0], -tangent1[1] ]
    return angle*180/math.pi, tangent1, tangent2

def extract_corners_2D(poly_points, angular_thresh=10.0):
    """ Input is a 2D polygon. This function extracts "corners"
        in the polygon.  A corner is basically where two consective
        line segments have an angle more than the specified threshold """
    #print('  extract_corners_2D')
    xy = [ [pt[0], pt[1]] for pt in poly_points ]
    pt0 = xy[0]
    ptN = xy[-1]
    #print('Poly points = ', len(xy))
    # NOTE: sometimes last point and first are same ! In that
    # case no need to replicate start and end points
    if not (pt0[0] == ptN[0] and pt0[1] == ptN[1]):
        xy.insert(0,ptN)
        xy.append(pt0)
        #print('    extend both sides')
    #print('points = ', xy)
    #print('Poly points = ', len(xy))
    #print('    xy=',xy)
    angles = []
    result = []
    # we iterate and get angles between every two consecutive line
    # segments in the polygon (including the first and the last)
    # Any angle not close to 180 by angular_thresh is a corner.
    corner_idx = []
    tl1 = []
    tl2 = []
    for idx in range(1,len(xy)-1):
        # FIXME : probably not the best performing code. Do some
        # numpy magic ?
        this_angle, tangent1, tangent2 = compute_corner(xy[idx-1], xy[idx], xy[idx+1])
        angles.append(this_angle)
        if this_angle < (180-angular_thresh):
            result.append(copy.copy(xy[idx]))
            corner_idx.append(idx)
            tl1.append(tangent1)
            tl2.append(tangent2)
    #print(len(corner_idx))
    corner_segments = []
    # operate on consecutive corner indices as start
    # and end pairs. Note end is inclusive
    tangent_idx = 0
    if len(corner_idx)>0:
        corner_idx.append(corner_idx[-1]+1)
        tl1.append(tl1[0])
        tl2.append(tl2[0])
    #print(corner_idx)
    for start, end in zip(corner_idx, corner_idx[1:]):
        corner_segments.append([copy.copy(xy[start:end+1]), [tl1[tangent_idx], tl2[tangent_idx]], [tl1[tangent_idx+1], tl2[tangent_idx+1]]])
        #print('Corner ', tangent_idx, ' end =', end)
        #print(xy[start:end+1])
        #print(tl1[tangent_idx])
        #print(tl2[tangent_idx])
        tangent_idx += 1
    #print('segments = ',len(corner_segments))
    #if tangent_idx != len(tl1)-1:
    #    raise RuntimeError(f"Unexpected tangent index {tangent_idx} expected {len(tl1)}")
    #print('    angles=',angles)
    #print('    corners=', len(result), ' which are', result)
    return result, corner_segments

def pt_move(pt, vec, dist):
    return [pt[0]+(vec[0]*dist), pt[1]+(vec[1]*dist)]

def find_exterior_pt(this_hull, corner_pt, t1, t2, encl_poly):
    """Find a point outside encl_poly, given corner_pt on
    this_hull . t1 and t2 are two tangent vectors, pointing
    in opposite directions. one inside this_hull, and one outside"""
    # compute a point a tiny distance along both tangents
    small_dist = 0.001
    tpt1 = pt_move(corner_pt, t1, small_dist)
    tpt2 = pt_move(corner_pt, t2, small_dist)

    # whichever point is inside, the other vector is pointing outside
    if this_hull.contains(Point(tpt1)):
        inner_pt = tpt1
        walk_vec = t2
    else:
        inner_pt = tpt2
        walk_vec = t1

    # find the farthest distance such that the resulting point is
    # outside the entire solid. we do this by taking gingelly steps
    # until we are out of the polygon.
    # FIXME: sam-wise had to walk out of the shire out of necessity,
    # but this walking approach is stupidity. Don't chew the users CPU
    # Find the right way to compute a point out of the polygon
    walk_step = 0.1
    dist = walk_step
    while True:
        outer_pt = pt_move(inner_pt, walk_vec, dist)
        if not encl_poly.contains(Point(outer_pt)):
            break
        dist += walk_step

    return inner_pt, walk_vec, dist
