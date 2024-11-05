from solid2_module import module, exportReturnValueAsModule
import tripy
import numpy as np
from solid2 import * # SolidPython
import solid2
import jigconfig
from shapely import LineString, Polygon, Point
import geom_ops
from pprint import pprint

mod_map = {}
wiggle_pocket_map = {}
fitting_pocket_map = {}
fitting_cuts_map = {}
fitting_flower_map = {}
perimeter_map = {}

courtyard_map = {}
courtyard_pocket_map = {}
courtyard_perimeter_map = {}

keepout_map = {}

# sv => scad value
sv_max_z = {}
sv_shell_clearance = ScadValue('Shell_Clearance_From_PCB');
sv_shell_thickness = ScadValue('Shell_Thickness');
sv_shell_gap = ScadValue('Shell_Gap');
sv_pcb_thickness = ScadValue('PCB_Thickness');
sv_topmost_z = ScadValue('topmost_z')
sv_pcb_holder_perimeter = ScadValue('PCB_Holder_Perimeter')
sv_pcb_gap = ScadValue('PCB_Gap')
sv_pcb_overlap = ScadValue('PCB_Overlap')
sv_pcb_perimeter_height = ScadValue('Lower_Perimeter_Height')
sv_base_thickness = ScadValue('c_Base_Thickness')
sv_base_line_width = ScadValue('Base_Line_Width')
sv_base_line_height = ScadValue('c_Base_Line_Height')
sv_mesh_start_z = ScadValue('mesh_start_z')
sv_smd_clearance_from_shells = ScadValue('SMD_Clearance_From_Shells')
sv_smd_gap_from_shells = ScadValue('SMD_Gap_From_Shells')

# generate module names used in oscad
def ref2outline(ref):
    return 'ref_%s'%(ref)
def ref2wiggle_pocket(ref):
    return 'wiggle_pocket_%s'%(ref)
def ref2fitting_pocket(ref):
    return 'fitting_pocket_%s'%(ref)
def ref2perimeter(ref):
    return 'perimeter_%s'%(ref)
def ref2fitting_cuts(ref):
    return 'fitting_cuts_%s'%(ref)
def ref2fitting_flower(ref):
    return 'fitting_flower_%s'%(ref)

def ref2courtyard(ref):
    return 'courtyard_%s'%(ref)
def ref2courtyard_pocket(ref):
    return 'courtyard_pocket_%s'%(ref)
def ref2courtyard_perimeter(ref):
    return 'courtyard_perimeter_%s'%(ref)

def ref2keepout(ref):
    return 'keepout_%s'%(ref)

@exportReturnValueAsModule
def peri_line(start, end, line_width):
    return solid2.hull() (
        circle(d=line_width).translate(start),
        circle(d=line_width).translate(end)
    )

def gen_shell_shape(cfg, ref, ident, x, y, rot, min_z, max_z, mesh, h_bins):
    sv_tiny_dimension = ScadValue('tiny_dimension')
    sv_ref_shell_gap = ScadValue('Effective_Shell_Gap_For_%s'%(ref))
    sv_ref_shell_thickness = ScadValue('Effective_Shell_Thickness_For_%s'%(ref))
    sv_ref_shell_clearance = ScadValue('Effective_Shell_Clearance_From_PCB_For_%s'%(ref))
    sv_ref_max_z = ScadValue('max_z_%s'%(ref))
    sv_ref_min_z = ScadValue('min_z_%s'%(ref))

    # compute the fitting pockets
    fitting_pocket_name = ref2fitting_pocket(ident)
    min_fitting_z = h_bins[0]['start_z']

    encl_poly = Polygon(h_bins[0]['hull'])
    cut_width = cfg['TH'][ref]['corner_cut_width']
    cut_depth = cfg['TH'][ref]['corner_cut_depth']
    min_petal_length = cfg['TH'][ref]['min_petal_length']

    cut_volume = union()
    if cut_width>0:
        for this_bin in h_bins:
            this_hull = Polygon(this_bin['hull'])
            cut_shape = union()
            f_cut_shape = union()
            for segment, tangents_start, tangents_end in this_bin['corner_segments']:
                corner_pt = segment[0]
                t1 = tangents_start[0]
                t2 = tangents_start[1]
                inner_pt1, outer_pt1, walk_vec1, dist1 = geom_ops.find_exterior_pt(
                        this_hull, corner_pt, t1, t2, encl_poly)

                if cut_depth != 0:
                    this_cut_depth = cut_depth
                else:
                    this_cut_depth = dist1+sv_ref_shell_thickness+sv_ref_shell_gap
                # now, we have an inner point, a vector, and a distance
                # we we walk shell_thickness more, we are guaranteed to be out of
                # the entire shell...
                cut_start = peri_line(inner_pt1,
                        [inner_pt1[0]+this_cut_depth*walk_vec1[0],
                        inner_pt1[1]+this_cut_depth*walk_vec1[1]],
                        cut_width)

                # But, if the segment is short, there will be two ugly scoring marks, and small things
                # to print unnecessarily. So, process the end point also in this case
                this_seg = LineString(segment)
                if this_seg.length < min_petal_length:
                    corner_pt = segment[-1]
                    t1 = tangents_end[0]
                    t2 = tangents_end[1]
                    inner_pt2, outer_pt2, walk_vec2, dist2 = geom_ops.find_exterior_pt(
                            this_hull, corner_pt, t1, t2, encl_poly)
                    if cut_depth != 0:
                        this_cut_depth = cut_depth
                    else:
                        this_cut_depth = dist2+sv_ref_shell_thickness+sv_ref_shell_gap
                    cut_end = peri_line(inner_pt2,
                            [inner_pt2[0]+this_cut_depth*walk_vec2[0],
                             inner_pt2[1]+this_cut_depth*walk_vec2[1]],
                            cut_width)
                    cut_shape += solid2.hull() (
                                cut_start + cut_end
                              )
                else:
                    cut_shape += cut_start

            cut_volume += translate([0,0,-sv_tiny_dimension+this_bin['start_z']]) (
                                translate([x,y,sv_pcb_thickness]) (
                                    linear_extrude(this_bin['end_z']-this_bin['start_z']+2*sv_tiny_dimension) (
                                        cut_shape
                                    )
                                )
                            )
    fitting_cuts_name = ref2fitting_cuts(ident)
    fitting_cuts_map[ident] = module(fitting_cuts_name, cut_volume)

    flower_shell = union()
    for this_bin in h_bins:
        if this_bin['start_z']<0:
            start_z= sv_ref_shell_clearance
        else:
            # if start_z is closer than clearance, start at clearance
            start_z = openscad_functions.max(this_bin['start_z'], sv_ref_shell_clearance)
        flower_shell += translate([0,0,start_z-sv_tiny_dimension]) (
                            translate([x,y,sv_pcb_thickness]) (
                                linear_extrude(sv_ref_max_z-start_z+2*sv_tiny_dimension) (
                                    difference() (
                                        offset(sv_ref_shell_gap+sv_ref_shell_thickness) (
                                            polygon(this_bin['hull'])
                                        ),
                                        offset(sv_ref_shell_gap) (
                                            polygon(this_bin['hull'])
                                        )
                                    )
                                )
                            )
                        )

    fitting_pocket = union()
    for this_bin in h_bins:
        # tiny_dimension ensures overlap across adjacent shells - important for boolean ops
        fitting_pocket += translate([0,0,-sv_tiny_dimension+this_bin['start_z']]) (
                            translate([x,y,sv_pcb_thickness]) (
                                linear_extrude(this_bin['end_z']-this_bin['start_z']+2*sv_tiny_dimension) (
                                    offset(sv_ref_shell_gap) (
                                        polygon(this_bin['hull'])
                                    )
                                )
                            )
                        )
    fitting_pocket_map[ident] = module(fitting_pocket_name, fitting_pocket)

    # define the polygon so that we can do offset on it
    mod_name = ref2outline(ident)
    mod_map[ident] = module(mod_name, polygon(h_bins[0]['hull']))

    wiggle_pocket_name = ref2wiggle_pocket(ident)
    wiggle_pocket = translate([x,y,sv_pcb_thickness])(
                translate([0,0,sv_ref_min_z])(
                    linear_extrude(sv_ref_max_z-sv_ref_min_z) (
                        offset(sv_ref_shell_gap) (
                            mod_map[ident]()
                        )
                    )
                )
             )
    wiggle_pocket_map[ident] = module(wiggle_pocket_name, wiggle_pocket)

    perimeter_name = ref2perimeter(ident)
    perimeter_solid = translate([x,y,sv_pcb_thickness+sv_ref_shell_clearance]) (
                        linear_extrude(sv_topmost_z-sv_ref_shell_clearance+sv_base_thickness) (
                            offset(sv_ref_shell_gap+sv_ref_shell_thickness) (
                                mod_map[ident]()
                            )
                        )
                      )

    # Add wrapper
    wrapper_thickness = cfg['TH'][ref]['shell_wrapper_thickness']
    wrapper_height = cfg['TH'][ref]['shell_wrapper_height']
    if wrapper_thickness>0 and wrapper_height>0:
        wrapper = translate([x,y,sv_pcb_thickness+sv_topmost_z+sv_base_thickness-wrapper_height]) (
                        linear_extrude(wrapper_height) (
                            difference() (
                                offset(sv_ref_shell_gap+sv_ref_shell_thickness+wrapper_thickness) (
                                    mod_map[ident]()
                                ),
                                offset(sv_ref_shell_gap+sv_ref_shell_thickness) (
                                    mod_map[ident]()
                                )
                            )
                        )
                      )
        perimeter_solid += wrapper
        flower_shell += wrapper

    perimeter_map[ident] = module(perimeter_name, perimeter_solid,
                           comment=f"Perimeter for {ident}")

    # Include the base and any extra height required to be made up for the flower shell
    flower_shell += translate([x,y,sv_pcb_thickness+sv_ref_max_z]) (
                        linear_extrude(sv_topmost_z-sv_ref_max_z+sv_base_thickness) (
                            offset(sv_ref_shell_gap+sv_ref_shell_thickness) (
                                mod_map[ident]()
                            )
                        )
                      )

    fitting_flower_name = ref2fitting_flower(ident)
    fitting_flower_map[ident] = module(fitting_flower_name, flower_shell)

def gen_courtyard_shell_shape(ref, courtyard_poly):
    sv_ref_max_z = ScadValue('max_z_%s'%(ref))
    sv_ref_min_z = ScadValue('min_z_%s'%(ref))
    sv_ref_shell_gap = ScadValue('Effective_Shell_Gap_For_%s'%(ref))
    sv_ref_shell_thickness = ScadValue('Effective_Shell_Thickness_For_%s'%(ref))
    sv_ref_shell_clearance = ScadValue('Effective_Shell_Clearance_From_PCB_For_%s'%(ref))

    # a courtyard is a shape with a lot of wiggle room. So we don't do the corner
    # avoidance that is done in the wiggle/fitting shells
    courtyard_name = ref2courtyard(ref)
    courtyard_map[ref] = module(courtyard_name, polygon(courtyard_poly))

    courtyard_pocket_name = ref2courtyard_pocket(ref)
    courtyard_pocket = translate([0,0,sv_pcb_thickness]) (
                           translate([0,0,sv_ref_min_z]) (
                               linear_extrude(sv_ref_max_z-sv_ref_min_z) (
                                   offset(sv_ref_shell_gap) (
                                       courtyard_map[ref]()
                                   )
                               )
                           )
                       )
    courtyard_pocket_map[ref] = module(courtyard_pocket_name, courtyard_pocket)

    courtyard_perimeter_name = ref2courtyard_perimeter(ref)
    courtyard_perimeter_solid = translate([0,0,sv_pcb_thickness+sv_ref_shell_clearance]) (
                        linear_extrude(sv_topmost_z-sv_ref_shell_clearance+sv_base_thickness) (
                            offset(sv_ref_shell_gap+sv_ref_shell_thickness) (
                                courtyard_map[ref]()
                            )
                        )
                      )
    courtyard_perimeter_map[ref] = module(courtyard_perimeter_name, courtyard_perimeter_solid,
                           comment=f"Courtyard Perimeter for {ref}")

def gen_keepout_shape(ref, x, y, rot, min_z, max_z, courtyard_poly):
    sv_max_z[ref] = ScadValue('max_z_%s'%(ref))
    ref_smd_clearance_from_shells = ScadValue(f'smd_clearance_from_shells_{ref}')
    ref_smd_gap_from_shells = ScadValue(f'smd_gap_from_shells_{ref}')
    keepout_name = ref2keepout(ref)
    keepout_solid = translate([0,0,sv_pcb_thickness]) (
                     linear_extrude(sv_max_z[ref]+ref_smd_clearance_from_shells) (
                         offset(ref_smd_gap_from_shells) (
                            polygon(courtyard_poly)
                         )
                     )
                 )
    keepout_map[ref] = module(keepout_name, keepout_solid,
                           comment=f"Keepout volume for {ref}")

def gen_params_generic(fp_scad, cfg):
    # We use OpenSCAD to do the grunt work of building the
    # actual model for us. Tesellation level must be set
    # to match or exceed the limits of 3D printing.
    # 3D printing generally works on the order of 0.1mm
    # so we choose a value half of that, 0.05 mm
    # This should give a decent balance of smooth shapes
    # and file sizes, and processing needs.
    fp_scad.write("""
// { These are configurable parameters
// you can tweak these here and count on
// openscad magic to do show you the result
// right away!

/* [Preview Options - No effect on STL output] */
// Show PCB for reference (green)
Show_PCB = true; // [true,false]
// Transparency of PCB
PCB_Transparency = 0.5; //[0.0:1.0]

// Show component volumes (orange)
Show_Component_Volumes = true; // [true,false]
// Transparency of component volumes
Component_Volume_Transparency = 0.2; // [0.0:1.0]

// Show volume reserved to avoid touching SMD parts (red)
Show_SMD_Keepout_Volumes = true; // [true,false]
// Transparency of SMD keepout volumes
SMD_Keepout_Volume_Transparency = 0.4; // [0.0:1.0]

/* [PCB] */
PCB_Thickness=%s;

/* [Jig] */
Type_of_Jig = "%s"; // [TH_soldering,component_fitting]

/* [Through Hole Soldering Jig] */

// Gap between PCB edge and slot on the jig
PCB_Gap=%s;

// Width of the groove on the jig, holding the PCB
PCB_Overlap=%s;

// Wall thickness of the jig, abutting the PCB
PCB_Holder_Perimeter=%s;

// Height of solid perimeter at the base
Lower_Perimeter_Height = %s;

Groove="At PCB Corners: %s mm"; //["At PCB Corners: %s mm", "All Around PCB Edge"]

Mounting_Hole_Jig=%s; //[false, true]
MH_Spacer_End=%s;
MH_Spacer_Start=%s;
Spacer_Is_Fused = %s;
Bolt_Is_External = %s;

/* [Base] */

// Type of Base
Base_Type = "%s"; // [x_lines, y_lines, griddish, mesh, solid]

// Thickness of Base
Base_Thickness = %s;

// Width of Lines on Base
Base_Line_Width = %s;

// Height of Lines on Base
Base_Line_Height = %s;

/* [SMD Keepout] */

// SMD keepout volume extension in Z
SMD_Clearance_From_Shells=%s;

// SMD keepout volume extension in XY
SMD_Gap_From_Shells=%s;
"""%(
cfg['pcb']['thickness'],
cfg['jig']['type'],
cfg['holder']['pcb_gap'],
cfg['holder']['pcb_overlap'],
cfg['holder']['perimeter'],
cfg['holder']['base']['perimeter_height'],
cfg['holder']['groove_size'], cfg['holder']['groove_size'],
"true" if cfg['jig']['mounting_hole_jig'] else "false",
cfg['jig']['mounting_hole_spacer_end'],
cfg['jig']['mounting_hole_spacer_start'],
'true' if cfg['jig']['mounting_hole_spacer_is_fused'] else 'false',
'true' if cfg['jig']['mounting_hole_bolt_is_external'] else 'false',
cfg['holder']['base']['type'],
cfg['holder']['base']['thickness'],
cfg['holder']['base']['line_width'],
cfg['holder']['base']['line_height'],
cfg['SMD']['clearance_from_shells'],
cfg['SMD']['gap_from_shells']
))

def gen_configurable_fp_components(
        fp_scad,
        cfg,
        all_shells,
        fp_map,
        ref_map):
    # Allow tweaking per component values from customizer
    # Refs we get can be in any order. Customizer in OpenSCAD opens up all the tabs
    # together. This creates a cluttered user interface. Question is how do we
    # enable the user to easily find the components they may want to tweak ? A
    # reasonable assumption we can make is - they are likely to need to tweak major
    # components, rather than minor components.  Major components will be things
    # such as connectors and ICs. We can show the larger components ahead of the
    # rest, by rearranging the refs by area of the courtyard.
    ui_refs = []
    for subshells in all_shells:
        this_ref = subshells['ref']
        tris = tripy.earclip(subshells['front_courtyard'])
        area = tripy.calculate_total_area(tris)
        ui_refs.append([this_ref,area])
    ui_refs.sort(reverse=True, key=lambda x:x[1]) # key is the area
    #pprint(ui_refs)

    fp_scad.write('/* [Include these components in output STL file] */\n')
    for this_ref, area in ui_refs:
        footprint = cfg['TH'][this_ref]['kicad_footprint']
        dname_fp = fp_map[footprint]['display_name']
        dname_ref = cfg['TH'][this_ref]['display_name']
        if dname_ref==this_ref:
            fp_scad.write('//%s (%s)\n'%(dname_fp, this_ref))
        else:
            fp_scad.write('//%s ( %s, %s)\n'%(dname_ref, this_ref, dname_fp))
        fp_scad.write('Include_%s_in_Jig=true; // [false,true]\n'%(this_ref))

    for alias in cfg['footprint']:
        footprint = cfg['footprint'][alias]
        fp_scad.write('/* [Footprint: %s] */\n'%(footprint['display_name']))
        var_prop_rem = [['Shell_Gap', 'shell_gap', 'XY Gap in shell for component insertion'],
                   ['Shell_Thickness', 'shell_thickness', 'Thickness of shell'],
                   ['Shell_Clearance_From_PCB', 'shell_clearance_from_pcb', 'Z distance from start of shell to PCB']]
        for var, prop, rem in var_prop_rem:
            fp_scad.write('//%s\n'%(rem))
            fp_scad.write('%s_For_%s = %s;\n'%(var, alias, footprint[prop]))

    valid_shell_types = ','.join(jigconfig.valid_shell_types)
    for this_ref, area in ui_refs:
        footprint = cfg['TH'][this_ref]['kicad_footprint']
        dname_fp = fp_map[footprint]['display_name']
        dname_ref = cfg['TH'][this_ref]['display_name']
        if this_ref == dname_ref:
            fp_scad.write('/* [%s (%s)] */\n'%(this_ref, footprint))
        else:
            fp_scad.write('/* [%s( %s, %s )] */\n'%(dname_ref, this_ref, footprint))
        fp_scad.write('//Type of shell for this component\n')
        fp_scad.write('Shell_Type_For_%s="%s"; // [%s]\n'%(
            this_ref,
            cfg['TH'][this_ref]['shell_type'],
            valid_shell_types)
        )
        fp_scad.write('//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)\n')
        fp_scad.write('Insert_%s_From="%s"; // [top,bottom]\n'%(
            this_ref,
            cfg['TH'][this_ref]['insertion_direction'])
        )
        fp_scad.write('//Delta(+/-) thickness for shell, additional to footprint setting\n')
        fp_scad.write('Delta_Shell_Thickness_For_%s=%s;\n'%(
            this_ref,
            cfg['TH'][this_ref]['delta_shell_thickness'])
        )
        fp_scad.write('//Delta XY gap to allow insertion of this component into its shell\n')
        fp_scad.write('Delta_Shell_Gap_For_%s=%s;\n'%(
            this_ref,
            cfg['TH'][this_ref]['delta_shell_gap'])
        )
        fp_scad.write('//Delta Z clearance from the shell to PCB\n')
        fp_scad.write('Delta_Shell_Clearance_From_PCB_For_%s=%s;\n'%(
            this_ref,
            cfg['TH'][this_ref]['delta_shell_clearance_from_pcb'])
        )

    fp_scad.write('// } End of configurable parameters\n')

    fp_scad.write('/* [Hidden] */\n')
    fp_scad.write('$fs = 0.05;\n');
    fp_scad.write('first_layer_height = %s;\n'%(cfg['3dprinter']['first_layer_height']));
    fp_scad.write('layer_height = %s;\n'%(cfg['3dprinter']['layer_height']));

    # Effective values for each ref
    for this_ref, area in ui_refs:
        footprint = ref_map[this_ref]['footprint']
        alias = fp_map[footprint]['alias']
        for this_var in ['Shell_Thickness', 'Shell_Gap', 'Shell_Clearance_From_PCB']:
            fp_scad.write('Effective_%s_For_%s = %s_For_%s + Delta_%s_For_%s;\n'%(
                this_var, this_ref, this_var, alias, this_var, this_ref)
            )

def gen_computed_values(
        fp_scad,
        all_shells,
        smd_keepouts,
        topmost_z,
        bottom_insertion_z):
    fp_scad.write('''
    // { START : Computed Values

    // Height of the tallest component on the top side
    topmost_z=%s;

    groove_width = max(PCB_Gap+PCB_Holder_Perimeter, PCB_Overlap)*2.2;
    tiny_dimension = 0.0001;
    base_z =  PCB_Thickness+topmost_z+Base_Thickness+2*tiny_dimension;

    c_Spacer_Is_Fused = Bolt_Is_External ? Spacer_Is_Fused : true; // can't have separate bolt with internal bolt
    c_Base_Thickness = Mounting_Hole_Jig ? first_layer_height: Base_Thickness;
    c_MH_Jig_Second_Level_Height = first_layer_height+2*layer_height;
    c_Base_Line_Height = Mounting_Hole_Jig ? topmost_z-MH_Spacer_End+c_MH_Jig_Second_Level_Height+c_Base_Thickness: Base_Line_Height;
    mesh_start_z = PCB_Thickness+topmost_z+c_Base_Thickness-c_Base_Line_Height;
    '''%(topmost_z))


    fp_scad.write('bottom_insertion_z = %s;\n'%(bottom_insertion_z))
    fp_scad.write('// Height of the individual components\n')
    for subshells in all_shells:
        this_ref = subshells['ref']
        applies_to = ''
        for shell_info in subshells['shell']:
            applies_to += ' %s'%(shell_info['model'])
        fp_scad.write('max_z_%s= (Insert_%s_From=="bottom")? bottom_insertion_z : %s; //Applies to 3D Model(s):%s\n'%(this_ref,this_ref, subshells['max_z'], applies_to))
        fp_scad.write('min_z_%s= %s;\n'%(this_ref, subshells['min_z']))
    for keepout_info in smd_keepouts:
        fp_scad.write('max_z_%s= %s; //3D Model: %s\n'%(keepout_info['name'],keepout_info['max_z'], keepout_info['model']))
        ref = keepout_info['ref']
        fp_scad.write('smd_clearance_from_shells_%s= SMD_Clearance_From_Shells;\n'%(keepout_info['name']))
        fp_scad.write('smd_gap_from_shells_%s= SMD_Gap_From_Shells;\n'%(keepout_info['name']))
    fp_scad.write('// } END : Computed Values\n')
    fp_scad.write('\n')

def generate_scad(
        fp_scad,
        config_text,
        cfg,
        pcb_file,
        config_file,
        keep_orientation,
        all_shells,
        fp_map,
        ref_map,
        mh_map,
        smd_keepouts,
        topmost_z, pcb_edge_points,
        dt_centers,
        mesh_line_segments,
        groove_lines,
        pcb_min_x, pcb_max_x, pcb_min_y, pcb_max_y):
    fp_scad.write('''// Customizable Jig Generator
// In OpenSCAD, use "Description Only" for best user experience
// understanding the tunable parameters.
// -----------------------------------------------------
// Auto generated file by jigify, the awesome automatic
// jig generator for your PCB designs.
// -----------------------------------------------------
// Input board file   : %s
// Configuration file : %s
//
// Complete configuration file is embedded at the end of this
// file.
'''%(pcb_file,
    '(Tool Default Internal Configuration)' if not config_file else config_file))

    gen_params_generic(fp_scad, cfg)

    gen_configurable_fp_components(fp_scad, cfg, all_shells, fp_map, ref_map)

    bottom_insertion_z = topmost_z + 2*cfg['holder']['base']['thickness']

    gen_computed_values(fp_scad, all_shells, smd_keepouts, topmost_z, bottom_insertion_z)

    for subshells in all_shells:
        this_ref = subshells['ref']
        for shell_info in subshells['shell']:
            gen_shell_shape(cfg, this_ref, shell_info['name'],
                        shell_info['x'], shell_info['y'], shell_info['orientation'],
                        shell_info['min_z'], shell_info['max_z'], shell_info['mesh'],
                        shell_info['fitting_bins'])
        gen_courtyard_shell_shape(this_ref, subshells['front_courtyard'])

    for keepout in smd_keepouts:
        gen_keepout_shape(keepout['name'],
            keepout['x'], keepout['y'], keepout['orientation'],
            keepout['min_z'], keepout['max_z'], keepout['front_courtyard'])
    # Write out the PCB edge
    pcb_edge_points = np.array(pcb_edge_points)
    pcb_edge_points[:,1] *= -1.0 # Negate all Ys to fix coordinate system
    sm_pcb_edge = module('pcb_edge', polygon(pcb_edge_points))
    sm_pcb = module('pcb', linear_extrude(sv_pcb_thickness) (sm_pcb_edge()))

    # all SMD keepouts
    combined_keepouts = union()
    for keepout_info in smd_keepouts:
        combined_keepouts += keepout_map[keepout_info['name']]()
    sm_mounted_smd_keepouts = module('mounted_smd_keepouts',
            combined_keepouts
        )
    @exportReturnValueAsModule
    def wide_line(start, end):
        return solid2.hull()(
                translate(start)(cylinder(h=sv_base_line_height, d=sv_base_line_width))+
                translate(end)(cylinder(h=sv_base_line_height, d=sv_base_line_width))
                )

    base_solid = translate([0,0,sv_pcb_thickness+sv_topmost_z])(
                    linear_extrude(sv_base_thickness) (
                        offset(sv_pcb_holder_perimeter+sv_pcb_gap)(
                            sm_pcb_edge()
                        )
                    )
                 )
    sm_base_solid = module('base_solid', base_solid)

    mesh_lines = union()
    for start, end in mesh_line_segments:
        mesh_lines += wide_line(start, end)

    base_mesh_volume = linear_extrude(sv_base_line_height) (
                           offset(sv_pcb_holder_perimeter+sv_pcb_gap) (
                               sm_pcb_edge()
                           )
                       )
    sm_base_mesh_volume = module('base_volume', base_mesh_volume)

    base_mesh = translate([0,0,sv_mesh_start_z]) (
                    intersection() (
                        mesh_lines,
                        sm_base_mesh_volume()
                    )
                )

    sm_base_mesh = module('base_mesh', base_mesh())

    pcb_holder = linear_extrude(sv_topmost_z+sv_pcb_thickness+sv_base_thickness) (
            difference()(
                offset(sv_pcb_holder_perimeter+sv_pcb_gap)(
                    sm_pcb_edge()
                ),
                offset(sv_pcb_gap) (
                    sm_pcb_edge()
                )
            )
        ) + translate([0,0,sv_pcb_thickness]) (
            linear_extrude(sv_topmost_z+sv_base_thickness) (
                difference() (
                    offset(sv_pcb_gap)(
                        sm_pcb_edge()
                    ),
                    offset(-sv_pcb_overlap)(
                        sm_pcb_edge()
                    )
                )
            )
        )

    sm_pcb_holder = module('pcb_holder', pcb_holder,
            comment = 'solid between perimeter and outline, full height')

    pcb_perimeter_short = translate([0,0,sv_pcb_thickness+sv_topmost_z-sv_pcb_perimeter_height]) (
            linear_extrude(sv_pcb_perimeter_height+sv_base_thickness) (
                difference() (
                    offset(sv_pcb_holder_perimeter+sv_pcb_gap) (
                        sm_pcb_edge()
                    ),
                    offset(-sv_pcb_overlap)(
                        sm_pcb_edge()
                    )
                )
            )
        )

    sm_pcb_perimeter_short = module('pcb_perimeter_short', pcb_perimeter_short)

    sv_groove_width = ScadValue('groove_width')
    sv_tiny_dimension = ScadValue('tiny_dimension')
    sv_base_z = ScadValue('base_z')
    s_groove_lines = union()
    for line in groove_lines:
        # FIXME: see the -y below? This is ugliness. Aim for consistency
        s_groove_lines += peri_line(
                        [line[0][0],-line[0][1]],
                        [line[1][0],-line[1][1]],
                        sv_groove_width)
    sm_pcb_support_groove = module('pcb_support_groove',
            translate([0,0,-sv_tiny_dimension]) (
                linear_extrude(sv_base_z) (
                    s_groove_lines
                )
            )
    )


    # Write out entire SolidPython generated scad, including the modules
    # Hack : ScadValue can't be empty - so passing it a comment!
    fp_scad.write(scad_render(ScadValue('//\n')))

    fp_scad.write('module mounted_component_shells() {\n')
    fp_scad.write('  union() {\n')
    for subshells in all_shells:
        this_ref = subshells['ref']
        fp_scad.write('  if(Include_%s_in_Jig) {\n'%(this_ref))
        fp_scad.write('    if(Shell_Type_For_%s=="courtyard") {\n'%(this_ref))
        fp_scad.write('      %s();\n'%(ref2courtyard_perimeter(this_ref)))
        fp_scad.write('    } else if(Shell_Type_For_%s=="fitting_flower") {\n'%(this_ref))
        for shell_info in subshells['shell']:
            this_name = shell_info['name']
            fp_scad.write('      %s();\n'%(ref2fitting_flower(this_name)))
        fp_scad.write('    } else {\n')
        for shell_info in subshells['shell']:
            this_name = shell_info['name']
            fp_scad.write('      %s();\n'%(ref2perimeter(this_name)))
        fp_scad.write('    }\n')
        fp_scad.write('  }\n') # included
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module mounted_component_cuts() {\n')
    fp_scad.write('  union() {\n')
    for subshells in all_shells:
        this_ref = subshells['ref']
        fp_scad.write('    if(Include_%s_in_Jig) {\n'%(this_ref))
        for shell_info in subshells['shell']:
            this_name = shell_info['name']
            fp_scad.write('      if(Shell_Type_For_%s=="fitting") {\n'%(this_ref))
            fp_scad.write('        %s();\n'%(ref2fitting_cuts(this_name)))
            fp_scad.write('      } else if(Shell_Type_For_%s=="fitting_flower") {\n'%(this_ref))
            fp_scad.write('        %s();\n'%(ref2fitting_cuts(this_name)))
            fp_scad.write('      }\n')
        fp_scad.write('    }\n') # included
    fp_scad.write('  }\n') # union
    fp_scad.write('}\n')

    fp_scad.write('module mounted_component_pockets() {\n')
    fp_scad.write('  union() {\n')
    # NOTE: pockets are always included, unlike shells. This is to prevent
    # protruding shells from elsewhere to get into that volume
    for subshells in all_shells:
        this_ref = subshells['ref']
        fp_scad.write('    if(Shell_Type_For_%s=="courtyard") {\n'%(this_ref))
        fp_scad.write('      %s();\n'%(ref2courtyard_pocket(this_ref)))
        fp_scad.write('    } else if(Shell_Type_For_%s=="wiggle") {\n'%(this_ref))
        for shell_info in subshells['shell']:
            this_name = shell_info['name']
            fp_scad.write('      %s();\n'%(ref2wiggle_pocket(this_name)))
        fp_scad.write('    } else { //fitting or fitting_flower\n')
        for shell_info in subshells['shell']:
            this_name = shell_info['name']
            fp_scad.write('      %s();\n'%(ref2fitting_pocket(this_name)))
        fp_scad.write('    }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module base_frame_xy_lines() {\n')
    h_start = '[pcb_min_x, -pcb_min_y]'
    h_end = '[pcb_max_x, -pcb_min_y]'
    fp_scad.write('  wide_line(%s,%s);\n'%(h_start,h_end))
    h_start = '[pcb_min_x, -pcb_max_y]'
    h_end = '[pcb_max_x, -pcb_max_y]'
    fp_scad.write('  wide_line(%s,%s);\n'%(h_start,h_end))
    v_start = '[pcb_min_x, -pcb_min_y]'
    v_end = '[pcb_min_x, -pcb_max_y]'
    fp_scad.write('  wide_line(%s,%s);\n'%(v_start,v_end))
    v_start = '[pcb_max_x, -pcb_min_y]'
    v_end = '[pcb_max_x, -pcb_max_y]'
    fp_scad.write('  wide_line(%s,%s);\n'%(v_start,v_end))
    fp_scad.write('}\n')

    fp_scad.write('module base_x_lines() {\n')
    fp_scad.write('  translate([0,0,mesh_start_z]) {\n')
    fp_scad.write('    intersection() {\n')
    fp_scad.write('      union() {\n')
    for subshells in all_shells:
        this_ref = subshells['ref']
        fp_scad.write('        if(Include_%s_in_Jig) {\n'%(this_ref))
        for shell_info in subshells['shell']:
            ref_x, ref_y = shell_info['fp_center']
            h_start = '[pcb_min_x, %s]'%(ref_y)
            h_end = '[pcb_max_x, %s]'%(ref_y)
            fp_scad.write('          wide_line(%s,%s);\n'%(h_start,h_end))
        fp_scad.write('        }\n')
    fp_scad.write('        base_frame_xy_lines();\n')
    fp_scad.write('      }\n')
    fp_scad.write('      base_volume();\n')
    fp_scad.write('    }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module base_y_lines() {\n')
    fp_scad.write('  translate([0,0,mesh_start_z]) {\n')
    fp_scad.write('    intersection() {\n')
    fp_scad.write('      union() {\n')
    for subshells in all_shells:
        this_ref = subshells['ref']
        fp_scad.write('        if(Include_%s_in_Jig) {\n'%(this_ref))
        for shell_info in subshells['shell']:
            ref_x, ref_y = shell_info['fp_center']
            v_start = '[%s, -pcb_min_y]'%(ref_x)
            v_end = '[%s, -pcb_max_y]'%(ref_x)
            fp_scad.write('          wide_line(%s,%s);\n'%(v_start,v_end))
        fp_scad.write('        }\n')
    fp_scad.write('        base_frame_xy_lines();\n')
    fp_scad.write('      }\n')
    fp_scad.write('      base_volume();\n')
    fp_scad.write('    }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module base_griddish() {\n')
    fp_scad.write('  union() {\n')
    fp_scad.write('    base_x_lines();\n')
    fp_scad.write('    base_y_lines();\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module mounting_hole_bolt_shells() {\n')
    fp_scad.write('  translate([0,0,0]) {\n')
    for mh_name in mh_map:
        mh_pos = [mh_map[mh_name]['x'],mh_map[mh_name]['y']]
        mh_radius = mh_map[mh_name]['mounting_hole_radius'] \
                    + cfg['TH']['mounting_hole_shell_gap']
        # FIXME: check against the shape, not the rectangle
        if (mh_pos[0] > pcb_min_x) and (mh_pos[0] < pcb_max_x) or \
           (-mh_pos[1] > pcb_min_y) and (-mh_pos[1] < pcb_max_y):
            mh_level = 'PCB_Thickness'
            mh_height = 'topmost_z+c_Base_Thickness'
        else:
            mh_level = '0'
            mh_height = 'topmost_z+c_Base_Thickness+PCB_Thickness'
        print(pcb_min_x, pcb_min_y, pcb_max_x, pcb_max_y)
        print(mh_pos[0], mh_pos[1], mh_level)
        fp_scad.write('    translate([%s,%s,%s]) {\n'%(mh_pos[0],mh_pos[1], mh_level))
        fp_scad.write('      linear_extrude(%s) {\n'%(mh_height))
        fp_scad.write('        difference() {\n')
        fp_scad.write('          circle(r=%s);\n'%(mh_radius+cfg['TH']['mounting_hole_shell_thickness']))
        fp_scad.write('          circle(r=%s);\n'%(mh_radius))
        fp_scad.write('        }\n')
        fp_scad.write('      }\n')
        fp_scad.write('    }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module mounting_hole_keepout_volume() {\n')
    fp_scad.write('  translate([0,0,PCB_Thickness]) {\n')
    fp_scad.write('    linear_extrude(topmost_z+c_Base_Thickness) {\n')
    for mh_name in mh_map:
        mh_pos = [mh_map[mh_name]['x'],mh_map[mh_name]['y']]
        mh_radius = mh_map[mh_name]['mounting_hole_radius'] \
                    + cfg['TH']['mounting_hole_shell_gap']
        fp_scad.write('      translate([%s,%s,0]) {\n'%(mh_pos[0],mh_pos[1]))
        fp_scad.write('        circle(r=%s);\n'%(mh_radius))
        fp_scad.write('      }\n')
    fp_scad.write('    }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module base_connect_mounting_hole_lines() {\n')
    # Here we connect mounting holes to the PCB edge with lines
    # Find the closest point, draw a line
    #print(pcb_edge_points)
    pcb_edge_ls = LineString(pcb_edge_points)
    fp_scad.write('  translate([0,0,mesh_start_z]) {\n')
    fp_scad.write('    union() {\n')
    for mh_name in mh_map:
        mh_pos = [mh_map[mh_name]['x'],mh_map[mh_name]['y']]
        #print(mh_pos)
        nd = pcb_edge_ls.project(Point(mh_pos[0],mh_pos[1]))
        nearest = pcb_edge_ls.interpolate(nd)
        l_start = '[%s, %s]'%(mh_pos[0],mh_pos[1])
        l_end = '[%s, %s]'%(nearest.x, nearest.y)
        fp_scad.write('      wide_line(%s,%s);\n'%(l_start,l_end))
    fp_scad.write('     }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')


    fp_scad.write('module mounting_hole_jig_keepout() {\n')
    fp_scad.write('  translate([0,0,PCB_Thickness+MH_Spacer_End-tiny_dimension]) {\n')
    fp_scad.write('    linear_extrude(MH_Spacer_Start-MH_Spacer_End+2*tiny_dimension) {\n')
    fp_scad.write('      offset(1000)\n') # Lazy me!
    fp_scad.write('        pcb_edge();\n')
    fp_scad.write('    }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')

    fp_scad.write('module mounting_hole_jig_spacers() {\n')
    # if you use space_offset below (makes spacers outside the frame), use below line
    #fp_scad.write('  translate([pcb_max_x+10,-(pcb_min_y+((pcb_max_y-pcb_min_y)*0.5)),PCB_Thickness+MH_Spacer_End+2*tiny_dimension]) {\n')
    # Make spacers where they are supposed to go, but create a tiny gap so that
    # the objects clearly separate with Slicer option "split to objects"
    fp_scad.write('  spacer_gap = c_Spacer_Is_Fused ? 0: 2*tiny_dimension;\n')
    fp_scad.write('  translate([0,0,PCB_Thickness+MH_Spacer_End+2*tiny_dimension]) {\n')
    fp_scad.write('    linear_extrude(MH_Spacer_Start-MH_Spacer_End-spacer_gap) {\n')
    spacer_offset = 0
    for mh_name in mh_map:
        mh_pos = [mh_map[mh_name]['x'],mh_map[mh_name]['y']]
        mh_radius = mh_map[mh_name]['mounting_hole_radius'] \
                    + cfg['TH']['mounting_hole_shell_gap']
        mh_outer_radius = mh_radius+cfg['TH']['mounting_hole_shell_thickness']
        fp_scad.write('      translate([%s,%s,0]) {\n'%(mh_pos[0],mh_pos[1]))
        fp_scad.write('        difference() {\n')
        fp_scad.write('          circle(r=%s);\n'%(mh_outer_radius))
        fp_scad.write('          if (Bolt_Is_External) {\n') # It it's an internal bolt we don't punch the hole
        fp_scad.write('            circle(r=%s);\n'%(mh_radius))
        fp_scad.write('          }\n')
        fp_scad.write('        }\n')
        fp_scad.write('      }\n')
        spacer_offset += (mh_outer_radius*3)
    fp_scad.write('    }\n')
    fp_scad.write('  }\n')
    fp_scad.write('  if (!Bolt_Is_External) {\n')
    for mh_name in mh_map:
        mh_pos = [mh_map[mh_name]['x'],mh_map[mh_name]['y']]
        mh_radius = mh_map[mh_name]['mounting_hole_radius']
        mh_inner_radius = mh_radius-cfg['TH']['mounting_hole_shell_gap']
        fp_scad.write('      translate([%s,%s,0]) {\n'%(mh_pos[0],mh_pos[1]))
        fp_scad.write('        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {\n')
        fp_scad.write('          circle(r=%s);\n'%(mh_inner_radius))
        fp_scad.write('        }\n')
        fp_scad.write('      }\n')
    fp_scad.write('  }\n')
    fp_scad.write('}\n')
    fp_scad.write('''

module preview_helpers() {
  if(Show_PCB) {
    // Show transparent PCB. We use the background modifier, so this
    // won't be in output
    color("darkgreen", 1.0-PCB_Transparency) {
      %pcb();
    }
  }
  
  if(Show_Component_Volumes) {
    color("darkorange", 1.0-Component_Volume_Transparency) {
      %mounted_component_pockets(); // always include, but don't visualize
    }
  }
  
  if(Show_SMD_Keepout_Volumes) {
    color("crimson", 1.0-SMD_Keepout_Volume_Transparency) {
      %mounted_smd_keepouts();
    }
  }
}

// This _is_ the entire jig model. Structured such that
// you can individually check the parts. Color codes from
// https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#color
module complete_model_TH_soldering() {
  color("steelblue") {
    difference() {
      union() {
        if(Groove == "All Around PCB Edge") {
          pcb_holder();
        } else {
          intersection() {
            pcb_support_groove();
            pcb_holder();
          };
        }
        pcb_perimeter_short();
        if(Base_Type=="mesh") {
          base_mesh();
        } else if(Base_Type=="griddish") {
          base_griddish();
        } else if(Base_Type=="x_lines") {
          base_x_lines();
        } else if(Base_Type=="y_lines") {
          base_y_lines();
        } else {
          base_solid();
        }
        mounted_component_shells();
        mounting_hole_bolt_shells();
        base_connect_mounting_hole_lines();
      }
      mounted_component_pockets(); // FIXME: fix terminology - "included"
      mounting_hole_keepout_volume();
      mounted_component_cuts();
      mounted_smd_keepouts();
      mounting_hole_jig_keepout();
    }
  }
  preview_helpers();
  mounting_hole_jig_spacers();
}
module complete_model_component_fitting() {
  color("steelblue") {
    difference() {
      union() {
        if(Base_Type=="mesh") {
          base_mesh();
        } else if(Base_Type=="griddish") {
          base_griddish();
        } else if(Base_Type=="x_lines") {
          base_x_lines();
        } else if(Base_Type=="y_lines") {
          base_y_lines();
        } else {
          base_solid();
        }
        mounted_component_shells();
        mounting_hole_bolt_shells();
        base_connect_mounting_hole_lines();
      }
      mounted_component_pockets(); // FIXME: fix terminology - "included"
      mounting_hole_keepout_volume();
      mounted_component_cuts();
      mounted_smd_keepouts();
    }
  }
  preview_helpers();
  mounting_hole_jig_spacers();
}
''')

    fp_scad.write('''
pcb_min_x = %s;
pcb_max_x = %s;
pcb_min_y = %s;
pcb_max_y = %s;
'''%(pcb_min_x, pcb_max_x, pcb_min_y, pcb_max_y))

    fp_scad.write('''
module style_of_jig() {
  if(Type_of_Jig=="TH_soldering")
    complete_model_TH_soldering();
  else
    complete_model_component_fitting();
}

orient_to_print=%d;
if(orient_to_print == 1) {
  // Center the PCB around the origin in XY,
  // This helps interaction with OpenSCAD
  translate([
    -pcb_min_x-0.5*(pcb_max_x-pcb_min_x),
    -(pcb_min_y+0.5*(pcb_max_y-pcb_min_y)), 0 ]) {
    rotate([180,0,0]) {
        style_of_jig();
    }
  }
} else {
    style_of_jig();
}
'''%(not keep_orientation))

    fp_scad.write('''
/*
%s
*/
'''%(config_text))

