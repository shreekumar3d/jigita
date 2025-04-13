import tomllib
import sys
import json
from copy import deepcopy
from pprint import pprint
import string
import appdirs
import platform

from pathlib import Path

valid_shell_types = ["wiggle", "wiggle_minus", "fitting", "fitting_flower", "tight", "courtyard"]
valid_shell_styles = ["socket", "support"]
valid_jig_types = ["TH_soldering", "component_fitting"]
valid_base_types = ["x_lines", "y_lines", "griddish", "mesh", "minmesh", "solid", "solid_fill"]
valid_insertions = ["top", "bottom"]
keys_TH_builtin = None
TH_component_shell_value_keys = [
    "shell_thickness",
    "shell_gap",
    "shell_wrapper_thickness",
    "shell_wrapper_height",
    "shell_clearance_from_pcb",
    "corner_cut_width",
    "min_petal_length",
    "petal_support_length",
    "corner_cut_depth",
]
SMD_default_value_keys = ["clearance_from_shells", "gap_from_shells"]

TH_ref_params = [
    "kicad_footprint",
    "force_smd",
    "force_mount",
    "flip_side",
    "shell_type",
    "shell_style",
    "shell_wrapper_thickness",
    "shell_wrapper_height",
    "insertion_direction",
    "corner_cut_width",
    "min_petal_length",
    "petal_support_length",
    "corner_cut_depth",
    "shell_gap",
    "shell_thickness",
    "shell_clearance_from_pcb",
]

SMD_ref_params = [
    "kicad_footprint",
    "shell_type",
    "shell_wrapper_thickness",
    "shell_wrapper_height",
    "insertion_direction",
    "corner_cut_width",
    "min_petal_length",
    "petal_support_length",
    "corner_cut_depth",
    "shell_gap",
    "shell_thickness",
    "shell_clearance_from_pcb",
]

_user_cfg = None


def transfer_default_values(default_cfg, cfg, keylist=None, overwrite=False):
    """transfer default values from default_cfg to cfg"""
    if keylist is None:
        keylist = default_cfg.keys()

    for key in keylist:
        try:
            value = default_cfg[key]
        except KeyError:
            continue
        if type(value) is not dict:
            if overwrite:
                cfg[key] = deepcopy(value)
            elif key not in cfg:
                cfg[key] = deepcopy(value)
        else:
            if overwrite:
                cfg[key] = deepcopy(value)
            elif key not in cfg:
                cfg[key] = deepcopy(value)
            else:
                # recurse
                transfer_default_values(default_cfg[key], cfg[key])


inheritable_footprint_keys_smd = [
    "shell_type",
    "shell_style",
    "shell_gap",
    "shell_thickness",
    "shell_wrapper_thickness",
    "shell_wrapper_height",
    "insertion_direction",
    "shell_clearance_from_pcb",
    "corner_cut_width",
    "min_petal_length",
    "petal_support_length",
    "corner_cut_depth",
]

inheritable_footprint_keys_th = inheritable_footprint_keys_smd + ["force_smd", "force_mount", "flip_side"]

valid_footprint_keys_th = [
    "kicad_footprint",
    "display_name",
] + inheritable_footprint_keys_th

_alias_idx = 1


def generate_alias(footprint, avoid_list):
    global _alias_idx
    # For now we generate a short unique name
    # This is used in OpenSCAD variable name
    # FIXME document this as avoid use of FP<N>, but seriously
    # this should be minor
    while True:
        alias = f"FP{_alias_idx}"
        _alias_idx += 1
        if alias not in avoid_list:
            break
    return alias


def expand_refs(name_list, ref_map, fp_map):
    full = []
    for name in name_list:
        if name in ref_map:
            full.append(name)
        elif name in fp_map.keys():
            full += fp_map[name]["refs"]
        else:
            raise ValueError(f"{name} is not a valid ref/footprint name")

    # return uniques
    return list(set(full))

def load_config(configFile):
    """load configuration file"""

    default_config_text = get_default()
    default_cfg = tomllib.loads(default_config_text)
    keys_TH_builtin = default_cfg["TH"].keys()
    if configFile:
        config_text = open(configFile, "r").read()
        cfg = tomllib.load(open(configFile, "rb"))
        # print(json.dumps(cfg, indent=2))
    else:
        config_text = default_config_text
        cfg = None

    user_cfg = get_user_config()
    if user_cfg:
        transfer_default_values(
            user_cfg,
            default_cfg,
            keylist=["openscad", "kicad", "3dprinter", "environment"],
            overwrite=True,
        )

    if not cfg:
        cfg = deepcopy(default_cfg)
    else:
        # merge with user specified config file, and anything in the config file
        # takes precendence over everything else
        transfer_default_values(default_cfg, cfg)

    return cfg, config_text, default_cfg

def update(cfg, default_cfg, ref_map, fp_map, mh_map):
    """validate and update config, based on info maps about the board"""

    # Do some basic validation
    base_type = cfg["holder"]["base"]["type"]
    if base_type not in valid_base_types:
        raise ValueError(
            f"Bad value holder.base.type={base_type}. Recognized values are:{valid_base_types}"
        )

    jig_type = cfg["jig"]["type"]
    if jig_type not in valid_jig_types:
        raise ValueError(
            f"Bad value jig.type={jig_type}. Recognized values are:{valid_jig_types}"
        )

    shell_type = cfg["TH"]["component_shell"]["shell_type"]
    if shell_type not in valid_shell_types:
        raise ValueError(
            f"Bad value TH.component_shell.shell_type={shell_type}. Recognized values are:{valid_shell_types}"
        )

    shell_style = cfg["TH"]["component_shell"]["shell_style"]
    if shell_style not in valid_shell_styles:
        raise ValueError(
            f"Bad value TH.component_shell.shell_style={shell_style}. Recognized values are:{valid_shell_styles}"
        )

    insertion = cfg["TH"]["component_shell"]["insertion_direction"]
    if insertion not in valid_insertions:
        raise ValueError(
            f"Bad value TH.component_shell.insertion_direction={insertion}. Recognized values are:{valid_insertions}"
        )

    for key in cfg["TH"]["component_shell"]:
        if key in default_cfg["TH"]["component_shell"].keys():
            continue
        raise ValueError(
            f"Can't use TH.component_shell.{key}. Unsupported key."
        )

    # Check that the user doesn't have invalid values in the footprint tree
    for alias in cfg["footprint"]:
        this_fp = cfg["footprint"][alias]
        if "kicad_footprint" not in this_fp:
            raise ValueError(f"footprint.{alias} needs a kicad_footprint")
        kfp = this_fp["kicad_footprint"]
        if kfp not in fp_map.keys():
            raise ValueError(
                f"Invalid value footprint.{alias}.kicad_footprint={kfp} . No such footprint on the board."
            )
        if fp_map[kfp]["alias"] is not None:
            raise ValueError(
                f"More than one aliases specified for kicad footprint {kfp}. Please check"
            )
        if "display_name" in this_fp:
            fp_map[kfp]["display_name"] = this_fp["display_name"]
        else:
            fp_map[kfp]["display_name"] = kfp
            this_fp["display_name"] = kfp # defaults to kicad footprint if not provided
        fp_map[kfp]["alias"] = alias

        if "force_smd" in this_fp:
            if not fp_map[kfp]["is_th"]:
                if this_fp["force_smd"]:
                    raise ValueError(
                        f"footprint.{alias}.force_smd is not supported for SMD component"
                    )
            else:
                fp_map[kfp]["force_smd"] = this_fp["force_smd"]

        for key in this_fp:
            if key not in valid_footprint_keys_th:
                raise ValueError(
                    f"footprint.{alias}.{key} is not a recognized setting."
                )

    # classify into TH/SMD, accounting for force_smd
    th_fp_list = []
    smd_fp_list = []
    smd_ref_list = []
    for kfp in fp_map.keys():
        if not fp_map[kfp]["is_th"]:
            smd_fp_list.append(kfp)
            smd_ref_list += fp_map[kfp]["refs"]
            continue
        if fp_map[kfp]["force_smd"]:
            smd_fp_list.append(kfp)
            smd_ref_list += fp_map[kfp]["refs"]
            continue
        th_fp_list.append(kfp)

    # Propagate default values to all TH footprints
    for kfp in th_fp_list:
        # we may not have the alias structure set due to footprint mode
        if fp_map[kfp]["alias"] and (fp_map[kfp]["alias"] in cfg["footprint"]):
            alias = fp_map[kfp]["alias"]
            this_fp = cfg["footprint"][alias]
        else:
            alias = generate_alias(kfp, cfg["footprint"].keys())
            fp_map[kfp]["alias"] = alias
            this_fp = {
                "kicad_footprint": kfp,
                "display_name": kfp,
            }
            cfg["footprint"][alias] = this_fp
        for ivkey in inheritable_footprint_keys_th:
            if ivkey not in this_fp:
                this_fp[ivkey] = cfg["TH"]["component_shell"][ivkey]

    for kfp in smd_fp_list:
        # we may not have the alias structure set due to footprint mode
        if fp_map[kfp]["alias"] and (fp_map[kfp]["alias"] in cfg["footprint"]):
            alias = fp_map[kfp]["alias"]
            this_fp = cfg["footprint"][alias]
        else:
            alias = generate_alias(kfp, cfg["footprint"].keys())
            fp_map[kfp]["alias"] = alias
            this_fp = {
                "kicad_footprint": kfp,
                "display_name": kfp,
            }
        cfg["footprint"][alias] = this_fp
        for ivkey in inheritable_footprint_keys_smd:
            if ivkey not in this_fp:
                this_fp[ivkey] = cfg["SMD"]["component_shell"][ivkey]

    # pprint(fp_map)
    # print('th_fp=',th_fp_list)
    # Process TH components
    # Propagate values from TH footprints to the actual components
    th_ref_list = []
    smd_ref_list = []
    for ref in ref_map:
        ref_dict = ref_map[ref]
        footprint = ref_dict["footprint"]
        if footprint in th_fp_list:
            ref_type = "TH"
            th_ref_list.append(ref)
        elif footprint in smd_fp_list:
            ref_type = "SMD"
            smd_ref_list.append(ref)
        else:
            print("Ignoring footprint ", footprint)
            continue
        footprint_alias = fp_map[footprint]["alias"]

        if ref in cfg[ref_type]:
            ref_cfg = cfg[ref_type][ref]
            if "kicad_footprint" in cfg[ref_type][ref]:
                cfg_ref_footprint = cfg[ref_type][ref]["kicad_footprint"]
                if cfg_ref_footprint != footprint:
                    raise ValueError(
                        f"{ref_type}.{ref}.kicad_footprint={cfg_ref_footprint} cannot deviate from {footprint} specified in board file!"
                    )
        else:
            ref_cfg = {}
            cfg[ref_type][ref] = ref_cfg
        if "display_name" not in cfg[ref_type][ref]:
            cfg[ref_type][ref]["display_name"] = ref
        if ref_type == "TH":
            for param in TH_ref_params:
                if param not in cfg[ref_type][ref]:
                    cfg[ref_type][ref][param] = cfg["footprint"][footprint_alias][param]
        else:  # SMD
            # FIXME : possibility of merging code with above block
            for param in SMD_ref_params:
                if param not in cfg[ref_type][ref]:
                    cfg[ref_type][ref][param] = cfg["footprint"][footprint_alias][param]

    if len(cfg["TH"]["refs_process_only_these"]) > 0:
        rtp_list = expand_refs(
            cfg["TH"]["refs_process_only_these"], ref_map.keys(), fp_map
        )
        for rtp in rtp_list:
            if rtp not in th_ref_list:
                raise ValueError(
                    f"{rtp} is not a though hole footprint, and cannot be processed (reason: included in refs_process_only_these)"
                )
        th_ref_list = rtp_list
    elif len(cfg["TH"]["refs_do_not_process"]) > 0:
        rtp_x_list = expand_refs(
            cfg["TH"]["refs_do_not_process"],
            list(ref_map.keys()) + list(mh_map.keys()),
            fp_map,
        )
        for rtp in rtp_x_list:
            if rtp in th_ref_list:
                th_ref_list.remove(rtp)
                ref_map.pop(rtp)
            elif rtp in mh_map:
                mh_map.pop(rtp)

    if len(cfg["SMD"]["refs_do_not_process"]) > 0:
        rtp_x_list = expand_refs(
            cfg["SMD"]["refs_do_not_process"],
            list(ref_map.keys()) + list(mh_map.keys()),
            fp_map,
        )
        for rtp in rtp_x_list:
            if rtp in smd_ref_list:
                smd_ref_list.remove(rtp)
            elif rtp in mh_map:
                mh_map.pop(rtp)

    # trim TH refs from the config tree that are not in list that will be processed
    for ref in ref_map:
        if ref not in th_ref_list:
            if ref in cfg["TH"]:
                cfg["TH"].pop(ref)
    # trim SMD refs from the config tree that are not in the list that will be processed
    for ref in ref_map:
        if ref not in smd_ref_list:
            if ref in cfg["SMD"]:
                cfg["SMD"].pop(ref)
    # as a result of this trimming, some footprints may not be used at all now.
    # find 'em
    proc_th_footprints = []
    for ref in th_ref_list:
        proc_th_footprints.append(cfg["TH"][ref]["kicad_footprint"])
    proc_th_footprints = list(set(proc_th_footprints))
    proc_smd_footprints = []
    for ref in smd_ref_list:
        proc_smd_footprints.append(cfg["SMD"][ref]["kicad_footprint"])
    proc_smd_footprints = list(set(proc_smd_footprints))
    valid_footprints = proc_th_footprints + proc_smd_footprints
    # and remove 'em
    for alias in list(cfg["footprint"].keys()):
        fp_name = cfg["footprint"][alias]["kicad_footprint"]
        if fp_name not in valid_footprints:
            cfg["footprint"].pop(alias)

    # ensure display names are propagated back to fp_map
    for alias in list(cfg["footprint"].keys()):
        kcfp = cfg["footprint"][alias]["kicad_footprint"]
        dname = cfg["footprint"][alias]["display_name"]
        fp_map[kcfp]["display_name"] = dname

    # expand SMD tree with refs
    for ref in smd_ref_list:
        if ref in cfg["SMD"]:
            for key, value in default_cfg["SMD"]["component_shell"].items():
                if key not in cfg["SMD"][ref]:
                    cfg["SMD"][ref][key] = value
        else:
            cfg["SMD"][ref] = deepcopy(default_cfg["SMD"])

    # Add extra mounting holes
    for idx, hole_info in enumerate(cfg["TH"]["extra_mounting_holes"]):
        hx = hole_info[0]
        hy = hole_info[1]
        hr = hole_info[2] / 2
        mh_name = "EMH%s" % (idx + 1)  # they hates it - zero indexed numbers :D
        mh_map[mh_name] = {
            "x": hx,
            "y": -hy,  # KiCAD coordinate system
            "mounting_hole_radius": hr,
        }
    return cfg, proc_th_footprints, th_ref_list, smd_ref_list


def generate_config(configFile, ref_map, fp_map):
    cfg, config_text, default_cfg = load_config(None)
    cfg, used_th_fp, th_ref_list, smd_ref_list = update(
        cfg, default_cfg, ref_map, fp_map, {}
    )

    fp_cfg = open(configFile, "w")
    fp_cfg.write(config_text)
    fp_cfg.write(
        """
# ------ You can override above values from here ------
#
# You can setup values on a per-footprint, and even per-component basis.
# All components that use a particular footprint will inherit values from it.
#
# Each footprint has to setup at-least one value 'kicad_footprint'
# It's highly recommended to also assign a user friendly name to
# 'display_name'
#
# The following properties may also be setup
#
#   insertion_direction
#   shell_type
#   shell_thickness
#   shell_gap
#   shell_clearance_from_pcb
#   force_smd
#
# Each component inherits values from the footprint it uses.
# The inherited value may be changed to tweak values for each
# component
#
# It is recommended that you specify a user friendly 'display_name',
# if possible. The kicad reference designator is the default.
# 'kicad_footprint' is a possible value, but if specified, this has
# to match the kicad footprint reference exactly. Any other value is
# treated as an error
#
# The following values can be specified per component
#
#   insertion_direction
#   shell_type
#   shell_thickness
#   shell_gap
#   shell_clearance_from_pcb
#   force_smd
#   flip_side
#
# Below, bare-bones configuration for footprints and components
# are provided.  All components that use a footprint are
# listed right below the footprint for ease of customization.
#
"""
    )
    for footprint in used_th_fp:
        fp_cfg.write("#-----------------------------------------------------\n")
        alias = fp_map[footprint]["alias"]
        fp_cfg.write(f"[footprint.{alias}]\n")
        fp_cfg.write("kicad_footprint='%s'\n" % (footprint))
        fp_cfg.write("display_name='%s'\n" % (footprint))

        fp_cfg.write("# components %s\n" % (fp_map[footprint]["refs"]))
        fp_cfg.write("# use footprint %s\n" % (footprint))
        fp_cfg.write("\n")

        for ref in fp_map[footprint]["refs"]:
            fp_cfg.write(f"[TH.{ref}]\n")
            fp_cfg.write(f"display_name='%s'\n" % (cfg["TH"][ref]["display_name"]))
            fp_cfg.write(
                f"#kicad_footprint='%s'\n" % (cfg["TH"][ref]["kicad_footprint"])
            )
            fp_cfg.write("\n")
    fp_cfg.close()
    return

if platform.system()=='Linux':
    # Typically linux has tools on PATH
    oscad_bin = 'openscad'
    kicad_share = '/usr/share/kicad'
else:
    # FIXME: no Mac paths yet
    oscad_bin = 'c:\\Program Files\\OpenSCAD\\openscad.exe'
    kicad_share = 'C:\\Program Files\\KiCad\\8.0\\share\\kicad'

_inbuilt_user_config = """
[environment]

[cache]
enabled = true
# hash or timestamp
method = 'timestamp'

[openscad]
binary = '%s'
use_manifold = false

[kicad]
# kicad keeps 3d models, footprints in a "share" directory this is inside under
# the install directory on Windows, and typically /usr/share/kicad/ on Linux.
# The default here is for Linux. If this is seen on windows, we can ask users to
# fix easily. The entire path upto "kicad" is required
share = '%s'

[3dprinter]
# This is the smallest area your 3d printer
# can reliably print in square mm
min_printable_hole_area = 1.5

# Typical layer height of the printer
layer_height = 0.2

# First layer height is generally different
# (more than others and typically 0.2)
first_layer_height = 0.2

# x dim and y dim are in centimeters (not mm)
bed_x_dim = 25
bed_y_dim = 20
"""%(
   oscad_bin,
   kicad_share,
)

_inbuilt_config = """
# All dimensions are specified in millimeters
#
# Please see documentation for meaning of "gap", "overlap", and "perimeter"
#
[pcb]
thickness = 1.6
tesellate_edge_cuts_curve = 0.1

[holder]
# PCB holder holds both the PCB and components in place, in proper alignment
# This allows the user to use both hands while soldering, achieving the
# highest quality results.

# PCB rests at the top of the PCB holder. "pcb_overlap" decides how much
# plastic will be under the PCB on its edges, supporting it on the holder.
# A small overlap is enough to ensure that the PCB won't fall into the jig.
pcb_overlap = 0.3

# PCBs have an xy dimension accuracy of manufacturing, which shall be
# specified by the manufacturer. Beyond that, you also need to consider the
# printing accuracy of the 3D printer. "pcb_gap" ensures the PCB can be
# placed in the jig comfortably, without flexing the jig in any dimension.
pcb_gap = 0.3

# Drawings on the EdgeCuts layer provide the PCB outline. At every vertex
# on the PCB outline, a "groove" is created, to hold the PCB. Lips are created
# at these points:
#  - start end points of lines
#  - corners of rectangles
#  - start, mid and end points of arcs
#  - north, east, west, south points on circles
#  - each vertex on a polygon
#
# grooves are generated only on the external edge of the PCB, i.e. they are not
# generated on interior drawings such as holes.
#
# Use 0 to enforce a groove along the entire PCB edge
#
groove_size = 15

# In some cases, you may want to force addition of grooves at specific points.
#Use this. Note groove will be centerd on this point.
forced_grooves = [
  #  [ X, Y ] coordinates from KiCAD PCB
]

# Holder will have a solid border around the edge points of the PCB. This
# provides rigidity to the jig structure.
perimeter = 1.6

[holder.base]
# Holder has a base. The base provides structural rigidity, and can be
# used for purposes such as annotation.

# Type of the base can be
# - "mesh". This is a sparse structure built of thick lines. This helps
#   reduce plastic usage, and can reduce print time. This also improves
#   visibility of components when they are placed in the jig.
# - "minmesh". A minimal mesh just about holding everything together.
#   This should be sufficient if your components are on the edges. This
#   draws a single path between all the component centers and mounting
#   holes, and connects that line to the external outline.
# - "griddish". A sparse grid like structure made of thick lines. This
#   gives good support to base of shells, and provides visibility from
#   bottom of the jig. Probably takes slightly more material than mesh,
#   but may creates a regular, somewhat 3D printer friendly pattern.
#   griddish is a combination of "x_lines" and "y_lines". Each of those
#   is sparser
# - "x_lines". lines along the X axis, connecting each shell to the
#   frame
# - "y_lines". lines along the Y axis, connecting each shell to the
#   frame
# - "solid". A flat plate. More space for annotation.
# - "solid_fill". Solid stretching almost all the way till PCB (stops
#    at a small distance from it equal to SMD shell clearance)
type = "griddish"

# Thickness of the base. Higher value will improve rigidity in the
# xy dimension (apart from the grooves)
thickness = 0.4

# A "perimeter" can be added on top of the base. This also improves the
# rigidity of the structure.
#
# Note that this dimension is additional to the base thickness.
perimeter_height = 2

# Lines of the mesh are generated with this width. Best to use at-least 4
# times your nozzle thickness, if 3D printing. Thicker lines will use
# more material and increase printing time.
line_width = 2.0

# Height of the lines. If the base is solid, and height > thickness of the
# base, then they will protrude above the base.  In many cases, you can
# consider a thin base with lines providing extra structural strength
line_height = 1.0

# sometimes you need to add lines that the algo doesn't come up with
# add them here.
extra_lines = [
# [[start_x,start_y],[end_x,end_y]], # absolute coordinates from KiCAD
# ['R1','C1'], # refs, may be used for start, or end or both
]

[holder.base.minmesh]
connect_components_to_frame = true

[TH]
# Parameters for Through Hole processing

refs_do_not_process = [
  # list of refs that we should not include in the output
  # scad output can have refs that may be optionally toggled
  # and included/excluded in the STL, we support this via checkboxes
  # in customizer
]

refs_process_only_these = [
  # list of refs to include in the output
  # this takes precedence over "do_not_process"
  # this is exclusive with do_not_process
]

# Mounting hole shells have a thickness and a gap
# Circles typically print smaller, so mind the gap. In general,
# mounting holes are made slightly larger than the bolt. E.g. It
# is common to have a 3.2 mm hole for an M3 screw/bolt. This
# configurable value is provided so that you can smoothly slide
# it in. You could consider increasing it if you want to have
# more lateral movement.
mounting_hole_shell_thickness = 1.2
mounting_hole_shell_gap = 0.1
mounting_hole_shell_clearance_from_pcb = 0.0

extra_mounting_holes = [
    # List of extra mounting holes
    # [ x, y, diameter ]
]
[TH.component_shell]
# Around each through hole component (ref), the jig generator creates a "shell"
# that serves as a component holder at its exact location on the board.

# shell can have one of a few types
# - wiggle         => A shape that gives a bit of wiggle room for the component,
#                     when inserted into the shell. Depending on the exact shape of
#                     the component, it may be possible to rock/shake the component
#                     around.
# - fitting        => multiple outlines, like a "step well". Each level helps hold
#                     the component in place, thus reducing wiggle room
# - fitting_flower => Same as fitting, except each level creates a vertical
#                     shell
# - tight          => step-wells closely following 3d shape. Provides the closest fit,
#                     but also requires the most accuracy in dimensions and printing
# - wiggle_minus   => Tighter than wiggle. Reduces wiggle room using the single topmost
#                     tight shell
# - courtyard      => the "courtyard" of the component is used as the shape of the
#                     shell. In almost all cases, this will allow the component
#                     to move around freely in the shell. This is potentially
#                     useful in two cases:
#                       - components that you mount on the PCB directly, rather
#                         than in the shell
#                       - With insertion_direction="bottom" (see below), this
#                         gives ample room to push in the component
#
shell_type = "fitting"

#
# shells can be of one of two styles
#
# - socket  - holds components inside a cavity
# - support - supports components from the bottom
#
shell_style = "socket"

# component will typically be inserted from the top side (w.r.t # the PCB, and
# the jig). However, they can also be inserted from the bottom of the jig.
# bottom insertion means that base will have a hole to allow the component to
# be inserted. The shell type is forced to "outline" in this case.
# valid values : "top" or "bottom"
insertion_direction = "top"

# Shells are basically a skin of plastic around the component, of this
# minimum thickness along the Z axis.
shell_thickness = 1.2

# You a small xy gap for each component to slide into the shell, and it must
# ideally sit snug without moving. Component sizes have tolerance. So does
# you 3D. Consider both to set this up.
shell_gap = 0.1

# shell_clearance_from_pcb is as a vertical "keep-out" distance between the PCB and the
# shells. Shells start this distance below PCB. This gap may be used to visually
# verify the component fitment.
#
# If the component doesn't touch the PCB (min_z>0, due to force_mount) then this is
# taken as the extra distance to trim from the top
#
# If this is negative, then it is considered from the bottom of the component
# (i.e. local max z). Useful to have just a bit of a "cap"
shell_clearance_from_pcb = 1

# For dimensional accuracy, inner corners in the 3d model can be
# notched or cut out entirely.
#
# corner_cut_width is the width of the cut line. For an FDM printer, this
# should be at-least half the nozzle width, but as much as one nozzle is
# good too.
corner_cut_width = 0.4

# the length along consecutive corners is called a "petal". Very small
# petals add no effective support, and can be trimmed. (e.g. edges of a
# berg stick shroud). Petal of this size and lower are entirely treated
# as corners.
min_petal_length = 0.4

# We don't need very long supports. Longer than this on an edge
# wil be open for cuts!
petal_support_length = 3.0

# Each shell can have a "wrapper"
# basically - a surrounding shell beyond the external perimeter
# of a certain thickness and height
# The height includes the thickness of the base. This can be used to create
# self supporting shells with a wide base.
shell_wrapper_thickness = 0.0
shell_wrapper_height = 0.0

# corners can be "notched" a specific distance or cut right through
#
# allowed values are
# - any positive decimal value will cut in by that amount
# - 0 will cut all the way till the end of the shell
#
# At-least half the nozzle size may be required. I didn't see a useful
# impact with a value lower than this. Maybe a slicer dependency ?
corner_cut_depth = 0.2

# Force footprints to SMD
force_smd = false

# Force mount component even if the 3d shape doesn't intersect PCB
force_mount = false

# Set flip_side to true if 3D model is flipped in the footprint - e.g.
# top mounted component is actually bottom mount.
# (This is the reverse of KiCAD convention for TH components.)
flip_side = false

[SMD]
# Parameters for SMD components

refs_do_not_process = [
  # list of refs that we should not include in the output
]

# Shells must not touch SMD components. It is better to have a small clearance
# SMD keepout volume is it's courtyard extended along the height of the
# component, extended by "clearance_from_shells"
clearance_from_shells = 0.5

# "gap" is similar to clearance but in XY direction
# Courtyard is typically well outside the pads, so 0.5 mm is a good enough
# default. Soldered components will stay well within this.
gap_from_shells = 0.5

[SMD.component_shell]
shell_type = "fitting"
shell_style = "socket"
insertion_direction = "top"
shell_thickness = 1.2
shell_gap = 0.1
shell_clearance_from_pcb = 1
corner_cut_width = 0.4
min_petal_length = 0.4
petal_support_length = 3.0
shell_wrapper_thickness = 0.0
shell_wrapper_height = 0.0
corner_cut_depth = 0.2

[footprint]
# Every component on the board has a footprint, which in turn is associated
# with 3D models, pads, courtyard, etc
#
# Shells for each TH component are generated from the footprint. Shell
# parameters are inherited from TH.component_shell to each footprint type.
# Kicad footprints have long names, including the library, e.g
# 'TestPoint:TestPoint_Pad_1.0x1.0mm'. These aren't valid 'identifiers',
# and the '.' can be troublesome in toml.  In an automatic method, these
# will need to be transformed to be valid. This will also make them a bit
# harder to read. E.g. TestPoint__TestPoint_Pad_1p0x1p0mm'
# Here, we allow aliases to make it easier.  If "pretty names" are given, they
# will be used. If not, alias will be used. If that too isn't available,
# then automatically generated names will be used.
# e.g.
#
# [footprint.SinglePinBergHeader] # SinglePinBergHeader is the 'alias'
#
# kicad_footprint = 'TestPoint:TestPoint_Pad_1.0x1.0mm'
# display_name = 'Single Pin Berg Header'
# shell_type = "fitting"
# shell_gap = 0.1
# shell_thickness = 0.1
# insertion_direction = "top"
# shell_clearance_from_pcb = 1
# force_smd = true # some components (typically modules) like Pico are TH by default

# Any values that left unspecified here will derive from TH.component_shell
# Thus the final value can be different between components that
# have the same footprint
#
# This scheme is easy to understand, apply overrides, and helps keep a level
# of consistency across tools (e.g. from the jig generator # to openscad)

[jig]
#
# Jigs of various types can be generated:
#
# - "TH_soldering" creates a jig to help solder
#   through hole (TH) components. This creates
#   the PCB holder, the base, and the shells
#   for all components.
#
# - "component_fitting" creates only shells,
#   and the base, without creating the holder.
#
type = "TH_soldering"

# A mounting hole jig can cut the total amount of material
# required by a significant amount (30-50%). Also, it significant saves
# on space required to store/ship the jig.
#
# This produces a two part jig with spacers. You put the two parts together
# with the spacers and bolts (e.g.) that go through the mounting holes of your
# PCB.
mounting_hole_jig = false

# Spacers start and end at specific Z heights. Whatever you leave
# zero shall be automatically computed by the tool.
# Z heights are measured from board top.
mounting_hole_spacer_end = 0.0
mounting_hole_spacer_start = 0.0

# An 'external' bolt is a normal metal bolt/screw that passes
# of a size appropriate to the mounting hole.  If 'external' bolt
# is not available, it can be baked into the design
mounting_hole_bolt_is_external = true

# Spacers can be fused into the design/or remain discrete
# discrete spacers can be reused/repurposed later. Potentially, they
# also take up less storage/shipping space, and lesser chances of
# breakage in storage/shipping
mounting_hole_spacer_is_fused = true

# Trim volumes allow extraction of a range bound volume of the jig
#
# Trims all Zs below this (z > trim_below_z)
trim_below_z = 0.0 # 0 disables this

# Trims all Zs above this (z < trim_above_z)
trim_above_z = -1.0 # negative value disables

# NOTE:
#
# Many of the parameters here map to OpenSCAD, and can be tuned there.
# E.g., parameters that are related to printing/manufacturing tolerances can be
# tuned in OpenSCAD, without access to the original PCB file.
#
# Parameters that result in geometry generation in the tool (e.g. grooves)
# aren't tunable from OpenSCAD. Also, the shapes of the shells aren't
# tunable from OpenSCAD as parameters, but thickness and height can be
# easily changed. Please tune parameters carefully, and always 
# cross check generated models before printing/manufacturing.
#
"""


def get_default_user_config():
    return _inbuilt_user_config


def get_default():
    return _inbuilt_user_config + _inbuilt_config


def set_user_config(cfg):
    global _user_cfg
    _user_cfg = cfg


def get_user_config():
    global _user_cfg
    return _user_cfg


def load_user_config(name):
    cfg_loc = Path(appdirs.user_config_dir(appname=name)) / "config.toml"
    if not cfg_loc.exists():
        # generate a default configuration
        cfg_loc.parent.mkdir(parents=True, exist_ok=True)
        with open(cfg_loc, "w") as cfg_fp:
            cfg_fp.write(get_default_user_config())

    user_config_text = open(cfg_loc, "r").read()
    user_config = tomllib.load(open(cfg_loc, "rb"))
    set_user_config(user_config)
