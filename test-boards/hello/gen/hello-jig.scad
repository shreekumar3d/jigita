// Customizable Jig Generator
// In OpenSCAD, use "Description Only" for best user experience
// understanding the tunable parameters.
// -----------------------------------------------------
// Auto generated file by jigit, the awesome automatic
// jig generator for your PCB designs. Checkout the project
// at https://github.com/shreekumar3d/jigit
// -----------------------------------------------------
// Input board file   : test-boards/hello/hello.kicad_pcb
// Configuration file : (Tool Default Internal Configuration)
//
// Complete configuration file is embedded at the end of this
// file.

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
PCB_Thickness=1.6;

/* [Jig] */
Type_of_Jig = "TH_soldering"; // [TH_soldering,component_fitting]

/* [Through Hole Soldering Jig] */

// Gap between PCB edge and slot on the jig
PCB_Gap=0.3;

// Width of the groove on the jig, holding the PCB
PCB_Overlap=0.3;

// Wall thickness of the jig, abutting the PCB
PCB_Holder_Perimeter=1.6;

// Height of solid perimeter at the base
Lower_Perimeter_Height = 2;

Groove="At PCB Corners: 15 mm"; //["At PCB Corners: 15 mm", "All Around PCB Edge"]

Mounting_Hole_Jig=false; //[false, true]
MH_Spacer_End=2.9400000000000004;
MH_Spacer_Start=-0.2;
Spacer_Is_Fused = true;
Bolt_Is_External = true;

/* [Base] */

// Type of Base
Base_Type = "griddish"; // [x_lines, y_lines, griddish, minmesh, mesh, solid]

// Thickness of Base
Base_Thickness = 0.4;

// Width of Lines on Base
Base_Line_Width = 2.0;

// Height of Lines on Base
Base_Line_Height = 1.0;

/* [SMD Keepout] */

// SMD keepout volume extension in Z
SMD_Clearance_From_Shells=1;

// SMD keepout volume extension in XY
SMD_Gap_From_Shells=0.5;
/* [Include these components in output STL file] */
//Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (J1)
Include_J1_in_Jig=true; // [false,true]
/* [Footprint: Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP1 = 0.1;
//Thickness of shell
Shell_Thickness_For_FP1 = 1.2;
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP1 = 1;
/* [J1 (Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical)] */
//Type of shell for this component
Shell_Type_For_J1="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J1_From="top"; // [top,bottom]
//Delta(+/-) thickness for shell, additional to footprint setting
Delta_Shell_Thickness_For_J1=0;
//Delta XY gap to allow insertion of this component into its shell
Delta_Shell_Gap_For_J1=0;
//Delta Z clearance from the shell to PCB
Delta_Shell_Clearance_From_PCB_For_J1=0;
//Wrapper thickness
Wrapper_Thickness_For_J1=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J1=0.0; // [0:0.1:8.539479970932007]
// } End of configurable parameters
/* [Hidden] */
$fs = 0.05;
first_layer_height = 0.2;
layer_height = 0.2;
Effective_Shell_Thickness_For_J1 = Shell_Thickness_For_FP1 + Delta_Shell_Thickness_For_J1;
Effective_Shell_Gap_For_J1 = Shell_Gap_For_FP1 + Delta_Shell_Gap_For_J1;
Effective_Shell_Clearance_From_PCB_For_J1 = Shell_Clearance_From_PCB_For_FP1 + Delta_Shell_Clearance_From_PCB_For_J1;

// Height of the tallest component on the top side
topmost_z=8.539479970932007;
    
groove_width = max(PCB_Gap+PCB_Holder_Perimeter, PCB_Overlap)*2.2;
tiny_dimension = 0.0001;
base_z =  PCB_Thickness+topmost_z+Base_Thickness+2*tiny_dimension;

c_Spacer_Is_Fused = Bolt_Is_External ? Spacer_Is_Fused : true; // can't have separate bolt with internal bolt
c_Base_Thickness = Mounting_Hole_Jig ? first_layer_height: Base_Thickness;
c_MH_Jig_Second_Level_Height = first_layer_height+2*layer_height;
c_Base_Line_Height = Mounting_Hole_Jig ? topmost_z-MH_Spacer_End+c_MH_Jig_Second_Level_Height+c_Base_Thickness: Base_Line_Height;
c_Lower_Perimeter_Height = Mounting_Hole_Jig ? c_Base_Line_Height:Lower_Perimeter_Height;
mesh_start_z = PCB_Thickness+topmost_z+c_Base_Thickness-c_Base_Line_Height;
bottom_insertion_z = 9.339479970932008;
// Height of the individual components
max_z_J1= (Insert_J1_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_J1= -2.9997399854660034;
// } END : Computed Values

module peri_line_scad(start,end,line_width){
	hull() {
		translate(v = start) {
			circle(d = line_width);
		}
		translate(v = end) {
			circle(d = line_width);
		}
	}
}
module fitting_cuts_J1_0(){
	union() {
		translate(v = [61.46, -57.2, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [61.46, -57.2, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [61.46, -57.2, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([1.2690761204389767, -3.55561725607815],[1.4538520326436606, -3.632153928784291],0.4);
						hull() {
							union() {
								peri_line_scad([1.2690761204674887, 1.0156173317072148],[1.4538520269697461, 1.0921540181802327],0.4);
								peri_line_scad([1.0156173317072148, 1.2690761204674887],[1.0921540181802327, 1.4538520269697461],0.4);
							}
						}
						peri_line_scad([1.0156173317072148, 1.2690761204674887],[1.0921540181802327, 1.4538520269697461],0.4);
						hull() {
							union() {
								peri_line_scad([-1.0156173317072148, 1.2690761204674887],[-1.0921540181802327, 1.4538520269697461],0.4);
								peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
							}
						}
						peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
						hull() {
							union() {
								peri_line_scad([-1.2690761204389767, -3.55561725607815],[-1.4538520326436606, -3.632153928784291],0.4);
								peri_line_scad([-1.0156173316383803, -3.809076120496001],[-1.0921540318782748, -3.993852021295831],0.4);
							}
						}
						peri_line_scad([-1.0156173316383803, -3.809076120496001],[-1.0921540318782748, -3.993852021295831],0.4);
						hull() {
							union() {
								peri_line_scad([1.0156173316383803, -3.809076120496001],[1.0921540318782748, -3.993852021295831],0.4);
								peri_line_scad([1.2690761204389767, -3.55561725607815],[1.4538520326436606, -3.632153928784291],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [61.46, -57.2, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_J1_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_J1_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_J1_0(){
	union() {
		translate(v = [61.46, -57.2, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J1) {
						union() {
							hullpoly_J1_0_0();
						}
					}
				}
			}
		}
		translate(v = [61.46, -57.2, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (5.999479970932007 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J1) {
						union() {
							hullpoly_J1_0_1();
						}
					}
				}
			}
		}
	}
}
module ref_J1_0(){
	union() {
		hullpoly_J1_0_0();
	}
}
module wiggle_pocket_J1_0(){
	translate(v = [61.46, -57.2, (PCB_Thickness + min_z_J1)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (max_z_J1 - min_z_J1)) {
				offset(r = Effective_Shell_Gap_For_J1) {
					union() {
						ref_J1_0();
					}
				}
			}
		}
	}
}
module perimeter_J1_0(){
	union() {
		translate(v = [61.46, -57.2, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							ref_J1_0();
						}
					}
				}
			}
		}
		translate(v = [61.46, -57.2, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1) + Wrapper_Thickness_For_J1)) {
							union() {
								ref_J1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
							union() {
								ref_J1_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J1_0(){
	union() {
		translate(v = [61.46, -57.2, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J1 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
							union() {
								hullpoly_J1_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J1) {
							union() {
								hullpoly_J1_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [61.46, -57.2, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J1 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
							union() {
								hullpoly_J1_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J1) {
							union() {
								hullpoly_J1_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [61.46, -57.2, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1) + Wrapper_Thickness_For_J1)) {
							union() {
								ref_J1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
							union() {
								ref_J1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [61.46, -57.2, (PCB_Thickness + max_z_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							ref_J1_0();
						}
					}
				}
			}
		}
	}
}
module shape_J1_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_J1_0_0(){
	translate(v = [61.46, -57.2, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((2.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J1) {
					union() {
						shape_J1_0_0();
					}
				}
			}
		}
	}
}
module shape_J1_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_J1_0_1(){
	translate(v = [61.46, -57.2, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((8.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J1) {
					union() {
						shape_J1_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J1_0(){
	union() {
		translate(v = [61.46, -57.2, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							shape_J1_0_0();
						}
					}
				}
			}
		}
		translate(v = [61.46, -57.2, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1) + Wrapper_Thickness_For_J1)) {
							union() {
								shape_J1_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
							union() {
								shape_J1_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J1_0(){
	union() {
		keepout_volume_J1_0_0();
		keepout_volume_J1_0_1();
	}
}
module courtyard_J1(){
	polygon(points = [[65.805, -55.405], [65.805, -58.995], [59.665, -58.995], [59.665, -55.405]]);
}
module courtyard_pocket_J1(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_J1]) {
			linear_extrude(height = (max_z_J1 - min_z_J1)) {
				offset(r = Effective_Shell_Gap_For_J1) {
					union() {
						courtyard_J1();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J1(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J1)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J1) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
					union() {
						courtyard_J1();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			linear_extrude(height = Wrapper_Height_For_J1) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1) + Wrapper_Thickness_For_J1)) {
						union() {
							courtyard_J1();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							courtyard_J1();
						}
					}
				}
			}
		}
	}
}
module pcb_edge(){
	polygon(points = [[50.0, -50.0], [70.0, -50.0], [70.0, -70.0], [50.0, -70.0]]);
}
module pcb(){
	linear_extrude(height = PCB_Thickness) {
		union() {
			pcb_edge();
		}
	}
}
module mounted_smd_keepouts(){
	union();
}
module wide_line(start,end){
	hull() {
		union() {
			translate(v = start) {
				cylinder(d = Base_Line_Width, h = c_Base_Line_Height);
			}
			translate(v = end) {
				cylinder(d = Base_Line_Width, h = c_Base_Line_Height);
			}
		}
	}
}
module base_solid(){
	translate(v = [0, 0, (PCB_Thickness + topmost_z)]) {
		linear_extrude(height = c_Base_Thickness) {
			offset(r = (PCB_Holder_Perimeter + PCB_Gap)) {
				union() {
					pcb_edge();
				}
			}
		}
	}
}
module base_solid_fill(){
	translate(v = [0, 0, (PCB_Thickness + SMD_Clearance_From_Shells)]) {
		linear_extrude(height = ((topmost_z + c_Base_Thickness) - SMD_Clearance_From_Shells)) {
			offset(r = (PCB_Holder_Perimeter + PCB_Gap)) {
				union() {
					pcb_edge();
				}
			}
		}
	}
}
module base_volume(){
	linear_extrude(height = c_Base_Line_Height) {
		offset(r = (PCB_Holder_Perimeter + PCB_Gap)) {
			union() {
				pcb_edge();
			}
		}
	}
}
module base_mesh(){
	translate(v = [0, 0, mesh_start_z]) {
		intersection() {
			union() {
				wide_line([np.float64(62.730000000000004), np.float64(-57.2)],[np.float64(70.0), np.float64(50.0)]);
				wide_line([np.float64(70.0), np.float64(50.0)],[np.float64(50.0), np.float64(50.0)]);
				wide_line([np.float64(50.0), np.float64(50.0)],[np.float64(62.730000000000004), np.float64(-57.2)]);
				wide_line([np.float64(70.0), np.float64(70.0)],[np.float64(50.0), np.float64(70.0)]);
				wide_line([np.float64(50.0), np.float64(70.0)],[np.float64(50.0), np.float64(50.0)]);
				wide_line([np.float64(50.0), np.float64(50.0)],[np.float64(70.0), np.float64(70.0)]);
				wide_line([np.float64(70.0), np.float64(50.0)],[np.float64(70.0), np.float64(70.0)]);
				wide_line([np.float64(70.0), np.float64(70.0)],[np.float64(50.0), np.float64(50.0)]);
				wide_line([np.float64(50.0), np.float64(50.0)],[np.float64(70.0), np.float64(50.0)]);
			}
			union() {
				base_volume();
			}
		}
	}
}
module base_minmesh(){
	translate(v = [0, 0, mesh_start_z]) {
		intersection() {
			union() {
				wide_line([50.0, 50.0],[62.730000000000004, -57.2]);
				wide_line([62.730000000000004, -57.2],[70.0, 50.0]);
				wide_line([70.0, 50.0],[70.0, 70.0]);
				wide_line([70.0, 70.0],[50.0, 70.0]);
				wide_line([50.0, 50.0],[50.0, 70.0]);
				wide_line([50.0, 50.0],[50.0, -50.0]);
				wide_line([62.730000000000004, -57.2],[62.730000000000004, -50.0]);
				wide_line([70.0, 50.0],[70.0, -50.0]);
				wide_line([70.0, 70.0],[70.0, -50.0]);
				wide_line([50.0, 70.0],[50.0, -50.0]);
			}
			union() {
				base_volume();
			}
		}
	}
}
module pcb_holder(){
	union() {
		linear_extrude(height = ((topmost_z + PCB_Thickness) + c_Base_Thickness)) {
			difference() {
				offset(r = (PCB_Holder_Perimeter + PCB_Gap)) {
					union() {
						pcb_edge();
					}
				}
				offset(r = PCB_Gap) {
					union() {
						pcb_edge();
					}
				}
			}
		}
		translate(v = [0, 0, PCB_Thickness]) {
			linear_extrude(height = (topmost_z + c_Base_Thickness)) {
				difference() {
					offset(r = PCB_Gap) {
						union() {
							pcb_edge();
						}
					}
					offset(r = (-PCB_Overlap)) {
						union() {
							pcb_edge();
						}
					}
				}
			}
		}
	}
}
module pcb_perimeter_short(){
	translate(v = [0, 0, ((PCB_Thickness + topmost_z) - c_Lower_Perimeter_Height)]) {
		linear_extrude(height = (c_Lower_Perimeter_Height + c_Base_Thickness)) {
			difference() {
				offset(r = (PCB_Holder_Perimeter + PCB_Gap)) {
					union() {
						pcb_edge();
					}
				}
				offset(r = (-PCB_Overlap)) {
					union() {
						pcb_edge();
					}
				}
			}
		}
	}
}
module pcb_support_groove(){
	translate(v = [0, 0, (-tiny_dimension)]) {
		linear_extrude(height = base_z) {
			union() {
				peri_line_scad([50.0, -50.0],[70.0, -50.0],groove_width);
				peri_line_scad([50.0, -50.0],[70.0, -50.0],groove_width);
				peri_line_scad([70.0, -50.0],[70.0, -70.0],groove_width);
				peri_line_scad([70.0, -50.0],[70.0, -70.0],groove_width);
				peri_line_scad([70.0, -70.0],[50.0, -70.0],groove_width);
				peri_line_scad([70.0, -70.0],[50.0, -70.0],groove_width);
				peri_line_scad([50.0, -70.0],[50.0, -50.0],groove_width);
				peri_line_scad([50.0, -70.0],[50.0, -50.0],groove_width);
			}
		}
	}
}

//
module mounted_component_shells() {
  union() {
  if(Include_J1_in_Jig) {
    if(Shell_Type_For_J1=="courtyard") {
      courtyard_perimeter_J1();
    } else if(Shell_Type_For_J1=="tight") {
      tight_perimeter_J1_0();
    } else if(Shell_Type_For_J1=="fitting_flower") {
      fitting_flower_J1_0();
    } else {
      perimeter_J1_0();
    }
  }
  }
}
module mounted_component_cuts() {
  union() {
    if(Include_J1_in_Jig) {
      if(Shell_Type_For_J1=="fitting") {
        fitting_cuts_J1_0();
      } else if(Shell_Type_For_J1=="fitting_flower") {
        fitting_cuts_J1_0();
      }
    }
  }
}
module mounted_component_pockets() {
  union() {
    if(Shell_Type_For_J1=="courtyard") {
      courtyard_pocket_J1();
    } else if(Shell_Type_For_J1=="wiggle") {
      wiggle_pocket_J1_0();
    } else if(Shell_Type_For_J1=="tight") {
      tight_pocket_J1_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J1_0();
    }
  }
}
module base_frame_xy_lines() {
  wide_line([pcb_min_x, pcb_min_y],[pcb_max_x, pcb_min_y]);
  wide_line([pcb_min_x, pcb_max_y],[pcb_max_x, pcb_max_y]);
  wide_line([pcb_min_x, pcb_min_y],[pcb_min_x, pcb_max_y]);
  wide_line([pcb_max_x, pcb_min_y],[pcb_max_x, pcb_max_y]);
}
module base_x_lines() {
  translate([0,0,mesh_start_z]) {
    intersection() {
      union() {
        if(Include_J1_in_Jig) {
          wide_line([pcb_min_x, -57.2],[pcb_max_x, -57.2]);
        }
        base_frame_xy_lines();
      }
      base_volume();
    }
  }
}
module base_y_lines() {
  translate([0,0,mesh_start_z]) {
    intersection() {
      union() {
        if(Include_J1_in_Jig) {
          wide_line([62.730000000000004, pcb_min_y],[62.730000000000004, pcb_max_y]);
        }
        base_frame_xy_lines();
      }
      base_volume();
    }
  }
}
module base_griddish() {
  union() {
    base_x_lines();
    base_y_lines();
  }
}
module mounting_hole_bolt_shells() {
  translate([0,0,0]) {
  }
}
module mounting_hole_keepout_volume() {
  translate([0,0,PCB_Thickness]) {
    linear_extrude(topmost_z+c_Base_Thickness) {
    }
  }
}
module base_connect_mounting_hole_lines() {
  translate([0,0,mesh_start_z]) {
    union() {
     }
  }
}
module mounting_hole_jig_keepout() {
  translate([0,0,PCB_Thickness+MH_Spacer_End-tiny_dimension]) {
    linear_extrude(MH_Spacer_Start-MH_Spacer_End+2*tiny_dimension) {
      offset(1000)
        pcb_edge();
    }
  }
}
module mounting_hole_jig_spacers() {
  spacer_gap = c_Spacer_Is_Fused ? 0: 2*tiny_dimension;
  translate([0,0,PCB_Thickness+MH_Spacer_End+2*tiny_dimension]) {
    linear_extrude(MH_Spacer_Start-MH_Spacer_End-spacer_gap) {
    }
  }
  if (!Bolt_Is_External) {
  }
}


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
        } else if(Base_Type=="minmesh") {
          base_minmesh();
        } else if(Base_Type=="griddish") {
          base_griddish();
        } else if(Base_Type=="x_lines") {
          base_x_lines();
        } else if(Base_Type=="y_lines") {
          base_y_lines();
        } else if(Base_Type=="solid_fill") {
          base_solid_fill();
        } else {
          base_solid(); // solid
        }
        mounted_component_shells();
        mounting_hole_bolt_shells();
        base_connect_mounting_hole_lines();
      }
      mounted_component_pockets(); // FIXME: fix terminology - "included"
      mounted_component_cuts();
      mounted_smd_keepouts();
      mounting_hole_keepout_volume();
      if(Mounting_Hole_Jig) {
        mounting_hole_jig_keepout();
      }
    }
  }
  preview_helpers();
  if(Mounting_Hole_Jig) {
    mounting_hole_jig_spacers();
  }
}
module complete_model_component_fitting() {
  color("steelblue") {
    difference() {
      union() {
        if(Base_Type=="mesh") {
          base_mesh();
        } else if(Base_Type=="minmesh") {
          base_minmesh();
        } else if(Base_Type=="griddish") {
          base_griddish();
        } else if(Base_Type=="x_lines") {
          base_x_lines();
        } else if(Base_Type=="y_lines") {
          base_y_lines();
        } else if(Base_Type=="solid_fill") {
          base_solid_fill();
        } else {
          base_solid(); // solid
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

pcb_min_x = 50.0;
pcb_max_x = 70.0;
pcb_min_y = -70.0;
pcb_max_y = -50.0;

module style_of_jig() {
  if(Type_of_Jig=="TH_soldering")
    complete_model_TH_soldering();
  else
    complete_model_component_fitting();
}

orient_to_print=1;

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

/*

[environment]

[cache]
enabled = true
# hash or timestamp
method = 'timestamp'

[openscad]
binary = 'openscad'
use_manifold = false

[kicad]
# kicad keeps 3d models, footprints in a "share" directory this is inside under
# the install directory on Windows, and typically /usr/share/kicad/ on Linux.
# The default here is for Linux. If this is seen on windows, we can ask users to
# fix easily. The entire path upto "kicad" is required
share = '/usr/share/kicad'

[freecad]
cmd = 'freecad.cmd'

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
# - tight          => step-well of concave hulls. Provides the tightest fit, but
#                     also requires the most accuracy in dimensions and printing
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

# If you have SMD components on the board, you may need a gap between the
# shells and the PCB. The gap ensures SMD components don't touch the shells.
#
# Think of this as a vertical "keep-out" distance between the PCB and the
# shells
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
#
# Same properties can then be provided on a per component (ref) level, but
# as deltas. Thus the final value can be different between components that
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

*/
