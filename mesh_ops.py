import numpy as np
import tempfile
import subprocess
import os
import hashlib
import copy
import trimesh
import pymeshlab

mesh_cache = {}

# returns flat array of xyz coordinates
def load_obj_mesh_verts(filename, scale=1.0):
    try:
        mesh = trimesh.load_mesh(filename)
    except ValueError as err:
        raise ValueError("Unable to load OBJ file %s" % (filename))
    mesh.apply_scale(scale)
    return mesh


def load_mesh(filename, scriptdir, temp_dir=None):
    global mesh_cache
    mesh = None
    if filename in mesh_cache.keys():
        # print('Returning %s from cache'%(filename))
        return mesh_cache[filename]

    file_hash = hashlib.md5(open(filename, "rb").read()).hexdigest()

    if filename.endswith(".obj"):
        mesh = load_obj_mesh_verts(filename)
    elif filename.endswith(".step") or filename.endswith(".stp"):
        with tempfile.NamedTemporaryFile(suffix=".obj", dir=temp_dir) as fp:
            # print('Converting STEP file %s to OBJ file %s'%(filename, fp.name))
            retcode = subprocess.call(
                [
                    "freecad.cmd",
                    os.path.join(scriptdir, "stp2obj.py"),  # FIXME:generate at runtime?
                    filename,
                    fp.name,
                ],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
            )
            if retcode != 0:
                raise RuntimeError("Unable to convert STEP file %s to obj" % (filename))
            mesh = load_obj_mesh_verts(fp.name)
    elif filename.endswith(".wrl") or filename.endswith(".vrml"):
        with tempfile.NamedTemporaryFile(suffix=".obj", dir=temp_dir) as fp:
            # print('Converting mesh file %s to OBJ file %s'%(filename, fp.name))
            ms = pymeshlab.MeshSet()
            ms.load_new_mesh(filename)
            ms.save_current_mesh(fp.name)
            mesh = load_obj_mesh_verts(
                fp.name, scale=2.54
            )  # VRML files are in 1/2.54 mm units
    else:
        raise RuntimeError("No converter to load %s" % (filename))

    mesh_cache[filename] = (mesh, os.path.getmtime(filename), file_hash)
    return copy.copy(mesh_cache[filename])
