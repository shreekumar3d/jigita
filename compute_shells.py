import numpy as np
import scipy.spatial
import geom_ops
import tripy

def fitting_pockets(mesh, z_bin_size, printable_threshold):
    all_z = np.unique(mesh[:,2])
    all_z.sort()
    # we start working from highest Z (farthest from board)
    # and compute the "step-wells", i.e. convex hulls
    reverse_z = all_z[::-1]

    z_bins = []
    z_bins.append({
        "start_z" : reverse_z[0],
        "z_list" : [],
        "verts" : None
    })

    for z_val in reverse_z:
        # find all the verts at this Z
        mask = np.isin(element = mesh[:,2], test_elements=z_val)
        result = mesh[mask]

        # append to existing bin, if we belong to the same bin,
        # else start a new bin
        last_z_bin = z_bins[-1]["start_z"]
        if last_z_bin-z_val < z_bin_size:
            if z_bins[-1]["verts"] is None:
                z_bins[-1]["verts"] = result
            else:
                z_bins[-1]["verts"] = np.concatenate([z_bins[-1]["verts"], result])
            z_bins[-1]["z_list"].append(z_val)
        else:
            z_bins.append({
                "start_z" : z_val,
                "z_list" : [z_val],
                "verts" : result
            })

    # Each bin basically represents an area that casts a shadow looking down at Z=0
    # We can take the convex hull of the area.
    # Subsequent bins will keep adding to convex hulls from the previous bins
    # Thus, cumulatively we'll cover every bin, and the largest covex hull will be
    # at the bottom, allowing the part to slide in.

    prev_bin = None
    hull_bins = []
    for this_bin in z_bins:
        points_xy = this_bin['verts'][:,0:2] # chuck Z
        if len(hull_bins)>0:
            points_xy = np.concatenate([points_xy, hull_bins[-1]['hull']])
        hull = scipy.spatial.ConvexHull(points_xy)
        hull_verts = points_xy[hull.vertices]
        tris = tripy.earclip(hull_verts)
        area = tripy.calculate_total_area(tris)

        hull_verts = geom_ops.expand_small_hole(hull_verts, printable_threshold, area)
        if len(hull_bins)>0:
            if area > hull_bins[-1]['area']+1: # heh - looking for some meaningful change :)
                # start new bin
                hull_bins.append({
                    'hull' : hull_verts,
                    'area' : area,
                    'z_list' : this_bin['z_list']
                })
            else:
                hull_bins[-1]['z_list'] = hull_bins[-1]['z_list']+this_bin['z_list']
        else:
            hull_bins.append({
                'hull' : hull_verts,
                'area' : area,
                "z_list" : this_bin["z_list"],
            })

    # reverse the hull bins, as it represents the right order of
    # cutting out!
    hull_bins.reverse()

    for idx, h_bin in enumerate(hull_bins):
        h_bin['z_list'].sort()
        if idx==0:
            h_bin['start_z'] = h_bin['z_list'][0]
        else:
            h_bin['start_z'] = hull_bins[idx-1]['z_list'][-1]
        h_bin['end_z'] = h_bin['z_list'][-1]

    # Each bin has start_z, end_z, area, hull and z_list keys
    return hull_bins

