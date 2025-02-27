import numpy as np
import tempfile
import subprocess
import os
import os.path
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


def load_mesh(cfg, filename, scriptdir, temp_dir=None):
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
            # On windows, the temporary file can't be written out of process...
            # delete it so that save_current_mesh won't fail
            os.unlink(fp.name)
            # print('Converting STEP file %s to OBJ file %s'%(filename, fp.name))
            cp = subprocess.run(
                [
                    cfg["freecad"]["cmd"],
                    os.path.join(scriptdir, "stp2obj.py"),  # FIXME:generate at runtime?
                    filename,
                    fp.name,
                ],
                shell=True
            )
            if cp.returncode != 0:
                raise RuntimeError("Unable to convert STEP file %s to obj" % (filename))
            mesh = load_obj_mesh_verts(fp.name)
    elif filename.endswith(".wrl") or filename.endswith(".vrml"):
        with tempfile.NamedTemporaryFile(suffix=".obj", dir=temp_dir) as fp:
            # print('Converting mesh file %s to OBJ file %s'%(filename, fp.name))
            ms = pymeshlab.MeshSet()
            ms.load_new_mesh(filename)
            os.unlink(fp.name)
            ms.save_current_mesh(fp.name)
            mesh = load_obj_mesh_verts(
                fp.name, scale=2.54
            )  # VRML files are in 1/2.54 mm units
    else:
        raise RuntimeError("No converter to load %s" % (filename))

    mesh_cache[filename] = (mesh, os.path.getmtime(filename), file_hash)
    return copy.copy(mesh_cache[filename])
