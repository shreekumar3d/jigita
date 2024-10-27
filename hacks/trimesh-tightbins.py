#
# tightbins using the trimesh module.
# this improves the accuracy, and speed of the tight bin creation
#
# pyclipr is used for polygon processing

import numpy as np
from shapely.geometry import LineString
from pprint import pprint
from matplotlib import pyplot as plt
import sys
import trimesh
from itertools import cycle
import pyclipr
from shapely.geometry import Polygon
import shapely
import logging
import solid2
from solid2 import translate, linear_extrude, union, offset, difference

#logging.basicConfig(level=logging.DEBUG)

import sys
sys.path.insert(0, '..')
import tripy
from solid2_module import module, exportReturnValueAsModule

printable_threshold = 1.0

# Replicated from tripy.py
def _is_clockwise(polygon):
    s = 0
    polygon_count = len(polygon)
    for i in range(polygon_count):
        point = polygon[i]
        point2 = polygon[(i + 1) % polygon_count]
        s += (point2[0] - point[0]) * (point2[1] + point[1])
    return s > 0

pc = pyclipr.Clipper()
pc.scaleFactor = int(1000)

plot3d = False
if plot3d:
    ax = plt.figure().add_subplot(projection='3d')

if len(sys.argv)==2:
    fname = sys.argv[1]
else:
    fname = "PinHeader_1x01_P2.54mm_Vertical.obj"
mesh = trimesh.load_mesh(fname)
min_mesh, max_mesh = mesh.bounds
print('Mesh bounds (min, max)= ', min_mesh, max_mesh)

cycol = cycle('bgrcmk')

cur_z = max_mesh[2]
z_step = 0.10 # follow the model closely
cx = (min_mesh[0]+max_mesh[0])*0.5
cy = (min_mesh[1]+max_mesh[1])*0.5

zbins = []

# no need to go all the way behind the board
while cur_z >= -z_step: # min_mesh[2]:
    section = mesh.section(plane_origin=[cx,cy,cur_z], plane_normal=[0, 0, -1])
    if section:
        # convert to planar, with identity 2D transform. This retains X,Y
        # in the the coordinates of the mesh for all slices. If you don't pass
        # the 2D transformation, each result from section can use a slightly
        # different transform, potentially causing confusion
        planar, _to_3D = section.to_planar(to_2D=np.eye(4))
        logging.debug(' At Z=%s, Number of polygons = %s'%(cur_z,len(planar.polygons_full)))
        for polygon in planar.polygons_full:
            outline = polygon.exterior
            pc.addPath(np.array(outline.coords), pyclipr.Clip)
            if plot3d:
                x,y = outline.xy
                ax.plot(x,y,zs=z, c=next(cycol))
                #plt.fill(x,y,fill=False, c=next(cycol))
        combined_shape = pc.execute(pyclipr.Union, pyclipr.FillRule.NonZero)

        # FIXME: we can accelerate stuff if we avoid combining the local polygon
        # with the global accumulation, if the area won't change.

        new_shapes = []
        if len(combined_shape)>1:
            logging.debug('Entry: combined_shape has shapes=%s'%(len(combined_shape)))
        for shape in combined_shape:
            spoly = Polygon(shape)
            # Ignore holes - which should ideally be... CW per pyclipr convention?
            # FIXME: clipper2 says outer polygons are anti-clockwise, but
            # shapely thinks those are clockwise. Hmm!!
            if shapely.is_ccw(spoly):
                logging.debug('skipping shape')
                continue
            if spoly.area < printable_threshold:
                for offset in range(10):
                    offset_val = (offset+1)/10.
                    offset_poly = spoly.buffer(offset_val)
                    if offset_poly.area >= printable_threshold:
                        logging.debug(f'  offset = {offset_val} improved area to {offset_poly.area} from {spoly.area}')
                        new_shapes.append(offset_poly.exterior)
                        break
            else:
                #print('  area = ',spoly.area)
                pass
            if len(new_shapes)>0:
                for shape in new_shapes:
                    # Shapely polygon exteriors are "clockwise"
                    # Clipper2 needs them to be anti-clockwise, so we need to reverse 'em
                    # Once holes are enlarged (e.g. for pins in a footprint) subsequent layers must not
                    # repeat the same operation
                    coords = list(shape.coords)
                    coords.reverse()
                    pc.addPath(np.array(coords), pyclipr.Clip)
                combined_shape = pc.execute(pyclipr.Union, pyclipr.FillRule.NonZero)
        zbins.append({'shapes':combined_shape, 'z':cur_z})
        logging.debug(f'    Union has {len(combined_shape)} shapes')
    else:
        logging.warning(f' At Z={cur_z} there are NO polygons!')
    cur_z = cur_z-z_step

# we'll assume that, as we are already cutting into PCB, same thing will
# continue all the way
zbins[-1]['z'] = min_mesh[2]

for this_bin in zbins:
    bin_shapes = this_bin['shapes']
    bin_area = 0
    polys = []
    for polygon in bin_shapes:
        if not _is_clockwise(polygon):
            polys.append(polygon)
            spoly = Polygon(polygon)
            bin_area += spoly.area
    this_bin['area'] = bin_area
    logging.debug(f"Z={this_bin['z']}, area={bin_area}")

# coalesce zbins
zbin_start = 0

current_area = zbins[zbin_start]['area']

def start_new_bin(new_area, prev_area):
    """ if new area is at-least > N times printable threshold, start new bin """
    n = 0.5
    return new_area >= (prev_area+n*printable_threshold)

c_bin = []
for idx in range(1,len(zbins)):
    if start_new_bin(zbins[idx]['area'], current_area):
        c_bin.append({
            'z_start' : zbins[zbin_start]['z'],
            'area': zbins[idx-1]['area'],
            'shapes': zbins[idx-1]['shapes'],
            'z_end' : zbins[idx-1]['z']
        })
        zbin_start = idx
        current_area = zbins[idx]['area']

c_bin.append({
    'z_start' : zbins[zbin_start]['z'],
    'area': zbins[-1]['area'],
    'shapes': zbins[-1]['shapes'],
    'z_end' : zbins[-1]['z']
})

for this_bin in c_bin:
    print(f"Bin Z start = {this_bin['z_start']} Z end = {this_bin['z_end']} area = {this_bin['area']}")

# generate scad
shell_outer = c_bin[-1]['shapes']
if len(shell_outer)!=1:
    logging.error(f"Only one outmost shell must get computed, but we have {len(shell_outer)}")
    sys.exit(-1)

pcb_clearance = 1.0
shell_thickness = 1.6
shell_gap = 0.1
# each keepout shell volume cuts in by an additional 'extra_overlap'. Ample space
# for component to sit
extra_overlap = 0.1

shell_start = c_bin[0]['z_start']
shell_end = c_bin[-1]['z_end']
shell_length = shell_start-pcb_clearance
for idx, this_bin in enumerate(c_bin):
    overall_shape = union()
    for shape in this_bin['shapes']:
        overall_shape += solid2.polygon(shape)
    this_bin['scad_poly'] = module(f"shape_{idx}", overall_shape)
    this_bin['keepout_volume'] = module(f"keepout_volume_{idx}", translate([0,0,shell_end]) (
                                                linear_extrude(this_bin['z_start']-shell_end+extra_overlap) (
                                                    solid2.offset(shell_gap) (
                                                        this_bin['scad_poly']()
                                                    )
                                                )
                                            )
                                )

shell_peri = translate([0,0,pcb_clearance]) (
                linear_extrude(shell_start-pcb_clearance) (
                    solid2.offset(shell_gap+shell_thickness) (
                        c_bin[-1]['scad_poly']()
                    )
                )
             )
shell_perimeter = module('shell_perimeter', shell_peri)

inner_volumes = union()
for this_bin in c_bin:
    inner_volumes += this_bin['keepout_volume']()

scene = difference() (
            shell_perimeter(),
            inner_volumes
        )
scene.save_as_scad('tight.scad')
if not plot3d:
    plt.axis("equal") # maintain aspect ratio
    for shape in combined_shape:
        plt.fill(shape[:, 0], shape[:, 1],  facecolor=next(cycol))
    #break
plt.show()
# plt.draw() is supposed to refresh
