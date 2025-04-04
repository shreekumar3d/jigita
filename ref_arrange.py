import rectpack
import numpy as np
import math
from itertools import cycle


def _arrange_x_or_y(arrange_dir, all_shells):
    x_span_sum = 0
    y_span_sum = 0
    this_ref_gap = 0

    for subshells in all_shells:
        x_span_sum += subshells["x_span"]
        y_span_sum += subshells["y_span"]
        this_ref_gap_x = subshells["pos_gap_x"]
        this_ref_gap_y = subshells["pos_gap_y"]
        x_span_sum += this_ref_gap_x
        y_span_sum += this_ref_gap_y
    num_steps = len(all_shells) - 1

    # remove the last one for proper centering
    x_span_sum -= this_ref_gap_x
    y_span_sum -= this_ref_gap_y

    if num_steps == 0:
        cur_x = cur_y = 0
    else:
        if arrange_dir == "x":
            cur_x = -x_span_sum / 2
            cur_y = 0
        else:
            cur_x = 0
            cur_y = -y_span_sum / 2

    for subshells in all_shells:
        this_ref = subshells["ref"]
        # Note: x_min and y_min are likely to be negative
        if arrange_dir == "x":
            subshells["shell_pos_x"] = cur_x + subshells["x_span"] + subshells["x_min"]
            subshells["shell_pos_y"] = subshells["y_span"] * 0.5 - subshells["y_max"]
        elif arrange_dir == "y":
            subshells["shell_pos_x"] = subshells["x_span"] * 0.5 + subshells["x_min"]
            subshells["shell_pos_y"] = cur_y + subshells["y_span"] - subshells["y_max"]
        if arrange_dir == "x":
            cur_x += subshells["x_span"] + subshells["pos_gap_x"]
        elif arrange_dir == "y":
            cur_y += subshells["y_span"] + subshells["pos_gap_y"]
        # no rotation
        subshells["orientation"] = 0


def _arrange_pack(cfg, all_shells):
    # rectpack does not use floating point values. We ignore anything
    # smaller than 0.01 mm
    resolv_factor = 100

    def resolve_to_int(x):
        return math.ceil(x * resolv_factor)

    def resolve_from_int(x):
        return x / resolv_factor

    # FIXME:  we do support rotation=True by default now. But this
    # fails in some cases, and rotation=False passes
    # e.g. --footprint Connector_PinHeader_2.54mm:PinHeader_1x0*_P2.54mm_Vertical{13} -o blah.scad --gap 5 --arrange xy
    # fails with rotation=True, but works with rotation=False!
    # we disallow rotated solutions in output
    # FIXME: all the component placement logic here has to move out
    # of this file
    packer = rectpack.newPacker()  # rotation=False)
    for subshells in all_shells:
        s_length = subshells["x_span"] + subshells["pos_gap_x"]
        s_width = subshells["y_span"] + subshells["pos_gap_y"]
        s_length = resolve_to_int(s_length)
        s_width = resolve_to_int(s_width)
        packer.add_rect(s_length, s_width, rid=subshells)

    # Pack all of em in the bed! (or any size you pass in)
    cm2mm = 10
    x_dim = resolve_to_int(cfg["3dprinter"]["bed_x_dim"] * cm2mm)
    y_dim = resolve_to_int(cfg["3dprinter"]["bed_y_dim"] * cm2mm)
    packer.add_bin(x_dim, y_dim)

    # Solve for it
    packer.pack()

    cycol = cycle(["red", "green", "blue", "orange"])
    all_rects = packer.rect_list()
    if len(all_rects) != len(all_shells):
        raise ValueError(
            "Could only pack %d components in the given area, out of %d. Increase print bed area, reduce --gap or number of the components/footprints"
            % (len(all_rects), len(all_shells))
        )

    for rect in all_rects:
        b, x, y, w, h, rid = rect
        x = resolve_from_int(x)
        y = resolve_from_int(y)
        w = resolve_from_int(w)
        h = resolve_from_int(h)
        subshells = rid
        if w != subshells["x_span"] + subshells["pos_gap_x"]:
            subshells["orientation"] = -90
            subshells["shell_pos_x"] = (
                x
                + subshells["y_span"]
                - subshells["y_max"]
                + subshells["pos_gap_y"] * 0.5
            )
            subshells["shell_pos_y"] = (
                y
                + subshells["x_span"]
                + subshells["x_min"]
                + subshells["pos_gap_x"] * 0.5
            )
        else:
            subshells["orientation"] = 0
            subshells["shell_pos_x"] = (
                x
                + subshells["x_span"]
                + subshells["x_min"]
                + subshells["pos_gap_x"] * 0.5
            )
            subshells["shell_pos_y"] = (
                y
                + subshells["y_span"]
                - subshells["y_max"]
                + subshells["pos_gap_y"] * 0.5
            )
        # fp_scad.write('color("%s") translate([%s,%s,-5])\n')
        # fp_scad.write('  square(size=[%s,%s],center=false);\n'%(
        #              next(cycol), x, y, w, h))
        # print('origin=%3.2f %3.2f w=%3.2f h=%3.2f x=%3.2f y=%3.2f'%(
        #       subshells['shell_pos_x'], subshells['shell_pos_y'],
        #       w, h, x, y))


def _arrange_grid(arrange_dir, all_shells, grid_x, grid_y):

    # find the largest spans in X & Y. This will be the
    # base size - gaps will apply on top of this
    max_span_x = 0
    max_span_y = 0
    for subshells in all_shells:
        max_span_x = max(max_span_x, subshells["x_span"] + subshells["pos_gap_x"])
        max_span_y = max(max_span_y, subshells["y_span"] + subshells["pos_gap_y"])

    g_x = g_y = 0
    x_base = y_base = 0
    max_md_span_x = 0
    max_md_span_y = 0
    c_x = []
    c_y = []
    c_max_span_x = []
    c_max_span_y = []
    # Find max of the other dimension while traversing one dimension
    # Feels convoluted. Just saying X & Y and running max might result in
    # more readable code ?
    for subshells in all_shells:
        if arrange_dir in ["grid", "grid_xy"]:
            ss_x = g_x * (max_span_x)
            max_md_span_x = max_span_x
            max_md_span_y = max(
                max_md_span_y, subshells["y_span"] + subshells["pos_gap_y"]
            )
        else:
            ss_x = x_base

        if arrange_dir == "grid_yx":
            ss_y = g_y * (max_span_y)
            max_md_span_y = max_span_y
            max_md_span_x = max(
                max_md_span_x, subshells["x_span"] + subshells["pos_gap_x"]
            )
        else:
            ss_y = y_base

        c_x.append(ss_x)
        c_y.append(ss_y)

        # step to the next cell
        if arrange_dir in ["grid", "grid_xy"]:
            g_x += 1
            if g_x == grid_x:
                g_y += 1
                g_x = 0
                y_base += max_md_span_y
                c_max_span_y += [max_md_span_y] * grid_x
                c_max_span_x += [max_md_span_x] * grid_x
                max_md_span_y = 0
        else:
            g_y += 1
            if g_y == grid_y:
                g_x += 1
                g_y = 0
                x_base += max_md_span_x
                c_max_span_x += [max_md_span_x] * grid_y
                c_max_span_y += [max_md_span_y] * grid_y
                max_md_span_x = 0

    # Handle overflows
    if arrange_dir in ["grid", "grid_xy"]:
        if g_x != 0:
            c_max_span_y += [max_md_span_y] * g_x
            c_max_span_x += [max_md_span_x] * g_x
    else:
        if g_y != 0:
            c_max_span_x += [max_md_span_x] * g_y
            c_max_span_y += [max_md_span_y] * g_y

    # We know the positions. Now lay them out
    for idx, subshells in enumerate(all_shells):
        ss_x = c_x[idx]
        ss_y = c_y[idx]
        ss_max_span_x = c_max_span_x[idx]
        ss_max_span_y = c_max_span_y[idx]
        # compute the position for this subshell
        subshells["shell_pos_x"] = (
            ss_x
            + (ss_max_span_x - (subshells["x_span"] + subshells["pos_gap_x"])) * 0.5
        )
        subshells["shell_pos_y"] = (
            ss_y
            + (ss_max_span_y - (subshells["y_span"] + subshells["pos_gap_y"])) * 0.5
        )
        # center it here
        subshells["shell_pos_x"] += (
            subshells["x_span"] + subshells["x_min"] + subshells["pos_gap_x"] * 0.5
        )
        subshells["shell_pos_y"] += (
            subshells["y_span"] - subshells["y_max"] + subshells["pos_gap_y"] * 0.5
        )
        # no rotation
        subshells["orientation"] = 0


def arrange(cfg, fp_map, all_shells, arrange_dir, gap_x, gap_y, grid_x, grid_y):

    for subshells in all_shells:
        this_ref = subshells["ref"]
        min_x = float("inf")
        min_y = float("inf")
        max_x = float("-inf")
        max_y = float("-inf")
        for shell_info in subshells["shell"]:
            # all subshells in a ref are in the same coordinate space
            # so we can cumulatively do min, max
            min_x = min(shell_info["min_x"], min_x)
            max_x = max(shell_info["max_x"], max_x)
            min_y = min(shell_info["min_y"], min_y)
            max_y = max(shell_info["max_y"], max_y)
        x_span = max_x - min_x
        footprint = cfg["TH"][this_ref]["kicad_footprint"]
        alias = fp_map[footprint]["alias"]
        fp = cfg["footprint"][alias]
        this_ref_gap = (
            fp["shell_gap"]
            + fp["shell_thickness"]
        )
        this_ref_gap = max(
            this_ref_gap, fp["shell_wrapper_thickness"] + fp["shell_gap"]
        )
        this_ref_gap_x = this_ref_gap * 2 + gap_x * 2
        this_ref_gap_y = this_ref_gap * 2 + gap_y * 2
        subshells["pos_gap_x"] = this_ref_gap_x
        subshells["pos_gap_y"] = this_ref_gap_y
        y_span = max_y - min_y
        subshells["x_span"] = x_span
        subshells["y_span"] = y_span
        subshells["x_min"] = min_x
        subshells["y_min"] = min_y
        subshells["x_max"] = max_x
        subshells["y_max"] = max_y
    if arrange_dir in ["x", "y"]:
        _arrange_x_or_y(arrange_dir, all_shells)
    elif arrange_dir == "xy":
        _arrange_pack(cfg, all_shells)
    elif arrange_dir in ["grid", "grid_xy", "grid_yx"]:
        _arrange_grid(arrange_dir, all_shells, grid_x, grid_y)
    else:
        raise ValueError(f'Unsupported value arrange_grid="{arrange_grid}"')
