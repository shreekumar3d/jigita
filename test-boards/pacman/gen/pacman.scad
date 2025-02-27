// Customizable Jig Generator
// In OpenSCAD, use "Description Only" for best user experience
// understanding the tunable parameters.
// -----------------------------------------------------
// Auto generated file by jigit, the awesome automatic
// jig generator for your PCB designs. Checkout the project
// at https://github.com/shreekumar3d/jigit
// -----------------------------------------------------
// Input board file   : pacman.kicad_pcb
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
MH_Spacer_End=4.916119992733002;
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
//Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal (C1)
Include_C1_in_Jig=true; // [false,true]
//Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (J1)
Include_J1_in_Jig=true; // [false,true]
//Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (J3)
Include_J3_in_Jig=true; // [false,true]
//Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (J4)
Include_J4_in_Jig=true; // [false,true]
//Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical (J2)
Include_J2_in_Jig=true; // [false,true]
/* [Footprint: Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP1 = 0.1;
//Thickness of shell
Shell_Thickness_For_FP1 = 1.2;
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP1 = 1;
/* [Footprint: Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP2 = 0.1;
//Thickness of shell
Shell_Thickness_For_FP2 = 1.2;
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP2 = 1;
/* [C1 (Capacitor_THT:CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal)] */
//Type of shell for this component
Shell_Type_For_C1="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_C1_From="top"; // [top,bottom]
//Delta(+/-) thickness for shell, additional to footprint setting
Delta_Shell_Thickness_For_C1=0;
//Delta XY gap to allow insertion of this component into its shell
Delta_Shell_Gap_For_C1=0;
//Delta Z clearance from the shell to PCB
Delta_Shell_Clearance_From_PCB_For_C1=0;
//Wrapper thickness
Wrapper_Thickness_For_C1=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_C1=0.0; // [0:0.1:8.539479970932007]
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
/* [J3 (Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical)] */
//Type of shell for this component
Shell_Type_For_J3="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J3_From="top"; // [top,bottom]
//Delta(+/-) thickness for shell, additional to footprint setting
Delta_Shell_Thickness_For_J3=0;
//Delta XY gap to allow insertion of this component into its shell
Delta_Shell_Gap_For_J3=0;
//Delta Z clearance from the shell to PCB
Delta_Shell_Clearance_From_PCB_For_J3=0;
//Wrapper thickness
Wrapper_Thickness_For_J3=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J3=0.0; // [0:0.1:8.539479970932007]
/* [J4 (Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical)] */
//Type of shell for this component
Shell_Type_For_J4="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J4_From="top"; // [top,bottom]
//Delta(+/-) thickness for shell, additional to footprint setting
Delta_Shell_Thickness_For_J4=0;
//Delta XY gap to allow insertion of this component into its shell
Delta_Shell_Gap_For_J4=0;
//Delta Z clearance from the shell to PCB
Delta_Shell_Clearance_From_PCB_For_J4=0;
//Wrapper thickness
Wrapper_Thickness_For_J4=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J4=0.0; // [0:0.1:8.539479970932007]
/* [J2 (Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical)] */
//Type of shell for this component
Shell_Type_For_J2="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J2_From="top"; // [top,bottom]
//Delta(+/-) thickness for shell, additional to footprint setting
Delta_Shell_Thickness_For_J2=0;
//Delta XY gap to allow insertion of this component into its shell
Delta_Shell_Gap_For_J2=0;
//Delta Z clearance from the shell to PCB
Delta_Shell_Clearance_From_PCB_For_J2=0;
//Wrapper thickness
Wrapper_Thickness_For_J2=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J2=0.0; // [0:0.1:8.539479970932007]
// } End of configurable parameters
/* [Hidden] */
$fs = 0.05;
first_layer_height = 0.2;
layer_height = 0.2;
Effective_Shell_Thickness_For_C1 = Shell_Thickness_For_FP2 + Delta_Shell_Thickness_For_C1;
Effective_Shell_Gap_For_C1 = Shell_Gap_For_FP2 + Delta_Shell_Gap_For_C1;
Effective_Shell_Clearance_From_PCB_For_C1 = Shell_Clearance_From_PCB_For_FP2 + Delta_Shell_Clearance_From_PCB_For_C1;
Effective_Shell_Thickness_For_J1 = Shell_Thickness_For_FP1 + Delta_Shell_Thickness_For_J1;
Effective_Shell_Gap_For_J1 = Shell_Gap_For_FP1 + Delta_Shell_Gap_For_J1;
Effective_Shell_Clearance_From_PCB_For_J1 = Shell_Clearance_From_PCB_For_FP1 + Delta_Shell_Clearance_From_PCB_For_J1;
Effective_Shell_Thickness_For_J3 = Shell_Thickness_For_FP1 + Delta_Shell_Thickness_For_J3;
Effective_Shell_Gap_For_J3 = Shell_Gap_For_FP1 + Delta_Shell_Gap_For_J3;
Effective_Shell_Clearance_From_PCB_For_J3 = Shell_Clearance_From_PCB_For_FP1 + Delta_Shell_Clearance_From_PCB_For_J3;
Effective_Shell_Thickness_For_J4 = Shell_Thickness_For_FP1 + Delta_Shell_Thickness_For_J4;
Effective_Shell_Gap_For_J4 = Shell_Gap_For_FP1 + Delta_Shell_Gap_For_J4;
Effective_Shell_Clearance_From_PCB_For_J4 = Shell_Clearance_From_PCB_For_FP1 + Delta_Shell_Clearance_From_PCB_For_J4;
Effective_Shell_Thickness_For_J2 = Shell_Thickness_For_FP1 + Delta_Shell_Thickness_For_J2;
Effective_Shell_Gap_For_J2 = Shell_Gap_For_FP1 + Delta_Shell_Gap_For_J2;
Effective_Shell_Clearance_From_PCB_For_J2 = Shell_Clearance_From_PCB_For_FP1 + Delta_Shell_Clearance_From_PCB_For_J2;

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
max_z_C1= (Insert_C1_From=="bottom")? bottom_insertion_z : 4.516119992733001; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Capacitor_THT.3dshapes/CP_Axial_L10.0mm_D4.5mm_P15.00mm_Horizontal.wrl
min_z_C1= -1.9989800012111665;
max_z_J3= (Insert_J3_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_J3= -2.9997399854660034;
max_z_J4= (Insert_J4_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_J4= -2.9997399854660034;
max_z_J2= (Insert_J2_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_J2= -2.9997399854660034;
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
		translate(v = [65.0, -62.0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J1))]) {
			rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [65.0, -62.0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1))]) {
			rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J1) {
						union() {
							hullpoly_J1_0_0();
						}
					}
				}
			}
		}
		translate(v = [65.0, -62.0, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
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
	translate(v = [65.0, -62.0, (PCB_Thickness + min_z_J1)]) {
		rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J1)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							ref_J1_0();
						}
					}
				}
			}
		}
		translate(v = [65.0, -62.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, (PCB_Thickness + max_z_J1)]) {
			rotate(a = [0, 0, 0.0]) {
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
	translate(v = [65.0, -62.0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1))]) {
		rotate(a = [0, 0, 0.0]) {
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
	translate(v = [65.0, -62.0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1))]) {
		rotate(a = [0, 0, 0.0]) {
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
		translate(v = [65.0, -62.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J1)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							shape_J1_0_0();
						}
					}
				}
			}
		}
		translate(v = [65.0, -62.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 0.0]) {
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
	polygon(points = [[66.795, -60.205], [66.795, -66.345], [63.205, -66.345], [63.205, -60.205]]);
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
module fitting_cuts_C1_0(){
	union() {
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + max(4.015739924907685, Effective_Shell_Clearance_From_PCB_For_C1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 4.516119992733001) - max(4.015739924907685, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([2.634451476740691, -1.3732582236135895],[2.540126091676293, -1.5496178610946558],0.4);
						hull() {
							union() {
								peri_line_scad([12.300734192750506, -1.3681857783096656],[12.397862698924062, -1.5430172780129323],0.4);
								peri_line_scad([12.493334668543685, -1.0588017534356393],[12.678476536588915, -1.134448886208287],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.493334668543685, -1.0588017534356393],[12.678476536588915, -1.134448886208287],0.4);
								peri_line_scad([12.498348385522492, -1.0361908236945274],[12.696673218890057, -1.0620222090566676],0.4);
							}
						}
						peri_line_scad([12.498348385522492, -1.0361908236945274],[12.696673218890057, -1.0620222090566676],0.4);
						hull() {
							union() {
								peri_line_scad([12.498357433969447, 1.0361341178905477],[12.694872577945995, 1.0733066640486602],0.4);
								peri_line_scad([12.386930854402019, 1.358139088374753],[12.516686335082035, 1.5103347362543755],0.4);
							}
						}
						peri_line_scad([12.386930854402019, 1.358139088374753],[12.516686335082035, 1.5103347362543755],0.4);
						hull() {
							union() {
								peri_line_scad([2.634451476740691, 1.3732582236135895],[2.540126091676293, 1.5496178610946556],0.4);
								peri_line_scad([2.5434434811158164, 1.2365510929360666],[2.362770996813607, 1.3223266921241101],0.4);
							}
						}
						peri_line_scad([2.5434434811158164, 1.2365510929360666],[2.362770996813607, 1.3223266921241101],0.4);
						hull() {
							union() {
								peri_line_scad([2.5434434811158164, -1.2365510929360666],[2.362770996813607, -1.3223266921241101],0.4);
								peri_line_scad([2.634451476740691, -1.3732582236135895],[2.540126091676293, -1.5496178610946558],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 4.516119992733001) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([5.633979961092906, -1.3715635372446675],[(5.633979961092906 + (((0.8800000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0005254948981333524)), (-1.3715635372446675 + (((0.8800000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.9999998619275464))],0.4);
								peri_line_scad([9.30122077499363, -1.3696364206406544],[(9.30122077499363 + (((0.8900000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0005254948981333524)), (-1.3696364206406544 + (((0.8900000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.9999998619275464))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([9.388322390099038, 1.3695906491799776],[(9.388322390099038 + (((0.8900000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0005254948981333524)), (1.3695906491799776 + (((0.8900000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 0.9999998619275464))],0.4);
								peri_line_scad([5.633979961092906, 1.3715635372446675],[(5.633979961092906 + (((0.8800000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0005254948981333524)), (1.3715635372446675 + (((0.8800000000000006 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 0.9999998619275464))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + max(3.512820041179657, Effective_Shell_Clearance_From_PCB_For_C1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 4.015739924907685) - max(3.512820041179657, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([2.6544913674514494, 1.8151184361792123],[2.6161960761667054, 2.011417877506529],0.4);
								peri_line_scad([2.5762169088215487, 1.7848659242712441],[2.4448646969715604, 1.9356856724546827],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([2.5762169088215487, 1.7848659242712441],[2.4448646969715604, 1.9356856724546827],0.4);
								peri_line_scad([2.513011389585744, 1.6710118148084074],[2.322744857400925, 1.7326449773944963],0.4);
							}
						}
						peri_line_scad([2.513011389585744, 1.6710118148084074],[2.322744857400925, 1.7326449773944963],0.4);
						hull() {
							union() {
								peri_line_scad([2.513011389585744, -1.6710118148084074],[2.322744857400925, -1.7326449773944963],0.4);
								peri_line_scad([2.5762169088215487, -1.7848659242712441],[2.4448646969715604, -1.9356856724546827],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([2.5762169088215487, -1.7848659242712441],[2.4448646969715604, -1.9356856724546827],0.4);
								peri_line_scad([2.6544887221315583, -1.8151179238126391],[2.6167224948250163, -2.0115198384546065],0.4);
							}
						}
						peri_line_scad([2.6544887221315583, -1.8151179238126391],[2.6167224948250163, -2.0115198384546065],0.4);
						hull() {
							union() {
								peri_line_scad([12.344256671972161, -1.815110307320742],[12.372990102857235, -2.0130355203421573],0.4);
								peri_line_scad([12.42514450934624, -1.784775801538217],[12.53234340914116, -1.9536200963271102],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.42514450934624, -1.784775801538217],[12.53234340914116, -1.9536200963271102],0.4);
								peri_line_scad([12.455288725063927, -1.759728375767074],[12.629444881101751, -1.8580626694500455],0.4);
							}
						}
						peri_line_scad([12.455288725063927, -1.759728375767074],[12.629444881101751, -1.8580626694500455],0.4);
						hull() {
							union() {
								peri_line_scad([12.493286731867045, 1.660931895492749],[12.688015935240342, 1.7065448032448434],0.4);
								peri_line_scad([12.47816151718452, 1.6936676011927725],[12.649912340534707, 1.7961451825388046],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.47816151718452, 1.6936676011927725],[12.649912340534707, 1.7961451825388046],0.4);
								peri_line_scad([12.455434517814579, 1.723971289403001],[12.600432123721928, 1.861723582600382],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.455434517814579, 1.723971289403001],[12.600432123721928, 1.861723582600382],0.4);
								peri_line_scad([12.425122190581748, 1.749230396426926],[12.536784843275068, 1.9151564401738044],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.425122190581748, 1.749230396426926],[12.536784843275068, 1.9151564401738044],0.4);
								peri_line_scad([12.387226870900552, 1.7694443543307063],[12.457779051873972, 1.9565870532529288],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.387226870900552, 1.7694443543307063],[12.457779051873972, 1.9565870532529288],0.4);
								peri_line_scad([12.34459181558301, 1.7795584398127116],[12.306296524298267, 1.975857881140028],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 4.015739924907685) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([5.654213879211385, -1.8303296963706064],[(5.654213879211385 + (((0.4300000000000002 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0022764262015093698)), (-1.8303296963706064 + (((0.4300000000000002 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.9999974089385177))],0.4);
								peri_line_scad([9.344410388737234, -1.8219292145814385],[(9.344410388737234 + (((0.4300000000000002 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0022764262015093698)), (-1.8219292145814385 + (((0.4300000000000002 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.9999974089385177))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + max(3.0124399733543394, Effective_Shell_Clearance_From_PCB_For_C1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 3.512820041179657) - max(3.0124399733543394, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([12.344258664479367, 2.1046700770345006],[12.372593593923277, 2.3026527322682577],0.4);
						hull() {
							union() {
								peri_line_scad([2.634282908776626, 2.084386977323453],[2.57367111652511, 2.27498133883517],0.4);
								peri_line_scad([2.5585008175276585, 2.0313069860251773],[2.414321809066328, 2.1699158368216094],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([2.5585008175276585, 2.0313069860251773],[2.414321809066328, 2.1699158368216094],0.4);
								peri_line_scad([2.5129945479917573, 1.9605240509652113],[2.326096334604262, 2.031721367154533],0.4);
							}
						}
						peri_line_scad([2.5129945479917573, 1.9605240509652113],[2.326096334604262, 2.031721367154533],0.4);
						hull() {
							union() {
								peri_line_scad([2.5129945479917573, -1.9605240509652113],[2.3260963346042622, -2.0317213671545336],0.4);
								peri_line_scad([2.5585008175276585, -2.0313069860251773],[2.414321809066328, -2.1699158368216094],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([2.5585008175276585, -2.0313069860251773],[2.414321809066328, -2.1699158368216094],0.4);
								peri_line_scad([2.634291613848146, -2.08438978957185],[2.5719388072927214, -2.2744217014042096],0.4);
							}
						}
						peri_line_scad([2.634291613848146, -2.08438978957185],[2.5719388072927214, -2.2744217014042096],0.4);
						hull() {
							union() {
								peri_line_scad([12.344257654526311, -2.1046702221030347],[12.372794574581473, -2.3026238636299468],0.4);
								peri_line_scad([12.38702696428888, -2.0921266005887835],[12.497560467596523, -2.2588069672986615],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.38702696428888, -2.0921266005887835],[12.497560467596523, -2.2588069672986615],0.4);
								peri_line_scad([12.478131404718438, -1.9731218593096818],[12.655904721284752, -2.0647550842721],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.478131404718438, -1.9731218593096818],[12.655904721284752, -2.0647550842721],0.4);
								peri_line_scad([12.4932823975391, -1.9352713647518704],[12.688878466501507, -1.9770107682748375],0.4);
							}
						}
						peri_line_scad([12.4932823975391, -1.9352713647518704],[12.688878466501507, -1.9770107682748375],0.4);
						hull() {
							union() {
								peri_line_scad([12.4932823975391, 1.9352713647518704],[12.688878466501507, 1.9770107682748372],0.4);
								peri_line_scad([12.478131404718438, 1.9731218593096818],[12.655904721284752, 2.0647550842721],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.478131404718438, 1.9731218593096818],[12.655904721284752, 2.0647550842721],0.4);
								peri_line_scad([12.38702696428888, 2.0921266005887835],[12.497560467596523, 2.2588069672986615],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([12.38702696428888, 2.0921266005887835],[12.497560467596523, 2.2588069672986615],0.4);
								peri_line_scad([12.344258664479367, 2.1046700770345006],[12.372593593923277, 2.3026527322682577],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 3.512820041179657) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([9.344403181917055, 2.0994106716942866],[(9.344403181917055 + (((0.16 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 0.0017497733824124522)), (2.0994106716942866 + (((0.16 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 0.9999984691453834))],0.4);
								peri_line_scad([5.633962145763427, 2.092918230793231],[(5.633962145763427 + (((0.16 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 0.0017497733824124522)), (2.092918230793231 + (((0.16 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 0.9999984691453834))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([5.633712896719594, -2.1066118813285017],[(5.633712896719594 + (((0.15 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.00029086301889580423)), (-2.1066118813285017 + (((0.15 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.9999999576993512))],0.4);
								peri_line_scad([9.344400756891552, -2.1055325794096573],[(9.344400756891552 + (((0.15 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.00029086301889580423)), (-2.1055325794096573 + (((0.15 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.9999999576993512))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + max(2.51206005692482, Effective_Shell_Clearance_From_PCB_For_C1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 3.0124399733543394) - max(2.51206005692482, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3209514871434426, -0.07070866222514832],[0.13865508794632894, -0.15297665624327528],0.4);
						hull() {
							union() {
								peri_line_scad([2.614106182457941, -2.206365047251355],[2.524891976331197, -2.3853645596115145],0.4);
								peri_line_scad([2.7001489330356625, -2.2291284119611925],[2.674343916174181, -2.4274566779869375],0.4);
							}
						}
						peri_line_scad([2.7001489330356625, -2.2291284119611925],[2.674343916174181, -2.4274566779869375],0.4);
						peri_line_scad([12.387156387117903, -2.2114339639939176],[12.471805324620995, -2.3926370472447216],0.4);
						hull() {
							union() {
								peri_line_scad([14.677755872501901, -0.09609169001710824],[14.85848254094496, -0.1817530658726996],0.4);
								peri_line_scad([14.68028882466733, 0.07070916393703996],[14.86263047384272, 0.15287681557683774],0.4);
							}
						}
						peri_line_scad([14.68028882466733, 0.07070916393703996],[14.86263047384272, 0.15287681557683774],0.4);
						peri_line_scad([12.387156387117903, 2.2114339639939176],[12.471805324620995, 2.3926370472447216],0.4);
						hull() {
							union() {
								peri_line_scad([2.7001489330356625, 2.2291284119611925],[2.674343916174181, 2.4274566779869375],0.4);
								peri_line_scad([2.614106182457941, 2.206365047251355],[2.5248919763311974, 2.385364559611515],0.4);
							}
						}
						peri_line_scad([2.614106182457941, 2.206365047251355],[2.5248919763311974, 2.385364559611515],0.4);
						hull() {
							union() {
								peri_line_scad([0.3234833901519753, 0.09609115562755108],[0.14280741873973862, 0.1818594093945752],0.4);
								peri_line_scad([0.31841148199598557, 0.01565134010256205],[0.13611508279887188, -0.0666166539155649],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 3.0124399733543394) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([5.700019907951356, -2.229120053291321],[(5.700019907951356 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (-2.229120053291321 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -1.0))],0.4);
								peri_line_scad([9.389706375031274, -2.229120053291321],[(9.389706375031274 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (-2.229120053291321 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -1.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([9.389706375031274, 2.229120053291321],[(9.389706375031274 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (2.229120053291321 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 1.0))],0.4);
								peri_line_scad([5.700019907951354, 2.229120053291321],[(5.700019907951354 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (2.229120053291321 + (((0.03 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 1.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.51206005692482) - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([2.700114759121064, -2.2494444516108247],[2.6811445251793438, -2.44854274448195],0.4);
						hull() {
							union() {
								peri_line_scad([12.344174113241674, -2.2443859336098946],[12.389419290224158, -2.439200907263933],0.4);
								peri_line_scad([12.387153825162928, -2.2292152391097284],[12.472315153661082, -2.41017807542821],0.4);
							}
						}
						peri_line_scad([12.387153825162928, -2.2292152391097284],[12.472315153661082, -2.41017807542821],0.4);
						hull() {
							union() {
								peri_line_scad([15.051362967173617, -0.27866432210197367],[15.186829606302805, -0.42579959891566754],0.4);
								peri_line_scad([15.1020091413091, -0.22042388650411446],[15.268231264010776, -0.3316453139565132],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([15.1020091413091, -0.22042388650411446],[15.268231264010776, -0.3316453139565132],0.4);
								peri_line_scad([15.137468894239388, -0.14949549903275544],[15.323709425023631, -0.2223958741566408],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([15.137468894239388, -0.14949549903275544],[15.323709425023631, -0.2223958741566408],0.4);
								peri_line_scad([15.160274177891793, -0.07095017172039934],[15.357368836349679, -0.10491626668832055],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([15.160274177891793, -0.07095017172039934],[15.357368836349679, -0.10491626668832055],0.4);
								peri_line_scad([15.165341031948993, 0.015207208411011093],[15.365233473327217, 0.021765552703075293],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([15.165341031948993, 0.015207208411011093],[15.365233473327217, 0.021765552703075293],0.4);
								peri_line_scad([15.155206965636623, 0.09628941846048389],[15.3498177140445, 0.14240510564094552],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([15.155206965636623, 0.09628941846048389],[15.3498177140445, 0.14240510564094552],0.4);
								peri_line_scad([15.127337578858514, 0.17482834996612623],[15.30774623037363, 0.26115747864525574],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([15.127337578858514, 0.17482834996612623],[15.30774623037363, 0.26115747864525574],0.4);
								peri_line_scad([15.086822665483544, 0.24067108913077656],[15.242318636767942, 0.36645265739227256],0.4);
							}
						}
						peri_line_scad([15.086822665483544, 0.24067108913077656],[15.242318636767942, 0.36645265739227256],0.4);
						hull() {
							union() {
								peri_line_scad([12.387153825162928, 2.2292152391097284],[12.472315153661082, 2.41017807542821],0.4);
								peri_line_scad([12.344174113241674, 2.2443859336098946],[12.389419290224158, 2.439200907263933],0.4);
							}
						}
						peri_line_scad([12.344174113241674, 2.2443859336098946],[12.389419290224158, 2.439200907263933],0.4);
						hull() {
							union() {
								peri_line_scad([2.700114759121064, 2.2494444516108247],[2.6811445251793438, 2.44854274448195],0.4);
								peri_line_scad([2.614134071942644, 2.229239507193776],[2.5193419688753336, 2.4053487267027966],0.4);
							}
						}
						peri_line_scad([2.614134071942644, 2.229239507193776],[2.5193419688753336, 2.4053487267027966],0.4);
						hull() {
							union() {
								peri_line_scad([-0.052654012902242774, 0.27867238410442363],[-0.18985128862765965, 0.4241952604281273],0.4);
								peri_line_scad([-0.10076968505216419, 0.22042269582280796],[-0.2668322204319178, 0.33188225953650685],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.10076968505216419, 0.22042269582280796],[-0.2668322204319178, 0.33188225953650685],0.4);
								peri_line_scad([-0.1387740225410119, 0.14948242025826652],[-0.3239693629428434, 0.22499855027993626],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.1387740225410119, 0.14948242025826652],[-0.3239693629428434, 0.22499855027993626],0.4);
								peri_line_scad([-0.16157453404616506, 0.07095017394128443],[-0.35866926905030055, 0.10491582473218801],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.16157453404616506, 0.07095017394128443],[-0.35866926905030055, 0.10491582473218801],0.4);
								peri_line_scad([-0.16664115665935975, -0.015191898204171867],[-0.3664096431124403, -0.024812283864081214],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.16664115665935975, -0.015191898204171867],[-0.3664096431124403, -0.024812283864081214],0.4);
								peri_line_scad([-0.12863762732556216, -0.17482903397768465],[-0.3091116777465801, -0.261021360345128],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.12863762732556216, -0.17482903397768465],[-0.3091116777465801, -0.261021360345128],0.4);
								peri_line_scad([-0.08558384003598558, -0.24066946669939054],[-0.24081677149282127, -0.36677552123808965],0.4);
							}
						}
						peri_line_scad([-0.08558384003598558, -0.24066946669939054],[-0.24081677149282127, -0.36677552123808965],0.4);
						hull() {
							union() {
								peri_line_scad([2.614134071942644, -2.229239507193776],[2.5193419688753336, -2.4053487267027966],0.4);
								peri_line_scad([2.6340747009850776, -2.2367444637224883],[2.6151044670433574, -2.4358427565936136],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.51206005692482) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([5.700019907951356, -2.2494399430751804],[(5.700019907951356 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (-2.2494399430751804 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -1.0))],0.4);
								peri_line_scad([9.344698124666266, -2.2494399430751804],[(9.344698124666266 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (-2.2494399430751804 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -1.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([9.344698124666266, 2.2494399430751804],[(9.344698124666266 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (2.2494399430751804 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 1.0))],0.4);
								peri_line_scad([5.700019907951354, 2.2494399430751804],[(5.700019907951354 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * -0.0)), (2.2494399430751804 + (((0.01 + Effective_Shell_Thickness_For_C1) + Effective_Shell_Gap_For_C1) * 1.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_C1_0_0(){
	polygon(points = [[2.700019907951355, -2.2504399430751802], [12.301219835281373, -2.2504399430751802], [12.344400339126587, -2.2453600084781646], [12.38757963180542, -2.230120053291321], [12.425680503845214, -2.207260044813156], [15.052040300369264, -0.27939999848604213], [15.102840251922608, -0.22097999364137647], [15.13840009689331, -0.14986000090837487], [15.161259651184082, -0.07112000219523895], [15.166340494155884, 0.015240000132471414], [15.156180019378663, 0.0965199968963862], [15.128239622116089, 0.17525999560952188], [15.087600145339966, 0.24129999697208404], [15.031720561981201, 0.29463999152183534], [12.425680503845214, 2.207260044813156], [12.38757963180542, 2.230120053291321], [12.344400339126587, 2.2453600084781646], [12.301219835281373, 2.2504399430751802], [2.700019907951355, 2.2504399430751802], [2.633979849815369, 2.2377399551868438], [2.6136601114273073, 2.230120053291321], [2.5577799224853517, 2.1894799709320067], [-0.05333999928086986, 0.27939999848604213], [-0.10159999772906296, 0.22097999364137647], [-0.13969999924302107, 0.14986000090837487], [-0.16256000772118573, 0.07112000219523895], [-0.16763999909162514, -0.015240000132471414], [-0.15494000174105163, -0.0965199968963862], [-0.12953999757766727, -0.17525999560952188], [-0.08636000469326977, -0.24129999697208404], [-0.03302000068128109, -0.29463999152183534], [2.5577799224853517, -2.1894799709320067], [2.6136601114273073, -2.230120053291321], [2.633979849815369, -2.2377399551868438]]);
}
module hullpoly_C1_0_1(){
	polygon(points = [[0.3175, 0.015240000132471414], [0.32004000514745706, -0.07112000219523895], [2.5425401186943053, -2.151380007266998], [2.6136601114273073, -2.207260044813156], [2.700019907951355, -2.230120053291321], [12.301219835281373, -2.230120053291321], [12.344400339126587, -2.2250399672985077], [12.38757963180542, -2.2123399794101717], [12.425680503845214, -2.186940003633499], [14.678659505844116, -0.0965199968963862], [14.683740348815919, -0.015240000132471414], [14.681200532913207, 0.07112000219523895], [12.425680503845214, 2.186940003633499], [12.38757963180542, 2.2123399794101717], [12.344400339126587, 2.2250399672985077], [12.301219835281373, 2.230120053291321], [2.700019907951355, 2.230120053291321], [2.6136601114273073, 2.207260044813156], [2.5425401186943053, 2.151380007266998], [0.3225800102949141, 0.0965199968963862]]);
}
module hullpoly_C1_0_2(){
	polygon(points = [[12.344400339126587, 2.105659990310669], [3.6347399854660036, 2.090420035123825], [2.633979849815369, 2.085339949131012], [2.5577799224853517, 2.0320000302791597], [2.51206005692482, 1.960880037546158], [2.504440003633499, 1.912620053291321], [2.499360069036484, 1.808480031490326], [2.4892000484466554, 0.7848599630594254], [2.4892000484466554, -0.7848599630594254], [2.499360069036484, -1.808480031490326], [2.504440003633499, -1.912620053291321], [2.51206005692482, -1.960880037546158], [2.5577799224853517, -2.0320000302791597], [2.633979849815369, -2.085339949131012], [3.6118801283836364, -2.1081999576091768], [12.344400339126587, -2.105659990310669], [12.38757963180542, -2.0929600024223327], [12.456159505844116, -2.0091400218009947], [12.47902027130127, -1.973580025434494], [12.494260377883911, -1.9354800617694854], [12.49934000968933, -1.808480031490326], [12.509500484466553, -0.7848599630594254], [12.509500484466553, 0.7848599630594254], [12.49934000968933, 1.808480031490326], [12.494260377883911, 1.9354800617694854], [12.47902027130127, 1.973580025434494], [12.456159505844116, 2.0091400218009947], [12.38757963180542, 2.0929600024223327]]);
}
module hullpoly_C1_0_3(){
	polygon(points = [[12.301219835281373, 1.7856200230121613], [4.5592998909950255, 1.8465799951553346], [2.6542998909950257, 1.816099933385849], [2.5755601477622987, 1.7856200230121613], [2.51206005692482, 1.671319980621338], [2.504440003633499, 1.607820041179657], [2.499360069036484, 1.4782800436019898], [2.4892000484466554, 0.7848599630594254], [2.4892000484466554, -0.7848599630594254], [2.499360069036484, -1.4782800436019898], [2.504440003633499, -1.607820041179657], [2.51206005692482, -1.671319980621338], [2.5755601477622987, -1.7856200230121613], [2.6542998909950257, -1.816099933385849], [3.6118801283836364, -1.8262599539756774], [4.5338999152183534, -1.8338800072669983], [12.344400339126587, -1.816099933385849], [12.38757963180542, -1.803399945497513], [12.425680503845214, -1.7856200230121613], [12.456159505844116, -1.760220047235489], [12.49934000968933, -1.4782800436019898], [12.509500484466553, -0.7848599630594254], [12.509500484466553, 0.7848599630594254], [12.49934000968933, 1.4782800436019898], [12.494260377883911, 1.6611599600315095], [12.47902027130127, 1.6941799890995026], [12.456159505844116, 1.724660050868988], [12.425680503845214, 1.7500600266456605], [12.38757963180542, 1.7703800678253174], [12.344400339126587, 1.7805399370193482]]);
}
module hullpoly_C1_0_4(){
	polygon(points = [[2.633979849815369, -1.374140021800995], [12.301219835281373, -1.3690599358081819], [12.494260377883911, -1.0591799890995026], [12.49934000968933, -1.0363199806213381], [12.509500484466553, -0.7848599630594254], [12.509500484466553, 0.7848599630594254], [12.49934000968933, 1.0363199806213381], [12.38757963180542, 1.358900066614151], [12.344400339126587, 1.366519968509674], [12.301219835281373, 1.3690599358081819], [2.633979849815369, 1.374140021800995], [2.5425401186943053, 1.2369799709320068], [2.51206005692482, 1.137920035123825], [2.499360069036484, 1.0363199806213381], [2.4892000484466554, 0.7848599630594254], [2.4892000484466554, -0.7848599630594254], [2.499360069036484, -1.0363199806213381], [2.51206005692482, -1.137920035123825], [2.5425401186943053, -1.2369799709320068]]);
}
module fitting_pocket_C1_0(){
	union() {
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + -1.9989800012111665)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (4.511040058135986 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_C1) {
						union() {
							hullpoly_C1_0_0();
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + 2.51206005692482)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (0.5003799164295195 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_C1) {
						union() {
							hullpoly_C1_0_1();
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + 3.0124399733543394)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (0.5003800678253176 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_C1) {
						union() {
							hullpoly_C1_0_2();
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + 3.512820041179657)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (0.5029198837280275 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_C1) {
						union() {
							hullpoly_C1_0_3();
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness - tiny_dimension) + 4.015739924907685)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (0.5003800678253167 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_C1) {
						union() {
							hullpoly_C1_0_4();
						}
					}
				}
			}
		}
	}
}
module ref_C1_0(){
	union() {
		hullpoly_C1_0_0();
	}
}
module wiggle_pocket_C1_0(){
	translate(v = [75.0, -58.04, (PCB_Thickness + min_z_C1)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (max_z_C1 - min_z_C1)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						ref_C1_0();
					}
				}
			}
		}
	}
}
module perimeter_C1_0(){
	union() {
		translate(v = [75.0, -58.04, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_C1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_C1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
						union() {
							ref_C1_0();
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_C1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_C1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1) + Wrapper_Thickness_For_C1)) {
							union() {
								ref_C1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								ref_C1_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_C1_0(){
	union() {
		translate(v = [75.0, -58.04, ((PCB_Thickness + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_C1 - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								hullpoly_C1_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_C1) {
							union() {
								hullpoly_C1_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness + max(2.51206005692482, Effective_Shell_Clearance_From_PCB_For_C1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_C1 - max(2.51206005692482, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								hullpoly_C1_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_C1) {
							union() {
								hullpoly_C1_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness + max(3.0124399733543394, Effective_Shell_Clearance_From_PCB_For_C1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_C1 - max(3.0124399733543394, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								hullpoly_C1_0_2();
							}
						}
						offset(r = Effective_Shell_Gap_For_C1) {
							union() {
								hullpoly_C1_0_2();
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness + max(3.512820041179657, Effective_Shell_Clearance_From_PCB_For_C1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_C1 - max(3.512820041179657, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								hullpoly_C1_0_3();
							}
						}
						offset(r = Effective_Shell_Gap_For_C1) {
							union() {
								hullpoly_C1_0_3();
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, ((PCB_Thickness + max(4.015739924907685, Effective_Shell_Clearance_From_PCB_For_C1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_C1 - max(4.015739924907685, Effective_Shell_Clearance_From_PCB_For_C1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								hullpoly_C1_0_4();
							}
						}
						offset(r = Effective_Shell_Gap_For_C1) {
							union() {
								hullpoly_C1_0_4();
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_C1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_C1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1) + Wrapper_Thickness_For_C1)) {
							union() {
								ref_C1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								ref_C1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (PCB_Thickness + max_z_C1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_C1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
						union() {
							ref_C1_0();
						}
					}
				}
			}
		}
	}
}
module shape_C1_0_0(){
	union() {
		polygon(points = [[3.592, -2.235], [3.652, -2.224], [3.662, -2.219], [3.67, -2.214], [3.677, -2.209], [3.685, -2.207], [3.702, -2.194], [3.769, -2.152], [3.82, -2.115], [3.868, -2.081], [3.922, -2.059], [3.98, -2.036], [4.035, -2.029], [4.1, -2.021], [4.155, -2.028], [4.219, -2.036], [4.272, -2.057], [4.333, -2.081], [4.38, -2.115], [4.43, -2.152], [4.485, -2.197], [4.498, -2.204], [4.525, -2.211], [4.528, -2.213], [4.544, -2.216], [4.596, -2.231], [4.607, -2.233], [4.62, -2.236], [4.636, -2.237], [5.566, -2.237], [12.301, -2.234], [12.317, -2.234], [12.344, -2.231], [12.36, -2.226], [12.388, -2.218], [12.401, -2.209], [12.426, -2.192], [12.436, -2.182], [12.456, -2.161], [12.463, -2.149], [12.479, -2.123], [12.483, -2.11], [12.494, -2.081], [12.496, -2.07], [12.499, -2.034], [12.499, -2.028], [12.499, -1.915], [12.499, -1.912], [12.499, -1.901], [12.499, -1.897], [12.499, -1.638], [12.499, -1.633], [12.499, -1.625], [12.537, -1.62], [12.603, -1.603], [12.668, -1.58], [12.73, -1.55], [12.789, -1.515], [12.844, -1.474], [12.895, -1.428], [12.941, -1.377], [12.982, -1.322], [13.017, -1.263], [13.047, -1.201], [13.07, -1.136], [13.087, -1.07], [13.097, -1.002], [13.1, -0.933], [13.1, -0.929], [13.097, -0.86], [13.087, -0.792], [13.07, -0.726], [13.047, -0.661], [13.017, -0.599], [12.982, -0.54], [12.941, -0.485], [12.895, -0.434], [12.844, -0.388], [12.8, -0.355], [12.8, -0.261], [14.144, -0.261], [14.3, -0.261], [14.307, -0.262], [14.407, -0.269], [14.498, -0.292], [14.525, -0.297], [14.563, -0.31], [14.596, -0.318], [14.671, -0.332], [14.692, -0.339], [14.7, -0.34], [14.713, -0.342], [14.783, -0.349], [14.817, -0.351], [14.872, -0.348], [14.877, -0.348], [14.885, -0.347], [14.922, -0.34], [14.93, -0.342], [15.001, -0.351], [15.025, -0.348], [15.031, -0.347], [15.048, -0.345], [15.083, -0.34], [15.095, -0.336], [15.161, -0.311], [15.164, -0.31], [15.182, -0.297], [15.232, -0.262], [15.236, -0.257], [15.257, -0.234], [15.272, -0.216], [15.288, -0.198], [15.289, -0.197], [15.297, -0.181], [15.305, -0.166], [15.31, -0.156], [15.326, -0.124], [15.327, -0.124], [15.347, -0.044], [15.347, -0.043], [15.347, -0.03], [15.347, 0.043], [15.346, 0.049], [15.343, 0.061], [15.336, 0.088], [15.326, 0.124], [15.321, 0.136], [15.312, 0.152], [15.305, 0.167], [15.294, 0.187], [15.288, 0.198], [15.288, 0.199], [15.232, 0.262], [15.188, 0.293], [15.164, 0.31], [15.14, 0.319], [15.107, 0.331], [15.102, 0.333], [15.083, 0.34], [15.07, 0.342], [15.001, 0.351], [14.953, 0.345], [14.917, 0.34], [14.915, 0.339], [14.885, 0.343], [14.848, 0.348], [14.817, 0.351], [14.735, 0.343], [14.701, 0.34], [14.671, 0.332], [14.632, 0.323], [14.563, 0.31], [14.525, 0.297], [14.498, 0.292], [14.407, 0.269], [14.392, 0.267], [14.307, 0.262], [14.301, 0.261], [14.3, 0.261], [12.8, 0.261], [12.8, 0.685], [12.824, 0.708], [12.864, 0.751], [12.899, 0.799], [12.929, 0.849], [12.954, 0.902], [12.974, 0.958], [12.988, 1.015], [12.997, 1.073], [13.012, 1.106], [13.035, 1.171], [13.052, 1.238], [13.062, 1.306], [13.065, 1.375], [13.061, 1.443], [13.051, 1.511], [13.034, 1.578], [13.011, 1.643], [12.981, 1.705], [12.946, 1.764], [12.905, 1.819], [12.858, 1.87], [12.807, 1.916], [12.752, 1.957], [12.693, 1.992], [12.676, 2.001], [12.661, 2.008], [12.657, 2.01], [12.597, 2.037], [12.535, 2.058], [12.496, 2.066], [12.496, 2.07], [12.494, 2.081], [12.49, 2.093], [12.479, 2.123], [12.472, 2.134], [12.456, 2.161], [12.446, 2.171], [12.426, 2.192], [12.412, 2.201], [12.388, 2.218], [12.372, 2.222], [12.344, 2.231], [12.317, 2.234], [12.301, 2.234], [7.381, 2.237], [4.636, 2.235], [4.625, 2.234], [4.582, 2.23], [4.555, 2.227], [4.54, 2.22], [4.523, 2.21], [4.515, 2.208], [4.496, 2.197], [4.475, 2.183], [4.434, 2.16], [4.43, 2.157], [4.334, 2.086], [4.333, 2.085], [4.332, 2.085], [4.29, 2.069], [4.22, 2.042], [4.219, 2.042], [4.101, 2.027], [4.1, 2.026], [3.982, 2.041], [3.98, 2.042], [3.91, 2.069], [3.868, 2.085], [3.868, 2.086], [3.769, 2.157], [3.767, 2.159], [3.76, 2.163], [3.697, 2.206], [3.669, 2.212], [3.657, 2.217], [3.619, 2.227], [3.605, 2.227], [3.579, 2.234], [3.566, 2.235], [3.256, 2.237], [2.7, 2.234], [2.682, 2.234], [2.651, 2.228], [2.628, 2.223], [2.577, 2.193], [2.552, 2.172], [2.526, 2.129], [2.508, 2.091], [2.503, 2.071], [2.499, 2.033], [2.499, 1.745], [2.499, 1.603], [2.497, 1.603], [2.432, 1.58], [2.37, 1.55], [2.311, 1.515], [2.256, 1.474], [2.205, 1.428], [2.159, 1.377], [2.118, 1.322], [2.083, 1.263], [2.053, 1.201], [2.03, 1.136], [2.013, 1.07], [2.003, 1.002], [2.002, 0.983], [2.001, 0.978], [1.999, 0.929], [1.999, 0.831], [1.999, 0.83], [1.991, 0.781], [1.989, 0.732], [1.989, 0.432], [1.976, 0.396], [1.962, 0.339], [1.953, 0.281], [1.952, 0.261], [0.857, 0.261], [0.701, 0.261], [0.694, 0.262], [0.595, 0.269], [0.503, 0.292], [0.476, 0.297], [0.438, 0.31], [0.404, 0.318], [0.328, 0.332], [0.306, 0.339], [0.299, 0.34], [0.286, 0.342], [0.217, 0.349], [0.182, 0.351], [0.127, 0.348], [0.122, 0.348], [0.114, 0.347], [0.077, 0.34], [0.071, 0.342], [0.054, 0.344], [0.048, 0.345], [0.0, 0.351], [-0.048, 0.345], [-0.084, 0.34], [-0.085, 0.34], [-0.091, 0.337], [-0.096, 0.336], [-0.163, 0.31], [-0.173, 0.303], [-0.18, 0.298], [-0.183, 0.296], [-0.231, 0.262], [-0.238, 0.254], [-0.24, 0.252], [-0.287, 0.198], [-0.291, 0.191], [-0.299, 0.177], [-0.328, 0.124], [-0.334, 0.101], [-0.348, 0.043], [-0.348, 0.018], [-0.348, -0.043], [-0.347, -0.046], [-0.328, -0.124], [-0.322, -0.136], [-0.287, -0.198], [-0.279, -0.208], [-0.231, -0.262], [-0.221, -0.269], [-0.163, -0.31], [-0.16, -0.311], [-0.14, -0.319], [-0.084, -0.34], [-0.071, -0.342], [-0.054, -0.344], [-0.048, -0.345], [0.0, -0.351], [0.048, -0.345], [0.084, -0.34], [0.085, -0.34], [0.085, -0.339], [0.115, -0.343], [0.15, -0.348], [0.182, -0.351], [0.264, -0.343], [0.297, -0.34], [0.328, -0.332], [0.369, -0.323], [0.438, -0.31], [0.476, -0.297], [0.503, -0.292], [0.595, -0.269], [0.609, -0.267], [0.694, -0.262], [0.7, -0.261], [0.701, -0.261], [1.79, -0.261], [1.789, -0.279], [1.789, -0.481], [1.792, -0.548], [1.802, -0.615], [1.818, -0.681], [1.841, -0.745], [1.869, -0.806], [1.903, -0.864], [1.943, -0.919], [1.987, -0.969], [2.037, -1.015], [2.056, -1.03], [2.058, -1.044], [2.072, -1.113], [2.094, -1.18], [2.122, -1.244], [2.157, -1.306], [2.197, -1.364], [2.235, -1.408], [2.238, -1.436], [2.246, -1.475], [2.258, -1.514], [2.274, -1.551], [2.293, -1.586], [2.316, -1.619], [2.342, -1.65], [2.37, -1.678], [2.402, -1.703], [2.436, -1.724], [2.472, -1.743], [2.481, -1.747], [2.499, -1.753], [2.499, -1.897], [2.499, -1.901], [2.499, -1.912], [2.499, -1.915], [2.499, -2.028], [2.499, -2.03], [2.499, -2.033], [2.503, -2.071], [2.508, -2.091], [2.526, -2.129], [2.552, -2.172], [2.577, -2.193], [2.628, -2.223], [2.651, -2.228], [2.682, -2.234], [2.7, -2.234], [3.461, -2.237], [3.566, -2.237], [3.576, -2.237]]);
	}
}
module keepout_volume_C1_0_0(){
	translate(v = [75.0, -58.04, (PCB_Thickness + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((2.0161199927330014 - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						shape_C1_0_0();
					}
				}
			}
		}
	}
}
module shape_C1_0_1(){
	union() {
		polygon(points = [[3.566, -2.231], [3.588, -2.231], [3.633, -2.224], [3.685, -2.207], [3.722, -2.179], [3.769, -2.149], [3.846, -2.096], [3.868, -2.079], [3.896, -2.068], [3.98, -2.033], [4.012, -2.029], [4.1, -2.018], [4.132, -2.022], [4.219, -2.033], [4.248, -2.045], [4.333, -2.079], [4.355, -2.096], [4.43, -2.149], [4.457, -2.171], [4.521, -2.209], [4.528, -2.213], [4.554, -2.219], [4.591, -2.228], [4.636, -2.231], [11.519, -2.232], [12.301, -2.232], [12.311, -2.232], [12.344, -2.228], [12.379, -2.218], [12.388, -2.214], [12.418, -2.194], [12.426, -2.189], [12.451, -2.164], [12.456, -2.159], [12.476, -2.125], [12.479, -2.12], [12.493, -2.081], [12.494, -2.078], [12.495, -2.076], [12.499, -2.028], [12.499, -1.901], [12.499, -1.897], [12.499, -1.625], [12.537, -1.62], [12.603, -1.603], [12.668, -1.58], [12.73, -1.55], [12.789, -1.515], [12.844, -1.474], [12.895, -1.428], [12.941, -1.377], [12.982, -1.322], [13.017, -1.263], [13.047, -1.201], [13.07, -1.136], [13.087, -1.07], [13.097, -1.002], [13.1, -0.933], [13.1, -0.929], [13.097, -0.86], [13.087, -0.792], [13.07, -0.726], [13.047, -0.661], [13.017, -0.599], [12.982, -0.54], [12.941, -0.485], [12.895, -0.434], [12.844, -0.388], [12.8, -0.355], [12.8, -0.222], [14.3, -0.222], [14.484, -0.198], [14.52, -0.191], [14.602, -0.152], [14.673, -0.098], [14.675, -0.095], [14.679, -0.087], [14.708, -0.025], [14.71, -0.01], [14.708, 0.005], [14.692, 0.067], [14.689, 0.072], [14.686, 0.076], [14.68, 0.083], [14.622, 0.141], [14.52, 0.191], [14.505, 0.194], [14.484, 0.198], [14.357, 0.215], [14.3, 0.222], [12.8, 0.222], [12.8, 0.685], [12.824, 0.708], [12.864, 0.751], [12.899, 0.799], [12.929, 0.849], [12.954, 0.902], [12.974, 0.958], [12.988, 1.015], [12.997, 1.073], [13.012, 1.106], [13.035, 1.171], [13.052, 1.238], [13.062, 1.306], [13.065, 1.375], [13.061, 1.443], [13.051, 1.511], [13.034, 1.578], [13.011, 1.643], [12.981, 1.705], [12.946, 1.764], [12.905, 1.819], [12.858, 1.87], [12.807, 1.916], [12.752, 1.957], [12.693, 1.992], [12.676, 2.001], [12.661, 2.008], [12.657, 2.01], [12.597, 2.037], [12.535, 2.058], [12.495, 2.066], [12.495, 2.076], [12.494, 2.078], [12.481, 2.115], [12.479, 2.12], [12.46, 2.152], [12.456, 2.159], [12.431, 2.184], [12.426, 2.189], [12.395, 2.21], [12.388, 2.214], [12.354, 2.224], [12.344, 2.228], [12.311, 2.232], [12.301, 2.232], [11.266, 2.233], [4.636, 2.229], [4.595, 2.226], [4.556, 2.221], [4.515, 2.208], [4.496, 2.197], [4.461, 2.174], [4.445, 2.163], [4.43, 2.149], [4.404, 2.13], [4.333, 2.078], [4.243, 2.044], [4.219, 2.035], [4.124, 2.023], [4.1, 2.019], [4.006, 2.032], [3.98, 2.035], [3.894, 2.069], [3.868, 2.078], [3.795, 2.13], [3.769, 2.149], [3.714, 2.192], [3.699, 2.201], [3.683, 2.207], [3.657, 2.217], [3.619, 2.227], [3.566, 2.229], [2.817, 2.233], [2.7, 2.232], [2.691, 2.232], [2.67, 2.229], [2.626, 2.22], [2.576, 2.189], [2.553, 2.17], [2.523, 2.121], [2.509, 2.09], [2.503, 2.065], [2.499, 2.028], [2.499, 1.765], [2.499, 1.603], [2.497, 1.603], [2.432, 1.58], [2.37, 1.55], [2.311, 1.515], [2.256, 1.474], [2.205, 1.428], [2.159, 1.377], [2.118, 1.322], [2.083, 1.263], [2.053, 1.201], [2.03, 1.136], [2.013, 1.07], [2.003, 1.002], [2.002, 0.983], [2.001, 0.978], [1.999, 0.929], [1.999, 0.831], [1.999, 0.83], [1.991, 0.781], [1.989, 0.732], [1.989, 0.432], [1.976, 0.396], [1.962, 0.339], [1.953, 0.281], [1.95, 0.222], [0.701, 0.222], [0.515, 0.198], [0.479, 0.191], [0.398, 0.152], [0.329, 0.098], [0.327, 0.095], [0.322, 0.087], [0.293, 0.025], [0.29, 0.01], [0.293, -0.005], [0.31, -0.067], [0.312, -0.072], [0.315, -0.076], [0.321, -0.083], [0.378, -0.141], [0.479, -0.191], [0.494, -0.194], [0.515, -0.198], [0.645, -0.215], [0.701, -0.222], [1.791, -0.222], [1.789, -0.279], [1.789, -0.481], [1.792, -0.548], [1.802, -0.615], [1.818, -0.681], [1.841, -0.745], [1.869, -0.806], [1.903, -0.864], [1.943, -0.919], [1.987, -0.969], [2.037, -1.015], [2.056, -1.03], [2.058, -1.044], [2.072, -1.113], [2.094, -1.18], [2.122, -1.244], [2.157, -1.306], [2.197, -1.364], [2.235, -1.408], [2.238, -1.436], [2.246, -1.475], [2.258, -1.514], [2.274, -1.551], [2.293, -1.586], [2.316, -1.619], [2.342, -1.65], [2.37, -1.678], [2.402, -1.703], [2.436, -1.724], [2.472, -1.743], [2.481, -1.747], [2.499, -1.753], [2.499, -1.897], [2.499, -1.901], [2.499, -2.028], [2.503, -2.065], [2.509, -2.09], [2.523, -2.121], [2.553, -2.17], [2.576, -2.189], [2.626, -2.22], [2.67, -2.229], [2.691, -2.232], [2.7, -2.232], [2.788, -2.232]]);
		polygon(points = [[5.757, 0.732], [4.524, 0.732], [4.505, 0.785], [4.477, 0.847], [4.442, 0.906], [4.402, 0.962], [4.357, 1.013], [4.355, 1.014], [4.364, 1.037], [4.38, 1.093], [4.389, 1.15], [4.394, 1.208], [4.393, 1.208], [4.403, 1.221], [4.43, 1.257], [4.441, 1.276], [4.482, 1.31], [4.532, 1.363], [4.563, 1.368], [4.609, 1.387], [4.636, 1.391], [11.245, 1.392], [11.5, 1.392], [11.5, 1.373], [11.503, 1.304], [11.513, 1.236], [11.53, 1.17], [11.553, 1.105], [11.583, 1.043], [11.618, 0.984], [11.619, 0.981], [11.626, 0.956], [11.646, 0.901], [11.671, 0.847], [11.702, 0.797], [11.737, 0.749], [11.754, 0.731], [8.379, 0.731]]);
	}
}
module keepout_volume_C1_0_1(){
	translate(v = [75.0, -58.04, (PCB_Thickness + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((2.5161199927330014 - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						shape_C1_0_1();
					}
				}
			}
		}
	}
}
module shape_C1_0_2(){
	union() {
		polygon(points = [[12.301, -2.111], [12.342, -2.11], [12.344, -2.109], [12.386, -2.096], [12.388, -2.095], [12.412, -2.078], [12.426, -2.069], [12.427, -2.067], [12.456, -2.034], [12.461, -2.026], [12.479, -1.994], [12.486, -1.974], [12.494, -1.949], [12.496, -1.931], [12.499, -1.897], [12.499, -1.625], [12.537, -1.62], [12.603, -1.603], [12.668, -1.58], [12.73, -1.55], [12.789, -1.515], [12.844, -1.474], [12.895, -1.428], [12.941, -1.377], [12.982, -1.322], [13.017, -1.263], [13.047, -1.201], [13.07, -1.136], [13.087, -1.07], [13.097, -1.002], [13.1, -0.933], [13.1, -0.929], [13.097, -0.86], [13.087, -0.792], [13.07, -0.726], [13.047, -0.661], [13.017, -0.599], [12.982, -0.54], [12.941, -0.485], [12.895, -0.434], [12.844, -0.388], [12.8, -0.355], [12.8, 0.732], [12.798, 0.771], [12.792, 0.81], [12.783, 0.848], [12.77, 0.885], [12.753, 0.921], [12.733, 0.954], [12.709, 0.986], [12.683, 1.015], [12.654, 1.041], [12.622, 1.065], [12.589, 1.085], [12.553, 1.102], [12.516, 1.115], [12.499, 1.119], [12.499, 1.165], [12.499, 1.37], [12.499, 1.373], [12.499, 1.615], [12.499, 1.897], [12.496, 1.931], [12.494, 1.949], [12.487, 1.969], [12.479, 1.994], [12.472, 2.006], [12.456, 2.034], [12.452, 2.04], [12.426, 2.069], [12.424, 2.07], [12.412, 2.078], [12.389, 2.094], [12.388, 2.095], [12.347, 2.108], [12.344, 2.109], [12.342, 2.11], [12.301, 2.111], [8.129, 2.114], [4.636, 2.112], [4.568, 2.106], [4.545, 2.1], [4.516, 2.086], [4.482, 2.069], [4.46, 2.053], [4.43, 2.024], [4.384, 1.989], [4.333, 1.949], [4.261, 1.919], [4.219, 1.901], [4.14, 1.892], [4.1, 1.886], [4.021, 1.896], [3.98, 1.901], [3.912, 1.93], [3.868, 1.949], [3.816, 1.989], [3.769, 2.024], [3.734, 2.054], [3.663, 2.096], [3.653, 2.101], [3.61, 2.11], [3.587, 2.112], [3.566, 2.112], [3.171, 2.114], [2.7, 2.111], [2.664, 2.11], [2.647, 2.107], [2.58, 2.071], [2.574, 2.068], [2.533, 2.013], [2.516, 1.984], [2.508, 1.947], [2.501, 1.919], [2.499, 1.897], [2.499, 1.615], [2.499, 1.603], [2.497, 1.603], [2.432, 1.58], [2.37, 1.55], [2.311, 1.515], [2.256, 1.474], [2.205, 1.428], [2.159, 1.377], [2.118, 1.322], [2.083, 1.263], [2.053, 1.201], [2.03, 1.136], [2.013, 1.07], [2.003, 1.002], [2.0, 0.933], [2.0, 0.929], [2.003, 0.86], [2.013, 0.792], [2.03, 0.726], [2.053, 0.661], [2.083, 0.599], [2.118, 0.54], [2.159, 0.485], [2.205, 0.434], [2.256, 0.388], [2.311, 0.347], [2.37, 0.312], [2.432, 0.282], [2.443, 0.277], [2.348, -0.09], [2.336, -0.148], [2.33, -0.207], [2.33, -0.267], [2.335, -0.326], [2.341, -0.361], [2.319, -0.377], [2.269, -0.42], [2.223, -0.468], [2.182, -0.52], [2.146, -0.576], [2.115, -0.634], [2.09, -0.696], [2.071, -0.759], [2.07, -0.763], [2.056, -0.832], [2.05, -0.903], [2.05, -0.973], [2.058, -1.044], [2.072, -1.113], [2.094, -1.18], [2.122, -1.244], [2.157, -1.306], [2.197, -1.364], [2.235, -1.408], [2.238, -1.436], [2.246, -1.475], [2.258, -1.514], [2.274, -1.551], [2.293, -1.586], [2.316, -1.619], [2.342, -1.65], [2.37, -1.678], [2.402, -1.703], [2.436, -1.724], [2.472, -1.743], [2.481, -1.747], [2.499, -1.753], [2.499, -1.897], [2.501, -1.919], [2.508, -1.947], [2.516, -1.984], [2.533, -2.013], [2.574, -2.068], [2.58, -2.071], [2.647, -2.107], [2.664, -2.11], [2.7, -2.111], [3.05, -2.112], [3.566, -2.111], [3.608, -2.112], [3.616, -2.111], [3.68, -2.089], [3.695, -2.083], [3.762, -2.035], [3.769, -2.03], [3.772, -2.027], [3.805, -2.003], [3.863, -1.958], [3.868, -1.953], [3.876, -1.95], [3.98, -1.903], [3.996, -1.901], [4.1, -1.888], [4.116, -1.89], [4.219, -1.903], [4.232, -1.909], [4.333, -1.953], [4.339, -1.958], [4.395, -2.003], [4.427, -2.027], [4.43, -2.03], [4.434, -2.033], [4.443, -2.039], [4.456, -2.047], [4.534, -2.096], [4.543, -2.099], [4.57, -2.104], [4.636, -2.111], [9.206, -2.112]]);
		polygon(points = [[2.489, 0.732], [2.499, 0.732], [2.499, 0.929], [2.64, 0.929], [2.7, 0.929], [2.7, 0.828], [2.7, 0.741], [2.7, 0.654], [2.685, 0.645], [2.638, 0.607], [2.595, 0.566], [2.556, 0.52], [2.522, 0.471], [2.493, 0.418], [2.489, 0.408]]);
		polygon(points = [[2.868, -0.232], [2.799, -0.229], [2.799, -0.184], [2.799, -0.06], [2.799, 0.06], [2.799, 0.184], [2.799, 0.229], [2.868, 0.232], [2.936, 0.242], [2.981, 0.253], [2.983, 0.25], [3.012, 0.189], [3.032, 0.155], [2.929, -0.241]]);
		polygon(points = [[2.7, -0.214], [2.7, -0.175], [2.7, 0.0], [2.7, 0.175], [2.7, 0.214], [2.7, 0.229], [2.799, 0.229], [2.799, -0.099], [2.799, -0.229], [2.75, -0.229], [2.7, -0.231]]);
		polygon(points = [[2.489, -0.279], [2.491, -0.279], [2.554, -0.257], [2.618, -0.242], [2.684, -0.232], [2.7, -0.231], [2.7, -0.322], [2.7, -0.344], [2.683, -0.349], [2.646, -0.363], [2.61, -0.38], [2.575, -0.401], [2.544, -0.426], [2.514, -0.453], [2.489, -0.481]]);
	}
}
module keepout_volume_C1_0_2(){
	translate(v = [75.0, -58.04, (PCB_Thickness + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((3.0161199927330014 - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						shape_C1_0_2();
					}
				}
			}
		}
	}
}
module shape_C1_0_3(){
	union() {
		polygon(points = [[12.301, -1.855], [12.333, -1.852], [12.367, -1.839], [12.388, -1.832], [12.421, -1.808], [12.426, -1.804], [12.455, -1.769], [12.456, -1.768], [12.468, -1.744], [12.479, -1.721], [12.48, -1.717], [12.494, -1.666], [12.497, -1.625], [12.537, -1.62], [12.603, -1.603], [12.668, -1.58], [12.73, -1.55], [12.789, -1.515], [12.844, -1.474], [12.895, -1.428], [12.941, -1.377], [12.982, -1.322], [13.017, -1.263], [13.047, -1.201], [13.07, -1.136], [13.087, -1.07], [13.097, -1.002], [13.1, -0.933], [13.1, -0.929], [13.097, -0.86], [13.087, -0.792], [13.07, -0.726], [13.047, -0.661], [13.017, -0.599], [12.982, -0.54], [12.941, -0.485], [12.895, -0.434], [12.844, -0.388], [12.8, -0.355], [12.8, 0.732], [12.798, 0.771], [12.792, 0.81], [12.783, 0.848], [12.77, 0.885], [12.753, 0.921], [12.733, 0.954], [12.709, 0.986], [12.683, 1.015], [12.654, 1.041], [12.622, 1.065], [12.589, 1.085], [12.553, 1.102], [12.516, 1.115], [12.499, 1.119], [12.499, 1.165], [12.499, 1.37], [12.499, 1.607], [12.495, 1.661], [12.494, 1.667], [12.481, 1.711], [12.479, 1.718], [12.461, 1.753], [12.456, 1.763], [12.435, 1.79], [12.426, 1.802], [12.401, 1.82], [12.388, 1.831], [12.362, 1.841], [12.344, 1.848], [12.319, 1.852], [12.301, 1.855], [6.73, 1.858], [4.636, 1.856], [4.563, 1.848], [4.559, 1.848], [4.549, 1.842], [4.474, 1.801], [4.464, 1.792], [4.43, 1.757], [4.372, 1.705], [4.333, 1.67], [4.244, 1.629], [4.219, 1.616], [4.118, 1.599], [4.1, 1.596], [4.002, 1.613], [3.98, 1.616], [3.901, 1.654], [3.868, 1.67], [3.829, 1.705], [3.769, 1.757], [3.671, 1.831], [3.665, 1.838], [3.633, 1.846], [3.593, 1.855], [3.579, 1.856], [3.566, 1.856], [3.33, 1.858], [2.7, 1.855], [2.648, 1.849], [2.644, 1.848], [2.575, 1.804], [2.571, 1.802], [2.535, 1.745], [2.525, 1.731], [2.518, 1.715], [2.508, 1.667], [2.502, 1.636], [2.499, 1.607], [2.499, 1.37], [2.499, 1.165], [2.499, 1.065], [2.499, 1.04], [2.499, 0.929], [2.499, 0.732], [2.489, 0.732], [2.489, -0.279], [2.431, -0.306], [2.373, -0.339], [2.319, -0.377], [2.269, -0.42], [2.223, -0.468], [2.182, -0.52], [2.146, -0.576], [2.115, -0.634], [2.09, -0.696], [2.071, -0.759], [2.07, -0.763], [2.056, -0.832], [2.05, -0.903], [2.05, -0.973], [2.058, -1.044], [2.072, -1.113], [2.094, -1.18], [2.122, -1.244], [2.157, -1.306], [2.197, -1.364], [2.235, -1.408], [2.238, -1.436], [2.246, -1.475], [2.258, -1.514], [2.274, -1.551], [2.293, -1.586], [2.316, -1.619], [2.342, -1.65], [2.37, -1.678], [2.402, -1.703], [2.436, -1.724], [2.472, -1.743], [2.481, -1.747], [2.51, -1.758], [2.527, -1.764], [2.551, -1.771], [2.571, -1.802], [2.575, -1.804], [2.644, -1.848], [2.648, -1.849], [2.7, -1.855], [3.152, -1.856], [3.566, -1.854], [3.598, -1.855], [3.629, -1.851], [3.649, -1.843], [3.684, -1.826], [3.742, -1.779], [3.769, -1.758], [3.778, -1.751], [3.795, -1.736], [3.829, -1.719], [3.851, -1.711], [3.885, -1.695], [3.917, -1.675], [3.948, -1.652], [3.976, -1.627], [3.988, -1.612], [4.006, -1.61], [4.1, -1.595], [4.127, -1.599], [4.219, -1.614], [4.24, -1.624], [4.333, -1.673], [4.371, -1.709], [4.421, -1.751], [4.43, -1.758], [4.443, -1.771], [4.482, -1.8], [4.532, -1.839], [4.543, -1.842], [4.587, -1.848], [4.636, -1.854], [8.301, -1.856]]);
		polygon(points = [[7.553, 0.525], [4.556, 0.525], [4.553, 0.586], [4.544, 0.654], [4.528, 0.721], [4.524, 0.732], [5.757, 0.732], [8.379, 0.731], [11.8, 0.731], [11.8, 0.524]]);
		polygon(points = [[4.79, -0.409], [4.801, -0.41], [6.599, -0.41], [6.638, -0.408], [6.677, -0.402], [6.715, -0.393], [6.752, -0.38], [6.788, -0.363], [6.821, -0.343], [6.853, -0.319], [6.882, -0.293], [6.908, -0.264], [6.932, -0.232], [6.952, -0.199], [6.969, -0.163], [6.982, -0.126], [6.991, -0.088], [6.997, -0.049], [6.999, -0.01], [6.999, 0.01], [6.997, 0.049], [6.991, 0.088], [6.982, 0.126], [6.969, 0.163], [6.952, 0.199], [6.932, 0.232], [6.908, 0.264], [6.882, 0.293], [6.853, 0.319], [6.821, 0.343], [6.788, 0.363], [6.752, 0.38], [6.715, 0.393], [6.677, 0.402], [6.638, 0.408], [6.599, 0.41], [4.801, 0.41], [4.762, 0.408], [4.723, 0.402], [4.685, 0.393], [4.648, 0.38], [4.612, 0.363], [4.579, 0.343], [4.547, 0.319], [4.518, 0.293], [4.514, 0.288], [4.524, 0.316], [4.542, 0.382], [4.552, 0.45], [4.556, 0.518], [4.556, 0.524], [7.579, 0.524], [11.8, 0.524], [11.8, -0.355], [11.756, -0.388], [11.715, -0.424], [7.553, -0.425], [4.837, -0.425], [4.827, -0.425], [4.818, -0.427], [4.808, -0.429], [4.801, -0.431]]);
		polygon(points = [[10.24, -0.408], [10.279, -0.402], [10.317, -0.393], [10.354, -0.38], [10.39, -0.363], [10.423, -0.343], [10.455, -0.319], [10.484, -0.293], [10.51, -0.264], [10.534, -0.232], [10.554, -0.199], [10.571, -0.163], [10.584, -0.126], [10.593, -0.088], [10.599, -0.049], [10.601, -0.01], [10.601, 0.01], [10.599, 0.049], [10.593, 0.088], [10.584, 0.126], [10.571, 0.163], [10.554, 0.199], [10.534, 0.232], [10.51, 0.264], [10.484, 0.293], [10.455, 0.319], [10.423, 0.343], [10.39, 0.363], [10.354, 0.38], [10.317, 0.393], [10.279, 0.402], [10.24, 0.408], [10.201, 0.41], [8.4, 0.41], [8.361, 0.408], [8.322, 0.402], [8.284, 0.393], [8.247, 0.38], [8.211, 0.363], [8.178, 0.343], [8.146, 0.319], [8.117, 0.293], [8.091, 0.264], [8.067, 0.232], [8.047, 0.199], [8.03, 0.163], [8.017, 0.126], [8.008, 0.088], [8.002, 0.049], [8.0, 0.01], [8.0, -0.01], [8.002, -0.049], [8.008, -0.088], [8.017, -0.126], [8.03, -0.163], [8.047, -0.199], [8.067, -0.232], [8.091, -0.264], [8.117, -0.293], [8.146, -0.319], [8.178, -0.343], [8.211, -0.363], [8.247, -0.38], [8.284, -0.393], [8.322, -0.402], [8.361, -0.408], [8.4, -0.41], [10.201, -0.41]]);
		polygon(points = [[4.37, -0.06], [4.304, -0.044], [4.27, -0.039], [4.298, -0.019], [4.349, 0.027], [4.395, 0.077], [4.411, 0.099], [4.409, 0.088], [4.403, 0.049], [4.401, 0.01], [4.401, -0.01], [4.403, -0.049], [4.406, -0.073]]);
		polygon(points = [[3.182, -0.015], [3.186, -0.019], [3.241, -0.06], [3.299, -0.095], [3.361, -0.124], [3.423, -0.145], [3.38, -0.157], [3.324, -0.176], [3.271, -0.201], [3.221, -0.231], [3.182, -0.26]]);
		polygon(points = [[2.7, -0.231], [2.75, -0.229], [2.799, -0.229], [2.868, -0.232], [2.929, -0.241], [2.906, -0.331], [2.802, -0.331], [2.799, -0.331], [2.762, -0.333], [2.722, -0.339], [2.7, -0.344]]);
		polygon(points = [[4.636, -1.387], [4.555, -1.376], [4.554, -1.376], [4.512, -1.34], [4.52, -1.337], [4.577, -1.3], [4.63, -1.258], [4.679, -1.211], [4.723, -1.159], [4.762, -1.103], [4.795, -1.044], [4.822, -0.982], [4.844, -0.918], [4.859, -0.852], [4.861, -0.832], [5.757, -0.832], [8.379, -0.831], [11.507, -0.831], [11.503, -0.86], [11.5, -0.929], [11.5, -0.933], [11.503, -1.002], [11.513, -1.07], [11.53, -1.136], [11.553, -1.201], [11.583, -1.263], [11.618, -1.322], [11.659, -1.377], [11.673, -1.392], [11.281, -1.392]]);
	}
}
module keepout_volume_C1_0_3(){
	translate(v = [75.0, -58.04, (PCB_Thickness + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((3.5161199927330014 - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						shape_C1_0_3();
					}
				}
			}
		}
	}
}
module shape_C1_0_4(){
	union() {
		polygon(points = [[12.51, 0.732], [12.499, 0.732], [12.499, 1.04], [12.499, 1.041], [12.494, 1.118], [12.486, 1.161], [12.479, 1.194], [12.47, 1.219], [12.456, 1.262], [12.449, 1.274], [12.426, 1.32], [12.422, 1.324], [12.392, 1.357], [12.388, 1.361], [12.348, 1.382], [12.344, 1.384], [12.306, 1.391], [12.301, 1.392], [11.245, 1.392], [4.636, 1.391], [4.609, 1.387], [4.563, 1.368], [4.532, 1.363], [4.482, 1.31], [4.441, 1.276], [4.43, 1.257], [4.403, 1.221], [4.333, 1.127], [4.244, 1.066], [4.219, 1.048], [4.109, 1.023], [4.1, 1.021], [3.998, 1.044], [3.98, 1.048], [3.907, 1.1], [3.868, 1.127], [3.797, 1.221], [3.769, 1.257], [3.745, 1.285], [3.729, 1.31], [3.696, 1.344], [3.687, 1.349], [3.655, 1.365], [3.602, 1.389], [3.566, 1.391], [2.819, 1.392], [2.7, 1.392], [2.686, 1.39], [2.66, 1.387], [2.643, 1.381], [2.634, 1.377], [2.632, 1.375], [2.63, 1.374], [2.621, 1.364], [2.567, 1.309], [2.553, 1.289], [2.535, 1.242], [2.528, 1.217], [2.51, 1.152], [2.5, 1.044], [2.499, 1.04], [2.499, 0.732], [2.489, 0.732], [2.489, -0.732], [2.499, -0.732], [2.499, -1.04], [2.5, -1.044], [2.51, -1.152], [2.528, -1.217], [2.535, -1.242], [2.553, -1.289], [2.567, -1.309], [2.621, -1.364], [2.63, -1.374], [2.632, -1.375], [2.634, -1.377], [2.643, -1.381], [2.66, -1.387], [2.686, -1.39], [2.7, -1.392], [2.815, -1.392], [3.566, -1.387], [3.6, -1.387], [3.672, -1.35], [3.694, -1.343], [3.699, -1.337], [3.704, -1.34], [3.765, -1.371], [3.829, -1.395], [3.894, -1.414], [3.961, -1.425], [4.029, -1.431], [4.1, -1.433], [4.149, -1.432], [4.198, -1.43], [4.265, -1.424], [4.332, -1.412], [4.397, -1.393], [4.46, -1.368], [4.512, -1.34], [4.554, -1.376], [4.555, -1.376], [4.636, -1.387], [11.281, -1.392], [12.301, -1.392], [12.339, -1.387], [12.344, -1.385], [12.345, -1.385], [12.388, -1.359], [12.391, -1.354], [12.426, -1.317], [12.433, -1.304], [12.456, -1.26], [12.466, -1.232], [12.479, -1.193], [12.49, -1.141], [12.494, -1.118], [12.495, -1.103], [12.499, -1.04], [12.499, -0.732], [12.51, -0.732]]);
	}
}
module keepout_volume_C1_0_4(){
	translate(v = [75.0, -58.04, (PCB_Thickness + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((4.016119992733001 - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						shape_C1_0_4();
					}
				}
			}
		}
	}
}
module shape_C1_0_5(){
	union() {
		polygon(points = [[6.638, -0.408], [6.677, -0.402], [6.715, -0.393], [6.752, -0.38], [6.788, -0.363], [6.821, -0.343], [6.853, -0.319], [6.882, -0.293], [6.908, -0.264], [6.932, -0.232], [6.952, -0.199], [6.969, -0.163], [6.982, -0.126], [6.991, -0.088], [6.997, -0.049], [6.999, -0.01], [6.999, 0.01], [6.997, 0.049], [6.991, 0.088], [6.982, 0.126], [6.969, 0.163], [6.952, 0.199], [6.932, 0.232], [6.908, 0.264], [6.882, 0.293], [6.853, 0.319], [6.821, 0.343], [6.788, 0.363], [6.752, 0.38], [6.715, 0.393], [6.677, 0.402], [6.638, 0.408], [6.599, 0.41], [4.801, 0.41], [4.762, 0.408], [4.723, 0.402], [4.685, 0.393], [4.648, 0.38], [4.612, 0.363], [4.579, 0.343], [4.547, 0.319], [4.518, 0.293], [4.492, 0.264], [4.468, 0.232], [4.448, 0.199], [4.431, 0.163], [4.418, 0.126], [4.409, 0.088], [4.403, 0.049], [4.401, 0.01], [4.401, -0.01], [4.403, -0.049], [4.409, -0.088], [4.418, -0.126], [4.431, -0.163], [4.448, -0.199], [4.468, -0.232], [4.492, -0.264], [4.518, -0.293], [4.547, -0.319], [4.579, -0.343], [4.612, -0.363], [4.648, -0.38], [4.685, -0.393], [4.723, -0.402], [4.762, -0.408], [4.801, -0.41], [6.599, -0.41]]);
		polygon(points = [[10.24, -0.408], [10.279, -0.402], [10.317, -0.393], [10.354, -0.38], [10.39, -0.363], [10.423, -0.343], [10.455, -0.319], [10.484, -0.293], [10.51, -0.264], [10.534, -0.232], [10.554, -0.199], [10.571, -0.163], [10.584, -0.126], [10.593, -0.088], [10.599, -0.049], [10.601, -0.01], [10.601, 0.01], [10.599, 0.049], [10.593, 0.088], [10.584, 0.126], [10.571, 0.163], [10.554, 0.199], [10.534, 0.232], [10.51, 0.264], [10.484, 0.293], [10.455, 0.319], [10.423, 0.343], [10.39, 0.363], [10.354, 0.38], [10.317, 0.393], [10.279, 0.402], [10.24, 0.408], [10.201, 0.41], [8.4, 0.41], [8.361, 0.408], [8.322, 0.402], [8.284, 0.393], [8.247, 0.38], [8.211, 0.363], [8.178, 0.343], [8.146, 0.319], [8.117, 0.293], [8.091, 0.264], [8.067, 0.232], [8.047, 0.199], [8.03, 0.163], [8.017, 0.126], [8.008, 0.088], [8.002, 0.049], [8.0, 0.01], [8.0, -0.01], [8.002, -0.049], [8.008, -0.088], [8.017, -0.126], [8.03, -0.163], [8.047, -0.199], [8.067, -0.232], [8.091, -0.264], [8.117, -0.293], [8.146, -0.319], [8.178, -0.343], [8.211, -0.363], [8.247, -0.38], [8.284, -0.393], [8.322, -0.402], [8.361, -0.408], [8.4, -0.41], [10.201, -0.41]]);
	}
}
module keepout_volume_C1_0_5(){
	translate(v = [75.0, -58.04, (PCB_Thickness + max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1))]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((4.516119992733001 - max(-1.9989800012111665, Effective_Shell_Clearance_From_PCB_For_C1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						shape_C1_0_5();
					}
				}
			}
		}
	}
}
module tight_perimeter_C1_0(){
	union() {
		translate(v = [75.0, -58.04, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_C1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_C1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
						union() {
							shape_C1_0_0();
						}
					}
				}
			}
		}
		translate(v = [75.0, -58.04, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_C1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_C1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1) + Wrapper_Thickness_For_C1)) {
							union() {
								shape_C1_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
							union() {
								shape_C1_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_C1_0(){
	union() {
		keepout_volume_C1_0_0();
		keepout_volume_C1_0_1();
		keepout_volume_C1_0_2();
		keepout_volume_C1_0_3();
		keepout_volume_C1_0_4();
		keepout_volume_C1_0_5();
	}
}
module courtyard_C1(){
	polygon(points = [[77.495, -41.795], [77.495, -59.285], [72.505, -59.285], [72.505, -41.795]]);
}
module courtyard_pocket_C1(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_C1]) {
			linear_extrude(height = (max_z_C1 - min_z_C1)) {
				offset(r = Effective_Shell_Gap_For_C1) {
					union() {
						courtyard_C1();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_C1(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_C1)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_C1) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
					union() {
						courtyard_C1();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_C1)]) {
			linear_extrude(height = Wrapper_Height_For_C1) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1) + Wrapper_Thickness_For_C1)) {
						union() {
							courtyard_C1();
						}
					}
					offset(r = (Effective_Shell_Gap_For_C1 + Effective_Shell_Thickness_For_C1)) {
						union() {
							courtyard_C1();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J3_0(){
	union() {
		translate(v = [70.0, -57.5, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J3))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J3)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [70.0, -57.5, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [70.0, -57.5, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3)) + (2 * tiny_dimension))) {
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
		translate(v = [70.0, -57.5, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_J3_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_J3_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_J3_0(){
	union() {
		translate(v = [70.0, -57.5, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J3) {
						union() {
							hullpoly_J3_0_0();
						}
					}
				}
			}
		}
		translate(v = [70.0, -57.5, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (5.999479970932007 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J3) {
						union() {
							hullpoly_J3_0_1();
						}
					}
				}
			}
		}
	}
}
module ref_J3_0(){
	union() {
		hullpoly_J3_0_0();
	}
}
module wiggle_pocket_J3_0(){
	translate(v = [70.0, -57.5, (PCB_Thickness + min_z_J3)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (max_z_J3 - min_z_J3)) {
				offset(r = Effective_Shell_Gap_For_J3) {
					union() {
						ref_J3_0();
					}
				}
			}
		}
	}
}
module perimeter_J3_0(){
	union() {
		translate(v = [70.0, -57.5, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J3)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
						union() {
							ref_J3_0();
						}
					}
				}
			}
		}
		translate(v = [70.0, -57.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J3)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3) + Wrapper_Thickness_For_J3)) {
							union() {
								ref_J3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
							union() {
								ref_J3_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J3_0(){
	union() {
		translate(v = [70.0, -57.5, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J3 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
							union() {
								hullpoly_J3_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J3) {
							union() {
								hullpoly_J3_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [70.0, -57.5, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J3)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J3 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J3)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
							union() {
								hullpoly_J3_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J3) {
							union() {
								hullpoly_J3_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [70.0, -57.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J3)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3) + Wrapper_Thickness_For_J3)) {
							union() {
								ref_J3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
							union() {
								ref_J3_0();
							}
						}
					}
				}
			}
		}
		translate(v = [70.0, -57.5, (PCB_Thickness + max_z_J3)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_J3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
						union() {
							ref_J3_0();
						}
					}
				}
			}
		}
	}
}
module shape_J3_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_J3_0_0(){
	translate(v = [70.0, -57.5, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3))]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((2.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J3) {
					union() {
						shape_J3_0_0();
					}
				}
			}
		}
	}
}
module shape_J3_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_J3_0_1(){
	translate(v = [70.0, -57.5, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3))]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((8.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J3) {
					union() {
						shape_J3_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J3_0(){
	union() {
		translate(v = [70.0, -57.5, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J3)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
						union() {
							shape_J3_0_0();
						}
					}
				}
			}
		}
		translate(v = [70.0, -57.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J3)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3) + Wrapper_Thickness_For_J3)) {
							union() {
								shape_J3_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
							union() {
								shape_J3_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J3_0(){
	union() {
		keepout_volume_J3_0_0();
		keepout_volume_J3_0_1();
	}
}
module courtyard_J3(){
	polygon(points = [[71.795, -55.705], [71.795, -61.845], [68.205, -61.845], [68.205, -55.705]]);
}
module courtyard_pocket_J3(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_J3]) {
			linear_extrude(height = (max_z_J3 - min_z_J3)) {
				offset(r = Effective_Shell_Gap_For_J3) {
					union() {
						courtyard_J3();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J3(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J3)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J3) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
					union() {
						courtyard_J3();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J3)]) {
			linear_extrude(height = Wrapper_Height_For_J3) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3) + Wrapper_Thickness_For_J3)) {
						union() {
							courtyard_J3();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
						union() {
							courtyard_J3();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J4_0(){
	union() {
		translate(v = [80.0, -57.5, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J4))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [80.0, -57.5, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [80.0, -57.5, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4)) + (2 * tiny_dimension))) {
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
		translate(v = [80.0, -57.5, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_J4_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_J4_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_J4_0(){
	union() {
		translate(v = [80.0, -57.5, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J4) {
						union() {
							hullpoly_J4_0_0();
						}
					}
				}
			}
		}
		translate(v = [80.0, -57.5, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (5.999479970932007 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J4) {
						union() {
							hullpoly_J4_0_1();
						}
					}
				}
			}
		}
	}
}
module ref_J4_0(){
	union() {
		hullpoly_J4_0_0();
	}
}
module wiggle_pocket_J4_0(){
	translate(v = [80.0, -57.5, (PCB_Thickness + min_z_J4)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (max_z_J4 - min_z_J4)) {
				offset(r = Effective_Shell_Gap_For_J4) {
					union() {
						ref_J4_0();
					}
				}
			}
		}
	}
}
module perimeter_J4_0(){
	union() {
		translate(v = [80.0, -57.5, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J4)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
						union() {
							ref_J4_0();
						}
					}
				}
			}
		}
		translate(v = [80.0, -57.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J4)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4) + Wrapper_Thickness_For_J4)) {
							union() {
								ref_J4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
							union() {
								ref_J4_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J4_0(){
	union() {
		translate(v = [80.0, -57.5, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J4 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
							union() {
								hullpoly_J4_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J4) {
							union() {
								hullpoly_J4_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [80.0, -57.5, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J4)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J4 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
							union() {
								hullpoly_J4_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J4) {
							union() {
								hullpoly_J4_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [80.0, -57.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J4)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4) + Wrapper_Thickness_For_J4)) {
							union() {
								ref_J4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
							union() {
								ref_J4_0();
							}
						}
					}
				}
			}
		}
		translate(v = [80.0, -57.5, (PCB_Thickness + max_z_J4)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_J4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
						union() {
							ref_J4_0();
						}
					}
				}
			}
		}
	}
}
module shape_J4_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_J4_0_0(){
	translate(v = [80.0, -57.5, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4))]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((2.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J4) {
					union() {
						shape_J4_0_0();
					}
				}
			}
		}
	}
}
module shape_J4_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_J4_0_1(){
	translate(v = [80.0, -57.5, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4))]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((8.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J4) {
					union() {
						shape_J4_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J4_0(){
	union() {
		translate(v = [80.0, -57.5, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J4)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
						union() {
							shape_J4_0_0();
						}
					}
				}
			}
		}
		translate(v = [80.0, -57.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J4)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4) + Wrapper_Thickness_For_J4)) {
							union() {
								shape_J4_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
							union() {
								shape_J4_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J4_0(){
	union() {
		keepout_volume_J4_0_0();
		keepout_volume_J4_0_1();
	}
}
module courtyard_J4(){
	polygon(points = [[81.795, -55.705], [81.795, -61.845], [78.205, -61.845], [78.205, -55.705]]);
}
module courtyard_pocket_J4(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_J4]) {
			linear_extrude(height = (max_z_J4 - min_z_J4)) {
				offset(r = Effective_Shell_Gap_For_J4) {
					union() {
						courtyard_J4();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J4(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J4)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J4) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
					union() {
						courtyard_J4();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J4)]) {
			linear_extrude(height = Wrapper_Height_For_J4) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4) + Wrapper_Thickness_For_J4)) {
						union() {
							courtyard_J4();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
						union() {
							courtyard_J4();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J2_0(){
	union() {
		translate(v = [85.0, -62.0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J2))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [85.0, -62.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [85.0, -62.0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
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
		translate(v = [85.0, -62.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_J2_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_J2_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_J2_0(){
	union() {
		translate(v = [85.0, -62.0, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J2) {
						union() {
							hullpoly_J2_0_0();
						}
					}
				}
			}
		}
		translate(v = [85.0, -62.0, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (5.999479970932007 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_J2) {
						union() {
							hullpoly_J2_0_1();
						}
					}
				}
			}
		}
	}
}
module ref_J2_0(){
	union() {
		hullpoly_J2_0_0();
	}
}
module wiggle_pocket_J2_0(){
	translate(v = [85.0, -62.0, (PCB_Thickness + min_z_J2)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (max_z_J2 - min_z_J2)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						ref_J2_0();
					}
				}
			}
		}
	}
}
module perimeter_J2_0(){
	union() {
		translate(v = [85.0, -62.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J2)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
						union() {
							ref_J2_0();
						}
					}
				}
			}
		}
		translate(v = [85.0, -62.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J2)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2) + Wrapper_Thickness_For_J2)) {
							union() {
								ref_J2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
							union() {
								ref_J2_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J2_0(){
	union() {
		translate(v = [85.0, -62.0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J2 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
							union() {
								hullpoly_J2_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J2) {
							union() {
								hullpoly_J2_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [85.0, -62.0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J2)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J2 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
							union() {
								hullpoly_J2_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J2) {
							union() {
								hullpoly_J2_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [85.0, -62.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J2)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2) + Wrapper_Thickness_For_J2)) {
							union() {
								ref_J2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
							union() {
								ref_J2_0();
							}
						}
					}
				}
			}
		}
		translate(v = [85.0, -62.0, (PCB_Thickness + max_z_J2)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_J2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
						union() {
							ref_J2_0();
						}
					}
				}
			}
		}
	}
}
module shape_J2_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_J2_0_0(){
	translate(v = [85.0, -62.0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2))]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((2.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						shape_J2_0_0();
					}
				}
			}
		}
	}
}
module shape_J2_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_J2_0_1(){
	translate(v = [85.0, -62.0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2))]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((8.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J2)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						shape_J2_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J2_0(){
	union() {
		translate(v = [85.0, -62.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J2)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
						union() {
							shape_J2_0_0();
						}
					}
				}
			}
		}
		translate(v = [85.0, -62.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J2)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2) + Wrapper_Thickness_For_J2)) {
							union() {
								shape_J2_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
							union() {
								shape_J2_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J2_0(){
	union() {
		keepout_volume_J2_0_0();
		keepout_volume_J2_0_1();
	}
}
module courtyard_J2(){
	polygon(points = [[86.795, -60.205], [86.795, -66.345], [83.205, -66.345], [83.205, -60.205]]);
}
module courtyard_pocket_J2(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_J2]) {
			linear_extrude(height = (max_z_J2 - min_z_J2)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						courtyard_J2();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J2(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J2)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J2) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
					union() {
						courtyard_J2();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J2)]) {
			linear_extrude(height = Wrapper_Height_For_J2) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2) + Wrapper_Thickness_For_J2)) {
						union() {
							courtyard_J2();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
						union() {
							courtyard_J2();
						}
					}
				}
			}
		}
	}
}
module pcb_edge(){
	polygon(points = [[55.0, -50.0], [55.0, -70.0], [60.0, -64.5], [65.0, -70.0], [70.0, -64.5], [75.0, -70.0], [80.0, -65.0], [85.0, -70.0], [90.0, -65.0], [95.0, -70.0], [95.0, -50.0], [94.99974974685031, -49.89994969584858], [94.99899899366392, -49.79990189548754], [94.99774775922866, -49.69985910264458], [94.99599607485706, -49.59982382092211], [94.99374398438556, -49.49979855373457], [94.99099154417347, -49.399785804245774], [94.98773882310144, -49.299788075306274], [94.98398590256986, -49.19980786939073], [94.97973287649674, -49.09984768853529], [94.9749798513154, -48.99991003427497], [94.96972694597179, -48.89999740758103], [94.96397429192152, -48.80011230879844], [94.95772203312656, -48.700257237583244], [94.95097032605167, -48.60043469284006], [94.94371933966045, -48.500647172659505], [94.9359692554111, -48.4008971742557], [94.92772026725194, -48.30118719390378], [94.91897258161647, -48.2015197268774], [94.90972641741831, -48.10189726738633], [94.8999820060456, -48.002322308513975], [94.88973959135535, -47.90279734215506], [94.87899942966715, -47.80332485895321], [94.86776178975698, -47.70390734823865], [94.8560269528503, -47.6045472979659], [94.84379521261509, -47.5052471946515], [94.83106687515453, -47.40600952331184], [94.81784225899924, -47.30683676740087], [94.80412169509943, -47.20773140874806], [94.78990552681651, -47.10869592749623], [94.77519410991461, -47.00973280203947], [94.75998781255153, -46.91084450896119], [94.74428701526966, -46.81203352297206], [94.72809211098641, -46.71330231684813], [94.71140350498435, -46.61465336136892], [94.6942216149011, -46.516089125255625], [94.67654687071888, -46.41761207510929], [94.65837971475374, -46.31922467534911], [94.63972060164446, -46.220929388150765], [94.62056999834121, -46.12272867338477], [94.6009283840939, -46.02462498855494], [94.58079625044012, -45.92662078873689], [94.56017410119281, -45.82871852651659], [94.5390624524278, -45.73092065192898], [94.5174618324707, -45.63322961239669], [94.49537278188387, -45.53564785266874], [94.47279585345275, -45.43817781475941], [94.44973161217207, -45.34082193788709], [94.42618063523176, -45.24358265841328], [94.4021435120024, -45.146462409781556], [94.37762084402058, -45.04946362245675], [94.35261324497381, -44.95258872386404], [94.32712134068511, -44.855840138328304], [94.30114576909743, -44.75922028701335], [94.27468718025762, -44.662731587861394], [94.2477462363002, -44.56637645553253], [94.22032361143079, -44.47015730134427], [94.1924199919092, -44.37407653321129], [94.16403607603232, -44.27813655558504], [94.13517257411655, -44.18233976939371], [94.10583020848013, -44.086688571982016], [94.07600971342501, -43.99118535705132], [94.04571183521848, -43.895832514599654], [94.01493733207447, -43.80063243086193], [93.9836869741346, -43.70558748825023], [93.95196154344896, -43.61070006529418], [93.91976183395641, -43.51597253658142], [93.88708865146484, -43.421407272698204], [93.85394281363092, -43.32700664017003], [93.8203251499397, -43.23277300140248], [93.78623650168379, -43.13870871462203], [93.75167772194234, -43.04481613381708], [93.71664967555972, -42.95109760867905], [93.68115323912382, -42.857555484543546], [93.64518930094411, -42.76419210233169], [93.60875876102952, -42.671009798491525], [93.57186253106575, -42.57801090493955], [93.53450153439258, -42.485197749002374], [93.49667670598073, -42.39257265335846], [93.45838899240846, -42.30013793597999], [93.41963935183782, -42.20789591007489], [93.3804287539908, -42.11584888402891], [93.34075818012495, -42.02399916134786], [93.30062862300889, -41.93234904059999], [93.2600410868974, -41.84090081535844], [93.21899658750638, -41.749656774143844], [93.17749615198736, -41.65861920036707], [93.13554081890177, -41.56779037227208], [93.09313163819508, -41.477172562878906], [93.05026967117037, -41.38676803992677], [93.00695599046188, -41.29657906581733], [92.9631916800081, -41.20660789755807], [92.91897783502468, -41.116856786705824], [92.87431556197703, -41.0273279793104], [92.82920597855258, -40.9380237158584], [92.7836502136329, -40.84894623121715], [92.73764940726531, -40.76009775457875], [92.69120471063451, -40.67148050940433], [92.64431728603365, -40.583096713368356], [92.59698830683531, -40.49494857830315], [92.54921895746209, -40.40703831014357], [92.50101043335701, -40.31936810887176], [92.45236394095356, -40.23194016846212], [92.40328069764554, -40.14475667682639], [92.35376193175658, -40.05781981575892], [92.30380888250939, -39.97113176088203], [92.25342279999475, -39.884694681591604], [92.20260494514027, -39.79851074100278], [92.15135658967874, -39.71258209589581], [92.09967901611643, -39.626910896662096], [92.04757351770087, -39.541499287250396], [91.99504139838858, -39.45634940511313], [91.9420839728124, -39.37146338115292], [91.88870256624857, -39.286843339669254], [91.83489851458361, -39.20249139830532], [91.78067316428086, -39.11840966799502], [91.72602787234678, -39.03460025291013], [91.67096400629703, -38.95106525040767], [91.61548294412219, -38.867806750977394], [91.55958607425332, -38.78482683818946], [91.50327479552719, -38.70212758864233], [91.4465505171513, -38.61971107191076], [91.38941465866856, -38.537579350494056], [91.33186864992183, -38.45573447976441], [91.27391393101811, -38.37417850791548], [91.21555195229251, -38.29291347591116], [91.15678417427192, -38.21194141743448], [91.09761206763847, -38.13126435883669], [91.0380371131928, -38.050884319086606], [90.97806080181688, -37.970803309720026], [90.91768463443682, -37.89102333478944], [90.85691012198521, -37.811546390813845], [90.79573878536337, -37.7323744667288], [90.73417215540326, -37.65350954383665], [90.67221177282919, -37.57495359575691], [90.60985918821926, -37.49670858837695], [90.54711596196653, -37.418776479802695], [90.48398366423999, -37.34115922030973], [90.42046387494528, -37.26385875229441], [90.35655818368514, -37.1868770102253], [90.29226818971962, -37.11021592059474], [90.22759550192609, -37.033877401870654], [90.16254173875888, -36.9578633644485], [90.09710852820895, -36.882175710603505], [90.03129750776299, -36.80681633444306], [89.9651103243625, -36.73178712185929], [89.89854863436261, -36.65708995048186], [89.83161410349057, -36.58272668963102], [89.76430840680409, -36.50869920027079], [89.69663322864945, -36.43500933496241], [89.62859026261927, -36.361658937817964], [89.56018121151024, -36.288649844454255], [89.49140778728038, -36.215983881946826], [89.4222717110063, -36.14366286878429], [89.3527747128401, -36.07168861482277], [89.28291853196603, -36.00006292124064], [89.21270491655704, -35.92878758049345], [89.14213562373095, -35.85786437626905], [89.07121241950655, -35.78729508344296], [88.99993707875936, -35.71708146803396], [88.92831138517724, -35.6472252871599], [88.85633713121571, -35.5777282889937], [88.78401611805317, -35.50859221271963], [88.71135015554574, -35.43981878848977], [88.63834106218204, -35.37140973738073], [88.56499066503758, -35.303366771350554], [88.49130079972922, -35.23569159319591], [88.41727331036898, -35.168385896509434], [88.34291004951814, -35.101451365637395], [88.2682128781407, -35.0348896756375], [88.19318366555694, -34.968702492237014], [88.1178242893965, -34.90289147179105], [88.04213663555151, -34.83745826124112], [87.96612259812935, -34.77240449807392], [87.88978407940526, -34.70773181028037], [87.8131229897747, -34.64344181631486], [87.73614124770559, -34.57953612505472], [87.65884077969028, -34.51601633576002], [87.58122352019731, -34.45288403803348], [87.50329141162305, -34.390140811780746], [87.42504640424309, -34.327788227170814], [87.34649045616335, -34.26582784459674], [87.2676255332712, -34.20426121463663], [87.18845360918615, -34.14308987801479], [87.10897666521056, -34.08231536556318], [87.02919669027997, -34.02193919818312], [86.9491156809134, -33.9619628868072], [86.86873564116331, -33.90238793236153], [86.78805858256551, -33.84321582572808], [86.70708652408884, -33.784448047707485], [86.62582149208453, -33.72608606898188], [86.5442655202356, -33.66813135007817], [86.46242064950594, -33.61058534133144], [86.38028892808924, -33.553449482848706], [86.29787241135767, -33.49672520447281], [86.21517316181054, -33.44041392574668], [86.1321932490226, -33.38451705587781], [86.04893474959233, -33.32903599370297], [85.96539974708988, -33.273972127653224], [85.88159033200499, -33.219326835719144], [85.79750860169469, -33.16510148541639], [85.71315666033075, -33.11129743375143], [85.62853661884708, -33.0579160271876], [85.54365059488687, -33.00495860161142], [85.45850071274961, -32.95242648229913], [85.3730891033379, -32.900320983883574], [85.28741790410419, -32.84864341032126], [85.20148925899723, -32.797395054859734], [85.11530531840839, -32.74657720000525], [85.02886823911797, -32.69619111749061], [84.94218018424108, -32.64623806824342], [84.85524332317361, -32.59671930235446], [84.76805983153788, -32.54763605904644], [84.68063189112824, -32.49898956664299], [84.59296168985644, -32.45078104253791], [84.50505142169685, -32.403011693164686], [84.41690328663165, -32.355682713966345], [84.32851949059567, -32.30879528936549], [84.23990224542125, -32.26235059273469], [84.15105376878286, -32.21634978636711], [84.06197628414161, -32.17079402144742], [83.9726720206896, -32.12568443802298], [83.88314321329418, -32.08102216497532], [83.79339210244193, -32.036808319991906], [83.70342093418267, -31.993044009538124], [83.61323196007324, -31.949730328829627], [83.5228274371211, -31.906868361804918], [83.43220962772793, -31.864459181098226], [83.34138079963293, -31.822503848012648], [83.25034322585616, -31.781003412493614], [83.15909918464156, -31.739958913102594], [83.06765095940001, -31.699371376991113], [82.97600083865214, -31.65924181987505], [82.8841511159711, -31.6195712460092], [82.79210408992512, -31.580360648162184], [82.69986206402001, -31.54161100759155], [82.60742734664154, -31.503323294019264], [82.51480225099763, -31.465498465607418], [82.42198909506045, -31.428137468934253], [82.32899020150847, -31.391241238970483], [82.23580789766831, -31.354810699055882], [82.14244451545645, -31.318846760876188], [82.04890239132095, -31.283350324440278], [81.95518386618292, -31.248322278057653], [81.86129128537797, -31.21376349831621], [81.76722699859752, -31.1796748500603], [81.67299335982996, -31.146057186369074], [81.5785927273018, -31.11291134853516], [81.48402746341857, -31.08023816604359], [81.38929993470582, -31.04803845655104], [81.29441251174977, -31.016313025865394], [81.19936756913806, -30.985062667925536], [81.10416748540034, -30.95428816478152], [81.00881464294868, -30.923990286574984], [80.91331142801798, -30.894169791519868], [80.8176602306063, -30.864827425883455], [80.72186344441495, -30.83596392396769], [80.62592346678872, -30.8075800080908], [80.52984269865573, -30.779676388569207], [80.43362354446748, -30.752253763699795], [80.33726841213861, -30.72531281974238], [80.24077971298665, -30.698854230902572], [80.1441598616717, -30.67287865931489], [80.04741127613595, -30.647386755026194], [79.95053637754326, -30.622379155979417], [79.85353759021844, -30.597856487997607], [79.75641734158673, -30.573819364768248], [79.65917806211291, -30.550268387827924], [79.56182218524059, -30.52720414654725], [79.46435214733125, -30.50462721811612], [79.36677038760331, -30.48253816752929], [79.26907934807102, -30.460937547572208], [79.17128147348342, -30.439825898807186], [79.0733792112631, -30.419203749559887], [78.97537501144507, -30.39907161590609], [78.87727132661523, -30.379430001658786], [78.77907061184924, -30.36027939835555], [78.68077532465088, -30.341620285246265], [78.58238792489071, -30.323453129281113], [78.48391087474438, -30.305778385098897], [78.38534663863108, -30.288596495015653], [78.28669768315187, -30.27190788901359], [78.18796647702794, -30.25571298473034], [78.08915549103881, -30.240012187448475], [77.99026719796052, -30.224805890085396], [77.89130407250377, -30.21009447318348], [77.79226859125194, -30.19587830490057], [77.69316323259913, -30.182157741000758], [77.59399047668816, -30.168933124845474], [77.4947528053485, -30.156204787384905], [77.3954527020341, -30.1439730471497], [77.29609265176136, -30.132238210243017], [77.19667514104678, -30.121000570332846], [77.09720265784493, -30.110260408644656], [76.99767769148603, -30.100017993954392], [76.89810273261368, -30.09027358258169], [76.7984802731226, -30.081027418383528], [76.69881280609621, -30.072279732748065], [76.5991028257443, -30.0640307445889], [76.49935282734049, -30.056280660339553], [76.39956530715995, -30.04902967394833], [76.29974276241676, -30.042277966873442], [76.19988769120157, -30.03602570807849], [76.10000259241896, -30.030273054028214], [76.00008996572504, -30.025020148684604], [75.90015231146471, -30.02026712350326], [75.80019213060928, -30.016014097430137], [75.70021192469373, -30.012261176898555], [75.60021419575423, -30.00900845582653], [75.50020144626544, -30.006256015614433], [75.40017617907789, -30.004003925142946], [75.30014089735542, -30.002252240771345], [75.20009810451246, -30.00100100633608], [75.10005030415142, -30.000250253149684], [75.0, -30.0], [74.89994969584858, -30.000250253149684], [74.79990189548754, -30.00100100633608], [74.69985910264458, -30.002252240771345], [74.59982382092211, -30.004003925142946], [74.49979855373458, -30.006256015614433], [74.39978580424578, -30.00900845582653], [74.29978807530627, -30.012261176898555], [74.19980786939072, -30.016014097430137], [74.09984768853529, -30.02026712350326], [73.99991003427498, -30.025020148684604], [73.89999740758103, -30.030273054028214], [73.80011230879843, -30.03602570807849], [73.70025723758324, -30.042277966873442], [73.60043469284007, -30.04902967394833], [73.5006471726595, -30.056280660339556], [73.4008971742557, -30.0640307445889], [73.30118719390379, -30.072279732748065], [73.20151972687741, -30.081027418383528], [73.10189726738632, -30.09027358258169], [73.00232230851397, -30.100017993954392], [72.90279734215505, -30.11026040864466], [72.80332485895322, -30.121000570332846], [72.70390734823864, -30.132238210243017], [72.6045472979659, -30.1439730471497], [72.5052471946515, -30.156204787384905], [72.40600952331184, -30.168933124845474], [72.30683676740087, -30.182157741000758], [72.20773140874806, -30.19587830490057], [72.10869592749623, -30.21009447318348], [72.00973280203948, -30.224805890085392], [71.91084450896119, -30.240012187448475], [71.81203352297206, -30.25571298473034], [71.71330231684813, -30.271907889013594], [71.61465336136892, -30.288596495015653], [71.51608912525562, -30.305778385098897], [71.41761207510929, -30.323453129281113], [71.31922467534912, -30.341620285246265], [71.22092938815076, -30.36027939835555], [71.12272867338477, -30.379430001658786], [71.02462498855495, -30.39907161590609], [70.92662078873688, -30.419203749559887], [70.82871852651658, -30.439825898807186], [70.73092065192898, -30.460937547572208], [70.63322961239669, -30.48253816752929], [70.53564785266875, -30.50462721811612], [70.43817781475941, -30.52720414654725], [70.3408219378871, -30.550268387827924], [70.24358265841327, -30.573819364768248], [70.14646240978155, -30.597856487997607], [70.04946362245674, -30.622379155979417], [69.95258872386404, -30.647386755026194], [69.8558401383283, -30.67287865931489], [69.75922028701335, -30.698854230902572], [69.6627315878614, -30.725312819742378], [69.56637645553252, -30.752253763699795], [69.47015730134427, -30.779676388569207], [69.37407653321128, -30.8075800080908], [69.27813655558504, -30.83596392396769], [69.1823397693937, -30.86482742588346], [69.08668857198202, -30.894169791519868], [68.99118535705132, -30.923990286574984], [68.89583251459965, -30.954288164781524], [68.80063243086192, -30.98506266792554], [68.70558748825023, -31.016313025865394], [68.61070006529418, -31.04803845655104], [68.51597253658143, -31.080238166043586], [68.4214072726982, -31.11291134853516], [68.32700664017004, -31.146057186369074], [68.23277300140248, -31.179674850060298], [68.13870871462203, -31.21376349831621], [68.04481613381708, -31.248322278057657], [67.95109760867906, -31.283350324440278], [67.85755548454355, -31.318846760876188], [67.76419210233169, -31.354810699055882], [67.67100979849153, -31.391241238970483], [67.57801090493956, -31.428137468934253], [67.48519774900238, -31.465498465607414], [67.39257265335846, -31.50332329401926], [67.30013793597999, -31.54161100759155], [67.2078959100749, -31.58036064816218], [67.1158488840289, -31.6195712460092], [67.02399916134786, -31.659241819875046], [66.93234904059999, -31.699371376991113], [66.84090081535844, -31.739958913102594], [66.74965677414383, -31.781003412493614], [66.65861920036707, -31.822503848012644], [66.56779037227209, -31.864459181098223], [66.4771725628789, -31.906868361804914], [66.38676803992678, -31.949730328829624], [66.29657906581733, -31.993044009538124], [66.20660789755807, -32.036808319991906], [66.11685678670582, -32.08102216497532], [66.0273279793104, -32.12568443802298], [65.9380237158584, -32.17079402144741], [65.84894623121716, -32.216349786367104], [65.76009775457877, -32.262350592734684], [65.67148050940433, -32.30879528936549], [65.58309671336835, -32.355682713966345], [65.49494857830315, -32.403011693164686], [65.40703831014358, -32.450781042537905], [65.31936810887176, -32.49898956664299], [65.23194016846212, -32.54763605904644], [65.14475667682639, -32.59671930235446], [65.05781981575892, -32.64623806824341], [64.97113176088203, -32.69619111749061], [64.88469468159161, -32.74657720000525], [64.79851074100279, -32.797395054859734], [64.71258209589581, -32.84864341032126], [64.6269108966621, -32.900320983883574], [64.54149928725039, -32.95242648229913], [64.45634940511313, -33.00495860161142], [64.37146338115292, -33.0579160271876], [64.28684333966925, -33.11129743375143], [64.20249139830533, -33.165101485416386], [64.11840966799502, -33.219326835719144], [64.03460025291014, -33.27397212765322], [63.95106525040767, -33.32903599370297], [63.867806750977394, -33.38451705587781], [63.78482683818946, -33.44041392574668], [63.70212758864233, -33.4967252044728], [63.619711071910764, -33.553449482848706], [63.537579350494056, -33.61058534133144], [63.4557344797644, -33.66813135007817], [63.37417850791549, -33.72608606898187], [63.29291347591116, -33.784448047707485], [63.21194141743449, -33.84321582572808], [63.131264358836695, -33.90238793236152], [63.050884319086606, -33.9619628868072], [62.970803309720026, -34.02193919818311], [62.89102333478944, -34.082315365563176], [62.811546390813845, -34.14308987801479], [62.7323744667288, -34.20426121463663], [62.65350954383665, -34.26582784459674], [62.57495359575692, -34.32778822717081], [62.49670858837695, -34.39014081178074], [62.418776479802695, -34.45288403803348], [62.34115922030973, -34.51601633576002], [62.26385875229441, -34.57953612505472], [62.18687701022531, -34.643441816314855], [62.110215920594754, -34.707731810280364], [62.033877401870654, -34.77240449807391], [61.9578633644485, -34.83745826124111], [61.882175710603505, -34.90289147179105], [61.80681633444306, -34.968702492237014], [61.731787121859284, -35.0348896756375], [61.65708995048186, -35.101451365637395], [61.58272668963103, -35.16838589650943], [61.5086992002708, -35.23569159319591], [61.43500933496241, -35.303366771350554], [61.36165893781797, -35.37140973738072], [61.28864984445425, -35.439818788489774], [61.215983881946826, -35.50859221271962], [61.14366286878429, -35.5777282889937], [61.07168861482277, -35.6472252871599], [61.00006292124065, -35.71708146803395], [60.928787580493456, -35.787295083442956], [60.85786437626905, -35.85786437626905], [60.787295083442956, -35.92878758049345], [60.71708146803396, -36.00006292124064], [60.6472252871599, -36.07168861482276], [60.5777282889937, -36.14366286878428], [60.50859221271963, -36.215983881946826], [60.43981878848977, -36.288649844454255], [60.37140973738072, -36.36165893781797], [60.303366771350554, -36.43500933496241], [60.2356915931959, -36.5086992002708], [60.168385896509434, -36.58272668963102], [60.101451365637395, -36.65708995048186], [60.03488967563751, -36.731787121859284], [59.968702492237014, -36.80681633444307], [59.90289147179105, -36.882175710603505], [59.83745826124111, -36.9578633644485], [59.772404498073925, -37.03387740187065], [59.707731810280364, -37.110215920594754], [59.643441816314855, -37.1868770102253], [59.57953612505472, -37.26385875229441], [59.51601633576002, -37.34115922030972], [59.452884038033474, -37.4187764798027], [59.390140811780746, -37.49670858837695], [59.32778822717081, -37.57495359575692], [59.26582784459674, -37.65350954383664], [59.20426121463663, -37.73237446672881], [59.14308987801479, -37.811546390813845], [59.08231536556318, -37.89102333478944], [59.02193919818312, -37.97080330972001], [58.9619628868072, -38.050884319086606], [58.90238793236153, -38.13126435883669], [58.84321582572808, -38.21194141743449], [58.784448047707485, -38.29291347591116], [58.72608606898187, -38.37417850791549], [58.66813135007817, -38.4557344797644], [58.61058534133144, -38.537579350494056], [58.55344948284871, -38.61971107191076], [58.49672520447281, -38.70212758864233], [58.44041392574668, -38.78482683818945], [58.38451705587781, -38.867806750977394], [58.329035993702966, -38.95106525040768], [58.273972127653224, -39.03460025291013], [58.21932683571915, -39.11840966799501], [58.16510148541639, -39.20249139830531], [58.11129743375143, -39.28684333966925], [58.0579160271876, -39.37146338115292], [58.00495860161142, -39.45634940511313], [57.95242648229913, -39.541499287250396], [57.900320983883574, -39.626910896662096], [57.84864341032126, -39.712582095895804], [57.797395054859734, -39.79851074100277], [57.74657720000525, -39.884694681591604], [57.69619111749061, -39.97113176088203], [57.64623806824342, -40.05781981575892], [57.59671930235446, -40.14475667682639], [57.54763605904644, -40.231940168462124], [57.49898956664299, -40.31936810887176], [57.45078104253791, -40.40703831014357], [57.40301169316469, -40.494948578303145], [57.355682713966345, -40.58309671336835], [57.30879528936549, -40.67148050940433], [57.26235059273469, -40.76009775457876], [57.21634978636711, -40.84894623121714], [57.17079402144742, -40.93802371585839], [57.12568443802297, -41.0273279793104], [57.08102216497532, -41.116856786705824], [57.036808319991906, -41.20660789755807], [56.993044009538124, -41.29657906581733], [56.94973032882963, -41.38676803992677], [56.90686836180492, -41.477172562878906], [56.864459181098226, -41.56779037227208], [56.82250384801265, -41.658619200367056], [56.78100341249362, -41.74965677414383], [56.7399589131026, -41.84090081535844], [56.69937137699112, -41.93234904059999], [56.65924181987505, -42.02399916134786], [56.6195712460092, -42.11584888402891], [56.580360648162184, -42.20789591007489], [56.54161100759155, -42.30013793597998], [56.50332329401927, -42.39257265335846], [56.465498465607425, -42.48519774900237], [56.42813746893425, -42.578010904939546], [56.39124123897049, -42.67100979849151], [56.35481069905588, -42.76419210233169], [56.318846760876184, -42.857555484543546], [56.28335032444028, -42.951097608679056], [56.24832227805766, -43.04481613381708], [56.21376349831621, -43.13870871462203], [56.1796748500603, -43.23277300140247], [56.14605718636908, -43.32700664017003], [56.112911348535164, -43.4214072726982], [56.080238166043586, -43.51597253658143], [56.04803845655104, -43.610700065294175], [56.016313025865394, -43.705587488250224], [55.98506266792553, -43.80063243086194], [55.95428816478152, -43.895832514599654], [55.92399028657499, -43.991185357051314], [55.89416979151987, -44.086688571982016], [55.864827425883455, -44.18233976939371], [55.83596392396769, -44.27813655558505], [55.807580008090795, -44.374076533211294], [55.779676388569214, -44.470157301344265], [55.7522537636998, -44.56637645553252], [55.725312819742385, -44.662731587861394], [55.698854230902576, -44.75922028701334], [55.67287865931489, -44.855840138328304], [55.64738675502619, -44.95258872386404], [55.62237915597942, -45.04946362245675], [55.5978564879976, -45.14646240978156], [55.573819364768255, -45.243582658413274], [55.55026838782793, -45.340821937887085], [55.52720414654725, -45.438177814759406], [55.50462721811613, -45.53564785266873], [55.48253816752929, -45.63322961239669], [55.46093754757221, -45.73092065192898], [55.439825898807186, -45.82871852651659], [55.419203749559884, -45.9266207887369], [55.399071615906095, -46.02462498855493], [55.37943000165879, -46.12272867338476], [55.36027939835555, -46.220929388150765], [55.341620285246265, -46.319224675349105], [55.32345312928112, -46.41761207510928], [55.3057783850989, -46.51608912525562], [55.28859649501565, -46.61465336136892], [55.27190788901359, -46.71330231684813], [55.25571298473034, -46.81203352297206], [55.24001218744848, -46.910844508961176], [55.22480589008539, -47.00973280203948], [55.21009447318348, -47.108695927496214], [55.195878304900575, -47.20773140874805], [55.18215774100076, -47.30683676740087], [55.16893312484547, -47.40600952331182], [55.15620478738491, -47.5052471946515], [55.1439730471497, -47.604547297965894], [55.13223821024302, -47.70390734823864], [55.121000570332846, -47.80332485895322], [55.11026040864466, -47.902797342155054], [55.100017993954395, -48.00232230851397], [55.09027358258169, -48.10189726738632], [55.08102741838353, -48.20151972687739], [55.072279732748065, -48.30118719390377], [55.064030744588905, -48.4008971742557], [55.05628066033955, -48.500647172659484], [55.049029673948326, -48.60043469284006], [55.04227796687344, -48.70025723758324], [55.03602570807849, -48.80011230879843], [55.030273054028214, -48.899997407581026], [55.025020148684604, -48.99991003427496], [55.02026712350326, -49.099847688535284], [55.01601409743014, -49.199807869390725], [55.012261176898555, -49.29978807530627], [55.00900845582653, -49.39978580424578], [55.00625601561443, -49.49979855373457], [55.004003925142946, -49.59982382092212], [55.00225224077134, -49.69985910264458], [55.00100100633608, -49.79990189548752], [55.00025025314969, -49.899949695848576]]);
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
				wide_line([np.float64(55.0), np.float64(-50.0)],[np.float64(75.0), np.float64(-30.0)]);
				wide_line([np.float64(75.0), np.float64(-30.0)],[np.float64(55.0), np.float64(50.0)]);
				wide_line([np.float64(55.0), np.float64(50.0)],[np.float64(55.0), np.float64(-50.0)]);
				wide_line([np.float64(60.0), np.float64(64.5)],[np.float64(55.0), np.float64(70.0)]);
				wide_line([np.float64(55.0), np.float64(70.0)],[np.float64(55.0), np.float64(50.0)]);
				wide_line([np.float64(55.0), np.float64(50.0)],[np.float64(60.0), np.float64(64.5)]);
				wide_line([np.float64(70.0), np.float64(64.5)],[np.float64(60.0), np.float64(64.5)]);
				wide_line([np.float64(60.0), np.float64(64.5)],[np.float64(55.0), np.float64(50.0)]);
				wide_line([np.float64(55.0), np.float64(50.0)],[np.float64(70.0), np.float64(64.5)]);
				wide_line([np.float64(55.0), np.float64(-50.0)],[np.float64(67.0), np.float64(-42.04)]);
				wide_line([np.float64(67.0), np.float64(-42.04)],[np.float64(75.0), np.float64(-30.0)]);
				wide_line([np.float64(75.0), np.float64(-30.0)],[np.float64(55.0), np.float64(-50.0)]);
				wide_line([np.float64(85.0), np.float64(-63.27)],[np.float64(95.0), np.float64(50.0)]);
				wide_line([np.float64(95.0), np.float64(50.0)],[np.float64(75.0), np.float64(-30.0)]);
				wide_line([np.float64(75.0), np.float64(-30.0)],[np.float64(85.0), np.float64(-63.27)]);
				wide_line([np.float64(90.0), np.float64(65.0)],[np.float64(95.0), np.float64(50.0)]);
				wide_line([np.float64(95.0), np.float64(50.0)],[np.float64(95.0), np.float64(70.0)]);
				wide_line([np.float64(95.0), np.float64(70.0)],[np.float64(90.0), np.float64(65.0)]);
				wide_line([np.float64(75.0), np.float64(-30.0)],[np.float64(95.0), np.float64(50.0)]);
				wide_line([np.float64(95.0), np.float64(50.0)],[np.float64(55.0), np.float64(50.0)]);
				wide_line([np.float64(55.0), np.float64(50.0)],[np.float64(75.0), np.float64(-30.0)]);
				wide_line([np.float64(95.0), np.float64(50.0)],[np.float64(70.0), np.float64(64.5)]);
				wide_line([np.float64(70.0), np.float64(64.5)],[np.float64(55.0), np.float64(50.0)]);
				wide_line([np.float64(55.0), np.float64(50.0)],[np.float64(95.0), np.float64(50.0)]);
				wide_line([np.float64(85.0), np.float64(70.0)],[np.float64(90.0), np.float64(65.0)]);
				wide_line([np.float64(90.0), np.float64(65.0)],[np.float64(95.0), np.float64(70.0)]);
				wide_line([np.float64(95.0), np.float64(70.0)],[np.float64(85.0), np.float64(70.0)]);
				wide_line([np.float64(65.0), np.float64(70.0)],[np.float64(60.0), np.float64(64.5)]);
				wide_line([np.float64(60.0), np.float64(64.5)],[np.float64(70.0), np.float64(64.5)]);
				wide_line([np.float64(70.0), np.float64(64.5)],[np.float64(65.0), np.float64(70.0)]);
				wide_line([np.float64(60.0), np.float64(64.5)],[np.float64(65.0), np.float64(70.0)]);
				wide_line([np.float64(65.0), np.float64(70.0)],[np.float64(55.0), np.float64(70.0)]);
				wide_line([np.float64(55.0), np.float64(70.0)],[np.float64(60.0), np.float64(64.5)]);
				wide_line([np.float64(75.0), np.float64(70.0)],[np.float64(65.0), np.float64(70.0)]);
				wide_line([np.float64(65.0), np.float64(70.0)],[np.float64(70.0), np.float64(64.5)]);
				wide_line([np.float64(70.0), np.float64(64.5)],[np.float64(75.0), np.float64(70.0)]);
				wide_line([np.float64(70.0), np.float64(-58.77)],[np.float64(55.0), np.float64(-50.0)]);
				wide_line([np.float64(55.0), np.float64(-50.0)],[np.float64(65.0), np.float64(-63.27)]);
				wide_line([np.float64(65.0), np.float64(-63.27)],[np.float64(70.0), np.float64(-58.77)]);
				wide_line([np.float64(70.0), np.float64(-58.77)],[np.float64(67.0), np.float64(-42.04)]);
				wide_line([np.float64(67.0), np.float64(-42.04)],[np.float64(55.0), np.float64(-50.0)]);
				wide_line([np.float64(55.0), np.float64(-50.0)],[np.float64(70.0), np.float64(-58.77)]);
				wide_line([np.float64(75.0), np.float64(-50.54065022557974)],[np.float64(85.0), np.float64(-63.27)]);
				wide_line([np.float64(85.0), np.float64(-63.27)],[np.float64(75.0), np.float64(-30.0)]);
				wide_line([np.float64(75.0), np.float64(-30.0)],[np.float64(75.0), np.float64(-50.54065022557974)]);
				wide_line([np.float64(67.0), np.float64(-42.04)],[np.float64(75.0), np.float64(-50.54065022557974)]);
				wide_line([np.float64(75.0), np.float64(-50.54065022557974)],[np.float64(75.0), np.float64(-30.0)]);
				wide_line([np.float64(75.0), np.float64(-30.0)],[np.float64(67.0), np.float64(-42.04)]);
				wide_line([np.float64(70.0), np.float64(-58.77)],[np.float64(75.0), np.float64(-50.54065022557974)]);
				wide_line([np.float64(75.0), np.float64(-50.54065022557974)],[np.float64(67.0), np.float64(-42.04)]);
				wide_line([np.float64(67.0), np.float64(-42.04)],[np.float64(70.0), np.float64(-58.77)]);
				wide_line([np.float64(80.0), np.float64(65.0)],[np.float64(85.0), np.float64(70.0)]);
				wide_line([np.float64(85.0), np.float64(70.0)],[np.float64(75.0), np.float64(70.0)]);
				wide_line([np.float64(75.0), np.float64(70.0)],[np.float64(80.0), np.float64(65.0)]);
				wide_line([np.float64(80.0), np.float64(65.0)],[np.float64(75.0), np.float64(70.0)]);
				wide_line([np.float64(75.0), np.float64(70.0)],[np.float64(70.0), np.float64(64.5)]);
				wide_line([np.float64(70.0), np.float64(64.5)],[np.float64(80.0), np.float64(65.0)]);
				wide_line([np.float64(85.0), np.float64(70.0)],[np.float64(80.0), np.float64(65.0)]);
				wide_line([np.float64(80.0), np.float64(65.0)],[np.float64(90.0), np.float64(65.0)]);
				wide_line([np.float64(90.0), np.float64(65.0)],[np.float64(85.0), np.float64(70.0)]);
				wide_line([np.float64(95.0), np.float64(50.0)],[np.float64(80.0), np.float64(65.0)]);
				wide_line([np.float64(80.0), np.float64(65.0)],[np.float64(70.0), np.float64(64.5)]);
				wide_line([np.float64(70.0), np.float64(64.5)],[np.float64(95.0), np.float64(50.0)]);
				wide_line([np.float64(80.0), np.float64(65.0)],[np.float64(95.0), np.float64(50.0)]);
				wide_line([np.float64(95.0), np.float64(50.0)],[np.float64(90.0), np.float64(65.0)]);
				wide_line([np.float64(90.0), np.float64(65.0)],[np.float64(80.0), np.float64(65.0)]);
				wide_line([np.float64(75.0), np.float64(-50.54065022557974)],[np.float64(80.0), np.float64(-58.77)]);
				wide_line([np.float64(80.0), np.float64(-58.77)],[np.float64(85.0), np.float64(-63.27)]);
				wide_line([np.float64(85.0), np.float64(-63.27)],[np.float64(75.0), np.float64(-50.54065022557974)]);
				wide_line([np.float64(80.0), np.float64(-58.77)],[np.float64(75.0), np.float64(-50.54065022557974)]);
				wide_line([np.float64(75.0), np.float64(-50.54065022557974)],[np.float64(70.0), np.float64(-58.77)]);
				wide_line([np.float64(70.0), np.float64(-58.77)],[np.float64(80.0), np.float64(-58.77)]);
				wide_line([np.float64(80.0), np.float64(-58.77)],[np.float64(70.0), np.float64(-58.77)]);
				wide_line([np.float64(70.0), np.float64(-58.77)],[np.float64(65.0), np.float64(-63.27)]);
				wide_line([np.float64(65.0), np.float64(-63.27)],[np.float64(80.0), np.float64(-58.77)]);
				wide_line([np.float64(85.0), np.float64(-63.27)],[np.float64(80.0), np.float64(-58.77)]);
				wide_line([np.float64(80.0), np.float64(-58.77)],[np.float64(65.0), np.float64(-63.27)]);
				wide_line([np.float64(65.0), np.float64(-63.27)],[np.float64(85.0), np.float64(-63.27)]);
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
				wide_line([55.0, 50.0],[55.0, -50.0]);
				wide_line([55.0, -50.0],[65.0, -63.27]);
				wide_line([65.0, -63.27],[70.0, -58.77]);
				wide_line([70.0, -58.77],[85.0, -63.27]);
				wide_line([85.0, -63.27],[80.0, -58.77]);
				wide_line([80.0, -58.77],[75.0, -50.54065022557974]);
				wide_line([75.0, -50.54065022557974],[67.0, -42.04]);
				wide_line([67.0, -42.04],[75.0, -30.0]);
				wide_line([75.0, -30.0],[95.0, 50.0]);
				wide_line([95.0, 50.0],[90.0, 65.0]);
				wide_line([90.0, 65.0],[95.0, 70.0]);
				wide_line([95.0, 70.0],[85.0, 70.0]);
				wide_line([85.0, 70.0],[80.0, 65.0]);
				wide_line([80.0, 65.0],[75.0, 70.0]);
				wide_line([75.0, 70.0],[70.0, 64.5]);
				wide_line([70.0, 64.5],[65.0, 70.0]);
				wide_line([65.0, 70.0],[55.0, 70.0]);
				wide_line([55.0, 70.0],[60.0, 64.5]);
				wide_line([55.0, 50.0],[60.0, 64.5]);
				wide_line([55.0, 50.0],[71.09413749481516, -30.385154321813676]);
				wide_line([55.0, -50.0],[55.0, -50.0]);
				wide_line([65.0, -63.27],[61.65022624434389, -66.31524886877828]);
				wide_line([70.0, -58.77],[70.0, -64.5]);
				wide_line([85.0, -63.27],[81.635, -66.635]);
				wide_line([80.0, -58.77],[80.0, -65.0]);
				wide_line([75.0, -50.54065022557974],[70.0, -64.5]);
				wide_line([67.0, -42.04],[60.822539990309735, -35.89336591722494]);
				wide_line([75.0, -30.0],[75.0, -30.0]);
				wide_line([95.0, 50.0],[78.90586250518709, -30.38515432181412]);
				wide_line([90.0, 65.0],[77.59399047668816, -30.168933124845474]);
				wide_line([95.0, 70.0],[78.28669768315187, -30.27190788901359]);
				wide_line([85.0, 70.0],[76.69881280609621, -30.072279732748065]);
				wide_line([80.0, 65.0],[75.90015231146471, -30.02026712350326]);
				wide_line([75.0, 70.0],[75.0, -30.0]);
				wide_line([70.0, 64.5],[74.09984768853529, -30.02026712350326]);
				wide_line([65.0, 70.0],[73.30118719390379, -30.072279732748065]);
				wide_line([55.0, 70.0],[71.71330231684813, -30.271907889013594]);
				wide_line([60.0, 64.5],[72.40600952331184, -30.168933124845474]);
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
				peri_line_scad([55.0, -50.0],[55.0, -42.5],groove_width);
				peri_line_scad([55.0, 62.5],[55.0, 70.0],groove_width);
				peri_line_scad([55.0, -70.0],[55.27861795596888, -62.50517698443708],groove_width);
				peri_line_scad([59.72138204403112, 57.00517698443708],[60.0, 64.5],groove_width);
				peri_line_scad([60.0, -64.5],[60.27861795596888, -57.00517698443708],groove_width);
				peri_line_scad([64.72138204403112, 62.50517698443708],[65.0, 70.0],groove_width);
				peri_line_scad([65.0, -70.0],[65.27861795596888, -62.50517698443708],groove_width);
				peri_line_scad([69.72138204403112, 57.00517698443708],[70.0, 64.5],groove_width);
				peri_line_scad([70.0, -64.5],[70.27861795596888, -57.00517698443708],groove_width);
				peri_line_scad([74.72138204403112, 62.50517698443708],[75.0, 70.0],groove_width);
				peri_line_scad([75.0, -70.0],[75.2775874538241, -62.505138746749246],groove_width);
				peri_line_scad([79.7224125461759, 57.505138746749246],[80.0, 65.0],groove_width);
				peri_line_scad([80.0, -65.0],[80.2775874538241, -57.505138746749246],groove_width);
				peri_line_scad([84.7224125461759, 62.505138746749246],[85.0, 70.0],groove_width);
				peri_line_scad([85.0, -70.0],[85.2775874538241, -62.505138746749246],groove_width);
				peri_line_scad([89.7224125461759, 57.505138746749246],[90.0, 65.0],groove_width);
				peri_line_scad([90.0, -65.0],[90.2775874538241, -57.505138746749246],groove_width);
				peri_line_scad([94.7224125461759, 62.505138746749246],[95.0, 70.0],groove_width);
				peri_line_scad([95.0, -70.0],[95.0, -62.5],groove_width);
				peri_line_scad([95.0, 42.5],[95.0, 50.0],groove_width);
				peri_line_scad([95.0, -50.0],[94.99975000052083, 49.900000416666145],groove_width);
				peri_line_scad([94.99975000052083, 49.900000416666145],[94.9990000083333, 49.80000333331667],groove_width);
				peri_line_scad([94.9990000083333, 49.80000333331667],[94.99775004218719, 49.70001124987344],groove_width);
				peri_line_scad([94.99775004218719, 49.70001124987344],[94.99600013333156, 49.60002666613334],groove_width);
				peri_line_scad([94.99600013333156, 49.60002666613334],[94.99375032551406, 49.50005208170575],groove_width);
				peri_line_scad([94.99375032551406, 49.50005208170575],[94.99100067497974, 49.40008999595009],groove_width);
				peri_line_scad([94.99100067497974, 49.40008999595009],[94.98775125046977, 49.300142907913276],groove_width);
				peri_line_scad([94.98775125046977, 49.300142907913276],[94.98400213321956, 49.200213316267316],groove_width);
				peri_line_scad([94.98400213321956, 49.200213316267316],[94.97975341695685, 49.100303719246796],groove_width);
				peri_line_scad([94.97975341695685, 49.100303719246796],[94.97500520789933, 49.000416614586435],groove_width);
				peri_line_scad([94.97500520789933, 49.000416614586435],[94.96975762475196, 48.90055449945864],groove_width);
				peri_line_scad([94.96975762475196, 48.90055449945864],[94.96401079870408, 48.80071987041111],groove_width);
				peri_line_scad([94.96401079870408, 48.80071987041111],[94.95776487342602, 48.70091522330435],groove_width);
				peri_line_scad([94.95776487342602, 48.70091522330435],[94.95102000506559, 48.601143053249345],groove_width);
				peri_line_scad([94.95102000506559, 48.601143053249345],[94.94377636224415, 48.501405854545155],groove_width);
				peri_line_scad([94.94377636224415, 48.501405854545155],[94.93603412605239, 48.401706120616545],groove_width);
				peri_line_scad([94.93603412605239, 48.401706120616545],[94.92779349004581, 48.30204634395168],groove_width);
				peri_line_scad([94.92779349004581, 48.30204634395168],[94.91905466023988, 48.20242901603978],groove_width);
				peri_line_scad([94.91905466023988, 48.20242901603978],[94.9098178551049, 48.10285662730885],groove_width);
				peri_line_scad([94.9098178551049, 48.10285662730885],[94.90008330556051, 48.003331667063435],groove_width);
				peri_line_scad([94.90008330556051, 48.003331667063435],[94.88985125496995, 47.90385662342235],groove_width);
				peri_line_scad([94.88985125496995, 47.90385662342235],[94.87912195913394, 47.8044339832565],groove_width);
				peri_line_scad([94.87912195913394, 47.8044339832565],[94.86789568628431, 47.705066232126725],groove_width);
				peri_line_scad([94.86789568628431, 47.705066232126725],[94.85617271707733, 47.60575585422161],groove_width);
				peri_line_scad([94.85617271707733, 47.60575585422161],[94.84395334458658, 47.50650533229545],groove_width);
				peri_line_scad([94.84395334458658, 47.50650533229545],[94.83123787429577, 47.4073171476061],groove_width);
				peri_line_scad([94.83123787429577, 47.4073171476061],[94.81802662409096, 47.308193779853035],groove_width);
				peri_line_scad([94.81802662409096, 47.308193779853035],[94.80431992425275, 47.20913770711527],groove_width);
				peri_line_scad([94.80431992425275, 47.20913770711527],[94.79011811744789, 47.11015140578947],groove_width);
				peri_line_scad([94.79011811744789, 47.11015140578947],[94.77542155872084, 47.01123735052801],groove_width);
				peri_line_scad([94.77542155872084, 47.01123735052801],[94.7602306154848, 46.91239801417713],groove_width);
				peri_line_scad([94.7602306154848, 46.91239801417713],[94.74454566751254, 46.81363586771508],groove_width);
				peri_line_scad([94.74454566751254, 46.81363586771508],[94.72836710692695, 46.71495338019038],groove_width);
				peri_line_scad([94.72836710692695, 46.71495338019038],[94.71169533819122, 46.61635301866008],groove_width);
				peri_line_scad([94.71169533819122, 46.61635301866008],[94.69453077809867, 46.51783724812808],groove_width);
				peri_line_scad([94.69453077809867, 46.51783724812808],[94.67687385576244, 46.41940853148352],groove_width);
				peri_line_scad([94.67687385576244, 46.41940853148352],[94.65872501260463, 46.321069329439176],groove_width);
				peri_line_scad([94.65872501260463, 46.321069329439176],[94.6400847023454, 46.22282210046999],groove_width);
				peri_line_scad([94.6400847023454, 46.22282210046999],[94.62095339099155, 46.12466930075156],groove_width);
				peri_line_scad([94.62095339099155, 46.12466930075156],[94.60133155682483, 46.02661338409877],groove_width);
				peri_line_scad([94.60133155682483, 46.02661338409877],[94.5812196903901, 45.92865680190444],groove_width);
				peri_line_scad([94.5812196903901, 45.92865680190444],[94.56061829448296, 45.830802003078006],groove_width);
				peri_line_scad([94.56061829448296, 45.830802003078006],[94.53952788413724, 45.73305143398436],groove_width);
				peri_line_scad([94.53952788413724, 45.73305143398436],[94.51794898661211, 45.635407538382616],groove_width);
				peri_line_scad([94.51794898661211, 45.635407538382616],[94.49588214137887, 45.53787275736509],groove_width);
				peri_line_scad([94.49588214137887, 45.53787275736509],[94.4733279001075, 45.44044952929623],groove_width);
				peri_line_scad([94.4733279001075, 45.44044952929623],[94.45028682665286, 45.343140289751666],groove_width);
				peri_line_scad([94.45028682665286, 45.343140289751666],[94.42675949704059, 45.245947471457306],groove_width);
				peri_line_scad([94.42675949704059, 45.245947471457306],[94.4027464994527, 45.14887350422856],groove_width);
				peri_line_scad([94.4027464994527, 45.14887350422856],[94.37824843421289, 45.05192081490954],groove_width);
				peri_line_scad([94.37824843421289, 45.05192081490954],[94.35326591377151, 44.95509182731244],groove_width);
				peri_line_scad([94.35326591377151, 44.95509182731244],[94.32779956269026, 44.858388962156894],groove_width);
				peri_line_scad([94.32779956269026, 44.858388962156894],[94.3018500176266, 44.76181463700951],groove_width);
				peri_line_scad([94.3018500176266, 44.76181463700951],[94.27541792731782, 44.665371266223374],groove_width);
				peri_line_scad([94.27541792731782, 44.665371266223374],[94.24850395256476, 44.569061260877746],groove_width);
				peri_line_scad([94.24850395256476, 44.569061260877746],[94.22110876621542, 44.47288702871773],groove_width);
				peri_line_scad([94.22110876621542, 44.47288702871773],[94.19323305314802, 44.37685097409412],groove_width);
				peri_line_scad([94.19323305314802, 44.37685097409412],[94.16487751025394, 44.28095549790329],groove_width);
				peri_line_scad([94.16487751025394, 44.28095549790329],[94.13604284642028, 44.18520299752714],groove_width);
				peri_line_scad([94.13604284642028, 44.18520299752714],[94.10672978251212, 44.08959586677321],groove_width);
				peri_line_scad([94.10672978251212, 44.08959586677321],[94.07693905135454, 43.99413649581477],groove_width);
				peri_line_scad([94.07693905135454, 43.99413649581477],[94.04667139771426, 43.89882727113113],groove_width);
				peri_line_scad([94.04667139771426, 43.89882727113113],[94.01592757828107, 43.803670575447946],groove_width);
				peri_line_scad([94.01592757828107, 43.803670575447946],[93.98470836164881, 43.708668787677645],groove_width);
				peri_line_scad([93.98470836164881, 43.708668787677645],[93.95301452829631, 43.61382428285998],groove_width);
				peri_line_scad([93.95301452829631, 43.61382428285998],[93.92084687056774, 43.519139432102634],groove_width);
				peri_line_scad([93.92084687056774, 43.519139432102634],[93.88820619265286, 43.42461660252194],groove_width);
				peri_line_scad([93.88820619265286, 43.42461660252194],[93.85509331056693, 43.330258157183714],groove_width);
				peri_line_scad([93.85509331056693, 43.330258157183714],[93.82150905213027, 43.236066455044174],groove_width);
				peri_line_scad([93.82150905213027, 43.236066455044174],[93.78745425694757, 43.14204385089097],groove_width);
				peri_line_scad([93.78745425694757, 43.14204385089097],[93.75292977638699, 43.048192695284314],groove_width);
				peri_line_scad([93.75292977638699, 43.048192695284314],[93.7179364735587, 42.954515334498204],groove_width);
				peri_line_scad([93.7179364735587, 42.954515334498204],[93.68247522329347, 42.861014110461774],groove_width);
				peri_line_scad([93.68247522329347, 42.861014110461774],[93.64654691212068, 42.76769136070076],groove_width);
				peri_line_scad([93.64654691212068, 42.76769136070076],[93.61015243824629, 42.67454941827905],groove_width);
				peri_line_scad([93.61015243824629, 42.67454941827905],[95.0, -50.0],groove_width);
				peri_line_scad([56.38984756175371, 42.67454941827904],[56.35345308787931, 42.767691360700766],groove_width);
				peri_line_scad([56.35345308787931, 42.767691360700766],[56.317524776706534, 42.861014110461774],groove_width);
				peri_line_scad([56.317524776706534, 42.861014110461774],[56.282063526441306, 42.9545153344982],groove_width);
				peri_line_scad([56.282063526441306, 42.9545153344982],[56.247070223613015, 43.048192695284314],groove_width);
				peri_line_scad([56.247070223613015, 43.048192695284314],[56.212545743052424, 43.14204385089097],groove_width);
				peri_line_scad([56.212545743052424, 43.14204385089097],[56.17849094786974, 43.236066455044174],groove_width);
				peri_line_scad([56.17849094786974, 43.236066455044174],[56.14490668943307, 43.330258157183714],groove_width);
				peri_line_scad([56.14490668943307, 43.330258157183714],[56.11179380734714, 43.424616602521944],groove_width);
				peri_line_scad([56.11179380734714, 43.424616602521944],[56.079153129432264, 43.51913943210263],groove_width);
				peri_line_scad([56.079153129432264, 43.51913943210263],[56.046985471703685, 43.61382428285999],groove_width);
				peri_line_scad([56.046985471703685, 43.61382428285999],[56.01529163835119, 43.708668787677645],groove_width);
				peri_line_scad([56.01529163835119, 43.708668787677645],[55.984072421718935, 43.80367057544794],groove_width);
				peri_line_scad([55.984072421718935, 43.80367057544794],[55.95332860228573, 43.89882727113114],groove_width);
				peri_line_scad([55.95332860228573, 43.89882727113114],[55.92306094864546, 43.99413649581477],groove_width);
				peri_line_scad([55.92306094864546, 43.99413649581477],[55.89327021748788, 44.0895958667732],groove_width);
				peri_line_scad([55.89327021748788, 44.0895958667732],[55.86395715357972, 44.18520299752714],groove_width);
				peri_line_scad([55.86395715357972, 44.18520299752714],[55.835122489746055, 44.280955497903285],groove_width);
				peri_line_scad([55.835122489746055, 44.280955497903285],[55.80676694685198, 44.376850974094125],groove_width);
				peri_line_scad([55.80676694685198, 44.376850974094125],[55.77889123378458, 44.47288702871773],groove_width);
				peri_line_scad([55.77889123378458, 44.47288702871773],[55.75149604743524, 44.569061260877746],groove_width);
				peri_line_scad([55.75149604743524, 44.569061260877746],[55.72458207268219, 44.665371266223374],groove_width);
				peri_line_scad([55.72458207268219, 44.665371266223374],[55.698149982373394, 44.76181463700951],groove_width);
				peri_line_scad([55.698149982373394, 44.76181463700951],[55.67220043730974, 44.8583889621569],groove_width);
				peri_line_scad([55.67220043730974, 44.8583889621569],[55.64673408622849, 44.95509182731244],groove_width);
				peri_line_scad([55.64673408622849, 44.95509182731244],[55.62175156578711, 45.051920814909536],groove_width);
				peri_line_scad([55.62175156578711, 45.051920814909536],[55.59725350054729, 45.148873504228575],groove_width);
				peri_line_scad([55.59725350054729, 45.148873504228575],[55.57324050295941, 45.2459474714573],groove_width);
				peri_line_scad([55.57324050295941, 45.2459474714573],[55.54971317334714, 45.34314028975166],groove_width);
				peri_line_scad([55.54971317334714, 45.34314028975166],[55.52667209989251, 45.44044952929623],groove_width);
				peri_line_scad([55.52667209989251, 45.44044952929623],[55.504117858621136, 45.537872757365086],groove_width);
				peri_line_scad([55.504117858621136, 45.537872757365086],[55.48205101338789, 45.63540753838261],groove_width);
				peri_line_scad([55.48205101338789, 45.63540753838261],[55.46047211586275, 45.733051433984365],groove_width);
				peri_line_scad([55.46047211586275, 45.733051433984365],[55.439381705517036, 45.830802003078],groove_width);
				peri_line_scad([55.439381705517036, 45.830802003078],[55.4187803096099, 45.928656801904445],groove_width);
				peri_line_scad([55.4187803096099, 45.928656801904445],[55.39866844317517, 46.02661338409878],groove_width);
				peri_line_scad([55.39866844317517, 46.02661338409878],[55.379046609008455, 46.12466930075156],groove_width);
				peri_line_scad([55.379046609008455, 46.12466930075156],[55.359915297654595, 46.22282210047],groove_width);
				peri_line_scad([55.359915297654595, 46.22282210047],[55.341274987395366, 46.32106932943918],groove_width);
				peri_line_scad([55.341274987395366, 46.32106932943918],[55.32312614423757, 46.41940853148352],groove_width);
				peri_line_scad([55.32312614423757, 46.41940853148352],[55.30546922190133, 46.51783724812808],groove_width);
				peri_line_scad([55.30546922190133, 46.51783724812808],[55.28830466180879, 46.61635301866008],groove_width);
				peri_line_scad([55.28830466180879, 46.61635301866008],[55.27163289307305, 46.71495338019039],groove_width);
				peri_line_scad([55.27163289307305, 46.71495338019039],[55.25545433248746, 46.813635867715085],groove_width);
				peri_line_scad([55.25545433248746, 46.813635867715085],[55.2397693845152, 46.912398014177136],groove_width);
				peri_line_scad([55.2397693845152, 46.912398014177136],[55.22457844127916, 47.01123735052801],groove_width);
				peri_line_scad([55.22457844127916, 47.01123735052801],[55.209881882552104, 47.110151405789466],groove_width);
				peri_line_scad([55.209881882552104, 47.110151405789466],[55.19568007574726, 47.20913770711527],groove_width);
				peri_line_scad([55.19568007574726, 47.20913770711527],[55.18197337590904, 47.308193779853035],groove_width);
				peri_line_scad([55.18197337590904, 47.308193779853035],[55.168762125704234, 47.4073171476061],groove_width);
				peri_line_scad([55.168762125704234, 47.4073171476061],[55.15604665541342, 47.50650533229545],groove_width);
				peri_line_scad([55.15604665541342, 47.50650533229545],[55.14382728292267, 47.605755854221606],groove_width);
				peri_line_scad([55.14382728292267, 47.605755854221606],[55.132104313715686, 47.70506623212672],groove_width);
				peri_line_scad([55.132104313715686, 47.70506623212672],[55.12087804086606, 47.8044339832565],groove_width);
				peri_line_scad([55.12087804086606, 47.8044339832565],[55.11014874503005, 47.90385662342235],groove_width);
				peri_line_scad([55.11014874503005, 47.90385662342235],[55.099916694439486, 48.003331667063435],groove_width);
				peri_line_scad([55.099916694439486, 48.003331667063435],[55.090182144895095, 48.10285662730887],groove_width);
				peri_line_scad([55.090182144895095, 48.10285662730887],[55.08094533976012, 48.20242901603977],groove_width);
				peri_line_scad([55.08094533976012, 48.20242901603977],[55.072206509954185, 48.30204634395169],groove_width);
				peri_line_scad([55.072206509954185, 48.30204634395169],[55.06396587394761, 48.40170612061655],groove_width);
				peri_line_scad([55.06396587394761, 48.40170612061655],[55.05622363775585, 48.501405854545155],groove_width);
				peri_line_scad([55.05622363775585, 48.501405854545155],[55.04897999493441, 48.60114305324935],groove_width);
				peri_line_scad([55.04897999493441, 48.60114305324935],[55.04223512657398, 48.700915223304335],groove_width);
				peri_line_scad([55.04223512657398, 48.700915223304335],[55.03598920129592, 48.80071987041109],groove_width);
				peri_line_scad([55.03598920129592, 48.80071987041109],[55.03024237524803, 48.90055449945865],groove_width);
				peri_line_scad([55.03024237524803, 48.90055449945865],[55.02499479210067, 49.000416614586435],groove_width);
				peri_line_scad([55.02499479210067, 49.000416614586435],[55.020246583043146, 49.100303719246796],groove_width);
				peri_line_scad([55.020246583043146, 49.100303719246796],[55.01599786678044, 49.20021331626732],groove_width);
				peri_line_scad([55.01599786678044, 49.20021331626732],[55.01224874953023, 49.30014290791327],groove_width);
				peri_line_scad([55.01224874953023, 49.30014290791327],[55.00899932502025, 49.40008999595009],groove_width);
				peri_line_scad([55.00899932502025, 49.40008999595009],[55.00624967448594, 49.50005208170575],groove_width);
				peri_line_scad([55.00624967448594, 49.50005208170575],[55.003999866668444, 49.60002666613334],groove_width);
				peri_line_scad([55.003999866668444, 49.60002666613334],[55.002249957812815, 49.70001124987344],groove_width);
				peri_line_scad([55.002249957812815, 49.70001124987344],[55.000999991666696, 49.80000333331667],groove_width);
				peri_line_scad([55.000999991666696, 49.80000333331667],[55.000249999479166, 49.900000416666145],groove_width);
				peri_line_scad([55.000249999479166, 49.900000416666145],[55.0, 50.0],groove_width);
				peri_line_scad([55.0, 50.0],[56.38984756175371, 42.67454941827904],groove_width);
				peri_line_scad([82.32545058172094, 31.38984756175371],[82.23230863929923, 31.35345308787931],groove_width);
				peri_line_scad([82.23230863929923, 31.35345308787931],[82.13898588953823, 31.317524776706538],groove_width);
				peri_line_scad([82.13898588953823, 31.317524776706538],[82.0454846655018, 31.282063526441302],groove_width);
				peri_line_scad([82.0454846655018, 31.282063526441302],[81.95180730471569, 31.247070223613015],groove_width);
				peri_line_scad([81.95180730471569, 31.247070223613015],[81.85795614910903, 31.21254574305242],groove_width);
				peri_line_scad([81.85795614910903, 31.21254574305242],[81.76393354495582, 31.17849094786974],groove_width);
				peri_line_scad([81.76393354495582, 31.17849094786974],[81.66974184281628, 31.144906689433075],groove_width);
				peri_line_scad([81.66974184281628, 31.144906689433075],[81.57538339747806, 31.11179380734714],groove_width);
				peri_line_scad([81.57538339747806, 31.11179380734714],[81.48086056789737, 31.07915312943226],groove_width);
				peri_line_scad([81.48086056789737, 31.07915312943226],[81.38617571714002, 31.046985471703685],groove_width);
				peri_line_scad([81.38617571714002, 31.046985471703685],[81.29133121232235, 31.01529163835118],groove_width);
				peri_line_scad([81.29133121232235, 31.01529163835118],[81.19632942455206, 30.984072421718935],groove_width);
				peri_line_scad([81.19632942455206, 30.984072421718935],[81.10117272886886, 30.95332860228573],groove_width);
				peri_line_scad([81.10117272886886, 30.95332860228573],[81.00586350418523, 30.923060948645457],groove_width);
				peri_line_scad([81.00586350418523, 30.923060948645457],[80.91040413322679, 30.893270217487878],groove_width);
				peri_line_scad([80.91040413322679, 30.893270217487878],[80.81479700247284, 30.86395715357972],groove_width);
				peri_line_scad([80.81479700247284, 30.86395715357972],[80.71904450209671, 30.835122489746055],groove_width);
				peri_line_scad([80.71904450209671, 30.835122489746055],[80.62314902590587, 30.80676694685198],groove_width);
				peri_line_scad([80.62314902590587, 30.80676694685198],[80.52711297128228, 30.77889123378458],groove_width);
				peri_line_scad([80.52711297128228, 30.77889123378458],[80.43093873912225, 30.75149604743524],groove_width);
				peri_line_scad([80.43093873912225, 30.75149604743524],[80.33462873377663, 30.72458207268219],groove_width);
				peri_line_scad([80.33462873377663, 30.72458207268219],[80.23818536299049, 30.698149982373394],groove_width);
				peri_line_scad([80.23818536299049, 30.698149982373394],[80.14161103784309, 30.672200437309737],groove_width);
				peri_line_scad([80.14161103784309, 30.672200437309737],[80.04490817268756, 30.646734086228488],groove_width);
				peri_line_scad([80.04490817268756, 30.646734086228488],[79.94807918509045, 30.621751565787104],groove_width);
				peri_line_scad([79.94807918509045, 30.621751565787104],[79.85112649577144, 30.597253500547293],groove_width);
				peri_line_scad([79.85112649577144, 30.597253500547293],[79.75405252854269, 30.573240502959408],groove_width);
				peri_line_scad([79.75405252854269, 30.573240502959408],[79.65685971024834, 30.549713173347143],groove_width);
				peri_line_scad([79.65685971024834, 30.549713173347143],[79.55955047070377, 30.5266720998925],groove_width);
				peri_line_scad([79.55955047070377, 30.5266720998925],[79.4621272426349, 30.504117858621132],groove_width);
				peri_line_scad([79.4621272426349, 30.504117858621132],[79.36459246161738, 30.48205101338789],groove_width);
				peri_line_scad([79.36459246161738, 30.48205101338789],[79.26694856601564, 30.46047211586275],groove_width);
				peri_line_scad([79.26694856601564, 30.46047211586275],[79.169197996922, 30.439381705517036],groove_width);
				peri_line_scad([79.169197996922, 30.439381705517036],[79.07134319809556, 30.4187803096099],groove_width);
				peri_line_scad([79.07134319809556, 30.4187803096099],[78.97338661590122, 30.39866844317517],groove_width);
				peri_line_scad([78.97338661590122, 30.39866844317517],[78.87533069924844, 30.379046609008455],groove_width);
				peri_line_scad([78.87533069924844, 30.379046609008455],[78.77717789953, 30.359915297654595],groove_width);
				peri_line_scad([78.77717789953, 30.359915297654595],[78.67893067056082, 30.34127498739537],groove_width);
				peri_line_scad([78.67893067056082, 30.34127498739537],[78.58059146851649, 30.32312614423757],groove_width);
				peri_line_scad([78.58059146851649, 30.32312614423757],[78.48216275187193, 30.30546922190133],groove_width);
				peri_line_scad([78.48216275187193, 30.30546922190133],[78.38364698133992, 30.288304661808784],groove_width);
				peri_line_scad([78.38364698133992, 30.288304661808784],[78.28504661980962, 30.271632893073047],groove_width);
				peri_line_scad([78.28504661980962, 30.271632893073047],[78.18636413228492, 30.25545433248746],groove_width);
				peri_line_scad([78.18636413228492, 30.25545433248746],[78.08760198582287, 30.239769384515203],groove_width);
				peri_line_scad([78.08760198582287, 30.239769384515203],[77.98876264947198, 30.224578441279156],groove_width);
				peri_line_scad([77.98876264947198, 30.224578441279156],[77.88984859421053, 30.209881882552104],groove_width);
				peri_line_scad([77.88984859421053, 30.209881882552104],[77.79086229288473, 30.195680075747255],groove_width);
				peri_line_scad([77.79086229288473, 30.195680075747255],[77.69180622014696, 30.181973375909042],groove_width);
				peri_line_scad([77.69180622014696, 30.181973375909042],[77.59268285239389, 30.168762125704237],groove_width);
				peri_line_scad([77.59268285239389, 30.168762125704237],[77.49349466770455, 30.15604665541342],groove_width);
				peri_line_scad([77.49349466770455, 30.15604665541342],[77.39424414577839, 30.143827282922675],groove_width);
				peri_line_scad([77.39424414577839, 30.143827282922675],[77.29493376787327, 30.132104313715683],groove_width);
				peri_line_scad([77.29493376787327, 30.132104313715683],[77.1955660167435, 30.120878040866064],groove_width);
				peri_line_scad([77.1955660167435, 30.120878040866064],[77.09614337657764, 30.11014874503005],groove_width);
				peri_line_scad([77.09614337657764, 30.11014874503005],[76.99666833293657, 30.099916694439482],groove_width);
				peri_line_scad([76.99666833293657, 30.099916694439482],[76.89714337269115, 30.090182144895095],groove_width);
				peri_line_scad([76.89714337269115, 30.090182144895095],[76.79757098396021, 30.080945339760113],groove_width);
				peri_line_scad([76.79757098396021, 30.080945339760113],[76.69795365604833, 30.072206509954192],groove_width);
				peri_line_scad([76.69795365604833, 30.072206509954192],[76.59829387938345, 30.063965873947613],groove_width);
				peri_line_scad([76.59829387938345, 30.063965873947613],[76.49859414545485, 30.05622363775585],groove_width);
				peri_line_scad([76.49859414545485, 30.05622363775585],[76.39885694675066, 30.04897999493441],groove_width);
				peri_line_scad([76.39885694675066, 30.04897999493441],[76.29908477669565, 30.042235126573978],groove_width);
				peri_line_scad([76.29908477669565, 30.042235126573978],[76.1992801295889, 30.035989201295916],groove_width);
				peri_line_scad([76.1992801295889, 30.035989201295916],[76.09944550054135, 30.03024237524803],groove_width);
				peri_line_scad([76.09944550054135, 30.03024237524803],[75.99958338541357, 30.024994792100674],groove_width);
				peri_line_scad([75.99958338541357, 30.024994792100674],[75.8996962807532, 30.02024658304315],groove_width);
				peri_line_scad([75.8996962807532, 30.02024658304315],[75.79978668373268, 30.01599786678044],groove_width);
				peri_line_scad([75.79978668373268, 30.01599786678044],[75.69985709208672, 30.01224874953023],groove_width);
				peri_line_scad([75.69985709208672, 30.01224874953023],[75.59991000404992, 30.00899932502025],groove_width);
				peri_line_scad([75.59991000404992, 30.00899932502025],[75.49994791829424, 30.006249674485947],groove_width);
				peri_line_scad([75.49994791829424, 30.006249674485947],[75.39997333386665, 30.003999866668444],groove_width);
				peri_line_scad([75.39997333386665, 30.003999866668444],[75.29998875012656, 30.002249957812815],groove_width);
				peri_line_scad([75.29998875012656, 30.002249957812815],[75.19999666668333, 30.000999991666696],groove_width);
				peri_line_scad([75.19999666668333, 30.000999991666696],[75.09999958333385, 30.000249999479166],groove_width);
				peri_line_scad([75.09999958333385, 30.000249999479166],[75.0, 30.0],groove_width);
				peri_line_scad([75.0, 30.0],[74.90000041666615, 30.000249999479166],groove_width);
				peri_line_scad([74.90000041666615, 30.000249999479166],[74.80000333331667, 30.000999991666696],groove_width);
				peri_line_scad([74.80000333331667, 30.000999991666696],[74.70001124987343, 30.002249957812815],groove_width);
				peri_line_scad([74.70001124987343, 30.002249957812815],[74.60002666613333, 30.003999866668444],groove_width);
				peri_line_scad([74.60002666613333, 30.003999866668444],[74.50005208170575, 30.006249674485947],groove_width);
				peri_line_scad([74.50005208170575, 30.006249674485947],[74.4000899959501, 30.00899932502025],groove_width);
				peri_line_scad([74.4000899959501, 30.00899932502025],[74.30014290791327, 30.01224874953023],groove_width);
				peri_line_scad([74.30014290791327, 30.01224874953023],[74.20021331626731, 30.01599786678044],groove_width);
				peri_line_scad([74.20021331626731, 30.01599786678044],[74.1003037192468, 30.02024658304315],groove_width);
				peri_line_scad([74.1003037192468, 30.02024658304315],[74.00041661458643, 30.024994792100674],groove_width);
				peri_line_scad([74.00041661458643, 30.024994792100674],[73.90055449945865, 30.030242375248033],groove_width);
				peri_line_scad([73.90055449945865, 30.030242375248033],[73.80071987041111, 30.035989201295916],groove_width);
				peri_line_scad([73.80071987041111, 30.035989201295916],[73.70091522330435, 30.042235126573978],groove_width);
				peri_line_scad([73.70091522330435, 30.042235126573978],[73.60114305324934, 30.04897999493441],groove_width);
				peri_line_scad([73.60114305324934, 30.04897999493441],[73.50140585454515, 30.05622363775585],groove_width);
				peri_line_scad([73.50140585454515, 30.05622363775585],[73.40170612061654, 30.063965873947613],groove_width);
				peri_line_scad([73.40170612061654, 30.063965873947613],[73.30204634395167, 30.072206509954192],groove_width);
				peri_line_scad([73.30204634395167, 30.072206509954192],[73.20242901603977, 30.080945339760113],groove_width);
				peri_line_scad([73.20242901603977, 30.080945339760113],[73.10285662730885, 30.090182144895095],groove_width);
				peri_line_scad([73.10285662730885, 30.090182144895095],[73.00333166706343, 30.099916694439486],groove_width);
				peri_line_scad([73.00333166706343, 30.099916694439486],[72.90385662342234, 30.110148745030052],groove_width);
				peri_line_scad([72.90385662342234, 30.110148745030052],[72.8044339832565, 30.120878040866064],groove_width);
				peri_line_scad([72.8044339832565, 30.120878040866064],[72.70506623212673, 30.132104313715683],groove_width);
				peri_line_scad([72.70506623212673, 30.132104313715683],[72.60575585422161, 30.143827282922675],groove_width);
				peri_line_scad([72.60575585422161, 30.143827282922675],[72.50650533229545, 30.15604665541342],groove_width);
				peri_line_scad([72.50650533229545, 30.15604665541342],[72.4073171476061, 30.16876212570424],groove_width);
				peri_line_scad([72.4073171476061, 30.16876212570424],[72.30819377985303, 30.181973375909042],groove_width);
				peri_line_scad([72.30819377985303, 30.181973375909042],[72.20913770711527, 30.195680075747255],groove_width);
				peri_line_scad([72.20913770711527, 30.195680075747255],[72.11015140578947, 30.209881882552104],groove_width);
				peri_line_scad([72.11015140578947, 30.209881882552104],[72.01123735052802, 30.224578441279156],groove_width);
				peri_line_scad([72.01123735052802, 30.224578441279156],[71.91239801417713, 30.239769384515203],groove_width);
				peri_line_scad([71.91239801417713, 30.239769384515203],[71.81363586771508, 30.25545433248746],groove_width);
				peri_line_scad([71.81363586771508, 30.25545433248746],[71.71495338019038, 30.271632893073047],groove_width);
				peri_line_scad([71.71495338019038, 30.271632893073047],[71.61635301866008, 30.288304661808787],groove_width);
				peri_line_scad([71.61635301866008, 30.288304661808787],[71.51783724812807, 30.30546922190133],groove_width);
				peri_line_scad([71.51783724812807, 30.30546922190133],[71.41940853148351, 30.32312614423757],groove_width);
				peri_line_scad([71.41940853148351, 30.32312614423757],[71.32106932943918, 30.34127498739537],groove_width);
				peri_line_scad([71.32106932943918, 30.34127498739537],[71.22282210046998, 30.359915297654595],groove_width);
				peri_line_scad([71.22282210046998, 30.359915297654595],[71.12466930075156, 30.379046609008455],groove_width);
				peri_line_scad([71.12466930075156, 30.379046609008455],[71.02661338409878, 30.39866844317517],groove_width);
				peri_line_scad([71.02661338409878, 30.39866844317517],[70.92865680190444, 30.4187803096099],groove_width);
				peri_line_scad([70.92865680190444, 30.4187803096099],[70.830802003078, 30.439381705517036],groove_width);
				peri_line_scad([70.830802003078, 30.439381705517036],[70.73305143398434, 30.460472115862753],groove_width);
				peri_line_scad([70.73305143398434, 30.460472115862753],[70.63540753838261, 30.48205101338789],groove_width);
				peri_line_scad([70.63540753838261, 30.48205101338789],[70.53787275736508, 30.504117858621136],groove_width);
				peri_line_scad([70.53787275736508, 30.504117858621136],[70.44044952929623, 30.526672099892505],groove_width);
				peri_line_scad([70.44044952929623, 30.526672099892505],[70.34314028975166, 30.54971317334714],groove_width);
				peri_line_scad([70.34314028975166, 30.54971317334714],[70.24594747145731, 30.573240502959408],groove_width);
				peri_line_scad([70.24594747145731, 30.573240502959408],[70.14887350422856, 30.597253500547293],groove_width);
				peri_line_scad([70.14887350422856, 30.597253500547293],[70.05192081490954, 30.621751565787104],groove_width);
				peri_line_scad([70.05192081490954, 30.621751565787104],[69.95509182731243, 30.64673408622849],groove_width);
				peri_line_scad([69.95509182731243, 30.64673408622849],[69.8583889621569, 30.672200437309737],groove_width);
				peri_line_scad([69.8583889621569, 30.672200437309737],[69.76181463700951, 30.698149982373394],groove_width);
				peri_line_scad([69.76181463700951, 30.698149982373394],[69.66537126622337, 30.724582072682193],groove_width);
				peri_line_scad([69.66537126622337, 30.724582072682193],[69.56906126087775, 30.75149604743524],groove_width);
				peri_line_scad([69.56906126087775, 30.75149604743524],[69.47288702871772, 30.77889123378458],groove_width);
				peri_line_scad([69.47288702871772, 30.77889123378458],[69.37685097409411, 30.80676694685198],groove_width);
				peri_line_scad([69.37685097409411, 30.80676694685198],[69.28095549790329, 30.83512248974606],groove_width);
				peri_line_scad([69.28095549790329, 30.83512248974606],[69.18520299752714, 30.863957153579722],groove_width);
				peri_line_scad([69.18520299752714, 30.863957153579722],[69.08959586677321, 30.89327021748788],groove_width);
				peri_line_scad([69.08959586677321, 30.89327021748788],[68.99413649581477, 30.92306094864546],groove_width);
				peri_line_scad([68.99413649581477, 30.92306094864546],[68.89882727113113, 30.953328602285733],groove_width);
				peri_line_scad([68.89882727113113, 30.953328602285733],[68.80367057544794, 30.984072421718935],groove_width);
				peri_line_scad([68.80367057544794, 30.984072421718935],[68.70866878767765, 31.01529163835118],groove_width);
				peri_line_scad([68.70866878767765, 31.01529163835118],[68.61382428285998, 31.046985471703685],groove_width);
				peri_line_scad([68.61382428285998, 31.046985471703685],[68.51913943210263, 31.079153129432264],groove_width);
				peri_line_scad([68.51913943210263, 31.079153129432264],[68.42461660252194, 31.11179380734714],groove_width);
				peri_line_scad([68.42461660252194, 31.11179380734714],[68.3302581571837, 31.144906689433075],groove_width);
				peri_line_scad([68.3302581571837, 31.144906689433075],[68.23606645504417, 31.17849094786974],groove_width);
				peri_line_scad([68.23606645504417, 31.17849094786974],[68.14204385089097, 31.212545743052424],groove_width);
				peri_line_scad([68.14204385089097, 31.212545743052424],[68.04819269528431, 31.247070223613015],groove_width);
				peri_line_scad([68.04819269528431, 31.247070223613015],[67.9545153344982, 31.282063526441306],groove_width);
				peri_line_scad([67.9545153344982, 31.282063526441306],[67.86101411046177, 31.31752477670654],groove_width);
				peri_line_scad([67.86101411046177, 31.31752477670654],[67.76769136070075, 31.353453087879313],groove_width);
				peri_line_scad([67.76769136070075, 31.353453087879313],[67.67454941827904, 31.389847561753715],groove_width);
				peri_line_scad([67.67454941827904, 31.389847561753715],[82.32545058172094, 31.38984756175371],groove_width);
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
  if(Include_C1_in_Jig) {
    if(Shell_Type_For_C1=="courtyard") {
      courtyard_perimeter_C1();
    } else if(Shell_Type_For_C1=="tight") {
      tight_perimeter_C1_0();
    } else if(Shell_Type_For_C1=="fitting_flower") {
      fitting_flower_C1_0();
    } else {
      perimeter_C1_0();
    }
  }
  if(Include_J3_in_Jig) {
    if(Shell_Type_For_J3=="courtyard") {
      courtyard_perimeter_J3();
    } else if(Shell_Type_For_J3=="tight") {
      tight_perimeter_J3_0();
    } else if(Shell_Type_For_J3=="fitting_flower") {
      fitting_flower_J3_0();
    } else {
      perimeter_J3_0();
    }
  }
  if(Include_J4_in_Jig) {
    if(Shell_Type_For_J4=="courtyard") {
      courtyard_perimeter_J4();
    } else if(Shell_Type_For_J4=="tight") {
      tight_perimeter_J4_0();
    } else if(Shell_Type_For_J4=="fitting_flower") {
      fitting_flower_J4_0();
    } else {
      perimeter_J4_0();
    }
  }
  if(Include_J2_in_Jig) {
    if(Shell_Type_For_J2=="courtyard") {
      courtyard_perimeter_J2();
    } else if(Shell_Type_For_J2=="tight") {
      tight_perimeter_J2_0();
    } else if(Shell_Type_For_J2=="fitting_flower") {
      fitting_flower_J2_0();
    } else {
      perimeter_J2_0();
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
    if(Include_C1_in_Jig) {
      if(Shell_Type_For_C1=="fitting") {
        fitting_cuts_C1_0();
      } else if(Shell_Type_For_C1=="fitting_flower") {
        fitting_cuts_C1_0();
      }
    }
    if(Include_J3_in_Jig) {
      if(Shell_Type_For_J3=="fitting") {
        fitting_cuts_J3_0();
      } else if(Shell_Type_For_J3=="fitting_flower") {
        fitting_cuts_J3_0();
      }
    }
    if(Include_J4_in_Jig) {
      if(Shell_Type_For_J4=="fitting") {
        fitting_cuts_J4_0();
      } else if(Shell_Type_For_J4=="fitting_flower") {
        fitting_cuts_J4_0();
      }
    }
    if(Include_J2_in_Jig) {
      if(Shell_Type_For_J2=="fitting") {
        fitting_cuts_J2_0();
      } else if(Shell_Type_For_J2=="fitting_flower") {
        fitting_cuts_J2_0();
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
    if(Shell_Type_For_C1=="courtyard") {
      courtyard_pocket_C1();
    } else if(Shell_Type_For_C1=="wiggle") {
      wiggle_pocket_C1_0();
    } else if(Shell_Type_For_C1=="tight") {
      tight_pocket_C1_0();
    } else { //fitting or fitting_flower
      fitting_pocket_C1_0();
    }
    if(Shell_Type_For_J3=="courtyard") {
      courtyard_pocket_J3();
    } else if(Shell_Type_For_J3=="wiggle") {
      wiggle_pocket_J3_0();
    } else if(Shell_Type_For_J3=="tight") {
      tight_pocket_J3_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J3_0();
    }
    if(Shell_Type_For_J4=="courtyard") {
      courtyard_pocket_J4();
    } else if(Shell_Type_For_J4=="wiggle") {
      wiggle_pocket_J4_0();
    } else if(Shell_Type_For_J4=="tight") {
      tight_pocket_J4_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J4_0();
    }
    if(Shell_Type_For_J2=="courtyard") {
      courtyard_pocket_J2();
    } else if(Shell_Type_For_J2=="wiggle") {
      wiggle_pocket_J2_0();
    } else if(Shell_Type_For_J2=="tight") {
      tight_pocket_J2_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J2_0();
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
          wide_line([pcb_min_x, -63.27],[pcb_max_x, -63.27]);
        }
        if(Include_C1_in_Jig) {
          wide_line([pcb_min_x, -50.54065022557974],[pcb_max_x, -50.54065022557974]);
        }
        if(Include_J3_in_Jig) {
          wide_line([pcb_min_x, -58.77],[pcb_max_x, -58.77]);
        }
        if(Include_J4_in_Jig) {
          wide_line([pcb_min_x, -58.77],[pcb_max_x, -58.77]);
        }
        if(Include_J2_in_Jig) {
          wide_line([pcb_min_x, -63.27],[pcb_max_x, -63.27]);
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
          wide_line([65.0, pcb_min_y],[65.0, pcb_max_y]);
        }
        if(Include_C1_in_Jig) {
          wide_line([75.0, pcb_min_y],[75.0, pcb_max_y]);
        }
        if(Include_J3_in_Jig) {
          wide_line([70.0, pcb_min_y],[70.0, pcb_max_y]);
        }
        if(Include_J4_in_Jig) {
          wide_line([80.0, pcb_min_y],[80.0, pcb_max_y]);
        }
        if(Include_J2_in_Jig) {
          wide_line([85.0, pcb_min_y],[85.0, pcb_max_y]);
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
    translate([67.0,-42.04,PCB_Thickness+SMD_Clearance_From_Shells]) {
      linear_extrude(topmost_z+c_Base_Thickness-SMD_Clearance_From_Shells) {
        difference() {
          circle(r=2.8);
          circle(r=1.6);
        }
      }
    }
  }
}
module mounting_hole_keepout_volume() {
  translate([0,0,PCB_Thickness]) {
    linear_extrude(topmost_z+c_Base_Thickness) {
      translate([67.0,-42.04,0]) {
        circle(r=1.6);
      }
    }
  }
}
module base_connect_mounting_hole_lines() {
  translate([0,0,mesh_start_z]) {
    union() {
      wide_line([67.0, -42.04],[60.822539990309735, -35.89336591722494]);
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
      translate([67.0,-42.04,0]) {
        difference() {
          circle(r=2.8);
          if (Bolt_Is_External) {
            circle(r=1.6);
          }
        }
      }
    }
  }
  if (!Bolt_Is_External) {
      translate([67.0,-42.04,0]) {
        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {
          circle(r=1.4);
        }
      }
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

pcb_min_x = 55.0;
pcb_max_x = 95.0;
pcb_min_y = -70.0;
pcb_max_y = -30.0;

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
