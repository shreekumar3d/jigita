#
# create a test "hugging" shell around a component (represented by
# a mesh)
#
import tinyobjloader
import numpy as np
from matplotlib import pyplot as plt
from pprint import pprint
import scipy.spatial
from itertools import cycle
import os
import sys
import copy
import pyclipr
import math
import pyclipr
from itertools import cycle
from stl import mesh #numpy-stl

pc = pyclipr.Clipper()
pc.scaleFactor = int(1000)

# This is why this directory is called 'hacks' !!
import sys
sys.path.insert(0, '..')
import tripy

reader = tinyobjloader.ObjReader()
if len(sys.argv)==2:
	ret = reader.ParseFromFile(sys.argv[1])
else:
	ret = reader.ParseFromFile('PinHeader_1x01_P2.54mm_Vertical.obj')
attrib = reader.GetAttrib()
nverts = len(attrib.vertices)//3 # attrib.vertices is contiguous x,y,z
mesh_verts = np.array(attrib.vertices)
mesh_verts.resize((nverts,3)) # in place change in dims
print('Vertices = %d'%(nverts))

shapes = reader.GetShapes()
faces = []
for shape in shapes:
    this_face = []
    for i, idx in enumerate(shape.mesh.indices):
        v = mesh_verts[idx.vertex_index]
        this_face.append([v[0], v[1], v[2]])
        if len(this_face)==3:
            faces.append(copy.deepcopy(this_face))
            this_face.clear()

def sort_face_max_z(face):
    # This favours max total Z
    return face[0][2]+face[1][2]+face[2][2]

def face_max_z(face):
    return max(face[0][2],face[1][2],face[2][2])
def face_min_z(face):
    return min(face[0][2],face[1][2],face[2][2])

def dist_point_to_line(pt, p1, p2):
    dx = p2[0]-p1[0]
    dy = p2[1]-p1[1]
    len_p1p2 = math.sqrt(dx*dx + dy*dy)
    if len_p1p2==0: # can happen if both x and y are same, and z is different
        dist=0
    else:
        dist = math.fabs((dy*pt[0])-(dx*pt[1])+(p2[0]*p1[1])-(p2[1]*p1[0]))/len_p1p2
    return dist

# Trim all the faces that project to a line
# given a face a,b,c, if a is on the bc line, then we remove it
# a,b,c are reduced to 2D by removing the Z coordinte (thus projecting
# it to the Z plane)
faces_copy = copy.copy(faces)
#print('before trim=', len(faces))
epsilon = 0.000001
z_list = []
for f in faces:
    dist = dist_point_to_line(f[0][0:2], f[1][0:2], f[2][0:2])
    #print('dist = ',dist, 'face = ', f)
    if dist<epsilon:
        faces_copy.remove(f) # remove from copy, we can't from faces
    else:
        z_list += [f[0][2], f[1][2], f[2][2]]
        #print('dist = ',dist, 'face = ', f)
faces = faces_copy
#print('after trim=', len(faces))


# sort faces so that faces with any vertex with larger Zs are first.
# we'll thus be able pick them in order
faces.sort(key = sort_face_max_z, reverse=True)
#pprint(faces)

# rotate faces so that max z comes first - this
# simplifies our triangle clipping later
rot1 = 0
rot2 = 0
for f in faces:
    x1,y1 = f[0][0:2]
    x2,y2 = f[1][0:2]
    x3,y3 = f[2][0:2]
    cp = (x2-x1)*(y3-y1)-(y2-y1)*(x3-x1)
    #print(cp)
    if cp<0: # reverse facing ? reverse the face!
        f.reverse()
    a = f[0]
    b = f[1]
    c = f[2]
    max_face_z = max(a[2],b[2],c[2])
    if max_face_z == a[2]:
        pass
    elif max_face_z == b[2]:
        a = f.pop(0)
        f.append(a)
        rot1 += 1
    elif max_face_z == c[2]:
        c = f.pop(0)
        f.insert(0, c)
        rot2 += 1
#print('rotations = ', rot1, rot2)

def do_clip(a, b, z):
    """ a, b are start and end points of a line in 3d space.
    z is the location of a XY clip plane. Note return point
    is 2D x,y only, as the Z is already known. This function
    assumes that a and b are on opposite sides of z"""
    # how far is Z along as a fraction of the line?
    if b[2]==a[2]:
        raise ValueError('do_clip ', a,',',b,',',z)
    z_frac = (z-a[2])/(b[2]-a[2])
    # that's how far our points will be, so interpolate to
    # get the intersection
    x = a[0]+(b[0]-a[0])*z_frac
    y = a[1]+(b[1]-a[1])*z_frac
    return [x,y]

# Find all the unique Zs. Triangles will enter and exit at these points
z_list = list(set(z_list))
z_list.sort(reverse = True)
print('Number of Zs = ', len(z_list))

z_polys = []

proc_iters = 0
current_faces = []
for z_idx, z in enumerate(z_list):
    if z_idx < len(z_list)-1:
        next_z = z_list[z_idx+1]
    else:
        next_z = z

debug = False

z = z_list[0]
z_step = 0.2

#print('All the faces are:')
#pprint(faces)
while z>0:
    # Rules
    # z to next_z (not inclusive of next_z) shall be
    # processed in this loop
    # NOTE: next_z < z
    # last iteration will this process only 1
    # - the overall "min_z"

    #print('removed ',max_match, ' faces')

    # pick all faces that have 'z'
    faces_to_add = []
    max_match = 0
    for idx, val in enumerate(faces):
        if face_max_z(val)<z:
            max_match = idx
            break
        faces_to_add.append(val)

    # remove all those
    for idx in range(max_match):
        faces.pop(0)

    current_faces = current_faces+faces_to_add
    if debug:
        print('At start of Z=', z, ' faces are:')
        pprint(current_faces)
    # now process what we have, till the next_z
    # in slices of z_step
    proc_z = z

    add_polys = []
    print('Processing Z = ', proc_z, ' with ', len(current_faces), ' triangles')
    if len(current_faces)>0:
        proc_iters += 1
        # process each face
        for tri in current_faces:
            # intersect triangle with horizontal plane at z=proc_z
            a = tri[0]
            b = tri[1]
            c = tri[2]
            #ab, bc, ca are edges

            # if we haven't hit a's Z, then nothing to do
            if a[2]<proc_z:
                continue
            #a is guaranteed to be part of the output.
            # it is the max Z, and it has survived till now,
            # means that it is on the favoured clipping side
            clipped_poly = [a[0:2]]

            # if b is in front, or on proc_z, it goes in as is
            if b[2]>=proc_z:
                clipped_poly.append(b[0:2])
            else:
                # clip ab against z=proc_z
                clipped_poly.append(do_clip(a, b, proc_z))
            if c[2]>=proc_z:
                clipped_poly.append(c[0:2])
            else:
                if b[2]<=proc_z:
                    # bc is on the other side, and won't contribute to output
                    # note b is already included if b[2]=proc_z
                    pass
                else:
                    # b is in front of z=proc_z
                    # clip bc against z=proc_z
                    clipped_poly.append(do_clip(b, c, proc_z))

                # clip ca against z=proc_z
                clipped_poly.append(do_clip(c, a, proc_z))
            #print('poly=',clipped_poly)
            pc.addPath(np.array(clipped_poly), pyclipr.Clip)
            # FIXME: if the area of the polygon is below the printing threshold,
            # substitute it with a larger one
            add_polys.append(clipped_poly)
        out = pc.execute(pyclipr.Union, pyclipr.FillRule.NonZero)
    proc_z = proc_z - z_step
    if debug:
        print('Z is now', proc_z)
    # Remove faces that have lesser Z than current
    next_faces = copy.copy(current_faces)
    for idx, val in enumerate(current_faces):
        if face_min_z(val)>proc_z:
            next_faces.remove(val)
            if debug:
                print('Removing : ', val)
    current_faces = next_faces
    z = proc_z
    if debug:
        print('  Remaining faces = ',len(current_faces))
        pprint(current_faces)
    #print('-- Out of loop')
#    print('-------------------------')
#    print(z_idx, z)
#    pprint(current_faces)
#    print('-------------------------')
import matplotlib.pyplot as plt
plt.figure()

# Create an offsetting object
po = pyclipr.ClipperOffset()
po.scaleFactor = int(1000)
po.addPaths(out, pyclipr.JoinType.Round, pyclipr.EndType.Polygon)
# Fill small holes - these can happen, probably due to numerical
# precision of floating point
offset_shape = po.execute(0.1)

# Clipper2 can give more than one shape - I have seen it returning fully
# enclosed shapes
if len(offset_shape)>1:
    print("Unioning in an attempt to cleanup")
    # At this point, you might get multiple paths consisting one shape!
    # Union them, triangle by triangle so that there is no escaping !
    # (famous last words!)
    pc2 = pyclipr.Clipper()
    pc2.scaleFactor = int(1000)
    for shape in offset_shape:
        part_tris = tripy.earclip(shape)
        for tri in part_tris:
            #print(tri)
            pc2.addPath(tri, pyclipr.Clip)
        offset_shape = pc2.execute(pyclipr.Union, pyclipr.FillRule.NonZero)

# reverse the offset :D
po = pyclipr.ClipperOffset()
po.scaleFactor = int(1000)
po.addPaths(offset_shape, pyclipr.JoinType.Round, pyclipr.EndType.Polygon)
offset_shape = po.execute(-0.1)

shape_tris = []
for shape in offset_shape:
    part_tris = tripy.earclip(shape)
    for tri in part_tris:
        this_tri = []
        for pt in tri:
            this_tri.append([pt[0],pt[1],0])
        shape_tris.append(this_tri)

data = np.zeros(len(shape_tris), mesh.Mesh.dtype)
for idx,f in enumerate(shape_tris):
    data['vectors'][idx] = np.array([f])
stl_mesh = mesh.Mesh(data.copy())
stl_mesh.save('shadow.stl')

# Plot the overall shape - more than 1 colors means the union didn't
# work
print('Layers processed = ',proc_iters)
print('--- Solution has %d shapes---'%(len(offset_shape)))
cycol = cycle('bgrcmk')
for shape in offset_shape:
    #pprint(shape)
    plt.fill(shape[:, 0], shape[:, 1],  facecolor=next(cycol))
    #break
plt.show()
