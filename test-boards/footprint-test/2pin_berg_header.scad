// Customizable Jig Generator
// In OpenSCAD, use "Description Only" for best user experience
// understanding the tunable parameters.
// -----------------------------------------------------
// Auto generated file by jigit, the awesome automatic
// jig generator for your PCB designs. Checkout the project
// at https://github.com/shreekumar3d/jigit
// -----------------------------------------------------
// Configuration file : test-boards/footprint-test/config.toml
//
// Complete configuration file is embedded at the end of this
// file.
//Thickness(height) of base
Base_Thickness = 0.4; // [0.0:0.2:1.0]
/* [Include these footprints in output STL file] */
//Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical
Include_FP1_in_Jig=true; // [false,true]
/* [Footprint: Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical] */
//XY Gap in shell for component insertion
Effective_Shell_Gap_For_FP1 = 0.1;
//Thickness of shell
Effective_Shell_Thickness_For_FP1 = 1.2;
//Z distance from start of shell to PCB
Effective_Shell_Clearance_From_PCB_For_FP1 = 1;
//Type of shell for this footprint
Shell_Type_For_FP1="fitting"; // [wiggle,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_FP1_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_FP1=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_FP1=0.0; // [0:0.1:8.539479970932007]
/* [Hidden] */

// Height of the tallest component on the top side
topmost_z=8.539479970932007;
    bottom_insertion_z = 9.339479970932008;
// Height of the individual components
max_z_FP1= (Insert_FP1_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_FP1= -2.9997399854660034;
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
module fitting_cuts_FP1_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1))]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1))]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1)) + (2 * tiny_dimension))) {
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
		translate(v = [0, 0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_FP1_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_FP1_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_FP1_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (5.539739985466003 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_FP1) {
						union() {
							hullpoly_FP1_0_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness - tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = (5.999479970932007 + (2 * tiny_dimension))) {
					offset(r = Effective_Shell_Gap_For_FP1) {
						union() {
							hullpoly_FP1_0_1();
						}
					}
				}
			}
		}
	}
}
module ref_FP1_0(){
	union() {
		hullpoly_FP1_0_0();
	}
}
module wiggle_pocket_FP1_0(){
	translate(v = [0, 0, (PCB_Thickness + min_z_FP1)]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = (max_z_FP1 - min_z_FP1)) {
				offset(r = Effective_Shell_Gap_For_FP1) {
					union() {
						ref_FP1_0();
					}
				}
			}
		}
	}
}
module perimeter_FP1_0(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
						union() {
							ref_FP1_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1) + Wrapper_Thickness_For_FP1)) {
							union() {
								ref_FP1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
							union() {
								ref_FP1_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_FP1_0(){
	union() {
		translate(v = [0, 0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((max_z_FP1 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
							union() {
								hullpoly_FP1_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_FP1) {
							union() {
								hullpoly_FP1_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((max_z_FP1 - max(2.54, Effective_Shell_Clearance_From_PCB_For_FP1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
							union() {
								hullpoly_FP1_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_FP1) {
							union() {
								hullpoly_FP1_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1) + Wrapper_Thickness_For_FP1)) {
							union() {
								ref_FP1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
							union() {
								ref_FP1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, (PCB_Thickness + max_z_FP1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - max_z_FP1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
						union() {
							ref_FP1_0();
						}
					}
				}
			}
		}
	}
}
module shape_FP1_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_FP1_0_0(){
	translate(v = [0, 0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1))]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = ((2.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_FP1) {
					union() {
						shape_FP1_0_0();
					}
				}
			}
		}
	}
}
module shape_FP1_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_FP1_0_1(){
	translate(v = [0, 0, (PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1))]) {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = ((8.539479970932007 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_FP1)) + tiny_dimension)) {
				offset(r = Effective_Shell_Gap_For_FP1) {
					union() {
						shape_FP1_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_FP1_0(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
						union() {
							shape_FP1_0_0();
						}
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1)]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = Wrapper_Height_For_FP1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1) + Wrapper_Thickness_For_FP1)) {
							union() {
								shape_FP1_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
							union() {
								shape_FP1_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_FP1_0(){
	union() {
		keepout_volume_FP1_0_0();
		keepout_volume_FP1_0_1();
	}
}
module courtyard_FP1(){
	polygon(points = [[1.8, 4.35], [1.8, -1.8], [-1.8, -1.8], [-1.8, 4.35]]);
}
module courtyard_pocket_FP1(){
	translate(v = [0, 0, PCB_Thickness]) {
		translate(v = [0, 0, min_z_FP1]) {
			linear_extrude(height = (max_z_FP1 - min_z_FP1)) {
				offset(r = Effective_Shell_Gap_For_FP1) {
					union() {
						courtyard_FP1();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_FP1(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_FP1)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_FP1) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
					union() {
						courtyard_FP1();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_FP1)]) {
			linear_extrude(height = Wrapper_Height_For_FP1) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1) + Wrapper_Thickness_For_FP1)) {
						union() {
							courtyard_FP1();
						}
					}
					offset(r = (Effective_Shell_Gap_For_FP1 + Effective_Shell_Thickness_For_FP1)) {
						union() {
							courtyard_FP1();
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
  translate([12.57,15.110000000000001,0]) {
  rotate([0,0,0]) {
  if(Include_FP1_in_Jig) {
    if(Shell_Type_For_FP1=="courtyard") {
      courtyard_perimeter_FP1();
    } else if(Shell_Type_For_FP1=="tight") {
      tight_perimeter_FP1_0();
    } else if(Shell_Type_For_FP1=="fitting_flower") {
      fitting_flower_FP1_0();
    } else {
      perimeter_FP1_0();
    }
  }
  }
  }
  }
}
module mounted_component_cuts() {
  union() {
  translate([12.57,15.110000000000001,0]) {
  rotate([0,0,0]) {
    if(Include_FP1_in_Jig) {
      if(Shell_Type_For_FP1=="fitting") {
        fitting_cuts_FP1_0();
      } else if(Shell_Type_For_FP1=="fitting_flower") {
        fitting_cuts_FP1_0();
      }
    }
  }
  }
  }
}
module mounted_component_pockets() {
  union() {
  translate([12.57,15.110000000000001,0]) {
  rotate([0,0,0]) {
    if(Shell_Type_For_FP1=="courtyard") {
      courtyard_pocket_FP1();
    } else if(Shell_Type_For_FP1=="wiggle") {
      wiggle_pocket_FP1_0();
    } else if(Shell_Type_For_FP1=="tight") {
      tight_pocket_FP1_0();
    } else { //fitting or fitting_flower
      fitting_pocket_FP1_0();
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
