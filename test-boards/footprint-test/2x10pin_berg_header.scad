// Customizable Jig Generator
// In OpenSCAD, use "Description Only" for best user experience
// understanding the tunable parameters.
// -----------------------------------------------------
// Auto generated file by jigit, the awesome automatic
// jig generator for your PCB designs. Checkout the project
// at https://github.com/shreekumar3d/jigit
// -----------------------------------------------------
// Configuration file : config.toml
//
// Complete configuration file is embedded at the end of this
// file.
//Thickness(height) of base
Base_Thickness = 0.4; // [0.0:0.2:1.0]
/* [Include these footprints in output STL file] */
//Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical
Include_FP1_0_in_Jig=true; // [false,true]
//Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical
Include_FP1_1_in_Jig=true; // [false,true]
/* [Footprint: Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical] */
//XY Gap in shell for component insertion
Effective_Shell_Gap_For_FP1_0 = 0.1;
//Thickness of shell
Effective_Shell_Thickness_For_FP1_0 = 1.2;
//Z distance from start of shell to PCB
Effective_Shell_Clearance_From_PCB_For_FP1_0 = 1;
//Type of shell for this footprint
Shell_Type_For_FP1_0="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_FP1_0_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_FP1_0=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_FP1_0=0.0; // [0:0.1:8.539479970932007]
/* [Footprint: Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical] */
//XY Gap in shell for component insertion
Effective_Shell_Gap_For_FP1_1 = 0.1;
//Thickness of shell
Effective_Shell_Thickness_For_FP1_1 = 1.2;
//Z distance from start of shell to PCB
Effective_Shell_Clearance_From_PCB_For_FP1_1 = 1;
//Type of shell for this footprint
Shell_Type_For_FP1_1="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_FP1_1_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_FP1_1=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_FP1_1=0.0; // [0:0.1:8.539479970932007]
/* [Hidden] */

// Height of the tallest component on the top side
topmost_z=8.539479970932007;
    bottom_insertion_z = 9.339479970932008;
// Height of the individual components
max_z_FP1_0= (Insert_FP1_0_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x10_P2.54mm_Vertical.wrl
min_z_FP1_0= -2.9997399854660034;
max_z_FP1_1= (Insert_FP1_1_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x10_P2.54mm_Vertical.wrl
min_z_FP1_1= -2.9997399854660034;
// } END : Computed Values

tiny_dimension = 0.0001;
PCB_Thickness = 0;
c_Base_Thickness = Base_Thickness;
c_Base_Line_Height = 1.0;
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
module fitting_cuts_FP1_0_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_0))]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_0)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -23.179333920287906],[-0.46075425460358, -23.320755276525215],0.4);
						peri_line_scad([0.3193328983662705, -23.179333920287906],[0.46075425460358, -23.320755276525215],0.4);
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -20.18004102706909],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * -1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([0.31904000514745706, -20.18004102706909],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
								peri_line_scad([0.31904000514745706, -2.679959994852542],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 1.0)), (-2.679959994852542 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0))]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([1.2690761200968321, -23.875616348529373],[1.4538521007304213, -23.95215285603328],0.4);
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
								peri_line_scad([-1.2690761200968321, -23.875616348529373],[-1.4538521007304213, -23.95215285603328],0.4);
								peri_line_scad([-1.0156173308123695, -24.129076120838146],[-1.0921541962544274, -24.3138519532089],0.4);
							}
						}
						peri_line_scad([-1.0156173308123695, -24.129076120838146],[-1.0921541962544274, -24.3138519532089],0.4);
						hull() {
							union() {
								peri_line_scad([1.0156173308123695, -24.129076120838146],[1.0921541962544274, -24.3138519532089],0.4);
								peri_line_scad([1.2690761200968321, -23.875616348529373],[1.4538521007304213, -23.95215285603328],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -20.875999031066893],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604215],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 1.0)), (-1.9839999848604215 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -20.875999031066893],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * -1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_FP1_0) + Effective_Shell_Gap_For_FP1_0) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_FP1_0_0_0(){
	polygon(points = [[1.27, -23.875999031066893], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -23.875999031066893], [-1.0160000151395798, -24.13], [1.0160000151395798, -24.13]]);
}
module hullpoly_FP1_0_0_1(){
	polygon(points = [[0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -23.18004102706909], [0.32004000514745706, -23.18004102706909]]);
}
module fitting_pocket_FP1_0_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_FP1_0) {
						union() {
							hullpoly_FP1_0_0_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (5.999479970932007 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_FP1_0) {
						union() {
							hullpoly_FP1_0_0_1();
						}
					}
				}
			}
		}
	}
}
module ref_FP1_0_0(){
	union() {
		hullpoly_FP1_0_0_0();
	}
}
module wiggle_pocket_FP1_0_0(){
	translate(v = [0, 0, (PCB_Thickness + min_z_FP1_0)]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = (max_z_FP1_0 - min_z_FP1_0)) {
				offset(r = Effective_Shell_Gap_For_FP1_0) {
					union() {
						ref_FP1_0_0();
					}
				}
			}
		}
	}
}
module perimeter_FP1_0_0(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1_0)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1_0) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
						union() {
							ref_FP1_0_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_0)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1_0) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0) + Wrapper_Thickness_For_FP1_0)) {
							union() {
								ref_FP1_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
							union() {
								ref_FP1_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_FP1_0_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((max_z_FP1_0 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
							union() {
								hullpoly_FP1_0_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_FP1_0) {
							union() {
								hullpoly_FP1_0_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_0)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((max_z_FP1_0 - max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_0)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
							union() {
								hullpoly_FP1_0_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_FP1_0) {
							union() {
								hullpoly_FP1_0_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_0)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1_0) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0) + Wrapper_Thickness_For_FP1_0)) {
							union() {
								ref_FP1_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
							union() {
								ref_FP1_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness + max_z_FP1_0)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - max_z_FP1_0) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
						union() {
							ref_FP1_0_0();
						}
					}
				}
			}
		}
	}
}
module shape_FP1_0_0_0(){
	union() {
		polygon(points = [[1.016, -24.13], [1.266, -23.88], [1.27, -23.876], [1.27, -21.876], [1.27, -21.844], [1.02, -21.594], [1.016, -21.59], [1.266, -21.34], [1.27, -21.336], [1.27, -19.336], [1.27, -19.304], [1.02, -19.054], [1.016, -19.05], [1.266, -18.8], [1.27, -18.796], [1.27, -16.796], [1.27, -16.764], [1.02, -16.514], [1.016, -16.51], [1.266, -16.26], [1.27, -16.256], [1.27, -14.256], [1.27, -14.224], [1.02, -13.974], [1.016, -13.97], [1.266, -13.72], [1.27, -13.716], [1.27, -11.716], [1.27, -11.684], [1.02, -11.434], [1.016, -11.43], [1.266, -11.18], [1.27, -11.176], [1.27, -9.176], [1.27, -9.144], [1.02, -8.894], [1.016, -8.89], [1.266, -8.64], [1.27, -8.636], [1.27, -6.636], [1.27, -6.604], [1.02, -6.354], [1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43], [-1.27, -11.684], [-1.27, -13.716], [-1.016, -13.97], [-1.27, -14.224], [-1.27, -16.256], [-1.016, -16.51], [-1.27, -16.764], [-1.27, -18.796], [-1.016, -19.05], [-1.27, -19.304], [-1.27, -21.336], [-1.016, -21.59], [-1.27, -21.844], [-1.27, -23.876], [-1.016, -24.13]]);
	}
}
module keepout_volume_FP1_0_0_0(){
	translate(v = [0, 0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0))]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = ((2.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_FP1_0) {
					union() {
						shape_FP1_0_0_0();
					}
				}
			}
		}
	}
}
module shape_FP1_0_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
		polygon(points = [[0.209, -13.358], [0.258, -13.35], [0.305, -13.338], [0.351, -13.322], [0.396, -13.301], [0.438, -13.276], [0.477, -13.247], [0.514, -13.214], [0.547, -13.177], [0.576, -13.138], [0.601, -13.096], [0.622, -13.051], [0.638, -13.005], [0.65, -12.958], [0.658, -12.909], [0.66, -12.86], [0.66, -12.54], [0.658, -12.491], [0.65, -12.442], [0.638, -12.395], [0.622, -12.349], [0.601, -12.304], [0.576, -12.262], [0.547, -12.223], [0.514, -12.186], [0.477, -12.153], [0.438, -12.124], [0.396, -12.099], [0.351, -12.078], [0.305, -12.062], [0.258, -12.05], [0.209, -12.042], [0.16, -12.04], [-0.16, -12.04], [-0.209, -12.042], [-0.258, -12.05], [-0.305, -12.062], [-0.351, -12.078], [-0.396, -12.099], [-0.438, -12.124], [-0.477, -12.153], [-0.514, -12.186], [-0.547, -12.223], [-0.576, -12.262], [-0.601, -12.304], [-0.622, -12.349], [-0.638, -12.395], [-0.65, -12.442], [-0.658, -12.491], [-0.66, -12.54], [-0.66, -12.86], [-0.658, -12.909], [-0.65, -12.958], [-0.638, -13.005], [-0.622, -13.051], [-0.601, -13.096], [-0.576, -13.138], [-0.547, -13.177], [-0.514, -13.214], [-0.477, -13.247], [-0.438, -13.276], [-0.396, -13.301], [-0.351, -13.322], [-0.305, -13.338], [-0.258, -13.35], [-0.209, -13.358], [-0.16, -13.36], [0.16, -13.36]]);
		polygon(points = [[0.209, -15.898], [0.258, -15.89], [0.305, -15.878], [0.351, -15.862], [0.396, -15.841], [0.438, -15.816], [0.477, -15.787], [0.514, -15.754], [0.547, -15.717], [0.576, -15.678], [0.601, -15.636], [0.622, -15.591], [0.638, -15.545], [0.65, -15.498], [0.658, -15.449], [0.66, -15.4], [0.66, -15.08], [0.658, -15.031], [0.65, -14.982], [0.638, -14.935], [0.622, -14.889], [0.601, -14.844], [0.576, -14.802], [0.547, -14.763], [0.514, -14.726], [0.477, -14.693], [0.438, -14.664], [0.396, -14.639], [0.351, -14.618], [0.305, -14.602], [0.258, -14.59], [0.209, -14.582], [0.16, -14.58], [-0.16, -14.58], [-0.209, -14.582], [-0.258, -14.59], [-0.305, -14.602], [-0.351, -14.618], [-0.396, -14.639], [-0.438, -14.664], [-0.477, -14.693], [-0.514, -14.726], [-0.547, -14.763], [-0.576, -14.802], [-0.601, -14.844], [-0.622, -14.889], [-0.638, -14.935], [-0.65, -14.982], [-0.658, -15.031], [-0.66, -15.08], [-0.66, -15.4], [-0.658, -15.449], [-0.65, -15.498], [-0.638, -15.545], [-0.622, -15.591], [-0.601, -15.636], [-0.576, -15.678], [-0.547, -15.717], [-0.514, -15.754], [-0.477, -15.787], [-0.438, -15.816], [-0.396, -15.841], [-0.351, -15.862], [-0.305, -15.878], [-0.258, -15.89], [-0.209, -15.898], [-0.16, -15.9], [0.16, -15.9]]);
		polygon(points = [[0.209, -18.438], [0.258, -18.43], [0.305, -18.418], [0.351, -18.402], [0.396, -18.381], [0.438, -18.356], [0.477, -18.327], [0.514, -18.294], [0.547, -18.257], [0.576, -18.218], [0.601, -18.176], [0.622, -18.131], [0.638, -18.085], [0.65, -18.038], [0.658, -17.989], [0.66, -17.94], [0.66, -17.62], [0.658, -17.571], [0.65, -17.522], [0.638, -17.475], [0.622, -17.429], [0.601, -17.384], [0.576, -17.342], [0.547, -17.303], [0.514, -17.266], [0.477, -17.233], [0.438, -17.204], [0.396, -17.179], [0.351, -17.158], [0.305, -17.142], [0.258, -17.13], [0.209, -17.122], [0.16, -17.12], [-0.16, -17.12], [-0.209, -17.122], [-0.258, -17.13], [-0.305, -17.142], [-0.351, -17.158], [-0.396, -17.179], [-0.438, -17.204], [-0.477, -17.233], [-0.514, -17.266], [-0.547, -17.303], [-0.576, -17.342], [-0.601, -17.384], [-0.622, -17.429], [-0.638, -17.475], [-0.65, -17.522], [-0.658, -17.571], [-0.66, -17.62], [-0.66, -17.94], [-0.658, -17.989], [-0.65, -18.038], [-0.638, -18.085], [-0.622, -18.131], [-0.601, -18.176], [-0.576, -18.218], [-0.547, -18.257], [-0.514, -18.294], [-0.477, -18.327], [-0.438, -18.356], [-0.396, -18.381], [-0.351, -18.402], [-0.305, -18.418], [-0.258, -18.43], [-0.209, -18.438], [-0.16, -18.44], [0.16, -18.44]]);
		polygon(points = [[0.209, -20.978], [0.258, -20.97], [0.305, -20.958], [0.351, -20.942], [0.396, -20.921], [0.438, -20.896], [0.477, -20.867], [0.514, -20.834], [0.547, -20.797], [0.576, -20.758], [0.601, -20.716], [0.622, -20.671], [0.638, -20.625], [0.65, -20.578], [0.658, -20.529], [0.66, -20.48], [0.66, -20.16], [0.658, -20.111], [0.65, -20.062], [0.638, -20.015], [0.622, -19.969], [0.601, -19.924], [0.576, -19.882], [0.547, -19.843], [0.514, -19.806], [0.477, -19.773], [0.438, -19.744], [0.396, -19.719], [0.351, -19.698], [0.305, -19.682], [0.258, -19.67], [0.209, -19.662], [0.16, -19.66], [-0.16, -19.66], [-0.209, -19.662], [-0.258, -19.67], [-0.305, -19.682], [-0.351, -19.698], [-0.396, -19.719], [-0.438, -19.744], [-0.477, -19.773], [-0.514, -19.806], [-0.547, -19.843], [-0.576, -19.882], [-0.601, -19.924], [-0.622, -19.969], [-0.638, -20.015], [-0.65, -20.062], [-0.658, -20.111], [-0.66, -20.16], [-0.66, -20.48], [-0.658, -20.529], [-0.65, -20.578], [-0.638, -20.625], [-0.622, -20.671], [-0.601, -20.716], [-0.576, -20.758], [-0.547, -20.797], [-0.514, -20.834], [-0.477, -20.867], [-0.438, -20.896], [-0.396, -20.921], [-0.351, -20.942], [-0.305, -20.958], [-0.258, -20.97], [-0.209, -20.978], [-0.16, -20.98], [0.16, -20.98]]);
		polygon(points = [[0.209, -23.518], [0.258, -23.51], [0.305, -23.498], [0.351, -23.482], [0.396, -23.461], [0.438, -23.436], [0.477, -23.407], [0.514, -23.374], [0.547, -23.337], [0.576, -23.298], [0.601, -23.256], [0.622, -23.211], [0.638, -23.165], [0.65, -23.118], [0.658, -23.069], [0.66, -23.02], [0.66, -22.7], [0.658, -22.651], [0.65, -22.602], [0.638, -22.555], [0.622, -22.509], [0.601, -22.464], [0.576, -22.422], [0.547, -22.383], [0.514, -22.346], [0.477, -22.313], [0.438, -22.284], [0.396, -22.259], [0.351, -22.238], [0.305, -22.222], [0.258, -22.21], [0.209, -22.202], [0.16, -22.2], [-0.16, -22.2], [-0.209, -22.202], [-0.258, -22.21], [-0.305, -22.222], [-0.351, -22.238], [-0.396, -22.259], [-0.438, -22.284], [-0.477, -22.313], [-0.514, -22.346], [-0.547, -22.383], [-0.576, -22.422], [-0.601, -22.464], [-0.622, -22.509], [-0.638, -22.555], [-0.65, -22.602], [-0.658, -22.651], [-0.66, -22.7], [-0.66, -23.02], [-0.658, -23.069], [-0.65, -23.118], [-0.638, -23.165], [-0.622, -23.211], [-0.601, -23.256], [-0.576, -23.298], [-0.547, -23.337], [-0.514, -23.374], [-0.477, -23.407], [-0.438, -23.436], [-0.396, -23.461], [-0.351, -23.482], [-0.305, -23.498], [-0.258, -23.51], [-0.209, -23.518], [-0.16, -23.52], [0.16, -23.52]]);
	}
}
module keepout_volume_FP1_0_0_1(){
	translate(v = [0, 0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0))]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = ((8.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_0)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_FP1_0) {
					union() {
						shape_FP1_0_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_FP1_0_0(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1_0)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1_0) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
						union() {
							shape_FP1_0_0_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_0)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1_0) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0) + Wrapper_Thickness_For_FP1_0)) {
							union() {
								shape_FP1_0_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
							union() {
								shape_FP1_0_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_FP1_0_0(){
	union() {
		keepout_volume_FP1_0_0_0();
		keepout_volume_FP1_0_0_1();
	}
}
module courtyard_FP1_0(){
	polygon(points = [[1.8, 24.65], [1.8, -1.8], [-1.8, -1.8], [-1.8, 24.65]]);
}
module courtyard_pocket_FP1_0(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_FP1_0]) {
			linear_extrude(height = (max_z_FP1_0 - min_z_FP1_0)) {
				offset(r = Effective_Shell_Gap_For_FP1_0) {
					union() {
						courtyard_FP1_0();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_FP1_0(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1_0)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1_0) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
					union() {
						courtyard_FP1_0();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_0)]) {
			linear_extrude(height = Wrapper_Height_For_FP1_0) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0) + Wrapper_Thickness_For_FP1_0)) {
						union() {
							courtyard_FP1_0();
						}
					}
					offset(r = (Effective_Shell_Gap_For_FP1_0 + Effective_Shell_Thickness_For_FP1_0)) {
						union() {
							courtyard_FP1_0();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_FP1_1_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_1))]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -23.179333920287906],[-0.46075425460358, -23.320755276525215],0.4);
						peri_line_scad([0.3193328983662705, -23.179333920287906],[0.46075425460358, -23.320755276525215],0.4);
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -20.18004102706909],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * -1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([0.31904000514745706, -20.18004102706909],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
								peri_line_scad([0.31904000514745706, -2.679959994852542],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 1.0)), (-2.679959994852542 + (((0.9600000000000006 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1))]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([1.2690761200968321, -23.875616348529373],[1.4538521007304213, -23.95215285603328],0.4);
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
								peri_line_scad([-1.2690761200968321, -23.875616348529373],[-1.4538521007304213, -23.95215285603328],0.4);
								peri_line_scad([-1.0156173308123695, -24.129076120838146],[-1.0921541962544274, -24.3138519532089],0.4);
							}
						}
						peri_line_scad([-1.0156173308123695, -24.129076120838146],[-1.0921541962544274, -24.3138519532089],0.4);
						hull() {
							union() {
								peri_line_scad([1.0156173308123695, -24.129076120838146],[1.0921541962544274, -24.3138519532089],0.4);
								peri_line_scad([1.2690761200968321, -23.875616348529373],[1.4538521007304213, -23.95215285603328],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -20.875999031066893],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604215],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 1.0)), (-1.9839999848604215 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -20.875999031066893],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * -1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_FP1_1) + Effective_Shell_Gap_For_FP1_1) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_FP1_1_0_0(){
	polygon(points = [[1.27, -23.875999031066893], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -23.875999031066893], [-1.0160000151395798, -24.13], [1.0160000151395798, -24.13]]);
}
module hullpoly_FP1_1_0_1(){
	polygon(points = [[0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -23.18004102706909], [0.32004000514745706, -23.18004102706909]]);
}
module fitting_pocket_FP1_1_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_FP1_1) {
						union() {
							hullpoly_FP1_1_0_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (5.999479970932007 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_FP1_1) {
						union() {
							hullpoly_FP1_1_0_1();
						}
					}
				}
			}
		}
	}
}
module ref_FP1_1_0(){
	union() {
		hullpoly_FP1_1_0_0();
	}
}
module wiggle_pocket_FP1_1_0(){
	translate(v = [0, 0, (PCB_Thickness + min_z_FP1_1)]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = (max_z_FP1_1 - min_z_FP1_1)) {
				offset(r = Effective_Shell_Gap_For_FP1_1) {
					union() {
						ref_FP1_1_0();
					}
				}
			}
		}
	}
}
module perimeter_FP1_1_0(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1_1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1_1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
						union() {
							ref_FP1_1_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1_1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1) + Wrapper_Thickness_For_FP1_1)) {
							union() {
								ref_FP1_1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
							union() {
								ref_FP1_1_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_FP1_1_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((max_z_FP1_1 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
							union() {
								hullpoly_FP1_1_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_FP1_1) {
							union() {
								hullpoly_FP1_1_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((max_z_FP1_1 - max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1_1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
							union() {
								hullpoly_FP1_1_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_FP1_1) {
							union() {
								hullpoly_FP1_1_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1_1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1) + Wrapper_Thickness_For_FP1_1)) {
							union() {
								ref_FP1_1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
							union() {
								ref_FP1_1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness + max_z_FP1_1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - max_z_FP1_1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
						union() {
							ref_FP1_1_0();
						}
					}
				}
			}
		}
	}
}
module shape_FP1_1_0_0(){
	union() {
		polygon(points = [[1.016, -24.13], [1.266, -23.88], [1.27, -23.876], [1.27, -21.876], [1.27, -21.844], [1.02, -21.594], [1.016, -21.59], [1.266, -21.34], [1.27, -21.336], [1.27, -19.336], [1.27, -19.304], [1.02, -19.054], [1.016, -19.05], [1.266, -18.8], [1.27, -18.796], [1.27, -16.796], [1.27, -16.764], [1.02, -16.514], [1.016, -16.51], [1.266, -16.26], [1.27, -16.256], [1.27, -14.256], [1.27, -14.224], [1.02, -13.974], [1.016, -13.97], [1.266, -13.72], [1.27, -13.716], [1.27, -11.716], [1.27, -11.684], [1.02, -11.434], [1.016, -11.43], [1.266, -11.18], [1.27, -11.176], [1.27, -9.176], [1.27, -9.144], [1.02, -8.894], [1.016, -8.89], [1.266, -8.64], [1.27, -8.636], [1.27, -6.636], [1.27, -6.604], [1.02, -6.354], [1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43], [-1.27, -11.684], [-1.27, -13.716], [-1.016, -13.97], [-1.27, -14.224], [-1.27, -16.256], [-1.016, -16.51], [-1.27, -16.764], [-1.27, -18.796], [-1.016, -19.05], [-1.27, -19.304], [-1.27, -21.336], [-1.016, -21.59], [-1.27, -21.844], [-1.27, -23.876], [-1.016, -24.13]]);
	}
}
module keepout_volume_FP1_1_0_0(){
	translate(v = [0, 0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1))]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = ((2.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_FP1_1) {
					union() {
						shape_FP1_1_0_0();
					}
				}
			}
		}
	}
}
module shape_FP1_1_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
		polygon(points = [[0.209, -13.358], [0.258, -13.35], [0.305, -13.338], [0.351, -13.322], [0.396, -13.301], [0.438, -13.276], [0.477, -13.247], [0.514, -13.214], [0.547, -13.177], [0.576, -13.138], [0.601, -13.096], [0.622, -13.051], [0.638, -13.005], [0.65, -12.958], [0.658, -12.909], [0.66, -12.86], [0.66, -12.54], [0.658, -12.491], [0.65, -12.442], [0.638, -12.395], [0.622, -12.349], [0.601, -12.304], [0.576, -12.262], [0.547, -12.223], [0.514, -12.186], [0.477, -12.153], [0.438, -12.124], [0.396, -12.099], [0.351, -12.078], [0.305, -12.062], [0.258, -12.05], [0.209, -12.042], [0.16, -12.04], [-0.16, -12.04], [-0.209, -12.042], [-0.258, -12.05], [-0.305, -12.062], [-0.351, -12.078], [-0.396, -12.099], [-0.438, -12.124], [-0.477, -12.153], [-0.514, -12.186], [-0.547, -12.223], [-0.576, -12.262], [-0.601, -12.304], [-0.622, -12.349], [-0.638, -12.395], [-0.65, -12.442], [-0.658, -12.491], [-0.66, -12.54], [-0.66, -12.86], [-0.658, -12.909], [-0.65, -12.958], [-0.638, -13.005], [-0.622, -13.051], [-0.601, -13.096], [-0.576, -13.138], [-0.547, -13.177], [-0.514, -13.214], [-0.477, -13.247], [-0.438, -13.276], [-0.396, -13.301], [-0.351, -13.322], [-0.305, -13.338], [-0.258, -13.35], [-0.209, -13.358], [-0.16, -13.36], [0.16, -13.36]]);
		polygon(points = [[0.209, -15.898], [0.258, -15.89], [0.305, -15.878], [0.351, -15.862], [0.396, -15.841], [0.438, -15.816], [0.477, -15.787], [0.514, -15.754], [0.547, -15.717], [0.576, -15.678], [0.601, -15.636], [0.622, -15.591], [0.638, -15.545], [0.65, -15.498], [0.658, -15.449], [0.66, -15.4], [0.66, -15.08], [0.658, -15.031], [0.65, -14.982], [0.638, -14.935], [0.622, -14.889], [0.601, -14.844], [0.576, -14.802], [0.547, -14.763], [0.514, -14.726], [0.477, -14.693], [0.438, -14.664], [0.396, -14.639], [0.351, -14.618], [0.305, -14.602], [0.258, -14.59], [0.209, -14.582], [0.16, -14.58], [-0.16, -14.58], [-0.209, -14.582], [-0.258, -14.59], [-0.305, -14.602], [-0.351, -14.618], [-0.396, -14.639], [-0.438, -14.664], [-0.477, -14.693], [-0.514, -14.726], [-0.547, -14.763], [-0.576, -14.802], [-0.601, -14.844], [-0.622, -14.889], [-0.638, -14.935], [-0.65, -14.982], [-0.658, -15.031], [-0.66, -15.08], [-0.66, -15.4], [-0.658, -15.449], [-0.65, -15.498], [-0.638, -15.545], [-0.622, -15.591], [-0.601, -15.636], [-0.576, -15.678], [-0.547, -15.717], [-0.514, -15.754], [-0.477, -15.787], [-0.438, -15.816], [-0.396, -15.841], [-0.351, -15.862], [-0.305, -15.878], [-0.258, -15.89], [-0.209, -15.898], [-0.16, -15.9], [0.16, -15.9]]);
		polygon(points = [[0.209, -18.438], [0.258, -18.43], [0.305, -18.418], [0.351, -18.402], [0.396, -18.381], [0.438, -18.356], [0.477, -18.327], [0.514, -18.294], [0.547, -18.257], [0.576, -18.218], [0.601, -18.176], [0.622, -18.131], [0.638, -18.085], [0.65, -18.038], [0.658, -17.989], [0.66, -17.94], [0.66, -17.62], [0.658, -17.571], [0.65, -17.522], [0.638, -17.475], [0.622, -17.429], [0.601, -17.384], [0.576, -17.342], [0.547, -17.303], [0.514, -17.266], [0.477, -17.233], [0.438, -17.204], [0.396, -17.179], [0.351, -17.158], [0.305, -17.142], [0.258, -17.13], [0.209, -17.122], [0.16, -17.12], [-0.16, -17.12], [-0.209, -17.122], [-0.258, -17.13], [-0.305, -17.142], [-0.351, -17.158], [-0.396, -17.179], [-0.438, -17.204], [-0.477, -17.233], [-0.514, -17.266], [-0.547, -17.303], [-0.576, -17.342], [-0.601, -17.384], [-0.622, -17.429], [-0.638, -17.475], [-0.65, -17.522], [-0.658, -17.571], [-0.66, -17.62], [-0.66, -17.94], [-0.658, -17.989], [-0.65, -18.038], [-0.638, -18.085], [-0.622, -18.131], [-0.601, -18.176], [-0.576, -18.218], [-0.547, -18.257], [-0.514, -18.294], [-0.477, -18.327], [-0.438, -18.356], [-0.396, -18.381], [-0.351, -18.402], [-0.305, -18.418], [-0.258, -18.43], [-0.209, -18.438], [-0.16, -18.44], [0.16, -18.44]]);
		polygon(points = [[0.209, -20.978], [0.258, -20.97], [0.305, -20.958], [0.351, -20.942], [0.396, -20.921], [0.438, -20.896], [0.477, -20.867], [0.514, -20.834], [0.547, -20.797], [0.576, -20.758], [0.601, -20.716], [0.622, -20.671], [0.638, -20.625], [0.65, -20.578], [0.658, -20.529], [0.66, -20.48], [0.66, -20.16], [0.658, -20.111], [0.65, -20.062], [0.638, -20.015], [0.622, -19.969], [0.601, -19.924], [0.576, -19.882], [0.547, -19.843], [0.514, -19.806], [0.477, -19.773], [0.438, -19.744], [0.396, -19.719], [0.351, -19.698], [0.305, -19.682], [0.258, -19.67], [0.209, -19.662], [0.16, -19.66], [-0.16, -19.66], [-0.209, -19.662], [-0.258, -19.67], [-0.305, -19.682], [-0.351, -19.698], [-0.396, -19.719], [-0.438, -19.744], [-0.477, -19.773], [-0.514, -19.806], [-0.547, -19.843], [-0.576, -19.882], [-0.601, -19.924], [-0.622, -19.969], [-0.638, -20.015], [-0.65, -20.062], [-0.658, -20.111], [-0.66, -20.16], [-0.66, -20.48], [-0.658, -20.529], [-0.65, -20.578], [-0.638, -20.625], [-0.622, -20.671], [-0.601, -20.716], [-0.576, -20.758], [-0.547, -20.797], [-0.514, -20.834], [-0.477, -20.867], [-0.438, -20.896], [-0.396, -20.921], [-0.351, -20.942], [-0.305, -20.958], [-0.258, -20.97], [-0.209, -20.978], [-0.16, -20.98], [0.16, -20.98]]);
		polygon(points = [[0.209, -23.518], [0.258, -23.51], [0.305, -23.498], [0.351, -23.482], [0.396, -23.461], [0.438, -23.436], [0.477, -23.407], [0.514, -23.374], [0.547, -23.337], [0.576, -23.298], [0.601, -23.256], [0.622, -23.211], [0.638, -23.165], [0.65, -23.118], [0.658, -23.069], [0.66, -23.02], [0.66, -22.7], [0.658, -22.651], [0.65, -22.602], [0.638, -22.555], [0.622, -22.509], [0.601, -22.464], [0.576, -22.422], [0.547, -22.383], [0.514, -22.346], [0.477, -22.313], [0.438, -22.284], [0.396, -22.259], [0.351, -22.238], [0.305, -22.222], [0.258, -22.21], [0.209, -22.202], [0.16, -22.2], [-0.16, -22.2], [-0.209, -22.202], [-0.258, -22.21], [-0.305, -22.222], [-0.351, -22.238], [-0.396, -22.259], [-0.438, -22.284], [-0.477, -22.313], [-0.514, -22.346], [-0.547, -22.383], [-0.576, -22.422], [-0.601, -22.464], [-0.622, -22.509], [-0.638, -22.555], [-0.65, -22.602], [-0.658, -22.651], [-0.66, -22.7], [-0.66, -23.02], [-0.658, -23.069], [-0.65, -23.118], [-0.638, -23.165], [-0.622, -23.211], [-0.601, -23.256], [-0.576, -23.298], [-0.547, -23.337], [-0.514, -23.374], [-0.477, -23.407], [-0.438, -23.436], [-0.396, -23.461], [-0.351, -23.482], [-0.305, -23.498], [-0.258, -23.51], [-0.209, -23.518], [-0.16, -23.52], [0.16, -23.52]]);
	}
}
module keepout_volume_FP1_1_0_1(){
	translate(v = [0, 0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1))]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = ((8.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1_1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_FP1_1) {
					union() {
						shape_FP1_1_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_FP1_1_0(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1_1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1_1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
						union() {
							shape_FP1_1_0_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1_1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1) + Wrapper_Thickness_For_FP1_1)) {
							union() {
								shape_FP1_1_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
							union() {
								shape_FP1_1_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_FP1_1_0(){
	union() {
		keepout_volume_FP1_1_0_0();
		keepout_volume_FP1_1_0_1();
	}
}
module courtyard_FP1_1(){
	polygon(points = [[1.8, 24.65], [1.8, -1.8], [-1.8, -1.8], [-1.8, 24.65]]);
}
module courtyard_pocket_FP1_1(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_FP1_1]) {
			linear_extrude(height = (max_z_FP1_1 - min_z_FP1_1)) {
				offset(r = Effective_Shell_Gap_For_FP1_1) {
					union() {
						courtyard_FP1_1();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_FP1_1(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1_1)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1_1) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
					union() {
						courtyard_FP1_1();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1_1)]) {
			linear_extrude(height = Wrapper_Height_For_FP1_1) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1) + Wrapper_Thickness_For_FP1_1)) {
						union() {
							courtyard_FP1_1();
						}
					}
					offset(r = (Effective_Shell_Gap_For_FP1_1 + Effective_Shell_Thickness_For_FP1_1)) {
						union() {
							courtyard_FP1_1();
						}
					}
				}
			}
		}
	}
}

//
module mounted_component_shells() {
  union() {
  translate([12.57,35.43,0]) {
  rotate([0,0,0]) {
  if(Include_FP1_0_in_Jig) {
    if(Shell_Type_For_FP1_0=="courtyard") {
      courtyard_perimeter_FP1_0();
    } else if(Shell_Type_For_FP1_0=="tight") {
      tight_perimeter_FP1_0_0();
    } else if(Shell_Type_For_FP1_0=="fitting_flower") {
      fitting_flower_FP1_0_0();
    } else {
      perimeter_FP1_0_0();
    }
  }
  }
  }
  translate([37.71,35.43,0]) {
  rotate([0,0,0]) {
  if(Include_FP1_1_in_Jig) {
    if(Shell_Type_For_FP1_1=="courtyard") {
      courtyard_perimeter_FP1_1();
    } else if(Shell_Type_For_FP1_1=="tight") {
      tight_perimeter_FP1_1_0();
    } else if(Shell_Type_For_FP1_1=="fitting_flower") {
      fitting_flower_FP1_1_0();
    } else {
      perimeter_FP1_1_0();
    }
  }
  }
  }
  }
}
module mounted_component_cuts() {
  union() {
  translate([12.57,35.43,0]) {
  rotate([0,0,0]) {
    if(Include_FP1_0_in_Jig) {
      if(Shell_Type_For_FP1_0=="fitting") {
        fitting_cuts_FP1_0_0();
      } else if(Shell_Type_For_FP1_0=="fitting_flower") {
        fitting_cuts_FP1_0_0();
      }
    }
  }
  }
  translate([37.71,35.43,0]) {
  rotate([0,0,0]) {
    if(Include_FP1_1_in_Jig) {
      if(Shell_Type_For_FP1_1=="fitting") {
        fitting_cuts_FP1_1_0();
      } else if(Shell_Type_For_FP1_1=="fitting_flower") {
        fitting_cuts_FP1_1_0();
      }
    }
  }
  }
  }
}
module mounted_component_pockets() {
  union() {
  translate([12.57,35.43,0]) {
  rotate([0,0,0]) {
    if(Shell_Type_For_FP1_0=="courtyard") {
      courtyard_pocket_FP1_0();
    } else if(Shell_Type_For_FP1_0=="wiggle") {
      wiggle_pocket_FP1_0_0();
    } else if(Shell_Type_For_FP1_0=="tight") {
      tight_pocket_FP1_0_0();
    } else { //fitting or fitting_flower
      fitting_pocket_FP1_0_0();
    }
  }
  }
  translate([37.71,35.43,0]) {
  rotate([0,0,0]) {
    if(Shell_Type_For_FP1_1=="courtyard") {
      courtyard_pocket_FP1_1();
    } else if(Shell_Type_For_FP1_1=="wiggle") {
      wiggle_pocket_FP1_1_0();
    } else if(Shell_Type_For_FP1_1=="tight") {
      tight_pocket_FP1_1_0();
    } else { //fitting or fitting_flower
      fitting_pocket_FP1_1_0();
    }
  }
  }
  }
}
module all_models() {
  difference() {
    mounted_component_shells();
    union() {
      mounted_component_cuts();
      mounted_component_pockets();
    }
  }
}
orient_to_print=1;
if(orient_to_print == 1) {
  rotate([180,0,0]) all_models();
} else {
  all_models();
}
