import numpy as np
import scipy.spatial
import geom_ops
import tripy
import pyclipr
import shapely
from shapely.geometry import Polygon, LineString
import logging


def fitting_pockets(mverts, z_bin_size, printable_threshold):
    all_z = np.unique(mverts[:, 2])
    all_z.sort()
    # we start working from highest Z (farthest from board)
    # and compute the "step-wells", i.e. convex hulls
    reverse_z = all_z[::-1]

    z_bins = []
    z_bins.append({"start_z": reverse_z[0], "z_list": [], "verts": None})

    for z_val in reverse_z:
        # find all the verts at this Z
        mask = np.isin(element=mverts[:, 2], test_elements=z_val)
        result = mverts[mask]

        # append to existing bin, if we belong to the same bin,
        # else start a new bin
        last_z_bin = z_bins[-1]["start_z"]
        if last_z_bin - z_val < z_bin_size:
            if z_bins[-1]["verts"] is None:
                z_bins[-1]["verts"] = result
            else:
                z_bins[-1]["verts"] = np.concatenate([z_bins[-1]["verts"], result])
            z_bins[-1]["z_list"].append(z_val)
        else:
            z_bins.append({"start_z": z_val, "z_list": [z_val], "verts": result})

    # Each bin basically represents an area that casts a shadow looking down at Z=0
    # We can take the convex hull of the area.
    # Subsequent bins will keep adding to convex hulls from the previous bins
    # Thus, cumulatively we'll cover every bin, and the largest covex hull will be
    # at the bottom, allowing the part to slide in.

    prev_bin = None
    hull_bins = []
    for this_bin in z_bins:
        points_xy = this_bin["verts"][:, 0:2]  # chuck Z
        if len(hull_bins) > 0:
            points_xy = np.concatenate([points_xy, hull_bins[-1]["hull"]])
        hull = scipy.spatial.ConvexHull(points_xy)
        hull_verts = points_xy[hull.vertices]
        tris = tripy.earclip(hull_verts)
        area = tripy.calculate_total_area(tris)

        hull_verts = geom_ops.expand_small_hole(hull_verts, printable_threshold, area)
        if len(hull_bins) > 0:
            if (
                area > hull_bins[-1]["area"] + 1
            ):  # heh - looking for some meaningful change :)
                # start new bin
                hull_bins.append(
                    {"hull": hull_verts, "area": area, "z_list": this_bin["z_list"]}
                )
            else:
                hull_bins[-1]["z_list"] = hull_bins[-1]["z_list"] + this_bin["z_list"]
        else:
            hull_bins.append(
                {
                    "hull": hull_verts,
                    "area": area,
                    "z_list": this_bin["z_list"],
                }
            )

    # reverse the hull bins, as it represents the right order of
    # cutting out!
    hull_bins.reverse()

    for idx, h_bin in enumerate(hull_bins):
        h_bin["z_list"].sort()
        if idx == 0:
            h_bin["start_z"] = h_bin["z_list"][0]
        else:
            h_bin["start_z"] = hull_bins[idx - 1]["z_list"][-1]
        h_bin["end_z"] = h_bin["z_list"][-1]

    # Each bin has start_z, end_z, area, hull and z_list keys
    return hull_bins


# Replicated from tripy.py
def _is_clockwise(polygon):
    s = 0
    polygon_count = len(polygon)
    for i in range(polygon_count):
        point = polygon[i]
        point2 = polygon[(i + 1) % polygon_count]
        s += (point2[0] - point[0]) * (point2[1] + point[1])
    return s > 0


def tight_pockets(mesh, z_bin_size, printable_threshold):
    min_mesh, max_mesh = mesh.bounds
    print("Mesh bounds (min, max)= ", min_mesh, max_mesh)

    pc = pyclipr.Clipper()
    pc.scaleFactor = int(1000)

    cur_z = max_mesh[2]
    z_step = z_bin_size
    cx = (min_mesh[0] + max_mesh[0]) * 0.5
    cy = (min_mesh[1] + max_mesh[1]) * 0.5

    zbins = []

    # no need to go all the way behind the board
    while cur_z >= -z_step:  # min_mesh[2]:
        section = mesh.section(plane_origin=[cx, cy, cur_z], plane_normal=[0, 0, -1])
        if section:
            # convert to planar, with identity 2D transform. This retains X,Y
            # in the the coordinates of the mesh for all slices. If you don't pass
            # the 2D transformation, each result from section can use a slightly
            # different transform, potentially causing confusion
            planar, _to_3D = section.to_planar(to_2D=np.eye(4))
            # logging.debug(' At Z=%s, Number of polygons = %s'%(cur_z,len(planar.polygons_full)))
            try:
                if not planar.polygons_full:
                    logging.warning(f" At Z={cur_z} there are NO polygons!")
                    cur_z = cur_z - z_step
                    continue
            except ValueError as err:
                logging.warning(f"At Z={cur_z} error:{err}")
                cur_z = cur_z - z_step
                continue
            except shapely.errors.GEOSException as err:
                logging.warning(f"At Z={cur_z} error:{err}")
                cur_z = cur_z - z_step
                continue
            for polygon in planar.polygons_full:
                outline = polygon.exterior
                pc.addPath(np.array(outline.coords), pyclipr.Clip)
            combined_shape = pc.execute(pyclipr.Union, pyclipr.FillRule.NonZero)

            # FIXME: we can accelerate stuff if we avoid combining the local polygon
            # with the global accumulation, if the area won't change.

            new_shapes = []
            if len(combined_shape) > 1:
                logging.debug(
                    "Entry: combined_shape has shapes=%s" % (len(combined_shape))
                )
            for shape in combined_shape:
                spoly = Polygon(shape)
                # Ignore holes - which should ideally be... CW per pyclipr convention?
                # FIXME: clipper2 says outer polygons are anti-clockwise, but
                # shapely thinks those are clockwise. Hmm!!
                if shapely.is_ccw(spoly):
                    logging.debug("skipping shape")
                    continue
                if spoly.area < printable_threshold:
                    for offset in range(10):
                        offset_val = (offset + 1) / 10.0
                        offset_poly = spoly.buffer(offset_val)
                        if offset_poly.area >= printable_threshold:
                            logging.debug(
                                f"  offset = {offset_val} improved area to {offset_poly.area} from {spoly.area}"
                            )
                            new_shapes.append(offset_poly.exterior)
                            break
                else:
                    # print('  area = ',spoly.area)
                    pass
                if len(new_shapes) > 0:
                    for shape in new_shapes:
                        # Shapely polygon exteriors are "clockwise"
                        # Clipper2 needs them to be anti-clockwise, so we need to reverse 'em
                        # Once holes are enlarged (e.g. for pins in a footprint) subsequent layers must not
                        # repeat the same operation
                        coords = list(shape.coords)
                        coords.reverse()
                        pc.addPath(np.array(coords), pyclipr.Clip)
                    combined_shape = pc.execute(pyclipr.Union, pyclipr.FillRule.NonZero)
            zbins.append({"shapes": combined_shape, "z": cur_z})
            logging.debug(f"    Union has {len(combined_shape)} shapes")
        else:
            logging.warning(f" At Z={cur_z} there are NO polygons!")
        cur_z = cur_z - z_step

    # we'll assume that, as we are already cutting into PCB, same thing will
    # continue all the way
    zbins[-1]["z"] = min_mesh[2]

    for this_bin in zbins:
        bin_shapes = this_bin["shapes"]
        bin_area = 0
        polys = []
        for polygon in bin_shapes:
            if not _is_clockwise(polygon):
                polys.append(polygon)
                spoly = Polygon(polygon)
                bin_area += spoly.area
        this_bin["area"] = bin_area
        logging.debug(f"Z={this_bin['z']}, area={bin_area}")

    # coalesce zbins
    zbin_start = 0

    current_area = zbins[zbin_start]["area"]

    def start_new_bin(new_area, prev_area):
        """if new area is at-least > N times printable threshold, start new bin"""
        n = 0.5
        return new_area >= (prev_area + n * printable_threshold)

    c_bins = []
    for idx in range(1, len(zbins)):
        if start_new_bin(zbins[idx]["area"], current_area):
            c_bins.append(
                {
                    "z_start": zbins[zbin_start]["z"],
                    "area": zbins[idx - 1]["area"],
                    "shapes": zbins[idx - 1]["shapes"],
                    "z_end": zbins[idx - 1]["z"],
                }
            )
            zbin_start = idx
            current_area = zbins[idx]["area"]

    c_bins.append(
        {
            "z_start": zbins[zbin_start]["z"],
            "area": zbins[-1]["area"],
            "shapes": zbins[-1]["shapes"],
            "z_end": zbins[-1]["z"],
        }
    )

    # reverse the bins, as it represents the right order of
    # cutting out! biggest in front
    c_bins.reverse()

    return c_bins
