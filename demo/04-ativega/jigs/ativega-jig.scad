// Customizable Jig Generator
// In OpenSCAD, use "Description Only" for best user experience
// understanding the tunable parameters.
// -----------------------------------------------------
// Auto generated file by jigit, the awesome automatic
// jig generator for your PCB designs. Checkout the project
// at https://github.com/shreekumar3d/jigit
// -----------------------------------------------------
// Input board file   : thejas32-testbed/hw/thejas32-testbed.kicad_pcb
// Configuration file : ativega.toml
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
Lower_Perimeter_Height = 1;

Groove="At PCB Corners: 15.00 mm"; //["At PCB Corners: 15.00 mm","All Around PCB Edge"]

Mounting_Hole_Jig=false; //[false, true]
MH_Spacer_End=8.139479970932006;
MH_Spacer_Start=2.94;
Spacer_Is_Fused = true;
Bolt_Is_External = true;

/* [Base] */

// Type of Base
Base_Type = "mesh"; // [x_lines, y_lines, griddish, minmesh, mesh, solid]

// Thickness of Base
Base_Thickness = 0.4;

// Width of Lines on Base
Base_Line_Width = 1.6;

// Height of Lines on Base
Base_Line_Height = 1.0;

/* [SMD Keepout] */

// SMD keepout volume extension in Z
SMD_Clearance_From_PCB=1;

// SMD keepout volume extension in XY
SMD_Gap_From_Shells=0.5;
/* [Include these components in output STL file] */
//Pico ( U1, RPi Pico)
Include_U1_in_Jig=true; // [false,true]
//RPi HAT ( J12, Header 2x20)
Include_J12_in_Jig=true; // [false,true]
//GPIOx14 ( J10, Header 2x10)
Include_J10_in_Jig=true; // [false,true]
//Pico GPIO ( J6, Header 1x10)
Include_J6_in_Jig=true; // [false,true]
//I2C+SPI Header ( J4, Header 2x5)
Include_J4_in_Jig=true; // [false,true]
//USB Power ( J2, USB Connector)
Include_J2_in_Jig=true; // [false,true]
//BOOT UART ( J3, Header 2x3)
Include_J3_in_Jig=true; // [false,true]
//SPI1 ( J9, Header 1x5)
Include_J9_in_Jig=true; // [false,true]
//JTAG ( J5, Header 1x5)
Include_J5_in_Jig=true; // [false,true]
//PWM ( J7, Header 1x5)
Include_J7_in_Jig=true; // [false,true]
//Header 1x4 (J1)
Include_J1_in_Jig=true; // [false,true]
//Pico Debug ( J8, Header 1x3)
Include_J8_in_Jig=true; // [false,true]
//I2C0 ( J13, Header 1x3)
Include_J13_in_Jig=true; // [false,true]
//UART1 ( J11, Header 1x3)
Include_J11_in_Jig=true; // [false,true]
//3.3V ( JP1, Header 1x2)
Include_JP1_in_Jig=true; // [false,true]
//Header 1x2 (JP3)
Include_JP3_in_Jig=true; // [false,true]
//1.2V ( JP2, Header 1x2)
Include_JP2_in_Jig=true; // [false,true]
//Header 1x2 (JP4)
Include_JP4_in_Jig=true; // [false,true]
//1.2V DCDC ( U5, Mini 360)
Include_U5_in_Jig=true; // [false,true]
//3.3V DCDC ( U4, Mini 360)
Include_U4_in_Jig=true; // [false,true]
/* [Footprint: Header 2x5] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP11 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP11 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP11 = 1; //[0:0.1:2]
/* [Footprint: Header 2x10] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP10 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP10 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP10 = 1; //[0:0.1:2]
/* [Footprint: Header 2x3] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP3 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP3 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP3 = 1; //[0:0.1:2]
/* [Footprint: Header 1x5] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP1 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP1 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP1 = 1; //[0:0.1:2]
/* [Footprint: Header 1x4] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP2 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP2 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP2 = 1; //[0:0.1:2]
/* [Footprint: Header 2x20] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP8 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP8 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP8 = 1; //[0:0.1:2]
/* [Footprint: Header 1x10] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP4 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP4 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP4 = 1; //[0:0.1:2]
/* [Footprint: Header 1x3] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP6 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP6 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP6 = 1; //[0:0.1:2]
/* [Footprint: RPi Pico] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP12 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP12 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP12 = 1; //[0:0.1:2]
/* [Footprint: USB Connector] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP9 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP9 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP9 = 1; //[0:0.1:2]
/* [Footprint: Mini 360] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP7 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP7 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP7 = 1; //[0:0.1:2]
/* [Footprint: Header 1x2] */
//XY Gap in shell for component insertion
Shell_Gap_For_FP5 = 0.25; //[0:0.05:1]
//Thickness of shell
Shell_Thickness_For_FP5 = 1.2; //[0.25:0.05:4]
//Z distance from start of shell to PCB
Shell_Clearance_From_PCB_For_FP5 = 1; //[0:0.1:2]
/* [Pico( U1, RPi_Pico:RPi_Pico_SMD_TH )] */
//Type of shell for this component
Shell_Type_For_U1="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_U1_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_U1=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_U1=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_U1=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_U1=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_U1=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_U1=1;//[0:0.1:2]
/* [RPi HAT( J12, Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J12="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J12_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J12=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J12=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J12=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J12=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J12=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J12=1;//[0:0.1:2]
/* [GPIOx14( J10, Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J10="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J10_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J10=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J10=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J10=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J10=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J10=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J10=1;//[0:0.1:2]
/* [Pico GPIO( J6, Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J6="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J6_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J6=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J6=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J6=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J6=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J6=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J6=1;//[0:0.1:2]
/* [I2C+SPI Header( J4, Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J4="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J4_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J4=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J4=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J4=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J4=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J4=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J4=1;//[0:0.1:2]
/* [USB Power( J2, Connector_USB:USB_Micro-B_Molex-105017-0001 )] */
//Type of shell for this component
Shell_Type_For_J2="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J2_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J2=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J2=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J2=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J2=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J2=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J2=1;//[0:0.1:2]
/* [BOOT UART( J3, Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J3="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J3_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J3=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J3=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J3=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J3=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J3=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J3=1;//[0:0.1:2]
/* [SPI1( J9, Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J9="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J9_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J9=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J9=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J9=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J9=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J9=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J9=1;//[0:0.1:2]
/* [JTAG( J5, Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J5="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J5_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J5=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J5=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J5=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J5=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J5=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J5=1;//[0:0.1:2]
/* [PWM( J7, Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J7="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J7_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J7=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J7=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J7=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J7=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J7=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J7=1;//[0:0.1:2]
/* [J1 (Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical)] */
//Type of shell for this component
Shell_Type_For_J1="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J1_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J1=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J1=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J1=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J1=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J1=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J1=1;//[0:0.1:2]
/* [Pico Debug( J8, Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J8="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J8_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J8=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J8=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J8=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J8=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J8=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J8=1;//[0:0.1:2]
/* [I2C0( J13, Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J13="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J13_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J13=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J13=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J13=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J13=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J13=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J13=1;//[0:0.1:2]
/* [UART1( J11, Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_J11="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_J11_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_J11=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_J11=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_J11=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_J11=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_J11=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_J11=1;//[0:0.1:2]
/* [3.3V( JP1, Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_JP1="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_JP1_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_JP1=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_JP1=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_JP1=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_JP1=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_JP1=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_JP1=1;//[0:0.1:2]
/* [JP3 (Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical)] */
//Type of shell for this component
Shell_Type_For_JP3="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_JP3_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_JP3=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_JP3=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_JP3=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_JP3=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_JP3=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_JP3=1;//[0:0.1:2]
/* [1.2V( JP2, Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical )] */
//Type of shell for this component
Shell_Type_For_JP2="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_JP2_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_JP2=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_JP2=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_JP2=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_JP2=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_JP2=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_JP2=1;//[0:0.1:2]
/* [JP4 (Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical)] */
//Type of shell for this component
Shell_Type_For_JP4="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_JP4_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_JP4=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_JP4=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_JP4=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_JP4=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_JP4=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_JP4=1;//[0:0.1:2]
/* [1.2V DCDC( U5, project_lib:Mini360_step-down )] */
//Type of shell for this component
Shell_Type_For_U5="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_U5_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_U5=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_U5=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_U5=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_U5=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_U5=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_U5=1;//[0:0.1:2]
/* [3.3V DCDC( U4, project_lib:Mini360_step-down )] */
//Type of shell for this component
Shell_Type_For_U4="fitting"; // [wiggle,wiggle_minus,fitting,fitting_flower,tight,courtyard]
//Insert this component into jig from this side.(Bottom insertion requires wiggle or courtyard shell to work)
Insert_U4_From="top"; // [top,bottom]
//Wrapper thickness
Wrapper_Thickness_For_U4=0.0; // [0:0.1:10.0]
//Wrapper height
Wrapper_Height_For_U4=0.0; // [0:0.1:9.898839888572693]
//Use tuned shell parameters specified at component level, overriding footprint
Tune_U4=false; // [true,false]
//Thickness for shell, if overriding footprint setting
Shell_Thickness_For_U4=1.2; //[0.25:0.05:4]
//XY gap for shell, if overriding footprint setting
Shell_Gap_For_U4=0.25; //[0:0.05:1]
//Z clearance from the shell, if overriding footprint
Shell_Clearance_From_PCB_For_U4=1;//[0:0.1:2]
// } End of configurable parameters
/* [Hidden] */
$fs = 0.05;
first_layer_height = 0.2;
layer_height = 0.2;
Effective_Shell_Thickness_For_U1 = Tune_U1? Shell_Thickness_For_U1 : Shell_Thickness_For_FP12;
Effective_Shell_Gap_For_U1 = Tune_U1? Shell_Gap_For_U1 : Shell_Gap_For_FP12;
Effective_Shell_Clearance_From_PCB_For_U1 = Tune_U1? Shell_Clearance_From_PCB_For_U1 : Shell_Clearance_From_PCB_For_FP12;
Effective_Shell_Thickness_For_J12 = Tune_J12? Shell_Thickness_For_J12 : Shell_Thickness_For_FP8;
Effective_Shell_Gap_For_J12 = Tune_J12? Shell_Gap_For_J12 : Shell_Gap_For_FP8;
Effective_Shell_Clearance_From_PCB_For_J12 = Tune_J12? Shell_Clearance_From_PCB_For_J12 : Shell_Clearance_From_PCB_For_FP8;
Effective_Shell_Thickness_For_J10 = Tune_J10? Shell_Thickness_For_J10 : Shell_Thickness_For_FP10;
Effective_Shell_Gap_For_J10 = Tune_J10? Shell_Gap_For_J10 : Shell_Gap_For_FP10;
Effective_Shell_Clearance_From_PCB_For_J10 = Tune_J10? Shell_Clearance_From_PCB_For_J10 : Shell_Clearance_From_PCB_For_FP10;
Effective_Shell_Thickness_For_J6 = Tune_J6? Shell_Thickness_For_J6 : Shell_Thickness_For_FP4;
Effective_Shell_Gap_For_J6 = Tune_J6? Shell_Gap_For_J6 : Shell_Gap_For_FP4;
Effective_Shell_Clearance_From_PCB_For_J6 = Tune_J6? Shell_Clearance_From_PCB_For_J6 : Shell_Clearance_From_PCB_For_FP4;
Effective_Shell_Thickness_For_J4 = Tune_J4? Shell_Thickness_For_J4 : Shell_Thickness_For_FP11;
Effective_Shell_Gap_For_J4 = Tune_J4? Shell_Gap_For_J4 : Shell_Gap_For_FP11;
Effective_Shell_Clearance_From_PCB_For_J4 = Tune_J4? Shell_Clearance_From_PCB_For_J4 : Shell_Clearance_From_PCB_For_FP11;
Effective_Shell_Thickness_For_J2 = Tune_J2? Shell_Thickness_For_J2 : Shell_Thickness_For_FP9;
Effective_Shell_Gap_For_J2 = Tune_J2? Shell_Gap_For_J2 : Shell_Gap_For_FP9;
Effective_Shell_Clearance_From_PCB_For_J2 = Tune_J2? Shell_Clearance_From_PCB_For_J2 : Shell_Clearance_From_PCB_For_FP9;
Effective_Shell_Thickness_For_J3 = Tune_J3? Shell_Thickness_For_J3 : Shell_Thickness_For_FP3;
Effective_Shell_Gap_For_J3 = Tune_J3? Shell_Gap_For_J3 : Shell_Gap_For_FP3;
Effective_Shell_Clearance_From_PCB_For_J3 = Tune_J3? Shell_Clearance_From_PCB_For_J3 : Shell_Clearance_From_PCB_For_FP3;
Effective_Shell_Thickness_For_J9 = Tune_J9? Shell_Thickness_For_J9 : Shell_Thickness_For_FP1;
Effective_Shell_Gap_For_J9 = Tune_J9? Shell_Gap_For_J9 : Shell_Gap_For_FP1;
Effective_Shell_Clearance_From_PCB_For_J9 = Tune_J9? Shell_Clearance_From_PCB_For_J9 : Shell_Clearance_From_PCB_For_FP1;
Effective_Shell_Thickness_For_J5 = Tune_J5? Shell_Thickness_For_J5 : Shell_Thickness_For_FP1;
Effective_Shell_Gap_For_J5 = Tune_J5? Shell_Gap_For_J5 : Shell_Gap_For_FP1;
Effective_Shell_Clearance_From_PCB_For_J5 = Tune_J5? Shell_Clearance_From_PCB_For_J5 : Shell_Clearance_From_PCB_For_FP1;
Effective_Shell_Thickness_For_J7 = Tune_J7? Shell_Thickness_For_J7 : Shell_Thickness_For_FP1;
Effective_Shell_Gap_For_J7 = Tune_J7? Shell_Gap_For_J7 : Shell_Gap_For_FP1;
Effective_Shell_Clearance_From_PCB_For_J7 = Tune_J7? Shell_Clearance_From_PCB_For_J7 : Shell_Clearance_From_PCB_For_FP1;
Effective_Shell_Thickness_For_J1 = Tune_J1? Shell_Thickness_For_J1 : Shell_Thickness_For_FP2;
Effective_Shell_Gap_For_J1 = Tune_J1? Shell_Gap_For_J1 : Shell_Gap_For_FP2;
Effective_Shell_Clearance_From_PCB_For_J1 = Tune_J1? Shell_Clearance_From_PCB_For_J1 : Shell_Clearance_From_PCB_For_FP2;
Effective_Shell_Thickness_For_J8 = Tune_J8? Shell_Thickness_For_J8 : Shell_Thickness_For_FP6;
Effective_Shell_Gap_For_J8 = Tune_J8? Shell_Gap_For_J8 : Shell_Gap_For_FP6;
Effective_Shell_Clearance_From_PCB_For_J8 = Tune_J8? Shell_Clearance_From_PCB_For_J8 : Shell_Clearance_From_PCB_For_FP6;
Effective_Shell_Thickness_For_J13 = Tune_J13? Shell_Thickness_For_J13 : Shell_Thickness_For_FP6;
Effective_Shell_Gap_For_J13 = Tune_J13? Shell_Gap_For_J13 : Shell_Gap_For_FP6;
Effective_Shell_Clearance_From_PCB_For_J13 = Tune_J13? Shell_Clearance_From_PCB_For_J13 : Shell_Clearance_From_PCB_For_FP6;
Effective_Shell_Thickness_For_J11 = Tune_J11? Shell_Thickness_For_J11 : Shell_Thickness_For_FP6;
Effective_Shell_Gap_For_J11 = Tune_J11? Shell_Gap_For_J11 : Shell_Gap_For_FP6;
Effective_Shell_Clearance_From_PCB_For_J11 = Tune_J11? Shell_Clearance_From_PCB_For_J11 : Shell_Clearance_From_PCB_For_FP6;
Effective_Shell_Thickness_For_JP1 = Tune_JP1? Shell_Thickness_For_JP1 : Shell_Thickness_For_FP5;
Effective_Shell_Gap_For_JP1 = Tune_JP1? Shell_Gap_For_JP1 : Shell_Gap_For_FP5;
Effective_Shell_Clearance_From_PCB_For_JP1 = Tune_JP1? Shell_Clearance_From_PCB_For_JP1 : Shell_Clearance_From_PCB_For_FP5;
Effective_Shell_Thickness_For_JP3 = Tune_JP3? Shell_Thickness_For_JP3 : Shell_Thickness_For_FP5;
Effective_Shell_Gap_For_JP3 = Tune_JP3? Shell_Gap_For_JP3 : Shell_Gap_For_FP5;
Effective_Shell_Clearance_From_PCB_For_JP3 = Tune_JP3? Shell_Clearance_From_PCB_For_JP3 : Shell_Clearance_From_PCB_For_FP5;
Effective_Shell_Thickness_For_JP2 = Tune_JP2? Shell_Thickness_For_JP2 : Shell_Thickness_For_FP5;
Effective_Shell_Gap_For_JP2 = Tune_JP2? Shell_Gap_For_JP2 : Shell_Gap_For_FP5;
Effective_Shell_Clearance_From_PCB_For_JP2 = Tune_JP2? Shell_Clearance_From_PCB_For_JP2 : Shell_Clearance_From_PCB_For_FP5;
Effective_Shell_Thickness_For_JP4 = Tune_JP4? Shell_Thickness_For_JP4 : Shell_Thickness_For_FP5;
Effective_Shell_Gap_For_JP4 = Tune_JP4? Shell_Gap_For_JP4 : Shell_Gap_For_FP5;
Effective_Shell_Clearance_From_PCB_For_JP4 = Tune_JP4? Shell_Clearance_From_PCB_For_JP4 : Shell_Clearance_From_PCB_For_FP5;
Effective_Shell_Thickness_For_U5 = Tune_U5? Shell_Thickness_For_U5 : Shell_Thickness_For_FP7;
Effective_Shell_Gap_For_U5 = Tune_U5? Shell_Gap_For_U5 : Shell_Gap_For_FP7;
Effective_Shell_Clearance_From_PCB_For_U5 = Tune_U5? Shell_Clearance_From_PCB_For_U5 : Shell_Clearance_From_PCB_For_FP7;
Effective_Shell_Thickness_For_U4 = Tune_U4? Shell_Thickness_For_U4 : Shell_Thickness_For_FP7;
Effective_Shell_Gap_For_U4 = Tune_U4? Shell_Gap_For_U4 : Shell_Gap_For_FP7;
Effective_Shell_Clearance_From_PCB_For_U4 = Tune_U4? Shell_Clearance_From_PCB_For_U4 : Shell_Clearance_From_PCB_For_FP7;

// Height of the tallest component on the top side
topmost_z=9.898839888572693;
    
groove_width = max(PCB_Gap+PCB_Holder_Perimeter, PCB_Overlap)*2.2;
tiny_dimension = 0.0001;
base_z =  PCB_Thickness+topmost_z+Base_Thickness+2*tiny_dimension;

c_Spacer_Is_Fused = Bolt_Is_External ? Spacer_Is_Fused : true; // can't have separate bolt with internal bolt
c_Base_Thickness = Base_Thickness;
c_MH_Jig_Second_Level_Height = first_layer_height+2*layer_height;
c_Base_Line_Height = Mounting_Hole_Jig ? topmost_z-MH_Spacer_Start+c_MH_Jig_Second_Level_Height+c_Base_Thickness+Base_Line_Height: Base_Line_Height;
c_Lower_Perimeter_Height = Mounting_Hole_Jig ? c_Base_Line_Height:Lower_Perimeter_Height;
mesh_start_z = PCB_Thickness+topmost_z+c_Base_Thickness-c_Base_Line_Height;
bottom_insertion_z = 10.698839888572694;
// Height of the individual components
max_z_J7= (Insert_J7_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x05_P2.54mm_Vertical.wrl
min_z_J7= -2.9997399854660034;
max_z_J5= (Insert_J5_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x05_P2.54mm_Vertical.wrl
min_z_J5= -2.9997399854660034;
max_z_J9= (Insert_J9_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x05_P2.54mm_Vertical.wrl
min_z_J9= -2.9997399854660034;
max_z_J1= (Insert_J1_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x04_P2.54mm_Vertical.wrl
min_z_J1= -2.9997399854660034;
max_z_J3= (Insert_J3_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x03_P2.54mm_Vertical.wrl
min_z_J3= -2.9997399854660034;
max_z_J6= (Insert_J6_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x10_P2.54mm_Vertical.wrl
min_z_J6= -2.9997399854660034;
max_z_JP3= (Insert_JP3_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_JP3= -2.9997399854660034;
max_z_JP2= (Insert_JP2_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_JP2= -2.9997399854660034;
max_z_J13= (Insert_J13_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x03_P2.54mm_Vertical.wrl
min_z_J13= -2.9997399854660034;
max_z_U5= (Insert_U5_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
min_z_U5= -2.9997399854660034;
max_z_U4= (Insert_U4_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x01_P2.54mm_Vertical.wrl
min_z_U4= -2.9997399854660034;
max_z_J12= (Insert_J12_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x20_P2.54mm_Vertical.wrl
min_z_J12= -2.9997399854660034;
max_z_J2= (Insert_J2_From=="bottom")? bottom_insertion_z : 2.57499707384181; //Applies to 3D Model(s): ${KIPRJMOD}/3dmodels/1050170001.wrl
min_z_J2= -0.7249963976836205;
max_z_JP4= (Insert_JP4_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_JP4= -2.9997399854660034;
max_z_J8= (Insert_J8_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x03_P2.54mm_Vertical.wrl
min_z_J8= -2.9997399854660034;
max_z_JP1= (Insert_JP1_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x02_P2.54mm_Vertical.wrl
min_z_JP1= -2.9997399854660034;
max_z_J10= (Insert_J10_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD6_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x10_P2.54mm_Vertical.wrl
min_z_J10= -2.9997399854660034;
max_z_J4= (Insert_J4_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_2x05_P2.54mm_Vertical.wrl
min_z_J4= -2.9997399854660034;
max_z_J11= (Insert_J11_From=="bottom")? bottom_insertion_z : 8.539479970932007; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinHeader_2.54mm.3dshapes/PinHeader_1x03_P2.54mm_Vertical.wrl
min_z_J11= -2.9997399854660034;
max_z_U1= (Insert_U1_From=="bottom")? bottom_insertion_z : 9.898839888572693; //Applies to 3D Model(s): ${KICAD8_3DMODEL_DIR}/Connector_PinSocket_2.54mm.3dshapes/PinSocket_1x20_P2.54mm_Vertical.wrl ${KICAD8_3DMODEL_DIR}/Connector_PinSocket_2.54mm.3dshapes/PinSocket_1x20_P2.54mm_Vertical.wrl
min_z_U1= -1.6988000726699832;
max_z_U2_0= 1.5011400520801543; //3D Model: ${KICAD7_3DMODEL_DIR}/Package_QFP.3dshapes/LQFP-128_14x14mm_P0.4mm.wrl
smd_clearance_from_pcb_U2_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_U2_0= SMD_Gap_From_Shells;
max_z_R42_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R42_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R42_0= SMD_Gap_From_Shells;
max_z_R5_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R5_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R5_0= SMD_Gap_From_Shells;
max_z_C25_0= 0.8000999939441681; //3D Model: ${KICAD6_3DMODEL_DIR}/Capacitor_SMD.3dshapes/C_0603_1608Metric.wrl
smd_clearance_from_pcb_C25_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_C25_0= SMD_Gap_From_Shells;
max_z_R18_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R18_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R18_0= SMD_Gap_From_Shells;
max_z_R29_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R29_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R29_0= SMD_Gap_From_Shells;
max_z_R8_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R8_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R8_0= SMD_Gap_From_Shells;
max_z_U6_0= 2.054860038757324; //3D Model: ${KICAD_3DMODEL_DIR}/Package_SO.3dshapes/SOIC-8_5.275x5.275mm_P1.27mm.wrl
smd_clearance_from_pcb_U6_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_U6_0= SMD_Gap_From_Shells;
max_z_R26_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R26_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R26_0= SMD_Gap_From_Shells;
max_z_R22_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R22_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R22_0= SMD_Gap_From_Shells;
max_z_R16_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R16_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R16_0= SMD_Gap_From_Shells;
max_z_R28_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R28_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R28_0= SMD_Gap_From_Shells;
max_z_R39_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R39_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R39_0= SMD_Gap_From_Shells;
max_z_C25A1_0= 0.8000999939441681; //3D Model: ${KICAD6_3DMODEL_DIR}/Capacitor_SMD.3dshapes/C_0603_1608Metric.wrl
smd_clearance_from_pcb_C25A1_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_C25A1_0= SMD_Gap_From_Shells;
max_z_R43_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R43_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R43_0= SMD_Gap_From_Shells;
max_z_R30_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R30_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R30_0= SMD_Gap_From_Shells;
max_z_R24_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R24_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R24_0= SMD_Gap_From_Shells;
max_z_R9_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R9_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R9_0= SMD_Gap_From_Shells;
max_z_R1_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R1_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R1_0= SMD_Gap_From_Shells;
max_z_R25_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R25_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R25_0= SMD_Gap_From_Shells;
max_z_R41_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R41_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R41_0= SMD_Gap_From_Shells;
max_z_R70_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R70_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R70_0= SMD_Gap_From_Shells;
max_z_R4_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R4_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R4_0= SMD_Gap_From_Shells;
max_z_R31_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R31_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R31_0= SMD_Gap_From_Shells;
max_z_R40_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R40_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R40_0= SMD_Gap_From_Shells;
max_z_R20_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R20_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R20_0= SMD_Gap_From_Shells;
max_z_R38_0= 0.4495800027251244; //3D Model: ${KICAD6_3DMODEL_DIR}/Resistor_SMD.3dshapes/R_0603_1608Metric.wrl
smd_clearance_from_pcb_R38_0= SMD_Clearance_From_PCB;
smd_gap_from_shells_R38_0= SMD_Gap_From_Shells;
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
module fitting_cuts_J7_0(){
	union() {
		translate(v = [195.0, -92.725, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J7))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J7)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -10.479332709121524],[-0.46075425460358, -10.620754065358833],0.4);
						peri_line_scad([0.3193328983662705, -10.479332709121524],[0.46075425460358, -10.620754065358833],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
					}
				}
			}
		}
		translate(v = [195.0, -92.725, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -7.48003981590271],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * -1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([0.31904000514745706, -7.48003981590271],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
								peri_line_scad([0.31904000514745706, -2.6799599948525428],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -92.725, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J7))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J7)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
						hull() {
							union() {
								peri_line_scad([-1.2690761205530252, -11.175617558594409],[-1.4538520099479868, -11.25215428636808],0.4);
								peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
						hull() {
							union() {
								peri_line_scad([1.015617331913718, -11.429076120381952],[1.0921539770860795, -11.613852043991496],0.4);
								peri_line_scad([1.2690761205530252, -11.175617558594409],[1.4538520099479868, -11.25215428636808],0.4);
							}
						}
						peri_line_scad([1.2690761205530252, -11.175617558594409],[1.4538520099479868, -11.25215428636808],0.4);
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
					}
				}
			}
		}
		translate(v = [195.0, -92.725, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -8.176000242233277],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * -1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -8.176000242233277],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604197],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 1.0)), (-1.9839999848604197 + (((0.01 + Effective_Shell_Thickness_For_J7) + Effective_Shell_Gap_For_J7) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J7_0_0(){
	polygon(points = [[-1.27, 1.0160000151395798], [-1.27, -11.176000242233277], [-1.0160000151395798, -11.43], [1.0160000151395798, -11.43], [1.27, -11.176000242233277], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27]]);
}
module hullpoly_J7_0_1(){
	polygon(points = [[-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -10.48003981590271], [0.32004000514745706, -10.48003981590271], [0.32004000514745706, 0.32004000514745706]]);
}
module fitting_pocket_J7_0(){
	union() {
		translate(v = [195.0, -92.725, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J7) {
						union() {
							hullpoly_J7_0_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -92.725, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J7) {
						union() {
							hullpoly_J7_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J7_0(){
	union() {
		hullpoly_J7_0_0();
	}
}
module wiggle_pocket_J7_0(){
	translate(v = [195.0, -92.725, min_z_J7]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_J7 - min_z_J7) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J7) {
					union() {
						outline_J7_0();
					}
				}
			}
		}
	}
}
module perimeter_J7_0(){
	union() {
		translate(v = [195.0, -92.725, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J7)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J7) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
						union() {
							outline_J7_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -92.725, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J7)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J7) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7) + Wrapper_Thickness_For_J7)) {
							union() {
								outline_J7_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
							union() {
								outline_J7_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J7_0(){
	union() {
		translate(v = [195.0, -92.725, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J7)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J7 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J7)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
							union() {
								hullpoly_J7_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J7) {
							union() {
								hullpoly_J7_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -92.725, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J7)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J7 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J7)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
							union() {
								hullpoly_J7_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J7) {
							union() {
								hullpoly_J7_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -92.725, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J7)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J7) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7) + Wrapper_Thickness_For_J7)) {
							union() {
								outline_J7_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
							union() {
								outline_J7_0();
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -92.725, (PCB_Thickness + max_z_J7)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_J7) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
						union() {
							outline_J7_0();
						}
					}
				}
			}
		}
	}
}
module shape_J7_0_0(){
	union() {
		polygon(points = [[1.016, -11.43], [1.266, -11.18], [1.27, -11.176], [1.27, -9.176], [1.27, -9.144], [1.02, -8.894], [1.016, -8.89], [1.266, -8.64], [1.27, -8.636], [1.27, -6.636], [1.27, -6.604], [1.02, -6.354], [1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43]]);
	}
}
module keepout_volume_J7_0_0(){
	translate(v = [195.0, -92.725, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J7) {
					union() {
						shape_J7_0_0();
					}
				}
			}
		}
	}
}
module shape_J7_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
	}
}
module keepout_volume_J7_0_1(){
	translate(v = [195.0, -92.725, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J7) {
					union() {
						shape_J7_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J7_0(){
	union() {
		translate(v = [195.0, -92.725, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J7)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J7) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
						union() {
							shape_J7_0_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -92.725, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J7)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J7) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7) + Wrapper_Thickness_For_J7)) {
							union() {
								shape_J7_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
							union() {
								shape_J7_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J7_0(){
	union() {
		keepout_volume_J7_0_0();
		keepout_volume_J7_0_1();
	}
}
module wiggle_minus_pocket_J7_0(){
	translate(v = [195.0, -92.725, min_z_J7]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_J7 - min_z_J7) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J7) {
					union() {
						shape_J7_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J7(){
	polygon(points = [[196.795, -90.93], [196.795, -104.67], [193.205, -104.67], [193.205, -90.93]]);
}
module courtyard_pocket_J7(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J7]) {
			linear_extrude(height = ((max_z_J7 - min_z_J7) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J7) {
					union() {
						courtyard_J7();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J7(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J7)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J7) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
					union() {
						courtyard_J7();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J7)]) {
			linear_extrude(height = Wrapper_Height_For_J7) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7) + Wrapper_Thickness_For_J7)) {
						union() {
							courtyard_J7();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J7 + Effective_Shell_Thickness_For_J7)) {
						union() {
							courtyard_J7();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J5_0(){
	union() {
		translate(v = [137.35, -110.21, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J5)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -10.479332709121524],[-0.46075425460358, -10.620754065358833],0.4);
						peri_line_scad([0.3193328983662705, -10.479332709121524],[0.46075425460358, -10.620754065358833],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
					}
				}
			}
		}
		translate(v = [137.35, -110.21, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -7.48003981590271],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * -1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([0.31904000514745706, -7.48003981590271],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
								peri_line_scad([0.31904000514745706, -2.6799599948525428],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [137.35, -110.21, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J5)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
						hull() {
							union() {
								peri_line_scad([-1.2690761205530252, -11.175617558594409],[-1.4538520099479868, -11.25215428636808],0.4);
								peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
						hull() {
							union() {
								peri_line_scad([1.015617331913718, -11.429076120381952],[1.0921539770860795, -11.613852043991496],0.4);
								peri_line_scad([1.2690761205530252, -11.175617558594409],[1.4538520099479868, -11.25215428636808],0.4);
							}
						}
						peri_line_scad([1.2690761205530252, -11.175617558594409],[1.4538520099479868, -11.25215428636808],0.4);
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
					}
				}
			}
		}
		translate(v = [137.35, -110.21, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -8.176000242233277],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * -1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -8.176000242233277],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604197],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 1.0)), (-1.9839999848604197 + (((0.01 + Effective_Shell_Thickness_For_J5) + Effective_Shell_Gap_For_J5) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J5_0_0(){
	polygon(points = [[-1.27, 1.0160000151395798], [-1.27, -11.176000242233277], [-1.0160000151395798, -11.43], [1.0160000151395798, -11.43], [1.27, -11.176000242233277], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27]]);
}
module hullpoly_J5_0_1(){
	polygon(points = [[-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -10.48003981590271], [0.32004000514745706, -10.48003981590271], [0.32004000514745706, 0.32004000514745706]]);
}
module fitting_pocket_J5_0(){
	union() {
		translate(v = [137.35, -110.21, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J5) {
						union() {
							hullpoly_J5_0_0();
						}
					}
				}
			}
		}
		translate(v = [137.35, -110.21, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J5) {
						union() {
							hullpoly_J5_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J5_0(){
	union() {
		hullpoly_J5_0_0();
	}
}
module wiggle_pocket_J5_0(){
	translate(v = [137.35, -110.21, min_z_J5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_J5 - min_z_J5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J5) {
					union() {
						outline_J5_0();
					}
				}
			}
		}
	}
}
module perimeter_J5_0(){
	union() {
		translate(v = [137.35, -110.21, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
						union() {
							outline_J5_0();
						}
					}
				}
			}
		}
		translate(v = [137.35, -110.21, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5) + Wrapper_Thickness_For_J5)) {
							union() {
								outline_J5_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
							union() {
								outline_J5_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J5_0(){
	union() {
		translate(v = [137.35, -110.21, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J5 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
							union() {
								hullpoly_J5_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J5) {
							union() {
								hullpoly_J5_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [137.35, -110.21, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_J5 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
							union() {
								hullpoly_J5_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J5) {
							union() {
								hullpoly_J5_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [137.35, -110.21, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5) + Wrapper_Thickness_For_J5)) {
							union() {
								outline_J5_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
							union() {
								outline_J5_0();
							}
						}
					}
				}
			}
		}
		translate(v = [137.35, -110.21, (PCB_Thickness + max_z_J5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_J5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
						union() {
							outline_J5_0();
						}
					}
				}
			}
		}
	}
}
module shape_J5_0_0(){
	union() {
		polygon(points = [[1.016, -11.43], [1.266, -11.18], [1.27, -11.176], [1.27, -9.176], [1.27, -9.144], [1.02, -8.894], [1.016, -8.89], [1.266, -8.64], [1.27, -8.636], [1.27, -6.636], [1.27, -6.604], [1.02, -6.354], [1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43]]);
	}
}
module keepout_volume_J5_0_0(){
	translate(v = [137.35, -110.21, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J5) {
					union() {
						shape_J5_0_0();
					}
				}
			}
		}
	}
}
module shape_J5_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
	}
}
module keepout_volume_J5_0_1(){
	translate(v = [137.35, -110.21, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J5) {
					union() {
						shape_J5_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J5_0(){
	union() {
		translate(v = [137.35, -110.21, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
						union() {
							shape_J5_0_0();
						}
					}
				}
			}
		}
		translate(v = [137.35, -110.21, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_J5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5) + Wrapper_Thickness_For_J5)) {
							union() {
								shape_J5_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
							union() {
								shape_J5_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J5_0(){
	union() {
		keepout_volume_J5_0_0();
		keepout_volume_J5_0_1();
	}
}
module wiggle_minus_pocket_J5_0(){
	translate(v = [137.35, -110.21, min_z_J5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_J5 - min_z_J5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J5) {
					union() {
						shape_J5_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J5(){
	polygon(points = [[139.145, -108.415], [139.145, -122.155], [135.555, -122.155], [135.555, -108.415]]);
}
module courtyard_pocket_J5(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J5]) {
			linear_extrude(height = ((max_z_J5 - min_z_J5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J5) {
					union() {
						courtyard_J5();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J5(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J5)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J5) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
					union() {
						courtyard_J5();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J5)]) {
			linear_extrude(height = Wrapper_Height_For_J5) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5) + Wrapper_Thickness_For_J5)) {
						union() {
							courtyard_J5();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J5 + Effective_Shell_Thickness_For_J5)) {
						union() {
							courtyard_J5();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J9_0(){
	union() {
		translate(v = [156.8, -126.0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J9))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J9)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -10.479332709121524],[-0.46075425460358, -10.620754065358833],0.4);
						peri_line_scad([0.3193328983662705, -10.479332709121524],[0.46075425460358, -10.620754065358833],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
					}
				}
			}
		}
		translate(v = [156.8, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -7.48003981590271],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * -1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([0.31904000514745706, -7.48003981590271],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
								peri_line_scad([0.31904000514745706, -2.6799599948525428],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [156.8, -126.0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J9))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J9)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
						hull() {
							union() {
								peri_line_scad([-1.2690761205530252, -11.175617558594409],[-1.4538520099479868, -11.25215428636808],0.4);
								peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
						hull() {
							union() {
								peri_line_scad([1.015617331913718, -11.429076120381952],[1.0921539770860795, -11.613852043991496],0.4);
								peri_line_scad([1.2690761205530252, -11.175617558594409],[1.4538520099479868, -11.25215428636808],0.4);
							}
						}
						peri_line_scad([1.2690761205530252, -11.175617558594409],[1.4538520099479868, -11.25215428636808],0.4);
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
					}
				}
			}
		}
		translate(v = [156.8, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -8.176000242233277],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * -1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -8.176000242233277],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604197],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 1.0)), (-1.9839999848604197 + (((0.01 + Effective_Shell_Thickness_For_J9) + Effective_Shell_Gap_For_J9) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J9_0_0(){
	polygon(points = [[-1.27, 1.0160000151395798], [-1.27, -11.176000242233277], [-1.0160000151395798, -11.43], [1.0160000151395798, -11.43], [1.27, -11.176000242233277], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27]]);
}
module hullpoly_J9_0_1(){
	polygon(points = [[-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -10.48003981590271], [0.32004000514745706, -10.48003981590271], [0.32004000514745706, 0.32004000514745706]]);
}
module fitting_pocket_J9_0(){
	union() {
		translate(v = [156.8, -126.0, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J9) {
						union() {
							hullpoly_J9_0_0();
						}
					}
				}
			}
		}
		translate(v = [156.8, -126.0, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J9) {
						union() {
							hullpoly_J9_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J9_0(){
	union() {
		hullpoly_J9_0_0();
	}
}
module wiggle_pocket_J9_0(){
	translate(v = [156.8, -126.0, min_z_J9]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J9 - min_z_J9) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J9) {
					union() {
						outline_J9_0();
					}
				}
			}
		}
	}
}
module perimeter_J9_0(){
	union() {
		translate(v = [156.8, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J9)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J9) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
						union() {
							outline_J9_0();
						}
					}
				}
			}
		}
		translate(v = [156.8, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J9)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J9) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9) + Wrapper_Thickness_For_J9)) {
							union() {
								outline_J9_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
							union() {
								outline_J9_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J9_0(){
	union() {
		translate(v = [156.8, -126.0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J9)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J9 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J9)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
							union() {
								hullpoly_J9_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J9) {
							union() {
								hullpoly_J9_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [156.8, -126.0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J9)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J9 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J9)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
							union() {
								hullpoly_J9_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J9) {
							union() {
								hullpoly_J9_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [156.8, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J9)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J9) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9) + Wrapper_Thickness_For_J9)) {
							union() {
								outline_J9_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
							union() {
								outline_J9_0();
							}
						}
					}
				}
			}
		}
		translate(v = [156.8, -126.0, (PCB_Thickness + max_z_J9)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J9) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
						union() {
							outline_J9_0();
						}
					}
				}
			}
		}
	}
}
module shape_J9_0_0(){
	union() {
		polygon(points = [[1.016, -11.43], [1.266, -11.18], [1.27, -11.176], [1.27, -9.176], [1.27, -9.144], [1.02, -8.894], [1.016, -8.89], [1.266, -8.64], [1.27, -8.636], [1.27, -6.636], [1.27, -6.604], [1.02, -6.354], [1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43]]);
	}
}
module keepout_volume_J9_0_0(){
	translate(v = [156.8, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J9) {
					union() {
						shape_J9_0_0();
					}
				}
			}
		}
	}
}
module shape_J9_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
	}
}
module keepout_volume_J9_0_1(){
	translate(v = [156.8, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J9) {
					union() {
						shape_J9_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J9_0(){
	union() {
		translate(v = [156.8, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J9)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J9) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
						union() {
							shape_J9_0_0();
						}
					}
				}
			}
		}
		translate(v = [156.8, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J9)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J9) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9) + Wrapper_Thickness_For_J9)) {
							union() {
								shape_J9_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
							union() {
								shape_J9_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J9_0(){
	union() {
		keepout_volume_J9_0_0();
		keepout_volume_J9_0_1();
	}
}
module wiggle_minus_pocket_J9_0(){
	translate(v = [156.8, -126.0, min_z_J9]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J9 - min_z_J9) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J9) {
					union() {
						shape_J9_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J9(){
	polygon(points = [[168.745, -124.205], [168.745, -127.795], [155.005, -127.795], [155.005, -124.205]]);
}
module courtyard_pocket_J9(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J9]) {
			linear_extrude(height = ((max_z_J9 - min_z_J9) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J9) {
					union() {
						courtyard_J9();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J9(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J9)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J9) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
					union() {
						courtyard_J9();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J9)]) {
			linear_extrude(height = Wrapper_Height_For_J9) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9) + Wrapper_Thickness_For_J9)) {
						union() {
							courtyard_J9();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J9 + Effective_Shell_Thickness_For_J9)) {
						union() {
							courtyard_J9();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J1_0(){
	union() {
		translate(v = [127.49, -126.0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -7.939332709121524],[0.46075425460358, -8.080754065358834],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -7.939332709121524],[-0.46075425460358, -8.080754065358834],0.4);
					}
				}
			}
		}
		translate(v = [127.49, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([0.31904000514745706, -4.94003981590271],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 1.0)), (-4.94003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
								peri_line_scad([0.31904000514745706, -2.6799599948525428],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -4.94003981590271],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * -1.0)), (-4.94003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [127.49, -126.0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([1.2690761205530252, -8.635617558594408],[1.4538520099479868, -8.712154286368078],0.4);
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
								peri_line_scad([-1.2690761205530252, -8.635617558594408],[-1.4538520099479868, -8.712154286368078],0.4);
								peri_line_scad([-1.015617331913718, -8.889076120381953],[-1.0921539770860798, -9.073852043991497],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -8.889076120381953],[-1.0921539770860798, -9.073852043991497],0.4);
						hull() {
							union() {
								peri_line_scad([1.015617331913718, -8.889076120381953],[1.0921539770860798, -9.073852043991497],0.4);
								peri_line_scad([1.2690761205530252, -8.635617558594408],[1.4538520099479868, -8.712154286368078],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [127.49, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -5.636000242233276],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 1.0)), (-5.636000242233276 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604197],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 1.0)), (-1.9839999848604197 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -5.636000242233276],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * -1.0)), (-5.636000242233276 + (((0.01 + Effective_Shell_Thickness_For_J1) + Effective_Shell_Gap_For_J1) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J1_0_0(){
	polygon(points = [[1.27, -8.636000242233276], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -8.636000242233276], [-1.0160000151395798, -8.89], [1.0160000151395798, -8.89]]);
}
module hullpoly_J1_0_1(){
	polygon(points = [[0.32004000514745706, -7.94003981590271], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -7.94003981590271]]);
}
module fitting_pocket_J1_0(){
	union() {
		translate(v = [127.49, -126.0, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J1) {
						union() {
							hullpoly_J1_0_0();
						}
					}
				}
			}
		}
		translate(v = [127.49, -126.0, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
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
module outline_J1_0(){
	union() {
		hullpoly_J1_0_0();
	}
}
module wiggle_pocket_J1_0(){
	translate(v = [127.49, -126.0, min_z_J1]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J1 - min_z_J1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J1) {
					union() {
						outline_J1_0();
					}
				}
			}
		}
	}
}
module perimeter_J1_0(){
	union() {
		translate(v = [127.49, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							outline_J1_0();
						}
					}
				}
			}
		}
		translate(v = [127.49, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1) + Wrapper_Thickness_For_J1)) {
							union() {
								outline_J1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
							union() {
								outline_J1_0();
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
		translate(v = [127.49, -126.0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J1)) - tiny_dimension)]) {
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
		translate(v = [127.49, -126.0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J1)) - tiny_dimension)]) {
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
		translate(v = [127.49, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1) + Wrapper_Thickness_For_J1)) {
							union() {
								outline_J1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
							union() {
								outline_J1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [127.49, -126.0, (PCB_Thickness + max_z_J1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J1 + Effective_Shell_Thickness_For_J1)) {
						union() {
							outline_J1_0();
						}
					}
				}
			}
		}
	}
}
module shape_J1_0_0(){
	union() {
		polygon(points = [[1.016, -8.89], [1.266, -8.64], [1.27, -8.636], [1.27, -6.636], [1.27, -6.604], [1.02, -6.354], [1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89]]);
	}
}
module keepout_volume_J1_0_0(){
	translate(v = [127.49, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
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
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
	}
}
module keepout_volume_J1_0_1(){
	translate(v = [127.49, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
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
		translate(v = [127.49, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J1)]) {
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
		translate(v = [127.49, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J1)]) {
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
module wiggle_minus_pocket_J1_0(){
	translate(v = [127.49, -126.0, min_z_J1]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J1 - min_z_J1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J1) {
					union() {
						shape_J1_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J1(){
	polygon(points = [[136.885, -124.205], [136.885, -127.795], [125.695, -127.795], [125.695, -124.205]]);
}
module courtyard_pocket_J1(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J1]) {
			linear_extrude(height = ((max_z_J1 - min_z_J1) + PCB_Thickness)) {
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
module fitting_cuts_J3_0(){
	union() {
		translate(v = [122.34, -107.68, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J3))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J3)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -5.3993327091215235],[-0.46075425460358, -5.540754065358833],0.4);
						peri_line_scad([2.8593330119131193, -5.3993327091215235],[3.000754368150429, -5.540754065358833],0.4);
						peri_line_scad([2.8593330119131193, 0.3193328983662705],[3.000754368150429, 0.46075425460358],0.4);
					}
				}
			}
		}
		translate(v = [122.34, -107.68, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [122.34, -107.68, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
						hull() {
							union() {
								peri_line_scad([-1.2690761205530252, -6.095617558594408],[-1.4538520099479868, -6.1721542863680785],0.4);
								peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
						hull() {
							union() {
								peri_line_scad([3.5556172562846533, -6.349076120353439],[3.6321538876901367, -6.5338520496654064],0.4);
								peri_line_scad([3.8090761205815373, -6.095617558525573],[3.993852004274068, -6.1721543000661185],0.4);
							}
						}
						peri_line_scad([3.8090761205815373, -6.095617558525573],[3.993852004274068, -6.1721543000661185],0.4);
						hull() {
							union() {
								peri_line_scad([3.809076120496001, 1.0156173316383803],[3.993852021295831, 1.0921540318782748],0.4);
								peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
							}
						}
						peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
						hull() {
							union() {
								peri_line_scad([-1.0156173317072148, 1.2690761204674887],[-1.0921540181802327, 1.4538520269697461],0.4);
								peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [122.34, -107.68, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -3.0960002422332757],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * -1.0)), (-3.0960002422332757 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([3.809, -3.096000242233276],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * 1.0)), (-3.096000242233276 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * 0.0))],0.4);
								peri_line_scad([3.809, -1.9839999848604206],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * 1.0)), (-1.9839999848604206 + (((0.01 + Effective_Shell_Thickness_For_J3) + Effective_Shell_Gap_For_J3) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J3_0_0(){
	polygon(points = [[-1.27, 1.0160000151395798], [-1.27, -6.096000242233276], [-1.0160000151395798, -6.35], [3.555999939441681, -6.35], [3.81, -6.096000242233276], [3.81, 1.0160000151395798], [3.555999939441681, 1.27], [-1.0160000151395798, 1.27]]);
}
module hullpoly_J3_0_1(){
	polygon(points = [[-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -5.40003981590271], [2.8600401186943056, -5.40003981590271], [2.8600401186943056, 0.32004000514745706]]);
}
module fitting_pocket_J3_0(){
	union() {
		translate(v = [122.34, -107.68, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J3) {
						union() {
							hullpoly_J3_0_0();
						}
					}
				}
			}
		}
		translate(v = [122.34, -107.68, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
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
module outline_J3_0(){
	union() {
		hullpoly_J3_0_0();
	}
}
module wiggle_pocket_J3_0(){
	translate(v = [122.34, -107.68, min_z_J3]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J3 - min_z_J3) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J3) {
					union() {
						outline_J3_0();
					}
				}
			}
		}
	}
}
module perimeter_J3_0(){
	union() {
		translate(v = [122.34, -107.68, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J3)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
						union() {
							outline_J3_0();
						}
					}
				}
			}
		}
		translate(v = [122.34, -107.68, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J3)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3) + Wrapper_Thickness_For_J3)) {
							union() {
								outline_J3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
							union() {
								outline_J3_0();
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
		translate(v = [122.34, -107.68, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J3)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
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
		translate(v = [122.34, -107.68, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J3)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
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
		translate(v = [122.34, -107.68, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J3)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3) + Wrapper_Thickness_For_J3)) {
							union() {
								outline_J3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
							union() {
								outline_J3_0();
							}
						}
					}
				}
			}
		}
		translate(v = [122.34, -107.68, (PCB_Thickness + max_z_J3)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - max_z_J3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
						union() {
							outline_J3_0();
						}
					}
				}
			}
		}
	}
}
module shape_J3_0_0(){
	union() {
		polygon(points = [[3.556, -6.35], [3.806, -6.1], [3.81, -6.096], [3.81, -4.096], [3.81, -4.064], [3.56, -3.814], [3.556, -3.81], [3.806, -3.56], [3.81, -3.556], [3.81, -1.556], [3.81, -1.524], [3.56, -1.274], [3.556, -1.27], [3.806, -1.02], [3.81, -1.016], [3.81, 0.984], [3.81, 1.016], [3.56, 1.266], [3.556, 1.27], [-0.945, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.015, -6.35]]);
	}
}
module keepout_volume_J3_0_0(){
	translate(v = [122.34, -107.68, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
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
		polygon(points = [[2.749, -0.658], [2.798, -0.65], [2.845, -0.638], [2.891, -0.622], [2.936, -0.601], [2.978, -0.576], [3.017, -0.547], [3.054, -0.514], [3.087, -0.477], [3.116, -0.438], [3.141, -0.396], [3.162, -0.351], [3.178, -0.305], [3.19, -0.258], [3.198, -0.209], [3.2, -0.16], [3.2, 0.16], [3.198, 0.209], [3.19, 0.258], [3.178, 0.305], [3.162, 0.351], [3.141, 0.396], [3.116, 0.438], [3.087, 0.477], [3.054, 0.514], [3.017, 0.547], [2.978, 0.576], [2.936, 0.601], [2.891, 0.622], [2.845, 0.638], [2.798, 0.65], [2.749, 0.658], [2.7, 0.66], [2.38, 0.66], [2.331, 0.658], [2.282, 0.65], [2.235, 0.638], [2.189, 0.622], [2.144, 0.601], [2.102, 0.576], [2.063, 0.547], [2.026, 0.514], [1.993, 0.477], [1.964, 0.438], [1.939, 0.396], [1.918, 0.351], [1.902, 0.305], [1.89, 0.258], [1.882, 0.209], [1.88, 0.16], [1.88, -0.16], [1.882, -0.209], [1.89, -0.258], [1.902, -0.305], [1.918, -0.351], [1.939, -0.396], [1.964, -0.438], [1.993, -0.477], [2.026, -0.514], [2.063, -0.547], [2.102, -0.576], [2.144, -0.601], [2.189, -0.622], [2.235, -0.638], [2.282, -0.65], [2.331, -0.658], [2.38, -0.66], [2.7, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[2.749, -3.198], [2.798, -3.19], [2.845, -3.178], [2.891, -3.162], [2.936, -3.141], [2.978, -3.116], [3.017, -3.087], [3.054, -3.054], [3.087, -3.017], [3.116, -2.978], [3.141, -2.936], [3.162, -2.891], [3.178, -2.845], [3.19, -2.798], [3.198, -2.749], [3.2, -2.7], [3.2, -2.38], [3.198, -2.331], [3.19, -2.282], [3.178, -2.235], [3.162, -2.189], [3.141, -2.144], [3.116, -2.102], [3.087, -2.063], [3.054, -2.026], [3.017, -1.993], [2.978, -1.964], [2.936, -1.939], [2.891, -1.918], [2.845, -1.902], [2.798, -1.89], [2.749, -1.882], [2.7, -1.88], [2.38, -1.88], [2.331, -1.882], [2.282, -1.89], [2.235, -1.902], [2.189, -1.918], [2.144, -1.939], [2.102, -1.964], [2.063, -1.993], [2.026, -2.026], [1.993, -2.063], [1.964, -2.102], [1.939, -2.144], [1.918, -2.189], [1.902, -2.235], [1.89, -2.282], [1.882, -2.331], [1.88, -2.38], [1.88, -2.7], [1.882, -2.749], [1.89, -2.798], [1.902, -2.845], [1.918, -2.891], [1.939, -2.936], [1.964, -2.978], [1.993, -3.017], [2.026, -3.054], [2.063, -3.087], [2.102, -3.116], [2.144, -3.141], [2.189, -3.162], [2.235, -3.178], [2.282, -3.19], [2.331, -3.198], [2.38, -3.2], [2.7, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[2.749, -5.738], [2.798, -5.73], [2.845, -5.718], [2.891, -5.702], [2.936, -5.681], [2.978, -5.656], [3.017, -5.627], [3.054, -5.594], [3.087, -5.557], [3.116, -5.518], [3.141, -5.476], [3.162, -5.431], [3.178, -5.385], [3.19, -5.338], [3.198, -5.289], [3.2, -5.24], [3.2, -4.92], [3.198, -4.871], [3.19, -4.822], [3.178, -4.775], [3.162, -4.729], [3.141, -4.684], [3.116, -4.642], [3.087, -4.603], [3.054, -4.566], [3.017, -4.533], [2.978, -4.504], [2.936, -4.479], [2.891, -4.458], [2.845, -4.442], [2.798, -4.43], [2.749, -4.422], [2.7, -4.42], [2.38, -4.42], [2.331, -4.422], [2.282, -4.43], [2.235, -4.442], [2.189, -4.458], [2.144, -4.479], [2.102, -4.504], [2.063, -4.533], [2.026, -4.566], [1.993, -4.603], [1.964, -4.642], [1.939, -4.684], [1.918, -4.729], [1.902, -4.775], [1.89, -4.822], [1.882, -4.871], [1.88, -4.92], [1.88, -5.24], [1.882, -5.289], [1.89, -5.338], [1.902, -5.385], [1.918, -5.431], [1.939, -5.476], [1.964, -5.518], [1.993, -5.557], [2.026, -5.594], [2.063, -5.627], [2.102, -5.656], [2.144, -5.681], [2.189, -5.702], [2.235, -5.718], [2.282, -5.73], [2.331, -5.738], [2.38, -5.74], [2.7, -5.74]]);
	}
}
module keepout_volume_J3_0_1(){
	translate(v = [122.34, -107.68, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
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
		translate(v = [122.34, -107.68, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J3)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J3 + Effective_Shell_Thickness_For_J3)) {
						union() {
							shape_J3_0_0();
						}
					}
				}
			}
		}
		translate(v = [122.34, -107.68, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J3)]) {
			rotate(a = [0, 0, 180.0]) {
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
module wiggle_minus_pocket_J3_0(){
	translate(v = [122.34, -107.68, min_z_J3]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J3 - min_z_J3) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J3) {
					union() {
						shape_J3_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J3(){
	polygon(points = [[124.135, -100.835], [124.135, -109.475], [117.995, -109.475], [117.995, -100.835]]);
}
module courtyard_pocket_J3(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J3]) {
			linear_extrude(height = ((max_z_J3 - min_z_J3) + PCB_Thickness)) {
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
module fitting_cuts_J6_0(){
	union() {
		translate(v = [139.0, -153.9, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J6))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J6)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -23.179333920287906],[-0.46075425460358, -23.320755276525215],0.4);
						peri_line_scad([0.3193328983662705, -23.179333920287906],[0.46075425460358, -23.320755276525215],0.4);
					}
				}
			}
		}
		translate(v = [139.0, -153.9, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -20.18004102706909],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * -1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([0.31904000514745706, -20.18004102706909],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
								peri_line_scad([0.31904000514745706, -2.679959994852542],[(0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 1.0)), (-2.679959994852542 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [139.0, -153.9, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J6))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J6)) + (2 * tiny_dimension))) {
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
		translate(v = [139.0, -153.9, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -20.875999031066893],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604215],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 1.0)), (-1.9839999848604215 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -20.875999031066893],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * -1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_J6) + Effective_Shell_Gap_For_J6) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J6_0_0(){
	polygon(points = [[1.27, -23.875999031066893], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -23.875999031066893], [-1.0160000151395798, -24.13], [1.0160000151395798, -24.13]]);
}
module hullpoly_J6_0_1(){
	polygon(points = [[0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -23.18004102706909], [0.32004000514745706, -23.18004102706909]]);
}
module fitting_pocket_J6_0(){
	union() {
		translate(v = [139.0, -153.9, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J6) {
						union() {
							hullpoly_J6_0_0();
						}
					}
				}
			}
		}
		translate(v = [139.0, -153.9, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J6) {
						union() {
							hullpoly_J6_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J6_0(){
	union() {
		hullpoly_J6_0_0();
	}
}
module wiggle_pocket_J6_0(){
	translate(v = [139.0, -153.9, min_z_J6]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J6 - min_z_J6) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J6) {
					union() {
						outline_J6_0();
					}
				}
			}
		}
	}
}
module perimeter_J6_0(){
	union() {
		translate(v = [139.0, -153.9, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J6)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J6) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
						union() {
							outline_J6_0();
						}
					}
				}
			}
		}
		translate(v = [139.0, -153.9, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J6)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J6) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6) + Wrapper_Thickness_For_J6)) {
							union() {
								outline_J6_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
							union() {
								outline_J6_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J6_0(){
	union() {
		translate(v = [139.0, -153.9, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J6)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J6 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J6)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
							union() {
								hullpoly_J6_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J6) {
							union() {
								hullpoly_J6_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [139.0, -153.9, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J6)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J6 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J6)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
							union() {
								hullpoly_J6_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J6) {
							union() {
								hullpoly_J6_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [139.0, -153.9, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J6)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J6) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6) + Wrapper_Thickness_For_J6)) {
							union() {
								outline_J6_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
							union() {
								outline_J6_0();
							}
						}
					}
				}
			}
		}
		translate(v = [139.0, -153.9, (PCB_Thickness + max_z_J6)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J6) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
						union() {
							outline_J6_0();
						}
					}
				}
			}
		}
	}
}
module shape_J6_0_0(){
	union() {
		polygon(points = [[1.016, -24.13], [1.266, -23.88], [1.27, -23.876], [1.27, -21.876], [1.27, -21.844], [1.02, -21.594], [1.016, -21.59], [1.266, -21.34], [1.27, -21.336], [1.27, -19.336], [1.27, -19.304], [1.02, -19.054], [1.016, -19.05], [1.266, -18.8], [1.27, -18.796], [1.27, -16.796], [1.27, -16.764], [1.02, -16.514], [1.016, -16.51], [1.266, -16.26], [1.27, -16.256], [1.27, -14.256], [1.27, -14.224], [1.02, -13.974], [1.016, -13.97], [1.266, -13.72], [1.27, -13.716], [1.27, -11.716], [1.27, -11.684], [1.02, -11.434], [1.016, -11.43], [1.266, -11.18], [1.27, -11.176], [1.27, -9.176], [1.27, -9.144], [1.02, -8.894], [1.016, -8.89], [1.266, -8.64], [1.27, -8.636], [1.27, -6.636], [1.27, -6.604], [1.02, -6.354], [1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43], [-1.27, -11.684], [-1.27, -13.716], [-1.016, -13.97], [-1.27, -14.224], [-1.27, -16.256], [-1.016, -16.51], [-1.27, -16.764], [-1.27, -18.796], [-1.016, -19.05], [-1.27, -19.304], [-1.27, -21.336], [-1.016, -21.59], [-1.27, -21.844], [-1.27, -23.876], [-1.016, -24.13]]);
	}
}
module keepout_volume_J6_0_0(){
	translate(v = [139.0, -153.9, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J6) {
					union() {
						shape_J6_0_0();
					}
				}
			}
		}
	}
}
module shape_J6_0_1(){
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
module keepout_volume_J6_0_1(){
	translate(v = [139.0, -153.9, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J6) {
					union() {
						shape_J6_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J6_0(){
	union() {
		translate(v = [139.0, -153.9, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J6)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J6) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
						union() {
							shape_J6_0_0();
						}
					}
				}
			}
		}
		translate(v = [139.0, -153.9, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J6)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J6) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6) + Wrapper_Thickness_For_J6)) {
							union() {
								shape_J6_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
							union() {
								shape_J6_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J6_0(){
	union() {
		keepout_volume_J6_0_0();
		keepout_volume_J6_0_1();
	}
}
module wiggle_minus_pocket_J6_0(){
	translate(v = [139.0, -153.9, min_z_J6]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J6 - min_z_J6) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J6) {
					union() {
						shape_J6_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J6(){
	polygon(points = [[163.645, -152.105], [163.645, -155.695], [137.205, -155.695], [137.205, -152.105]]);
}
module courtyard_pocket_J6(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J6]) {
			linear_extrude(height = ((max_z_J6 - min_z_J6) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J6) {
					union() {
						courtyard_J6();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J6(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J6)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J6) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
					union() {
						courtyard_J6();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J6)]) {
			linear_extrude(height = Wrapper_Height_For_J6) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6) + Wrapper_Thickness_For_J6)) {
						union() {
							courtyard_J6();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J6 + Effective_Shell_Thickness_For_J6)) {
						union() {
							courtyard_J6();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_JP3_0(){
	union() {
		translate(v = [122.6, -126.0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP3))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP3)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [122.6, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [122.6, -126.0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP3))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP3)) + (2 * tiny_dimension))) {
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
		translate(v = [122.6, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_JP3_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_JP3_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_JP3_0(){
	union() {
		translate(v = [122.6, -126.0, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP3) {
						union() {
							hullpoly_JP3_0_0();
						}
					}
				}
			}
		}
		translate(v = [122.6, -126.0, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP3) {
						union() {
							hullpoly_JP3_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_JP3_0(){
	union() {
		hullpoly_JP3_0_0();
	}
}
module wiggle_pocket_JP3_0(){
	translate(v = [122.6, -126.0, min_z_JP3]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_JP3 - min_z_JP3) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP3) {
					union() {
						outline_JP3_0();
					}
				}
			}
		}
	}
}
module perimeter_JP3_0(){
	union() {
		translate(v = [122.6, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP3)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
						union() {
							outline_JP3_0();
						}
					}
				}
			}
		}
		translate(v = [122.6, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP3)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_JP3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3) + Wrapper_Thickness_For_JP3)) {
							union() {
								outline_JP3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
							union() {
								outline_JP3_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_JP3_0(){
	union() {
		translate(v = [122.6, -126.0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP3)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_JP3 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP3)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
							union() {
								hullpoly_JP3_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP3) {
							union() {
								hullpoly_JP3_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [122.6, -126.0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP3)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_JP3 - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP3)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
							union() {
								hullpoly_JP3_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP3) {
							union() {
								hullpoly_JP3_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [122.6, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP3)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_JP3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3) + Wrapper_Thickness_For_JP3)) {
							union() {
								outline_JP3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
							union() {
								outline_JP3_0();
							}
						}
					}
				}
			}
		}
		translate(v = [122.6, -126.0, (PCB_Thickness + max_z_JP3)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - max_z_JP3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
						union() {
							outline_JP3_0();
						}
					}
				}
			}
		}
	}
}
module shape_JP3_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_JP3_0_0(){
	translate(v = [122.6, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP3) {
					union() {
						shape_JP3_0_0();
					}
				}
			}
		}
	}
}
module shape_JP3_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_JP3_0_1(){
	translate(v = [122.6, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP3) {
					union() {
						shape_JP3_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_JP3_0(){
	union() {
		translate(v = [122.6, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP3)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP3) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
						union() {
							shape_JP3_0_0();
						}
					}
				}
			}
		}
		translate(v = [122.6, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP3)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_JP3) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3) + Wrapper_Thickness_For_JP3)) {
							union() {
								shape_JP3_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
							union() {
								shape_JP3_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_JP3_0(){
	union() {
		keepout_volume_JP3_0_0();
		keepout_volume_JP3_0_1();
	}
}
module wiggle_minus_pocket_JP3_0(){
	translate(v = [122.6, -126.0, min_z_JP3]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_JP3 - min_z_JP3) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP3) {
					union() {
						shape_JP3_0_0();
					}
				}
			}
		}
	}
}
module courtyard_JP3(){
	polygon(points = [[124.395, -124.205], [124.395, -127.795], [118.255, -127.795], [118.255, -124.205]]);
}
module courtyard_pocket_JP3(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_JP3]) {
			linear_extrude(height = ((max_z_JP3 - min_z_JP3) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP3) {
					union() {
						courtyard_JP3();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_JP3(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP3)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP3) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
					union() {
						courtyard_JP3();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP3)]) {
			linear_extrude(height = Wrapper_Height_For_JP3) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3) + Wrapper_Thickness_For_JP3)) {
						union() {
							courtyard_JP3();
						}
					}
					offset(r = (Effective_Shell_Gap_For_JP3 + Effective_Shell_Thickness_For_JP3)) {
						union() {
							courtyard_JP3();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_JP2_0(){
	union() {
		translate(v = [177.6, -128.24, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP2))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP2)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [177.6, -128.24, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [177.6, -128.24, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP2))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP2)) + (2 * tiny_dimension))) {
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
		translate(v = [177.6, -128.24, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_JP2_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_JP2_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_JP2_0(){
	union() {
		translate(v = [177.6, -128.24, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP2) {
						union() {
							hullpoly_JP2_0_0();
						}
					}
				}
			}
		}
		translate(v = [177.6, -128.24, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP2) {
						union() {
							hullpoly_JP2_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_JP2_0(){
	union() {
		hullpoly_JP2_0_0();
	}
}
module wiggle_pocket_JP2_0(){
	translate(v = [177.6, -128.24, min_z_JP2]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_JP2 - min_z_JP2) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP2) {
					union() {
						outline_JP2_0();
					}
				}
			}
		}
	}
}
module perimeter_JP2_0(){
	union() {
		translate(v = [177.6, -128.24, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP2)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
						union() {
							outline_JP2_0();
						}
					}
				}
			}
		}
		translate(v = [177.6, -128.24, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP2)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_JP2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2) + Wrapper_Thickness_For_JP2)) {
							union() {
								outline_JP2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
							union() {
								outline_JP2_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_JP2_0(){
	union() {
		translate(v = [177.6, -128.24, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP2)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_JP2 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP2)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
							union() {
								hullpoly_JP2_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP2) {
							union() {
								hullpoly_JP2_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [177.6, -128.24, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP2)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_JP2 - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP2)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
							union() {
								hullpoly_JP2_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP2) {
							union() {
								hullpoly_JP2_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [177.6, -128.24, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP2)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_JP2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2) + Wrapper_Thickness_For_JP2)) {
							union() {
								outline_JP2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
							union() {
								outline_JP2_0();
							}
						}
					}
				}
			}
		}
		translate(v = [177.6, -128.24, (PCB_Thickness + max_z_JP2)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - max_z_JP2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
						union() {
							outline_JP2_0();
						}
					}
				}
			}
		}
	}
}
module shape_JP2_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_JP2_0_0(){
	translate(v = [177.6, -128.24, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP2) {
					union() {
						shape_JP2_0_0();
					}
				}
			}
		}
	}
}
module shape_JP2_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_JP2_0_1(){
	translate(v = [177.6, -128.24, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP2) {
					union() {
						shape_JP2_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_JP2_0(){
	union() {
		translate(v = [177.6, -128.24, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP2)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
						union() {
							shape_JP2_0_0();
						}
					}
				}
			}
		}
		translate(v = [177.6, -128.24, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP2)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_JP2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2) + Wrapper_Thickness_For_JP2)) {
							union() {
								shape_JP2_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
							union() {
								shape_JP2_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_JP2_0(){
	union() {
		keepout_volume_JP2_0_0();
		keepout_volume_JP2_0_1();
	}
}
module wiggle_minus_pocket_JP2_0(){
	translate(v = [177.6, -128.24, min_z_JP2]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_JP2 - min_z_JP2) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP2) {
					union() {
						shape_JP2_0_0();
					}
				}
			}
		}
	}
}
module courtyard_JP2(){
	polygon(points = [[179.395, -123.895], [179.395, -130.035], [175.805, -130.035], [175.805, -123.895]]);
}
module courtyard_pocket_JP2(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_JP2]) {
			linear_extrude(height = ((max_z_JP2 - min_z_JP2) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP2) {
					union() {
						courtyard_JP2();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_JP2(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP2)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP2) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
					union() {
						courtyard_JP2();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP2)]) {
			linear_extrude(height = Wrapper_Height_For_JP2) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2) + Wrapper_Thickness_For_JP2)) {
						union() {
							courtyard_JP2();
						}
					}
					offset(r = (Effective_Shell_Gap_For_JP2 + Effective_Shell_Thickness_For_JP2)) {
						union() {
							courtyard_JP2();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J13_0(){
	union() {
		translate(v = [140.19, -126.0, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J13))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J13)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -5.3993327091215235],[-0.46075425460358, -5.540754065358833],0.4);
						peri_line_scad([0.3193328983662705, -5.3993327091215235],[0.46075425460358, -5.540754065358833],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
					}
				}
			}
		}
		translate(v = [140.19, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [140.19, -126.0, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J13))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J13)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([1.2690761205530252, -6.095617558594408],[1.4538520099479868, -6.1721542863680785],0.4);
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
								peri_line_scad([-1.2690761205530252, -6.095617558594408],[-1.4538520099479868, -6.1721542863680785],0.4);
								peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
						hull() {
							union() {
								peri_line_scad([1.015617331913718, -6.349076120381952],[1.0921539770860798, -6.533852043991495],0.4);
								peri_line_scad([1.2690761205530252, -6.095617558594408],[1.4538520099479868, -6.1721542863680785],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [140.19, -126.0, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -3.096000242233276],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * 1.0)), (-3.096000242233276 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604206],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * 1.0)), (-1.9839999848604206 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -3.0960002422332757],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * -1.0)), (-3.0960002422332757 + (((0.01 + Effective_Shell_Thickness_For_J13) + Effective_Shell_Gap_For_J13) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J13_0_0(){
	polygon(points = [[1.27, -6.096000242233276], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -6.096000242233276], [-1.0160000151395798, -6.35], [1.0160000151395798, -6.35]]);
}
module hullpoly_J13_0_1(){
	polygon(points = [[-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -5.40003981590271], [0.32004000514745706, -5.40003981590271], [0.32004000514745706, 0.32004000514745706]]);
}
module fitting_pocket_J13_0(){
	union() {
		translate(v = [140.19, -126.0, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J13) {
						union() {
							hullpoly_J13_0_0();
						}
					}
				}
			}
		}
		translate(v = [140.19, -126.0, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J13) {
						union() {
							hullpoly_J13_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J13_0(){
	union() {
		hullpoly_J13_0_0();
	}
}
module wiggle_pocket_J13_0(){
	translate(v = [140.19, -126.0, min_z_J13]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J13 - min_z_J13) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J13) {
					union() {
						outline_J13_0();
					}
				}
			}
		}
	}
}
module perimeter_J13_0(){
	union() {
		translate(v = [140.19, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J13)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J13) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
						union() {
							outline_J13_0();
						}
					}
				}
			}
		}
		translate(v = [140.19, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J13)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J13) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13) + Wrapper_Thickness_For_J13)) {
							union() {
								outline_J13_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
							union() {
								outline_J13_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J13_0(){
	union() {
		translate(v = [140.19, -126.0, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J13)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J13 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J13)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
							union() {
								hullpoly_J13_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J13) {
							union() {
								hullpoly_J13_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [140.19, -126.0, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J13)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J13 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J13)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
							union() {
								hullpoly_J13_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J13) {
							union() {
								hullpoly_J13_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [140.19, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J13)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J13) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13) + Wrapper_Thickness_For_J13)) {
							union() {
								outline_J13_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
							union() {
								outline_J13_0();
							}
						}
					}
				}
			}
		}
		translate(v = [140.19, -126.0, (PCB_Thickness + max_z_J13)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J13) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
						union() {
							outline_J13_0();
						}
					}
				}
			}
		}
	}
}
module shape_J13_0_0(){
	union() {
		polygon(points = [[1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35]]);
	}
}
module keepout_volume_J13_0_0(){
	translate(v = [140.19, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J13) {
					union() {
						shape_J13_0_0();
					}
				}
			}
		}
	}
}
module shape_J13_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
	}
}
module keepout_volume_J13_0_1(){
	translate(v = [140.19, -126.0, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J13) {
					union() {
						shape_J13_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J13_0(){
	union() {
		translate(v = [140.19, -126.0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J13)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J13) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
						union() {
							shape_J13_0_0();
						}
					}
				}
			}
		}
		translate(v = [140.19, -126.0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J13)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J13) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13) + Wrapper_Thickness_For_J13)) {
							union() {
								shape_J13_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
							union() {
								shape_J13_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J13_0(){
	union() {
		keepout_volume_J13_0_0();
		keepout_volume_J13_0_1();
	}
}
module wiggle_minus_pocket_J13_0(){
	translate(v = [140.19, -126.0, min_z_J13]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J13 - min_z_J13) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J13) {
					union() {
						shape_J13_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J13(){
	polygon(points = [[147.035, -124.205], [147.035, -127.795], [138.395, -127.795], [138.395, -124.205]]);
}
module courtyard_pocket_J13(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J13]) {
			linear_extrude(height = ((max_z_J13 - min_z_J13) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J13) {
					union() {
						courtyard_J13();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J13(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J13)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J13) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
					union() {
						courtyard_J13();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J13)]) {
			linear_extrude(height = Wrapper_Height_For_J13) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13) + Wrapper_Thickness_For_J13)) {
						union() {
							courtyard_J13();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J13 + Effective_Shell_Thickness_For_J13)) {
						union() {
							courtyard_J13();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_U5_0(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-8.88907612046749, -3.530982668292785],[-9.073852026969746, -3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([-8.88907612046749, -5.562217331707215],[-9.073852026969746, -5.638754018180233],0.4);
								peri_line_scad([-8.635617331707214, -5.815676120467488],[-8.712154018180232, -6.000452026969746],0.4);
							}
						}
						peri_line_scad([-8.635617331707214, -5.815676120467488],[-8.712154018180232, -6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([-6.604382668292786, -5.815676120467488],[-6.527845981819768, -6.000452026969746],0.4);
								peri_line_scad([-6.350923879532511, -5.562217331707215],[-6.166147973030253, -5.638754018180233],0.4);
							}
						}
						peri_line_scad([-6.350923879532511, -5.562217331707215],[-6.166147973030253, -5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([-6.350923879532511, -3.530982668292785],[-6.166147973030253, -3.454445981819767],0.4);
								peri_line_scad([-6.604382668292786, -3.2775238795325112],[-6.527845981819768, -3.092747973030254],0.4);
							}
						}
						peri_line_scad([-6.604382668292786, -3.2775238795325112],[-6.527845981819768, -3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([-8.635617331707214, -3.2775238795325112],[-8.712154018180232, -3.092747973030254],0.4);
								peri_line_scad([-8.88907612046749, -3.530982668292785],[-9.073852026969746, -3.454445981819767],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U5_0_0(){
	polygon(points = [[-8.89, -3.53059998486042], [-8.89, -5.56260001513958], [-8.63600001513958, -5.816599999999999], [-6.603999984860421, -5.816599999999999], [-6.35, -5.56260001513958], [-6.35, -3.53059998486042], [-6.603999984860421, -3.2765999999999997], [-8.63600001513958, -3.2765999999999997]]);
}
module hullpoly_U5_0_1(){
	polygon(points = [[-8.340040005147458, -4.866640005147457], [-8.340040005147458, -4.2265599948525425], [-8.338113895816337, -4.187353138720718], [-8.33235411730875, -4.148523866046091], [-8.322816139440341, -4.110446123950758], [-8.309591818151972, -4.073486621906507], [-8.292808510886799, -4.0380013001221435], [-8.272627850068476, -4.004331901644702], [-8.249244186492552, -3.9728026811870842], [-8.222882717622076, -3.9437172823779236], [-8.193797318812916, -3.9173558135074478], [-8.162268098355298, -3.8939721499315243], [-8.128598699877857, -3.8737914891132004], [-8.093113378093493, -3.8570081818480277], [-8.056153876049242, -3.843783860559659], [-8.018076133953908, -3.8342458826912504], [-7.9792468612792815, -3.8284861041836638], [-7.940040005147457, -3.8265599948525426], [-7.299959994852543, -3.8265599948525426], [-7.260753138720719, -3.8284861041836638], [-7.221923866046091, -3.8342458826912504], [-7.183846123950758, -3.843783860559659], [-7.146886621906507, -3.8570081818480277], [-7.111401300122144, -3.8737914891132004], [-7.077731901644702, -3.8939721499315243], [-7.046202681187085, -3.9173558135074478], [-7.0171172823779235, -3.9437172823779236], [-6.990755813507448, -3.9728026811870842], [-6.967372149931525, -4.004331901644702], [-6.947191489113201, -4.0380013001221435], [-6.930408181848028, -4.073486621906507], [-6.91718386055966, -4.110446123950758], [-6.90764588269125, -4.148523866046091], [-6.901886104183664, -4.187353138720718], [-6.8999599948525425, -4.2265599948525425], [-6.8999599948525425, -4.866640005147457], [-6.901886104183664, -4.905846861279281], [-6.90764588269125, -4.944676133953909], [-6.91718386055966, -4.982753876049242], [-6.930408181848028, -5.019713378093493], [-6.947191489113201, -5.055198699877856], [-6.967372149931525, -5.088868098355298], [-6.990755813507448, -5.120397318812915], [-7.0171172823779235, -5.149482717622076], [-7.046202681187085, -5.175844186492552], [-7.077731901644702, -5.199227850068475], [-7.111401300122144, -5.219408510886799], [-7.146886621906507, -5.236191818151972], [-7.183846123950758, -5.24941613944034], [-7.221923866046091, -5.2589541173087495], [-7.260753138720719, -5.264713895816335], [-7.299959994852543, -5.266640005147457], [-7.940040005147457, -5.266640005147457], [-7.9792468612792815, -5.264713895816335], [-8.018076133953908, -5.2589541173087495], [-8.056153876049242, -5.24941613944034], [-8.093113378093493, -5.236191818151972], [-8.128598699877857, -5.219408510886799], [-8.162268098355298, -5.199227850068475], [-8.193797318812916, -5.175844186492552], [-8.222882717622076, -5.149482717622076], [-8.249244186492552, -5.120397318812915], [-8.272627850068476, -5.088868098355298], [-8.292808510886799, -5.055198699877856], [-8.309591818151972, -5.019713378093493], [-8.322816139440341, -4.982753876049242], [-8.33235411730875, -4.944676133953909], [-8.338113895816337, -4.905846861279281], [-8.340040005147458, -4.866640005147457]]);
}
module fitting_pocket_U5_0(){
	union() {
		translate(v = [188.78, -129.47, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_0_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_U5_0(){
	union() {
		hullpoly_U5_0_0();
	}
}
module wiggle_pocket_U5_0(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						outline_U5_0();
					}
				}
			}
		}
	}
}
module perimeter_U5_0(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U5_0(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_0();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness + max_z_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_0();
						}
					}
				}
			}
		}
	}
}
module shape_U5_0_0(){
	union() {
		polygon(points = [[-6.604, -5.817], [-6.354, -5.567], [-6.35, -5.563], [-6.35, -3.562], [-6.35, -3.531], [-6.6, -3.281], [-6.604, -3.277], [-8.604, -3.277], [-8.636, -3.277], [-8.89, -3.531], [-8.89, -5.563], [-8.636, -5.817]]);
	}
}
module keepout_volume_U5_0_0(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_0_0();
					}
				}
			}
		}
	}
}
module shape_U5_0_1(){
	union() {
		polygon(points = [[-7.411, -5.205], [-7.362, -5.197], [-7.315, -5.185], [-7.269, -5.169], [-7.224, -5.148], [-7.182, -5.123], [-7.143, -5.094], [-7.106, -5.061], [-7.073, -5.024], [-7.044, -4.985], [-7.019, -4.943], [-6.998, -4.898], [-6.982, -4.852], [-6.97, -4.805], [-6.962, -4.756], [-6.96, -4.707], [-6.96, -4.387], [-6.962, -4.338], [-6.97, -4.289], [-6.982, -4.242], [-6.998, -4.196], [-7.019, -4.151], [-7.044, -4.109], [-7.073, -4.07], [-7.106, -4.033], [-7.143, -4.0], [-7.182, -3.971], [-7.224, -3.946], [-7.269, -3.925], [-7.315, -3.909], [-7.362, -3.897], [-7.411, -3.889], [-7.46, -3.887], [-7.78, -3.887], [-7.829, -3.889], [-7.878, -3.897], [-7.925, -3.909], [-7.971, -3.925], [-8.016, -3.946], [-8.058, -3.971], [-8.097, -4.0], [-8.134, -4.033], [-8.167, -4.07], [-8.196, -4.109], [-8.221, -4.151], [-8.242, -4.196], [-8.258, -4.242], [-8.27, -4.289], [-8.278, -4.338], [-8.28, -4.387], [-8.28, -4.707], [-8.278, -4.756], [-8.27, -4.805], [-8.258, -4.852], [-8.242, -4.898], [-8.221, -4.943], [-8.196, -4.985], [-8.167, -5.024], [-8.134, -5.061], [-8.097, -5.094], [-8.058, -5.123], [-8.016, -5.148], [-7.971, -5.169], [-7.925, -5.185], [-7.878, -5.197], [-7.829, -5.205], [-7.78, -5.207], [-7.46, -5.207]]);
	}
}
module keepout_volume_U5_0_1(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U5_0(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							shape_U5_0_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								shape_U5_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								shape_U5_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U5_0(){
	union() {
		keepout_volume_U5_0_0();
		keepout_volume_U5_0_1();
	}
}
module wiggle_minus_pocket_U5_0(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_0_0();
					}
				}
			}
		}
	}
}
module fitting_cuts_U5_1(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-8.88907612046749, 5.562217331707215],[-9.073852026969746, 5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([-8.88907612046749, 3.530982668292785],[-9.073852026969746, 3.454445981819767],0.4);
								peri_line_scad([-8.635617331707214, 3.2775238795325112],[-8.712154018180232, 3.092747973030254],0.4);
							}
						}
						peri_line_scad([-8.635617331707214, 3.2775238795325112],[-8.712154018180232, 3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([-6.604382668292786, 3.2775238795325112],[-6.527845981819768, 3.092747973030254],0.4);
								peri_line_scad([-6.350923879532511, 3.530982668292785],[-6.166147973030253, 3.454445981819767],0.4);
							}
						}
						peri_line_scad([-6.350923879532511, 3.530982668292785],[-6.166147973030253, 3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([-6.350923879532511, 5.562217331707215],[-6.166147973030253, 5.638754018180233],0.4);
								peri_line_scad([-6.604382668292786, 5.815676120467488],[-6.527845981819768, 6.000452026969746],0.4);
							}
						}
						peri_line_scad([-6.604382668292786, 5.815676120467488],[-6.527845981819768, 6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([-8.635617331707214, 5.815676120467488],[-8.712154018180232, 6.000452026969746],0.4);
								peri_line_scad([-8.88907612046749, 5.562217331707215],[-9.073852026969746, 5.638754018180233],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U5_1_0(){
	polygon(points = [[-8.89, 5.56260001513958], [-8.89, 3.53059998486042], [-8.63600001513958, 3.2765999999999997], [-6.603999984860421, 3.2765999999999997], [-6.35, 3.53059998486042], [-6.35, 5.56260001513958], [-6.603999984860421, 5.816599999999999], [-8.63600001513958, 5.816599999999999]]);
}
module hullpoly_U5_1_1(){
	polygon(points = [[-8.340040005147458, 4.2265599948525425], [-8.340040005147458, 4.866640005147457], [-8.338113895816337, 4.905846861279281], [-8.33235411730875, 4.944676133953909], [-8.322816139440341, 4.982753876049242], [-8.309591818151972, 5.019713378093493], [-8.292808510886799, 5.055198699877856], [-8.272627850068476, 5.088868098355298], [-8.249244186492552, 5.120397318812915], [-8.222882717622076, 5.149482717622076], [-8.193797318812916, 5.175844186492552], [-8.162268098355298, 5.199227850068475], [-8.128598699877857, 5.219408510886799], [-8.093113378093493, 5.236191818151972], [-8.056153876049242, 5.24941613944034], [-8.018076133953908, 5.2589541173087495], [-7.9792468612792815, 5.264713895816335], [-7.940040005147457, 5.266640005147457], [-7.299959994852543, 5.266640005147457], [-7.260753138720719, 5.264713895816335], [-7.221923866046091, 5.2589541173087495], [-7.183846123950758, 5.24941613944034], [-7.146886621906507, 5.236191818151972], [-7.111401300122144, 5.219408510886799], [-7.077731901644702, 5.199227850068475], [-7.046202681187085, 5.175844186492552], [-7.0171172823779235, 5.149482717622076], [-6.990755813507448, 5.120397318812915], [-6.967372149931525, 5.088868098355298], [-6.947191489113201, 5.055198699877856], [-6.930408181848028, 5.019713378093493], [-6.91718386055966, 4.982753876049242], [-6.90764588269125, 4.944676133953909], [-6.901886104183664, 4.905846861279281], [-6.8999599948525425, 4.866640005147457], [-6.8999599948525425, 4.2265599948525425], [-6.901886104183664, 4.187353138720718], [-6.90764588269125, 4.148523866046091], [-6.91718386055966, 4.110446123950758], [-6.930408181848028, 4.073486621906507], [-6.947191489113201, 4.0380013001221435], [-6.967372149931525, 4.004331901644702], [-6.990755813507448, 3.9728026811870842], [-7.0171172823779235, 3.9437172823779236], [-7.046202681187085, 3.9173558135074478], [-7.077731901644702, 3.8939721499315243], [-7.111401300122144, 3.8737914891132004], [-7.146886621906507, 3.8570081818480277], [-7.183846123950758, 3.843783860559659], [-7.221923866046091, 3.8342458826912504], [-7.260753138720719, 3.8284861041836638], [-7.299959994852543, 3.8265599948525426], [-7.940040005147457, 3.8265599948525426], [-7.9792468612792815, 3.8284861041836638], [-8.018076133953908, 3.8342458826912504], [-8.056153876049242, 3.843783860559659], [-8.093113378093493, 3.8570081818480277], [-8.128598699877857, 3.8737914891132004], [-8.162268098355298, 3.8939721499315243], [-8.193797318812916, 3.9173558135074478], [-8.222882717622076, 3.9437172823779236], [-8.249244186492552, 3.9728026811870842], [-8.272627850068476, 4.004331901644702], [-8.292808510886799, 4.0380013001221435], [-8.309591818151972, 4.073486621906507], [-8.322816139440341, 4.110446123950758], [-8.33235411730875, 4.148523866046091], [-8.338113895816337, 4.187353138720718], [-8.340040005147458, 4.2265599948525425]]);
}
module fitting_pocket_U5_1(){
	union() {
		translate(v = [188.78, -129.47, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_1_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_1_1();
						}
					}
				}
			}
		}
	}
}
module outline_U5_1(){
	union() {
		hullpoly_U5_1_0();
	}
}
module wiggle_pocket_U5_1(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						outline_U5_1();
					}
				}
			}
		}
	}
}
module perimeter_U5_1(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_1();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_1();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_1();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U5_1(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_1_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_1_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_1_1();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_1();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_1();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness + max_z_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_1();
						}
					}
				}
			}
		}
	}
}
module shape_U5_1_0(){
	union() {
		polygon(points = [[-6.604, 3.277], [-6.354, 3.527], [-6.35, 3.531], [-6.35, 5.531], [-6.35, 5.563], [-6.6, 5.813], [-6.604, 5.817], [-8.604, 5.817], [-8.636, 5.817], [-8.89, 5.563], [-8.89, 5.562], [-8.89, 3.531], [-8.636, 3.277]]);
	}
}
module keepout_volume_U5_1_0(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_1_0();
					}
				}
			}
		}
	}
}
module shape_U5_1_1(){
	union() {
		polygon(points = [[-7.411, 3.889], [-7.362, 3.897], [-7.315, 3.909], [-7.269, 3.925], [-7.224, 3.946], [-7.182, 3.971], [-7.143, 4.0], [-7.106, 4.033], [-7.073, 4.07], [-7.044, 4.109], [-7.019, 4.151], [-6.998, 4.196], [-6.982, 4.242], [-6.97, 4.289], [-6.962, 4.338], [-6.96, 4.387], [-6.96, 4.707], [-6.962, 4.756], [-6.97, 4.805], [-6.982, 4.852], [-6.998, 4.898], [-7.019, 4.943], [-7.044, 4.985], [-7.073, 5.024], [-7.106, 5.061], [-7.143, 5.094], [-7.182, 5.123], [-7.224, 5.148], [-7.269, 5.169], [-7.315, 5.185], [-7.362, 5.197], [-7.411, 5.205], [-7.46, 5.207], [-7.78, 5.207], [-7.829, 5.205], [-7.878, 5.197], [-7.925, 5.185], [-7.971, 5.169], [-8.016, 5.148], [-8.058, 5.123], [-8.097, 5.094], [-8.134, 5.061], [-8.167, 5.024], [-8.196, 4.985], [-8.221, 4.943], [-8.242, 4.898], [-8.258, 4.852], [-8.27, 4.805], [-8.278, 4.756], [-8.28, 4.707], [-8.28, 4.387], [-8.278, 4.338], [-8.27, 4.289], [-8.258, 4.242], [-8.242, 4.196], [-8.221, 4.151], [-8.196, 4.109], [-8.167, 4.07], [-8.134, 4.033], [-8.097, 4.0], [-8.058, 3.971], [-8.016, 3.946], [-7.971, 3.925], [-7.925, 3.909], [-7.878, 3.897], [-7.829, 3.889], [-7.78, 3.887], [-7.46, 3.887]]);
	}
}
module keepout_volume_U5_1_1(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_1_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U5_1(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							shape_U5_1_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								shape_U5_1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								shape_U5_1_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U5_1(){
	union() {
		keepout_volume_U5_1_0();
		keepout_volume_U5_1_1();
	}
}
module wiggle_minus_pocket_U5_1(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_1_0();
					}
				}
			}
		}
	}
}
module fitting_cuts_U5_2(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([6.350923879532511, -3.530982668292785],[6.166147973030253, -3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([6.350923879532511, -5.562217331707215],[6.166147973030253, -5.638754018180233],0.4);
								peri_line_scad([6.604382668292786, -5.815676120467488],[6.527845981819768, -6.000452026969746],0.4);
							}
						}
						peri_line_scad([6.604382668292786, -5.815676120467488],[6.527845981819768, -6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([8.635617331707214, -5.815676120467488],[8.712154018180232, -6.000452026969746],0.4);
								peri_line_scad([8.88907612046749, -5.562217331707215],[9.073852026969746, -5.638754018180233],0.4);
							}
						}
						peri_line_scad([8.88907612046749, -5.562217331707215],[9.073852026969746, -5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([8.88907612046749, -3.530982668292785],[9.073852026969746, -3.454445981819767],0.4);
								peri_line_scad([8.635617331707214, -3.2775238795325112],[8.712154018180232, -3.092747973030254],0.4);
							}
						}
						peri_line_scad([8.635617331707214, -3.2775238795325112],[8.712154018180232, -3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([6.604382668292786, -3.2775238795325112],[6.527845981819768, -3.092747973030254],0.4);
								peri_line_scad([6.350923879532511, -3.530982668292785],[6.166147973030253, -3.454445981819767],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U5_2_0(){
	polygon(points = [[6.35, -3.53059998486042], [6.35, -5.56260001513958], [6.603999984860421, -5.816599999999999], [8.63600001513958, -5.816599999999999], [8.89, -5.56260001513958], [8.89, -3.53059998486042], [8.63600001513958, -3.2765999999999997], [6.603999984860421, -3.2765999999999997]]);
}
module hullpoly_U5_2_1(){
	polygon(points = [[6.8999599948525425, -4.866640005147457], [6.8999599948525425, -4.2265599948525425], [6.901886104183664, -4.187353138720718], [6.90764588269125, -4.148523866046091], [6.91718386055966, -4.110446123950758], [6.930408181848028, -4.073486621906507], [6.947191489113201, -4.0380013001221435], [6.967372149931525, -4.004331901644702], [6.990755813507448, -3.9728026811870842], [7.0171172823779235, -3.9437172823779236], [7.046202681187085, -3.9173558135074478], [7.077731901644702, -3.8939721499315243], [7.111401300122144, -3.8737914891132004], [7.146886621906507, -3.8570081818480277], [7.183846123950758, -3.843783860559659], [7.221923866046092, -3.8342458826912504], [7.260753138720719, -3.8284861041836638], [7.299959994852543, -3.8265599948525426], [7.940040005147457, -3.8265599948525426], [7.9792468612792815, -3.8284861041836638], [8.018076133953908, -3.8342458826912504], [8.056153876049242, -3.843783860559659], [8.093113378093493, -3.8570081818480277], [8.128598699877857, -3.8737914891132004], [8.162268098355298, -3.8939721499315243], [8.193797318812916, -3.9173558135074478], [8.222882717622076, -3.9437172823779236], [8.249244186492552, -3.9728026811870842], [8.272627850068476, -4.004331901644702], [8.292808510886799, -4.0380013001221435], [8.309591818151972, -4.073486621906507], [8.322816139440341, -4.110446123950758], [8.33235411730875, -4.148523866046091], [8.338113895816337, -4.187353138720718], [8.340040005147458, -4.2265599948525425], [8.340040005147458, -4.866640005147457], [8.338113895816337, -4.905846861279281], [8.33235411730875, -4.944676133953909], [8.322816139440341, -4.982753876049242], [8.309591818151972, -5.019713378093493], [8.292808510886799, -5.055198699877856], [8.272627850068476, -5.088868098355298], [8.249244186492552, -5.120397318812915], [8.222882717622076, -5.149482717622076], [8.193797318812916, -5.175844186492552], [8.162268098355298, -5.199227850068475], [8.128598699877857, -5.219408510886799], [8.093113378093493, -5.236191818151972], [8.056153876049242, -5.24941613944034], [8.018076133953908, -5.2589541173087495], [7.9792468612792815, -5.264713895816335], [7.940040005147457, -5.266640005147457], [7.299959994852543, -5.266640005147457], [7.260753138720719, -5.264713895816335], [7.221923866046092, -5.2589541173087495], [7.183846123950758, -5.24941613944034], [7.146886621906507, -5.236191818151972], [7.111401300122144, -5.219408510886799], [7.077731901644702, -5.199227850068475], [7.046202681187085, -5.175844186492552], [7.0171172823779235, -5.149482717622076], [6.990755813507448, -5.120397318812915], [6.967372149931525, -5.088868098355298], [6.947191489113201, -5.055198699877856], [6.930408181848028, -5.019713378093493], [6.91718386055966, -4.982753876049242], [6.90764588269125, -4.944676133953909], [6.901886104183664, -4.905846861279281], [6.8999599948525425, -4.866640005147457]]);
}
module fitting_pocket_U5_2(){
	union() {
		translate(v = [188.78, -129.47, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_2_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_2_1();
						}
					}
				}
			}
		}
	}
}
module outline_U5_2(){
	union() {
		hullpoly_U5_2_0();
	}
}
module wiggle_pocket_U5_2(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						outline_U5_2();
					}
				}
			}
		}
	}
}
module perimeter_U5_2(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_2();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_2();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_2();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U5_2(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_2_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_2_0();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_2_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_2_1();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_2();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_2();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness + max_z_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_2();
						}
					}
				}
			}
		}
	}
}
module shape_U5_2_0(){
	union() {
		polygon(points = [[8.636, -5.817], [8.886, -5.567], [8.89, -5.563], [8.89, -3.562], [8.89, -3.531], [8.64, -3.281], [8.636, -3.277], [6.636, -3.277], [6.604, -3.277], [6.35, -3.531], [6.35, -5.563], [6.604, -5.817]]);
	}
}
module keepout_volume_U5_2_0(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_2_0();
					}
				}
			}
		}
	}
}
module shape_U5_2_1(){
	union() {
		polygon(points = [[7.829, -5.205], [7.878, -5.197], [7.925, -5.185], [7.971, -5.169], [8.016, -5.148], [8.058, -5.123], [8.097, -5.094], [8.134, -5.061], [8.167, -5.024], [8.196, -4.985], [8.221, -4.943], [8.242, -4.898], [8.258, -4.852], [8.27, -4.805], [8.278, -4.756], [8.28, -4.707], [8.28, -4.387], [8.278, -4.338], [8.27, -4.289], [8.258, -4.242], [8.242, -4.196], [8.221, -4.151], [8.196, -4.109], [8.167, -4.07], [8.134, -4.033], [8.097, -4.0], [8.058, -3.971], [8.016, -3.946], [7.971, -3.925], [7.925, -3.909], [7.878, -3.897], [7.829, -3.889], [7.78, -3.887], [7.46, -3.887], [7.411, -3.889], [7.362, -3.897], [7.315, -3.909], [7.269, -3.925], [7.224, -3.946], [7.182, -3.971], [7.143, -4.0], [7.106, -4.033], [7.073, -4.07], [7.044, -4.109], [7.019, -4.151], [6.998, -4.196], [6.982, -4.242], [6.97, -4.289], [6.962, -4.338], [6.96, -4.387], [6.96, -4.707], [6.962, -4.756], [6.97, -4.805], [6.982, -4.852], [6.998, -4.898], [7.019, -4.943], [7.044, -4.985], [7.073, -5.024], [7.106, -5.061], [7.143, -5.094], [7.182, -5.123], [7.224, -5.148], [7.269, -5.169], [7.315, -5.185], [7.362, -5.197], [7.411, -5.205], [7.46, -5.207], [7.78, -5.207]]);
	}
}
module keepout_volume_U5_2_1(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_2_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U5_2(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							shape_U5_2_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								shape_U5_2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								shape_U5_2_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U5_2(){
	union() {
		keepout_volume_U5_2_0();
		keepout_volume_U5_2_1();
	}
}
module wiggle_minus_pocket_U5_2(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_2_0();
					}
				}
			}
		}
	}
}
module fitting_cuts_U5_3(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5))]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([6.350923879532511, 5.562217331707215],[6.166147973030253, 5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([6.350923879532511, 3.530982668292785],[6.166147973030253, 3.454445981819767],0.4);
								peri_line_scad([6.604382668292786, 3.2775238795325112],[6.527845981819768, 3.092747973030254],0.4);
							}
						}
						peri_line_scad([6.604382668292786, 3.2775238795325112],[6.527845981819768, 3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([8.635617331707214, 3.2775238795325112],[8.712154018180232, 3.092747973030254],0.4);
								peri_line_scad([8.88907612046749, 3.530982668292785],[9.073852026969746, 3.454445981819767],0.4);
							}
						}
						peri_line_scad([8.88907612046749, 3.530982668292785],[9.073852026969746, 3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([8.88907612046749, 5.562217331707215],[9.073852026969746, 5.638754018180233],0.4);
								peri_line_scad([8.635617331707214, 5.815676120467488],[8.712154018180232, 6.000452026969746],0.4);
							}
						}
						peri_line_scad([8.635617331707214, 5.815676120467488],[8.712154018180232, 6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([6.604382668292786, 5.815676120467488],[6.527845981819768, 6.000452026969746],0.4);
								peri_line_scad([6.350923879532511, 5.562217331707215],[6.166147973030253, 5.638754018180233],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U5_3_0(){
	polygon(points = [[6.35, 5.56260001513958], [6.35, 3.53059998486042], [6.603999984860421, 3.2765999999999997], [8.63600001513958, 3.2765999999999997], [8.89, 3.53059998486042], [8.89, 5.56260001513958], [8.63600001513958, 5.816599999999999], [6.603999984860421, 5.816599999999999]]);
}
module hullpoly_U5_3_1(){
	polygon(points = [[6.8999599948525425, 4.2265599948525425], [6.8999599948525425, 4.866640005147457], [6.901886104183664, 4.905846861279281], [6.90764588269125, 4.944676133953909], [6.91718386055966, 4.982753876049242], [6.930408181848028, 5.019713378093493], [6.947191489113201, 5.055198699877856], [6.967372149931525, 5.088868098355298], [6.990755813507448, 5.120397318812915], [7.0171172823779235, 5.149482717622076], [7.046202681187085, 5.175844186492552], [7.077731901644702, 5.199227850068475], [7.111401300122144, 5.219408510886799], [7.146886621906507, 5.236191818151972], [7.183846123950758, 5.24941613944034], [7.221923866046092, 5.2589541173087495], [7.260753138720719, 5.264713895816335], [7.299959994852543, 5.266640005147457], [7.940040005147457, 5.266640005147457], [7.9792468612792815, 5.264713895816335], [8.018076133953908, 5.2589541173087495], [8.056153876049242, 5.24941613944034], [8.093113378093493, 5.236191818151972], [8.128598699877857, 5.219408510886799], [8.162268098355298, 5.199227850068475], [8.193797318812916, 5.175844186492552], [8.222882717622076, 5.149482717622076], [8.249244186492552, 5.120397318812915], [8.272627850068476, 5.088868098355298], [8.292808510886799, 5.055198699877856], [8.309591818151972, 5.019713378093493], [8.322816139440341, 4.982753876049242], [8.33235411730875, 4.944676133953909], [8.338113895816337, 4.905846861279281], [8.340040005147458, 4.866640005147457], [8.340040005147458, 4.2265599948525425], [8.338113895816337, 4.187353138720718], [8.33235411730875, 4.148523866046091], [8.322816139440341, 4.110446123950758], [8.309591818151972, 4.073486621906507], [8.292808510886799, 4.0380013001221435], [8.272627850068476, 4.004331901644702], [8.249244186492552, 3.9728026811870842], [8.222882717622076, 3.9437172823779236], [8.193797318812916, 3.9173558135074478], [8.162268098355298, 3.8939721499315243], [8.128598699877857, 3.8737914891132004], [8.093113378093493, 3.8570081818480277], [8.056153876049242, 3.843783860559659], [8.018076133953908, 3.8342458826912504], [7.9792468612792815, 3.8284861041836638], [7.940040005147457, 3.8265599948525426], [7.299959994852543, 3.8265599948525426], [7.260753138720719, 3.8284861041836638], [7.221923866046092, 3.8342458826912504], [7.183846123950758, 3.843783860559659], [7.146886621906507, 3.8570081818480277], [7.111401300122144, 3.8737914891132004], [7.077731901644702, 3.8939721499315243], [7.046202681187085, 3.9173558135074478], [7.0171172823779235, 3.9437172823779236], [6.990755813507448, 3.9728026811870842], [6.967372149931525, 4.004331901644702], [6.947191489113201, 4.0380013001221435], [6.930408181848028, 4.073486621906507], [6.91718386055966, 4.110446123950758], [6.90764588269125, 4.148523866046091], [6.901886104183664, 4.187353138720718], [6.8999599948525425, 4.2265599948525425]]);
}
module fitting_pocket_U5_3(){
	union() {
		translate(v = [188.78, -129.47, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_3_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U5) {
						union() {
							hullpoly_U5_3_1();
						}
					}
				}
			}
		}
	}
}
module outline_U5_3(){
	union() {
		hullpoly_U5_3_0();
	}
}
module wiggle_pocket_U5_3(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						outline_U5_3();
					}
				}
			}
		}
	}
}
module perimeter_U5_3(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_3();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_3();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_3();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U5_3(){
	union() {
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_3_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_3_0();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) - tiny_dimension)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((max_z_U5 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U5)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								hullpoly_U5_3_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U5) {
							union() {
								hullpoly_U5_3_1();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								outline_U5_3();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								outline_U5_3();
							}
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (PCB_Thickness + max_z_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - max_z_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							outline_U5_3();
						}
					}
				}
			}
		}
	}
}
module shape_U5_3_0(){
	union() {
		polygon(points = [[8.636, 3.277], [8.886, 3.527], [8.89, 3.531], [8.89, 5.531], [8.89, 5.563], [8.64, 5.813], [8.636, 5.817], [6.636, 5.817], [6.604, 5.817], [6.35, 5.563], [6.35, 5.562], [6.35, 3.531], [6.604, 3.277]]);
	}
}
module keepout_volume_U5_3_0(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_3_0();
					}
				}
			}
		}
	}
}
module shape_U5_3_1(){
	union() {
		polygon(points = [[7.829, 3.889], [7.878, 3.897], [7.925, 3.909], [7.971, 3.925], [8.016, 3.946], [8.058, 3.971], [8.097, 4.0], [8.134, 4.033], [8.167, 4.07], [8.196, 4.109], [8.221, 4.151], [8.242, 4.196], [8.258, 4.242], [8.27, 4.289], [8.278, 4.338], [8.28, 4.387], [8.28, 4.707], [8.278, 4.756], [8.27, 4.805], [8.258, 4.852], [8.242, 4.898], [8.221, 4.943], [8.196, 4.985], [8.167, 5.024], [8.134, 5.061], [8.097, 5.094], [8.058, 5.123], [8.016, 5.148], [7.971, 5.169], [7.925, 5.185], [7.878, 5.197], [7.829, 5.205], [7.78, 5.207], [7.46, 5.207], [7.411, 5.205], [7.362, 5.197], [7.315, 5.185], [7.269, 5.169], [7.224, 5.148], [7.182, 5.123], [7.143, 5.094], [7.106, 5.061], [7.073, 5.024], [7.044, 4.985], [7.019, 4.943], [6.998, 4.898], [6.982, 4.852], [6.97, 4.805], [6.962, 4.756], [6.96, 4.707], [6.96, 4.387], [6.962, 4.338], [6.97, 4.289], [6.982, 4.242], [6.998, 4.196], [7.019, 4.151], [7.044, 4.109], [7.073, 4.07], [7.106, 4.033], [7.143, 4.0], [7.182, 3.971], [7.224, 3.946], [7.269, 3.925], [7.315, 3.909], [7.362, 3.897], [7.411, 3.889], [7.46, 3.887], [7.78, 3.887]]);
	}
}
module keepout_volume_U5_3_1(){
	translate(v = [188.78, -129.47, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_3_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U5_3(){
	union() {
		translate(v = [188.78, -129.47, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							shape_U5_3_0();
						}
					}
				}
			}
		}
		translate(v = [188.78, -129.47, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			rotate(a = [0, 0, 0.0]) {
				linear_extrude(height = Wrapper_Height_For_U5) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
							union() {
								shape_U5_3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
							union() {
								shape_U5_3_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U5_3(){
	union() {
		keepout_volume_U5_3_0();
		keepout_volume_U5_3_1();
	}
}
module wiggle_minus_pocket_U5_3(){
	translate(v = [188.78, -129.47, min_z_U5]) {
		rotate(a = [0, 0, 0.0]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						shape_U5_3_0();
					}
				}
			}
		}
	}
}
module courtyard_U5(){
	polygon(points = []);
}
module courtyard_pocket_U5(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_U5]) {
			linear_extrude(height = ((max_z_U5 - min_z_U5) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U5) {
					union() {
						courtyard_U5();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_U5(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U5)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U5) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
					union() {
						courtyard_U5();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U5)]) {
			linear_extrude(height = Wrapper_Height_For_U5) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5) + Wrapper_Thickness_For_U5)) {
						union() {
							courtyard_U5();
						}
					}
					offset(r = (Effective_Shell_Gap_For_U5 + Effective_Shell_Thickness_For_U5)) {
						union() {
							courtyard_U5();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_U4_0(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-8.88907612046749, -3.530982668292785],[-9.073852026969746, -3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([-8.88907612046749, -5.562217331707215],[-9.073852026969746, -5.638754018180233],0.4);
								peri_line_scad([-8.635617331707214, -5.815676120467488],[-8.712154018180232, -6.000452026969746],0.4);
							}
						}
						peri_line_scad([-8.635617331707214, -5.815676120467488],[-8.712154018180232, -6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([-6.604382668292786, -5.815676120467488],[-6.527845981819768, -6.000452026969746],0.4);
								peri_line_scad([-6.350923879532511, -5.562217331707215],[-6.166147973030253, -5.638754018180233],0.4);
							}
						}
						peri_line_scad([-6.350923879532511, -5.562217331707215],[-6.166147973030253, -5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([-6.350923879532511, -3.530982668292785],[-6.166147973030253, -3.454445981819767],0.4);
								peri_line_scad([-6.604382668292786, -3.2775238795325112],[-6.527845981819768, -3.092747973030254],0.4);
							}
						}
						peri_line_scad([-6.604382668292786, -3.2775238795325112],[-6.527845981819768, -3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([-8.635617331707214, -3.2775238795325112],[-8.712154018180232, -3.092747973030254],0.4);
								peri_line_scad([-8.88907612046749, -3.530982668292785],[-9.073852026969746, -3.454445981819767],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U4_0_0(){
	polygon(points = [[-8.89, -3.53059998486042], [-8.89, -5.56260001513958], [-8.63600001513958, -5.816599999999999], [-6.603999984860421, -5.816599999999999], [-6.35, -5.56260001513958], [-6.35, -3.53059998486042], [-6.603999984860421, -3.2765999999999997], [-8.63600001513958, -3.2765999999999997]]);
}
module hullpoly_U4_0_1(){
	polygon(points = [[-8.340040005147458, -4.866640005147457], [-8.340040005147458, -4.2265599948525425], [-8.338113895816337, -4.187353138720718], [-8.33235411730875, -4.148523866046091], [-8.322816139440341, -4.110446123950758], [-8.309591818151972, -4.073486621906507], [-8.292808510886799, -4.0380013001221435], [-8.272627850068476, -4.004331901644702], [-8.249244186492552, -3.9728026811870842], [-8.222882717622076, -3.9437172823779236], [-8.193797318812916, -3.9173558135074478], [-8.162268098355298, -3.8939721499315243], [-8.128598699877857, -3.8737914891132004], [-8.093113378093493, -3.8570081818480277], [-8.056153876049242, -3.843783860559659], [-8.018076133953908, -3.8342458826912504], [-7.9792468612792815, -3.8284861041836638], [-7.940040005147457, -3.8265599948525426], [-7.299959994852543, -3.8265599948525426], [-7.260753138720719, -3.8284861041836638], [-7.221923866046091, -3.8342458826912504], [-7.183846123950758, -3.843783860559659], [-7.146886621906507, -3.8570081818480277], [-7.111401300122144, -3.8737914891132004], [-7.077731901644702, -3.8939721499315243], [-7.046202681187085, -3.9173558135074478], [-7.0171172823779235, -3.9437172823779236], [-6.990755813507448, -3.9728026811870842], [-6.967372149931525, -4.004331901644702], [-6.947191489113201, -4.0380013001221435], [-6.930408181848028, -4.073486621906507], [-6.91718386055966, -4.110446123950758], [-6.90764588269125, -4.148523866046091], [-6.901886104183664, -4.187353138720718], [-6.8999599948525425, -4.2265599948525425], [-6.8999599948525425, -4.866640005147457], [-6.901886104183664, -4.905846861279281], [-6.90764588269125, -4.944676133953909], [-6.91718386055966, -4.982753876049242], [-6.930408181848028, -5.019713378093493], [-6.947191489113201, -5.055198699877856], [-6.967372149931525, -5.088868098355298], [-6.990755813507448, -5.120397318812915], [-7.0171172823779235, -5.149482717622076], [-7.046202681187085, -5.175844186492552], [-7.077731901644702, -5.199227850068475], [-7.111401300122144, -5.219408510886799], [-7.146886621906507, -5.236191818151972], [-7.183846123950758, -5.24941613944034], [-7.221923866046091, -5.2589541173087495], [-7.260753138720719, -5.264713895816335], [-7.299959994852543, -5.266640005147457], [-7.940040005147457, -5.266640005147457], [-7.9792468612792815, -5.264713895816335], [-8.018076133953908, -5.2589541173087495], [-8.056153876049242, -5.24941613944034], [-8.093113378093493, -5.236191818151972], [-8.128598699877857, -5.219408510886799], [-8.162268098355298, -5.199227850068475], [-8.193797318812916, -5.175844186492552], [-8.222882717622076, -5.149482717622076], [-8.249244186492552, -5.120397318812915], [-8.272627850068476, -5.088868098355298], [-8.292808510886799, -5.055198699877856], [-8.309591818151972, -5.019713378093493], [-8.322816139440341, -4.982753876049242], [-8.33235411730875, -4.944676133953909], [-8.338113895816337, -4.905846861279281], [-8.340040005147458, -4.866640005147457]]);
}
module fitting_pocket_U4_0(){
	union() {
		translate(v = [179.33, -146.12, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_0_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_U4_0(){
	union() {
		hullpoly_U4_0_0();
	}
}
module wiggle_pocket_U4_0(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						outline_U4_0();
					}
				}
			}
		}
	}
}
module perimeter_U4_0(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U4_0(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_0();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness + max_z_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - max_z_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_0();
						}
					}
				}
			}
		}
	}
}
module shape_U4_0_0(){
	union() {
		polygon(points = [[-6.604, -5.817], [-6.354, -5.567], [-6.35, -5.563], [-6.35, -3.562], [-6.35, -3.531], [-6.6, -3.281], [-6.604, -3.277], [-8.604, -3.277], [-8.636, -3.277], [-8.89, -3.531], [-8.89, -5.563], [-8.636, -5.817]]);
	}
}
module keepout_volume_U4_0_0(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_0_0();
					}
				}
			}
		}
	}
}
module shape_U4_0_1(){
	union() {
		polygon(points = [[-7.411, -5.205], [-7.362, -5.197], [-7.315, -5.185], [-7.269, -5.169], [-7.224, -5.148], [-7.182, -5.123], [-7.143, -5.094], [-7.106, -5.061], [-7.073, -5.024], [-7.044, -4.985], [-7.019, -4.943], [-6.998, -4.898], [-6.982, -4.852], [-6.97, -4.805], [-6.962, -4.756], [-6.96, -4.707], [-6.96, -4.387], [-6.962, -4.338], [-6.97, -4.289], [-6.982, -4.242], [-6.998, -4.196], [-7.019, -4.151], [-7.044, -4.109], [-7.073, -4.07], [-7.106, -4.033], [-7.143, -4.0], [-7.182, -3.971], [-7.224, -3.946], [-7.269, -3.925], [-7.315, -3.909], [-7.362, -3.897], [-7.411, -3.889], [-7.46, -3.887], [-7.78, -3.887], [-7.829, -3.889], [-7.878, -3.897], [-7.925, -3.909], [-7.971, -3.925], [-8.016, -3.946], [-8.058, -3.971], [-8.097, -4.0], [-8.134, -4.033], [-8.167, -4.07], [-8.196, -4.109], [-8.221, -4.151], [-8.242, -4.196], [-8.258, -4.242], [-8.27, -4.289], [-8.278, -4.338], [-8.28, -4.387], [-8.28, -4.707], [-8.278, -4.756], [-8.27, -4.805], [-8.258, -4.852], [-8.242, -4.898], [-8.221, -4.943], [-8.196, -4.985], [-8.167, -5.024], [-8.134, -5.061], [-8.097, -5.094], [-8.058, -5.123], [-8.016, -5.148], [-7.971, -5.169], [-7.925, -5.185], [-7.878, -5.197], [-7.829, -5.205], [-7.78, -5.207], [-7.46, -5.207]]);
	}
}
module keepout_volume_U4_0_1(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U4_0(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							shape_U4_0_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								shape_U4_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								shape_U4_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U4_0(){
	union() {
		keepout_volume_U4_0_0();
		keepout_volume_U4_0_1();
	}
}
module wiggle_minus_pocket_U4_0(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_0_0();
					}
				}
			}
		}
	}
}
module fitting_cuts_U4_1(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-8.88907612046749, 5.562217331707215],[-9.073852026969746, 5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([-8.88907612046749, 3.530982668292785],[-9.073852026969746, 3.454445981819767],0.4);
								peri_line_scad([-8.635617331707214, 3.2775238795325112],[-8.712154018180232, 3.092747973030254],0.4);
							}
						}
						peri_line_scad([-8.635617331707214, 3.2775238795325112],[-8.712154018180232, 3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([-6.604382668292786, 3.2775238795325112],[-6.527845981819768, 3.092747973030254],0.4);
								peri_line_scad([-6.350923879532511, 3.530982668292785],[-6.166147973030253, 3.454445981819767],0.4);
							}
						}
						peri_line_scad([-6.350923879532511, 3.530982668292785],[-6.166147973030253, 3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([-6.350923879532511, 5.562217331707215],[-6.166147973030253, 5.638754018180233],0.4);
								peri_line_scad([-6.604382668292786, 5.815676120467488],[-6.527845981819768, 6.000452026969746],0.4);
							}
						}
						peri_line_scad([-6.604382668292786, 5.815676120467488],[-6.527845981819768, 6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([-8.635617331707214, 5.815676120467488],[-8.712154018180232, 6.000452026969746],0.4);
								peri_line_scad([-8.88907612046749, 5.562217331707215],[-9.073852026969746, 5.638754018180233],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U4_1_0(){
	polygon(points = [[-8.89, 5.56260001513958], [-8.89, 3.53059998486042], [-8.63600001513958, 3.2765999999999997], [-6.603999984860421, 3.2765999999999997], [-6.35, 3.53059998486042], [-6.35, 5.56260001513958], [-6.603999984860421, 5.816599999999999], [-8.63600001513958, 5.816599999999999]]);
}
module hullpoly_U4_1_1(){
	polygon(points = [[-8.340040005147458, 4.2265599948525425], [-8.340040005147458, 4.866640005147457], [-8.338113895816337, 4.905846861279281], [-8.33235411730875, 4.944676133953909], [-8.322816139440341, 4.982753876049242], [-8.309591818151972, 5.019713378093493], [-8.292808510886799, 5.055198699877856], [-8.272627850068476, 5.088868098355298], [-8.249244186492552, 5.120397318812915], [-8.222882717622076, 5.149482717622076], [-8.193797318812916, 5.175844186492552], [-8.162268098355298, 5.199227850068475], [-8.128598699877857, 5.219408510886799], [-8.093113378093493, 5.236191818151972], [-8.056153876049242, 5.24941613944034], [-8.018076133953908, 5.2589541173087495], [-7.9792468612792815, 5.264713895816335], [-7.940040005147457, 5.266640005147457], [-7.299959994852543, 5.266640005147457], [-7.260753138720719, 5.264713895816335], [-7.221923866046091, 5.2589541173087495], [-7.183846123950758, 5.24941613944034], [-7.146886621906507, 5.236191818151972], [-7.111401300122144, 5.219408510886799], [-7.077731901644702, 5.199227850068475], [-7.046202681187085, 5.175844186492552], [-7.0171172823779235, 5.149482717622076], [-6.990755813507448, 5.120397318812915], [-6.967372149931525, 5.088868098355298], [-6.947191489113201, 5.055198699877856], [-6.930408181848028, 5.019713378093493], [-6.91718386055966, 4.982753876049242], [-6.90764588269125, 4.944676133953909], [-6.901886104183664, 4.905846861279281], [-6.8999599948525425, 4.866640005147457], [-6.8999599948525425, 4.2265599948525425], [-6.901886104183664, 4.187353138720718], [-6.90764588269125, 4.148523866046091], [-6.91718386055966, 4.110446123950758], [-6.930408181848028, 4.073486621906507], [-6.947191489113201, 4.0380013001221435], [-6.967372149931525, 4.004331901644702], [-6.990755813507448, 3.9728026811870842], [-7.0171172823779235, 3.9437172823779236], [-7.046202681187085, 3.9173558135074478], [-7.077731901644702, 3.8939721499315243], [-7.111401300122144, 3.8737914891132004], [-7.146886621906507, 3.8570081818480277], [-7.183846123950758, 3.843783860559659], [-7.221923866046091, 3.8342458826912504], [-7.260753138720719, 3.8284861041836638], [-7.299959994852543, 3.8265599948525426], [-7.940040005147457, 3.8265599948525426], [-7.9792468612792815, 3.8284861041836638], [-8.018076133953908, 3.8342458826912504], [-8.056153876049242, 3.843783860559659], [-8.093113378093493, 3.8570081818480277], [-8.128598699877857, 3.8737914891132004], [-8.162268098355298, 3.8939721499315243], [-8.193797318812916, 3.9173558135074478], [-8.222882717622076, 3.9437172823779236], [-8.249244186492552, 3.9728026811870842], [-8.272627850068476, 4.004331901644702], [-8.292808510886799, 4.0380013001221435], [-8.309591818151972, 4.073486621906507], [-8.322816139440341, 4.110446123950758], [-8.33235411730875, 4.148523866046091], [-8.338113895816337, 4.187353138720718], [-8.340040005147458, 4.2265599948525425]]);
}
module fitting_pocket_U4_1(){
	union() {
		translate(v = [179.33, -146.12, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_1_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_1_1();
						}
					}
				}
			}
		}
	}
}
module outline_U4_1(){
	union() {
		hullpoly_U4_1_0();
	}
}
module wiggle_pocket_U4_1(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						outline_U4_1();
					}
				}
			}
		}
	}
}
module perimeter_U4_1(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_1();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_1();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_1();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U4_1(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_1_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_1_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_1_1();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_1();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_1();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness + max_z_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - max_z_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_1();
						}
					}
				}
			}
		}
	}
}
module shape_U4_1_0(){
	union() {
		polygon(points = [[-6.604, 3.277], [-6.354, 3.527], [-6.35, 3.531], [-6.35, 5.531], [-6.35, 5.563], [-6.6, 5.813], [-6.604, 5.817], [-8.604, 5.817], [-8.636, 5.817], [-8.89, 5.563], [-8.89, 5.562], [-8.89, 3.531], [-8.636, 3.277]]);
	}
}
module keepout_volume_U4_1_0(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_1_0();
					}
				}
			}
		}
	}
}
module shape_U4_1_1(){
	union() {
		polygon(points = [[-7.411, 3.889], [-7.362, 3.897], [-7.315, 3.909], [-7.269, 3.925], [-7.224, 3.946], [-7.182, 3.971], [-7.143, 4.0], [-7.106, 4.033], [-7.073, 4.07], [-7.044, 4.109], [-7.019, 4.151], [-6.998, 4.196], [-6.982, 4.242], [-6.97, 4.289], [-6.962, 4.338], [-6.96, 4.387], [-6.96, 4.707], [-6.962, 4.756], [-6.97, 4.805], [-6.982, 4.852], [-6.998, 4.898], [-7.019, 4.943], [-7.044, 4.985], [-7.073, 5.024], [-7.106, 5.061], [-7.143, 5.094], [-7.182, 5.123], [-7.224, 5.148], [-7.269, 5.169], [-7.315, 5.185], [-7.362, 5.197], [-7.411, 5.205], [-7.46, 5.207], [-7.78, 5.207], [-7.829, 5.205], [-7.878, 5.197], [-7.925, 5.185], [-7.971, 5.169], [-8.016, 5.148], [-8.058, 5.123], [-8.097, 5.094], [-8.134, 5.061], [-8.167, 5.024], [-8.196, 4.985], [-8.221, 4.943], [-8.242, 4.898], [-8.258, 4.852], [-8.27, 4.805], [-8.278, 4.756], [-8.28, 4.707], [-8.28, 4.387], [-8.278, 4.338], [-8.27, 4.289], [-8.258, 4.242], [-8.242, 4.196], [-8.221, 4.151], [-8.196, 4.109], [-8.167, 4.07], [-8.134, 4.033], [-8.097, 4.0], [-8.058, 3.971], [-8.016, 3.946], [-7.971, 3.925], [-7.925, 3.909], [-7.878, 3.897], [-7.829, 3.889], [-7.78, 3.887], [-7.46, 3.887]]);
	}
}
module keepout_volume_U4_1_1(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_1_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U4_1(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							shape_U4_1_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								shape_U4_1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								shape_U4_1_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U4_1(){
	union() {
		keepout_volume_U4_1_0();
		keepout_volume_U4_1_1();
	}
}
module wiggle_minus_pocket_U4_1(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_1_0();
					}
				}
			}
		}
	}
}
module fitting_cuts_U4_2(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([6.350923879532511, -3.530982668292785],[6.166147973030253, -3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([6.350923879532511, -5.562217331707215],[6.166147973030253, -5.638754018180233],0.4);
								peri_line_scad([6.604382668292786, -5.815676120467488],[6.527845981819768, -6.000452026969746],0.4);
							}
						}
						peri_line_scad([6.604382668292786, -5.815676120467488],[6.527845981819768, -6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([8.635617331707214, -5.815676120467488],[8.712154018180232, -6.000452026969746],0.4);
								peri_line_scad([8.88907612046749, -5.562217331707215],[9.073852026969746, -5.638754018180233],0.4);
							}
						}
						peri_line_scad([8.88907612046749, -5.562217331707215],[9.073852026969746, -5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([8.88907612046749, -3.530982668292785],[9.073852026969746, -3.454445981819767],0.4);
								peri_line_scad([8.635617331707214, -3.2775238795325112],[8.712154018180232, -3.092747973030254],0.4);
							}
						}
						peri_line_scad([8.635617331707214, -3.2775238795325112],[8.712154018180232, -3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([6.604382668292786, -3.2775238795325112],[6.527845981819768, -3.092747973030254],0.4);
								peri_line_scad([6.350923879532511, -3.530982668292785],[6.166147973030253, -3.454445981819767],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U4_2_0(){
	polygon(points = [[6.35, -3.53059998486042], [6.35, -5.56260001513958], [6.603999984860421, -5.816599999999999], [8.63600001513958, -5.816599999999999], [8.89, -5.56260001513958], [8.89, -3.53059998486042], [8.63600001513958, -3.2765999999999997], [6.603999984860421, -3.2765999999999997]]);
}
module hullpoly_U4_2_1(){
	polygon(points = [[6.8999599948525425, -4.866640005147457], [6.8999599948525425, -4.2265599948525425], [6.901886104183664, -4.187353138720718], [6.90764588269125, -4.148523866046091], [6.91718386055966, -4.110446123950758], [6.930408181848028, -4.073486621906507], [6.947191489113201, -4.0380013001221435], [6.967372149931525, -4.004331901644702], [6.990755813507448, -3.9728026811870842], [7.0171172823779235, -3.9437172823779236], [7.046202681187085, -3.9173558135074478], [7.077731901644702, -3.8939721499315243], [7.111401300122144, -3.8737914891132004], [7.146886621906507, -3.8570081818480277], [7.183846123950758, -3.843783860559659], [7.221923866046092, -3.8342458826912504], [7.260753138720719, -3.8284861041836638], [7.299959994852543, -3.8265599948525426], [7.940040005147457, -3.8265599948525426], [7.9792468612792815, -3.8284861041836638], [8.018076133953908, -3.8342458826912504], [8.056153876049242, -3.843783860559659], [8.093113378093493, -3.8570081818480277], [8.128598699877857, -3.8737914891132004], [8.162268098355298, -3.8939721499315243], [8.193797318812916, -3.9173558135074478], [8.222882717622076, -3.9437172823779236], [8.249244186492552, -3.9728026811870842], [8.272627850068476, -4.004331901644702], [8.292808510886799, -4.0380013001221435], [8.309591818151972, -4.073486621906507], [8.322816139440341, -4.110446123950758], [8.33235411730875, -4.148523866046091], [8.338113895816337, -4.187353138720718], [8.340040005147458, -4.2265599948525425], [8.340040005147458, -4.866640005147457], [8.338113895816337, -4.905846861279281], [8.33235411730875, -4.944676133953909], [8.322816139440341, -4.982753876049242], [8.309591818151972, -5.019713378093493], [8.292808510886799, -5.055198699877856], [8.272627850068476, -5.088868098355298], [8.249244186492552, -5.120397318812915], [8.222882717622076, -5.149482717622076], [8.193797318812916, -5.175844186492552], [8.162268098355298, -5.199227850068475], [8.128598699877857, -5.219408510886799], [8.093113378093493, -5.236191818151972], [8.056153876049242, -5.24941613944034], [8.018076133953908, -5.2589541173087495], [7.9792468612792815, -5.264713895816335], [7.940040005147457, -5.266640005147457], [7.299959994852543, -5.266640005147457], [7.260753138720719, -5.264713895816335], [7.221923866046092, -5.2589541173087495], [7.183846123950758, -5.24941613944034], [7.146886621906507, -5.236191818151972], [7.111401300122144, -5.219408510886799], [7.077731901644702, -5.199227850068475], [7.046202681187085, -5.175844186492552], [7.0171172823779235, -5.149482717622076], [6.990755813507448, -5.120397318812915], [6.967372149931525, -5.088868098355298], [6.947191489113201, -5.055198699877856], [6.930408181848028, -5.019713378093493], [6.91718386055966, -4.982753876049242], [6.90764588269125, -4.944676133953909], [6.901886104183664, -4.905846861279281], [6.8999599948525425, -4.866640005147457]]);
}
module fitting_pocket_U4_2(){
	union() {
		translate(v = [179.33, -146.12, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_2_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_2_1();
						}
					}
				}
			}
		}
	}
}
module outline_U4_2(){
	union() {
		hullpoly_U4_2_0();
	}
}
module wiggle_pocket_U4_2(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						outline_U4_2();
					}
				}
			}
		}
	}
}
module perimeter_U4_2(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_2();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_2();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_2();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U4_2(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_2_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_2_0();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_2_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_2_1();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_2();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_2();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness + max_z_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - max_z_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_2();
						}
					}
				}
			}
		}
	}
}
module shape_U4_2_0(){
	union() {
		polygon(points = [[8.636, -5.817], [8.886, -5.567], [8.89, -5.563], [8.89, -3.562], [8.89, -3.531], [8.64, -3.281], [8.636, -3.277], [6.636, -3.277], [6.604, -3.277], [6.35, -3.531], [6.35, -5.563], [6.604, -5.817]]);
	}
}
module keepout_volume_U4_2_0(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_2_0();
					}
				}
			}
		}
	}
}
module shape_U4_2_1(){
	union() {
		polygon(points = [[7.829, -5.205], [7.878, -5.197], [7.925, -5.185], [7.971, -5.169], [8.016, -5.148], [8.058, -5.123], [8.097, -5.094], [8.134, -5.061], [8.167, -5.024], [8.196, -4.985], [8.221, -4.943], [8.242, -4.898], [8.258, -4.852], [8.27, -4.805], [8.278, -4.756], [8.28, -4.707], [8.28, -4.387], [8.278, -4.338], [8.27, -4.289], [8.258, -4.242], [8.242, -4.196], [8.221, -4.151], [8.196, -4.109], [8.167, -4.07], [8.134, -4.033], [8.097, -4.0], [8.058, -3.971], [8.016, -3.946], [7.971, -3.925], [7.925, -3.909], [7.878, -3.897], [7.829, -3.889], [7.78, -3.887], [7.46, -3.887], [7.411, -3.889], [7.362, -3.897], [7.315, -3.909], [7.269, -3.925], [7.224, -3.946], [7.182, -3.971], [7.143, -4.0], [7.106, -4.033], [7.073, -4.07], [7.044, -4.109], [7.019, -4.151], [6.998, -4.196], [6.982, -4.242], [6.97, -4.289], [6.962, -4.338], [6.96, -4.387], [6.96, -4.707], [6.962, -4.756], [6.97, -4.805], [6.982, -4.852], [6.998, -4.898], [7.019, -4.943], [7.044, -4.985], [7.073, -5.024], [7.106, -5.061], [7.143, -5.094], [7.182, -5.123], [7.224, -5.148], [7.269, -5.169], [7.315, -5.185], [7.362, -5.197], [7.411, -5.205], [7.46, -5.207], [7.78, -5.207]]);
	}
}
module keepout_volume_U4_2_1(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_2_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U4_2(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							shape_U4_2_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								shape_U4_2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								shape_U4_2_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U4_2(){
	union() {
		keepout_volume_U4_2_0();
		keepout_volume_U4_2_1();
	}
}
module wiggle_minus_pocket_U4_2(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_2_0();
					}
				}
			}
		}
	}
}
module fitting_cuts_U4_3(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([6.350923879532511, 5.562217331707215],[6.166147973030253, 5.638754018180233],0.4);
						hull() {
							union() {
								peri_line_scad([6.350923879532511, 3.530982668292785],[6.166147973030253, 3.454445981819767],0.4);
								peri_line_scad([6.604382668292786, 3.2775238795325112],[6.527845981819768, 3.092747973030254],0.4);
							}
						}
						peri_line_scad([6.604382668292786, 3.2775238795325112],[6.527845981819768, 3.092747973030254],0.4);
						hull() {
							union() {
								peri_line_scad([8.635617331707214, 3.2775238795325112],[8.712154018180232, 3.092747973030254],0.4);
								peri_line_scad([8.88907612046749, 3.530982668292785],[9.073852026969746, 3.454445981819767],0.4);
							}
						}
						peri_line_scad([8.88907612046749, 3.530982668292785],[9.073852026969746, 3.454445981819767],0.4);
						hull() {
							union() {
								peri_line_scad([8.88907612046749, 5.562217331707215],[9.073852026969746, 5.638754018180233],0.4);
								peri_line_scad([8.635617331707214, 5.815676120467488],[8.712154018180232, 6.000452026969746],0.4);
							}
						}
						peri_line_scad([8.635617331707214, 5.815676120467488],[8.712154018180232, 6.000452026969746],0.4);
						hull() {
							union() {
								peri_line_scad([6.604382668292786, 5.815676120467488],[6.527845981819768, 6.000452026969746],0.4);
								peri_line_scad([6.350923879532511, 5.562217331707215],[6.166147973030253, 5.638754018180233],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_U4_3_0(){
	polygon(points = [[6.35, 5.56260001513958], [6.35, 3.53059998486042], [6.603999984860421, 3.2765999999999997], [8.63600001513958, 3.2765999999999997], [8.89, 3.53059998486042], [8.89, 5.56260001513958], [8.63600001513958, 5.816599999999999], [6.603999984860421, 5.816599999999999]]);
}
module hullpoly_U4_3_1(){
	polygon(points = [[6.8999599948525425, 4.2265599948525425], [6.8999599948525425, 4.866640005147457], [6.901886104183664, 4.905846861279281], [6.90764588269125, 4.944676133953909], [6.91718386055966, 4.982753876049242], [6.930408181848028, 5.019713378093493], [6.947191489113201, 5.055198699877856], [6.967372149931525, 5.088868098355298], [6.990755813507448, 5.120397318812915], [7.0171172823779235, 5.149482717622076], [7.046202681187085, 5.175844186492552], [7.077731901644702, 5.199227850068475], [7.111401300122144, 5.219408510886799], [7.146886621906507, 5.236191818151972], [7.183846123950758, 5.24941613944034], [7.221923866046092, 5.2589541173087495], [7.260753138720719, 5.264713895816335], [7.299959994852543, 5.266640005147457], [7.940040005147457, 5.266640005147457], [7.9792468612792815, 5.264713895816335], [8.018076133953908, 5.2589541173087495], [8.056153876049242, 5.24941613944034], [8.093113378093493, 5.236191818151972], [8.128598699877857, 5.219408510886799], [8.162268098355298, 5.199227850068475], [8.193797318812916, 5.175844186492552], [8.222882717622076, 5.149482717622076], [8.249244186492552, 5.120397318812915], [8.272627850068476, 5.088868098355298], [8.292808510886799, 5.055198699877856], [8.309591818151972, 5.019713378093493], [8.322816139440341, 4.982753876049242], [8.33235411730875, 4.944676133953909], [8.338113895816337, 4.905846861279281], [8.340040005147458, 4.866640005147457], [8.340040005147458, 4.2265599948525425], [8.338113895816337, 4.187353138720718], [8.33235411730875, 4.148523866046091], [8.322816139440341, 4.110446123950758], [8.309591818151972, 4.073486621906507], [8.292808510886799, 4.0380013001221435], [8.272627850068476, 4.004331901644702], [8.249244186492552, 3.9728026811870842], [8.222882717622076, 3.9437172823779236], [8.193797318812916, 3.9173558135074478], [8.162268098355298, 3.8939721499315243], [8.128598699877857, 3.8737914891132004], [8.093113378093493, 3.8570081818480277], [8.056153876049242, 3.843783860559659], [8.018076133953908, 3.8342458826912504], [7.9792468612792815, 3.8284861041836638], [7.940040005147457, 3.8265599948525426], [7.299959994852543, 3.8265599948525426], [7.260753138720719, 3.8284861041836638], [7.221923866046092, 3.8342458826912504], [7.183846123950758, 3.843783860559659], [7.146886621906507, 3.8570081818480277], [7.111401300122144, 3.8737914891132004], [7.077731901644702, 3.8939721499315243], [7.046202681187085, 3.9173558135074478], [7.0171172823779235, 3.9437172823779236], [6.990755813507448, 3.9728026811870842], [6.967372149931525, 4.004331901644702], [6.947191489113201, 4.0380013001221435], [6.930408181848028, 4.073486621906507], [6.91718386055966, 4.110446123950758], [6.90764588269125, 4.148523866046091], [6.901886104183664, 4.187353138720718], [6.8999599948525425, 4.2265599948525425]]);
}
module fitting_pocket_U4_3(){
	union() {
		translate(v = [179.33, -146.12, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_3_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U4) {
						union() {
							hullpoly_U4_3_1();
						}
					}
				}
			}
		}
	}
}
module outline_U4_3(){
	union() {
		hullpoly_U4_3_0();
	}
}
module wiggle_pocket_U4_3(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						outline_U4_3();
					}
				}
			}
		}
	}
}
module perimeter_U4_3(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_3();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_3();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_3();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U4_3(){
	union() {
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_3_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_3_0();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_U4 - max(2.54, Effective_Shell_Clearance_From_PCB_For_U4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								hullpoly_U4_3_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_U4) {
							union() {
								hullpoly_U4_3_1();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								outline_U4_3();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								outline_U4_3();
							}
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (PCB_Thickness + max_z_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - max_z_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							outline_U4_3();
						}
					}
				}
			}
		}
	}
}
module shape_U4_3_0(){
	union() {
		polygon(points = [[8.636, 3.277], [8.886, 3.527], [8.89, 3.531], [8.89, 5.531], [8.89, 5.563], [8.64, 5.813], [8.636, 5.817], [6.636, 5.817], [6.604, 5.817], [6.35, 5.563], [6.35, 5.562], [6.35, 3.531], [6.604, 3.277]]);
	}
}
module keepout_volume_U4_3_0(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_3_0();
					}
				}
			}
		}
	}
}
module shape_U4_3_1(){
	union() {
		polygon(points = [[7.829, 3.889], [7.878, 3.897], [7.925, 3.909], [7.971, 3.925], [8.016, 3.946], [8.058, 3.971], [8.097, 4.0], [8.134, 4.033], [8.167, 4.07], [8.196, 4.109], [8.221, 4.151], [8.242, 4.196], [8.258, 4.242], [8.27, 4.289], [8.278, 4.338], [8.28, 4.387], [8.28, 4.707], [8.278, 4.756], [8.27, 4.805], [8.258, 4.852], [8.242, 4.898], [8.221, 4.943], [8.196, 4.985], [8.167, 5.024], [8.134, 5.061], [8.097, 5.094], [8.058, 5.123], [8.016, 5.148], [7.971, 5.169], [7.925, 5.185], [7.878, 5.197], [7.829, 5.205], [7.78, 5.207], [7.46, 5.207], [7.411, 5.205], [7.362, 5.197], [7.315, 5.185], [7.269, 5.169], [7.224, 5.148], [7.182, 5.123], [7.143, 5.094], [7.106, 5.061], [7.073, 5.024], [7.044, 4.985], [7.019, 4.943], [6.998, 4.898], [6.982, 4.852], [6.97, 4.805], [6.962, 4.756], [6.96, 4.707], [6.96, 4.387], [6.962, 4.338], [6.97, 4.289], [6.982, 4.242], [6.998, 4.196], [7.019, 4.151], [7.044, 4.109], [7.073, 4.07], [7.106, 4.033], [7.143, 4.0], [7.182, 3.971], [7.224, 3.946], [7.269, 3.925], [7.315, 3.909], [7.362, 3.897], [7.411, 3.889], [7.46, 3.887], [7.78, 3.887]]);
	}
}
module keepout_volume_U4_3_1(){
	translate(v = [179.33, -146.12, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_3_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_U4_3(){
	union() {
		translate(v = [179.33, -146.12, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							shape_U4_3_0();
						}
					}
				}
			}
		}
		translate(v = [179.33, -146.12, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_U4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
							union() {
								shape_U4_3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
							union() {
								shape_U4_3_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U4_3(){
	union() {
		keepout_volume_U4_3_0();
		keepout_volume_U4_3_1();
	}
}
module wiggle_minus_pocket_U4_3(){
	translate(v = [179.33, -146.12, min_z_U4]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						shape_U4_3_0();
					}
				}
			}
		}
	}
}
module courtyard_U4(){
	polygon(points = []);
}
module courtyard_pocket_U4(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_U4]) {
			linear_extrude(height = ((max_z_U4 - min_z_U4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U4) {
					union() {
						courtyard_U4();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_U4(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U4)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U4) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
					union() {
						courtyard_U4();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U4)]) {
			linear_extrude(height = Wrapper_Height_For_U4) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4) + Wrapper_Thickness_For_U4)) {
						union() {
							courtyard_U4();
						}
					}
					offset(r = (Effective_Shell_Gap_For_U4 + Effective_Shell_Thickness_For_U4)) {
						union() {
							courtyard_U4();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J12_0(){
	union() {
		translate(v = [133.52, -71.8, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J12))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J12)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([2.8593330119131193, -48.579331497955145],[3.000754368150429, -48.720752854192455],0.4);
						peri_line_scad([2.8593330119131193, 0.3193328983662705],[3.000754368150429, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -48.579331497955145],[-0.46075425460358, -48.720752854192455],0.4);
					}
				}
			}
		}
		translate(v = [133.52, -71.8, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([2.8590401186943057, -45.58003860473633],[(2.8590401186943057 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 1.0)), (-45.58003860473633 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
								peri_line_scad([2.8590401186943057, -2.6799599948525454],[(2.8590401186943057 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 1.0)), (-2.6799599948525454 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -45.58003860473633],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * -1.0)), (-45.58003860473633 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J12))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J12)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
						hull() {
							union() {
								peri_line_scad([-1.2690761200968321, -49.275616348529375],[-1.4538521007304213, -49.35215285603328],0.4);
								peri_line_scad([-1.0156173308123695, -49.52907612083815],[-1.0921541962544274, -49.7138519532089],0.4);
							}
						}
						peri_line_scad([-1.0156173308123695, -49.52907612083815],[-1.0921541962544274, -49.7138519532089],0.4);
						hull() {
							union() {
								peri_line_scad([3.555617255183305, -49.529076120809634],[3.6321541068584917, -49.71385195888283],0.4);
								peri_line_scad([3.809076120125344, -49.27561634846054],[3.993852095056519, -49.35215286973133],0.4);
							}
						}
						peri_line_scad([3.809076120125344, -49.27561634846054],[3.993852095056519, -49.35215286973133],0.4);
						hull() {
							union() {
								peri_line_scad([3.809076120496001, 1.0156173316383803],[3.993852021295831, 1.0921540318782748],0.4);
								peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
							}
						}
						peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
						hull() {
							union() {
								peri_line_scad([-1.0156173317072148, 1.2690761204674887],[-1.0921540181802327, 1.4538520269697461],0.4);
								peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -46.275999031066895],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * -1.0)), (-46.275999031066895 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([3.809, -46.275999031066895],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 1.0)), (-46.275999031066895 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
								peri_line_scad([3.809, -1.983999984860418],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 1.0)), (-1.983999984860418 + (((0.01 + Effective_Shell_Thickness_For_J12) + Effective_Shell_Gap_For_J12) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J12_0_0(){
	polygon(points = [[-1.27, 1.0160000151395798], [-1.27, -49.275999031066895], [-1.0160000151395798, -49.53], [3.555999939441681, -49.53], [3.81, -49.275999031066895], [3.81, 1.0160000151395798], [3.555999939441681, 1.27], [-1.0160000151395798, 1.27]]);
}
module hullpoly_J12_0_1(){
	polygon(points = [[2.8600401186943056, -48.58003860473633], [2.8600401186943056, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -48.58003860473633]]);
}
module fitting_pocket_J12_0(){
	union() {
		translate(v = [133.52, -71.8, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J12) {
						union() {
							hullpoly_J12_0_0();
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J12) {
						union() {
							hullpoly_J12_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J12_0(){
	union() {
		hullpoly_J12_0_0();
	}
}
module wiggle_pocket_J12_0(){
	translate(v = [133.52, -71.8, min_z_J12]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J12 - min_z_J12) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J12) {
					union() {
						outline_J12_0();
					}
				}
			}
		}
	}
}
module perimeter_J12_0(){
	union() {
		translate(v = [133.52, -71.8, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J12)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J12) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
						union() {
							outline_J12_0();
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J12)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J12) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12) + Wrapper_Thickness_For_J12)) {
							union() {
								outline_J12_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
							union() {
								outline_J12_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J12_0(){
	union() {
		translate(v = [133.52, -71.8, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J12)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J12 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J12)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
							union() {
								hullpoly_J12_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J12) {
							union() {
								hullpoly_J12_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J12)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J12 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J12)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
							union() {
								hullpoly_J12_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J12) {
							union() {
								hullpoly_J12_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J12)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J12) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12) + Wrapper_Thickness_For_J12)) {
							union() {
								outline_J12_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
							union() {
								outline_J12_0();
							}
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, (PCB_Thickness + max_z_J12)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J12) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
						union() {
							outline_J12_0();
						}
					}
				}
			}
		}
	}
}
module shape_J12_0_0(){
	union() {
		polygon(points = [[3.556, -49.53], [3.806, -49.28], [3.81, -49.276], [3.81, -47.276], [3.81, -47.244], [3.56, -46.994], [3.556, -46.99], [3.806, -46.74], [3.81, -46.736], [3.81, -44.736], [3.81, -44.704], [3.56, -44.454], [3.556, -44.45], [3.806, -44.2], [3.81, -44.196], [3.81, -42.196], [3.81, -42.164], [3.56, -41.914], [3.556, -41.91], [3.806, -41.66], [3.81, -41.656], [3.81, -39.656], [3.81, -39.624], [3.56, -39.374], [3.556, -39.37], [3.806, -39.12], [3.81, -39.116], [3.81, -37.116], [3.81, -37.084], [3.56, -36.834], [3.556, -36.83], [3.806, -36.58], [3.81, -36.576], [3.81, -34.576], [3.81, -34.544], [3.56, -34.294], [3.556, -34.29], [3.806, -34.04], [3.81, -34.036], [3.81, -32.036], [3.81, -32.004], [3.56, -31.754], [3.556, -31.75], [3.806, -31.5], [3.81, -31.496], [3.81, -29.496], [3.81, -29.464], [3.56, -29.214], [3.556, -29.21], [3.806, -28.96], [3.81, -28.956], [3.81, -26.956], [3.81, -26.924], [3.56, -26.674], [3.556, -26.67], [3.806, -26.42], [3.81, -26.416], [3.81, -24.416], [3.81, -24.384], [3.56, -24.134], [3.556, -24.13], [3.806, -23.88], [3.81, -23.876], [3.81, -21.876], [3.81, -21.844], [3.56, -21.594], [3.556, -21.59], [3.806, -21.34], [3.81, -21.336], [3.81, -19.336], [3.81, -19.304], [3.56, -19.054], [3.556, -19.05], [3.806, -18.8], [3.81, -18.796], [3.81, -16.796], [3.81, -16.764], [3.56, -16.514], [3.556, -16.51], [3.806, -16.26], [3.81, -16.256], [3.81, -14.256], [3.81, -14.224], [3.56, -13.974], [3.556, -13.97], [3.806, -13.72], [3.81, -13.716], [3.81, -11.716], [3.81, -11.684], [3.56, -11.434], [3.556, -11.43], [3.806, -11.18], [3.81, -11.176], [3.81, -9.176], [3.81, -9.144], [3.56, -8.894], [3.556, -8.89], [3.806, -8.64], [3.81, -8.636], [3.81, -6.636], [3.81, -6.604], [3.56, -6.354], [3.556, -6.35], [3.806, -6.1], [3.81, -6.096], [3.81, -4.096], [3.81, -4.064], [3.56, -3.814], [3.556, -3.81], [3.806, -3.56], [3.81, -3.556], [3.81, -1.556], [3.81, -1.524], [3.56, -1.274], [3.556, -1.27], [3.806, -1.02], [3.81, -1.016], [3.81, 0.984], [3.81, 1.016], [3.56, 1.266], [3.556, 1.27], [-0.945, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43], [-1.27, -11.684], [-1.27, -13.716], [-1.016, -13.97], [-1.27, -14.224], [-1.27, -16.256], [-1.016, -16.51], [-1.27, -16.764], [-1.27, -18.796], [-1.016, -19.05], [-1.27, -19.304], [-1.27, -21.336], [-1.016, -21.59], [-1.27, -21.844], [-1.27, -23.876], [-1.016, -24.13], [-1.27, -24.384], [-1.27, -26.416], [-1.016, -26.67], [-1.27, -26.924], [-1.27, -28.956], [-1.016, -29.21], [-1.27, -29.464], [-1.27, -31.496], [-1.016, -31.75], [-1.27, -32.004], [-1.27, -34.036], [-1.016, -34.29], [-1.27, -34.544], [-1.27, -36.576], [-1.016, -36.83], [-1.27, -37.084], [-1.27, -39.116], [-1.016, -39.37], [-1.27, -39.624], [-1.27, -41.656], [-1.016, -41.91], [-1.27, -42.164], [-1.27, -44.196], [-1.016, -44.45], [-1.27, -44.704], [-1.27, -46.736], [-1.016, -46.99], [-1.27, -47.244], [-1.27, -49.276], [-1.016, -49.53], [-1.015, -49.53]]);
	}
}
module keepout_volume_J12_0_0(){
	translate(v = [133.52, -71.8, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J12) {
					union() {
						shape_J12_0_0();
					}
				}
			}
		}
	}
}
module shape_J12_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[2.749, -0.658], [2.798, -0.65], [2.845, -0.638], [2.891, -0.622], [2.936, -0.601], [2.978, -0.576], [3.017, -0.547], [3.054, -0.514], [3.087, -0.477], [3.116, -0.438], [3.141, -0.396], [3.162, -0.351], [3.178, -0.305], [3.19, -0.258], [3.198, -0.209], [3.2, -0.16], [3.2, 0.16], [3.198, 0.209], [3.19, 0.258], [3.178, 0.305], [3.162, 0.351], [3.141, 0.396], [3.116, 0.438], [3.087, 0.477], [3.054, 0.514], [3.017, 0.547], [2.978, 0.576], [2.936, 0.601], [2.891, 0.622], [2.845, 0.638], [2.798, 0.65], [2.749, 0.658], [2.7, 0.66], [2.38, 0.66], [2.331, 0.658], [2.282, 0.65], [2.235, 0.638], [2.189, 0.622], [2.144, 0.601], [2.102, 0.576], [2.063, 0.547], [2.026, 0.514], [1.993, 0.477], [1.964, 0.438], [1.939, 0.396], [1.918, 0.351], [1.902, 0.305], [1.89, 0.258], [1.882, 0.209], [1.88, 0.16], [1.88, -0.16], [1.882, -0.209], [1.89, -0.258], [1.902, -0.305], [1.918, -0.351], [1.939, -0.396], [1.964, -0.438], [1.993, -0.477], [2.026, -0.514], [2.063, -0.547], [2.102, -0.576], [2.144, -0.601], [2.189, -0.622], [2.235, -0.638], [2.282, -0.65], [2.331, -0.658], [2.38, -0.66], [2.7, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[2.749, -3.198], [2.798, -3.19], [2.845, -3.178], [2.891, -3.162], [2.936, -3.141], [2.978, -3.116], [3.017, -3.087], [3.054, -3.054], [3.087, -3.017], [3.116, -2.978], [3.141, -2.936], [3.162, -2.891], [3.178, -2.845], [3.19, -2.798], [3.198, -2.749], [3.2, -2.7], [3.2, -2.38], [3.198, -2.331], [3.19, -2.282], [3.178, -2.235], [3.162, -2.189], [3.141, -2.144], [3.116, -2.102], [3.087, -2.063], [3.054, -2.026], [3.017, -1.993], [2.978, -1.964], [2.936, -1.939], [2.891, -1.918], [2.845, -1.902], [2.798, -1.89], [2.749, -1.882], [2.7, -1.88], [2.38, -1.88], [2.331, -1.882], [2.282, -1.89], [2.235, -1.902], [2.189, -1.918], [2.144, -1.939], [2.102, -1.964], [2.063, -1.993], [2.026, -2.026], [1.993, -2.063], [1.964, -2.102], [1.939, -2.144], [1.918, -2.189], [1.902, -2.235], [1.89, -2.282], [1.882, -2.331], [1.88, -2.38], [1.88, -2.7], [1.882, -2.749], [1.89, -2.798], [1.902, -2.845], [1.918, -2.891], [1.939, -2.936], [1.964, -2.978], [1.993, -3.017], [2.026, -3.054], [2.063, -3.087], [2.102, -3.116], [2.144, -3.141], [2.189, -3.162], [2.235, -3.178], [2.282, -3.19], [2.331, -3.198], [2.38, -3.2], [2.7, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[2.749, -5.738], [2.798, -5.73], [2.845, -5.718], [2.891, -5.702], [2.936, -5.681], [2.978, -5.656], [3.017, -5.627], [3.054, -5.594], [3.087, -5.557], [3.116, -5.518], [3.141, -5.476], [3.162, -5.431], [3.178, -5.385], [3.19, -5.338], [3.198, -5.289], [3.2, -5.24], [3.2, -4.92], [3.198, -4.871], [3.19, -4.822], [3.178, -4.775], [3.162, -4.729], [3.141, -4.684], [3.116, -4.642], [3.087, -4.603], [3.054, -4.566], [3.017, -4.533], [2.978, -4.504], [2.936, -4.479], [2.891, -4.458], [2.845, -4.442], [2.798, -4.43], [2.749, -4.422], [2.7, -4.42], [2.38, -4.42], [2.331, -4.422], [2.282, -4.43], [2.235, -4.442], [2.189, -4.458], [2.144, -4.479], [2.102, -4.504], [2.063, -4.533], [2.026, -4.566], [1.993, -4.603], [1.964, -4.642], [1.939, -4.684], [1.918, -4.729], [1.902, -4.775], [1.89, -4.822], [1.882, -4.871], [1.88, -4.92], [1.88, -5.24], [1.882, -5.289], [1.89, -5.338], [1.902, -5.385], [1.918, -5.431], [1.939, -5.476], [1.964, -5.518], [1.993, -5.557], [2.026, -5.594], [2.063, -5.627], [2.102, -5.656], [2.144, -5.681], [2.189, -5.702], [2.235, -5.718], [2.282, -5.73], [2.331, -5.738], [2.38, -5.74], [2.7, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[2.749, -8.278], [2.798, -8.27], [2.845, -8.258], [2.891, -8.242], [2.936, -8.221], [2.978, -8.196], [3.017, -8.167], [3.054, -8.134], [3.087, -8.097], [3.116, -8.058], [3.141, -8.016], [3.162, -7.971], [3.178, -7.925], [3.19, -7.878], [3.198, -7.829], [3.2, -7.78], [3.2, -7.46], [3.198, -7.411], [3.19, -7.362], [3.178, -7.315], [3.162, -7.269], [3.141, -7.224], [3.116, -7.182], [3.087, -7.143], [3.054, -7.106], [3.017, -7.073], [2.978, -7.044], [2.936, -7.019], [2.891, -6.998], [2.845, -6.982], [2.798, -6.97], [2.749, -6.962], [2.7, -6.96], [2.38, -6.96], [2.331, -6.962], [2.282, -6.97], [2.235, -6.982], [2.189, -6.998], [2.144, -7.019], [2.102, -7.044], [2.063, -7.073], [2.026, -7.106], [1.993, -7.143], [1.964, -7.182], [1.939, -7.224], [1.918, -7.269], [1.902, -7.315], [1.89, -7.362], [1.882, -7.411], [1.88, -7.46], [1.88, -7.78], [1.882, -7.829], [1.89, -7.878], [1.902, -7.925], [1.918, -7.971], [1.939, -8.016], [1.964, -8.058], [1.993, -8.097], [2.026, -8.134], [2.063, -8.167], [2.102, -8.196], [2.144, -8.221], [2.189, -8.242], [2.235, -8.258], [2.282, -8.27], [2.331, -8.278], [2.38, -8.28], [2.7, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
		polygon(points = [[2.749, -10.818], [2.798, -10.81], [2.845, -10.798], [2.891, -10.782], [2.936, -10.761], [2.978, -10.736], [3.017, -10.707], [3.054, -10.674], [3.087, -10.637], [3.116, -10.598], [3.141, -10.556], [3.162, -10.511], [3.178, -10.465], [3.19, -10.418], [3.198, -10.369], [3.2, -10.32], [3.2, -10.0], [3.198, -9.951], [3.19, -9.902], [3.178, -9.855], [3.162, -9.809], [3.141, -9.764], [3.116, -9.722], [3.087, -9.683], [3.054, -9.646], [3.017, -9.613], [2.978, -9.584], [2.936, -9.559], [2.891, -9.538], [2.845, -9.522], [2.798, -9.51], [2.749, -9.502], [2.7, -9.5], [2.38, -9.5], [2.331, -9.502], [2.282, -9.51], [2.235, -9.522], [2.189, -9.538], [2.144, -9.559], [2.102, -9.584], [2.063, -9.613], [2.026, -9.646], [1.993, -9.683], [1.964, -9.722], [1.939, -9.764], [1.918, -9.809], [1.902, -9.855], [1.89, -9.902], [1.882, -9.951], [1.88, -10.0], [1.88, -10.32], [1.882, -10.369], [1.89, -10.418], [1.902, -10.465], [1.918, -10.511], [1.939, -10.556], [1.964, -10.598], [1.993, -10.637], [2.026, -10.674], [2.063, -10.707], [2.102, -10.736], [2.144, -10.761], [2.189, -10.782], [2.235, -10.798], [2.282, -10.81], [2.331, -10.818], [2.38, -10.82], [2.7, -10.82]]);
		polygon(points = [[0.209, -13.358], [0.258, -13.35], [0.305, -13.338], [0.351, -13.322], [0.396, -13.301], [0.438, -13.276], [0.477, -13.247], [0.514, -13.214], [0.547, -13.177], [0.576, -13.138], [0.601, -13.096], [0.622, -13.051], [0.638, -13.005], [0.65, -12.958], [0.658, -12.909], [0.66, -12.86], [0.66, -12.54], [0.658, -12.491], [0.65, -12.442], [0.638, -12.395], [0.622, -12.349], [0.601, -12.304], [0.576, -12.262], [0.547, -12.223], [0.514, -12.186], [0.477, -12.153], [0.438, -12.124], [0.396, -12.099], [0.351, -12.078], [0.305, -12.062], [0.258, -12.05], [0.209, -12.042], [0.16, -12.04], [-0.16, -12.04], [-0.209, -12.042], [-0.258, -12.05], [-0.305, -12.062], [-0.351, -12.078], [-0.396, -12.099], [-0.438, -12.124], [-0.477, -12.153], [-0.514, -12.186], [-0.547, -12.223], [-0.576, -12.262], [-0.601, -12.304], [-0.622, -12.349], [-0.638, -12.395], [-0.65, -12.442], [-0.658, -12.491], [-0.66, -12.54], [-0.66, -12.86], [-0.658, -12.909], [-0.65, -12.958], [-0.638, -13.005], [-0.622, -13.051], [-0.601, -13.096], [-0.576, -13.138], [-0.547, -13.177], [-0.514, -13.214], [-0.477, -13.247], [-0.438, -13.276], [-0.396, -13.301], [-0.351, -13.322], [-0.305, -13.338], [-0.258, -13.35], [-0.209, -13.358], [-0.16, -13.36], [0.16, -13.36]]);
		polygon(points = [[2.749, -13.358], [2.798, -13.35], [2.845, -13.338], [2.891, -13.322], [2.936, -13.301], [2.978, -13.276], [3.017, -13.247], [3.054, -13.214], [3.087, -13.177], [3.116, -13.138], [3.141, -13.096], [3.162, -13.051], [3.178, -13.005], [3.19, -12.958], [3.198, -12.909], [3.2, -12.86], [3.2, -12.54], [3.198, -12.491], [3.19, -12.442], [3.178, -12.395], [3.162, -12.349], [3.141, -12.304], [3.116, -12.262], [3.087, -12.223], [3.054, -12.186], [3.017, -12.153], [2.978, -12.124], [2.936, -12.099], [2.891, -12.078], [2.845, -12.062], [2.798, -12.05], [2.749, -12.042], [2.7, -12.04], [2.38, -12.04], [2.331, -12.042], [2.282, -12.05], [2.235, -12.062], [2.189, -12.078], [2.144, -12.099], [2.102, -12.124], [2.063, -12.153], [2.026, -12.186], [1.993, -12.223], [1.964, -12.262], [1.939, -12.304], [1.918, -12.349], [1.902, -12.395], [1.89, -12.442], [1.882, -12.491], [1.88, -12.54], [1.88, -12.86], [1.882, -12.909], [1.89, -12.958], [1.902, -13.005], [1.918, -13.051], [1.939, -13.096], [1.964, -13.138], [1.993, -13.177], [2.026, -13.214], [2.063, -13.247], [2.102, -13.276], [2.144, -13.301], [2.189, -13.322], [2.235, -13.338], [2.282, -13.35], [2.331, -13.358], [2.38, -13.36], [2.7, -13.36]]);
		polygon(points = [[0.209, -15.898], [0.258, -15.89], [0.305, -15.878], [0.351, -15.862], [0.396, -15.841], [0.438, -15.816], [0.477, -15.787], [0.514, -15.754], [0.547, -15.717], [0.576, -15.678], [0.601, -15.636], [0.622, -15.591], [0.638, -15.545], [0.65, -15.498], [0.658, -15.449], [0.66, -15.4], [0.66, -15.08], [0.658, -15.031], [0.65, -14.982], [0.638, -14.935], [0.622, -14.889], [0.601, -14.844], [0.576, -14.802], [0.547, -14.763], [0.514, -14.726], [0.477, -14.693], [0.438, -14.664], [0.396, -14.639], [0.351, -14.618], [0.305, -14.602], [0.258, -14.59], [0.209, -14.582], [0.16, -14.58], [-0.16, -14.58], [-0.209, -14.582], [-0.258, -14.59], [-0.305, -14.602], [-0.351, -14.618], [-0.396, -14.639], [-0.438, -14.664], [-0.477, -14.693], [-0.514, -14.726], [-0.547, -14.763], [-0.576, -14.802], [-0.601, -14.844], [-0.622, -14.889], [-0.638, -14.935], [-0.65, -14.982], [-0.658, -15.031], [-0.66, -15.08], [-0.66, -15.4], [-0.658, -15.449], [-0.65, -15.498], [-0.638, -15.545], [-0.622, -15.591], [-0.601, -15.636], [-0.576, -15.678], [-0.547, -15.717], [-0.514, -15.754], [-0.477, -15.787], [-0.438, -15.816], [-0.396, -15.841], [-0.351, -15.862], [-0.305, -15.878], [-0.258, -15.89], [-0.209, -15.898], [-0.16, -15.9], [0.16, -15.9]]);
		polygon(points = [[2.749, -15.898], [2.798, -15.89], [2.845, -15.878], [2.891, -15.862], [2.936, -15.841], [2.978, -15.816], [3.017, -15.787], [3.054, -15.754], [3.087, -15.717], [3.116, -15.678], [3.141, -15.636], [3.162, -15.591], [3.178, -15.545], [3.19, -15.498], [3.198, -15.449], [3.2, -15.4], [3.2, -15.08], [3.198, -15.031], [3.19, -14.982], [3.178, -14.935], [3.162, -14.889], [3.141, -14.844], [3.116, -14.802], [3.087, -14.763], [3.054, -14.726], [3.017, -14.693], [2.978, -14.664], [2.936, -14.639], [2.891, -14.618], [2.845, -14.602], [2.798, -14.59], [2.749, -14.582], [2.7, -14.58], [2.38, -14.58], [2.331, -14.582], [2.282, -14.59], [2.235, -14.602], [2.189, -14.618], [2.144, -14.639], [2.102, -14.664], [2.063, -14.693], [2.026, -14.726], [1.993, -14.763], [1.964, -14.802], [1.939, -14.844], [1.918, -14.889], [1.902, -14.935], [1.89, -14.982], [1.882, -15.031], [1.88, -15.08], [1.88, -15.4], [1.882, -15.449], [1.89, -15.498], [1.902, -15.545], [1.918, -15.591], [1.939, -15.636], [1.964, -15.678], [1.993, -15.717], [2.026, -15.754], [2.063, -15.787], [2.102, -15.816], [2.144, -15.841], [2.189, -15.862], [2.235, -15.878], [2.282, -15.89], [2.331, -15.898], [2.38, -15.9], [2.7, -15.9]]);
		polygon(points = [[0.209, -18.438], [0.258, -18.43], [0.305, -18.418], [0.351, -18.402], [0.396, -18.381], [0.438, -18.356], [0.477, -18.327], [0.514, -18.294], [0.547, -18.257], [0.576, -18.218], [0.601, -18.176], [0.622, -18.131], [0.638, -18.085], [0.65, -18.038], [0.658, -17.989], [0.66, -17.94], [0.66, -17.62], [0.658, -17.571], [0.65, -17.522], [0.638, -17.475], [0.622, -17.429], [0.601, -17.384], [0.576, -17.342], [0.547, -17.303], [0.514, -17.266], [0.477, -17.233], [0.438, -17.204], [0.396, -17.179], [0.351, -17.158], [0.305, -17.142], [0.258, -17.13], [0.209, -17.122], [0.16, -17.12], [-0.16, -17.12], [-0.209, -17.122], [-0.258, -17.13], [-0.305, -17.142], [-0.351, -17.158], [-0.396, -17.179], [-0.438, -17.204], [-0.477, -17.233], [-0.514, -17.266], [-0.547, -17.303], [-0.576, -17.342], [-0.601, -17.384], [-0.622, -17.429], [-0.638, -17.475], [-0.65, -17.522], [-0.658, -17.571], [-0.66, -17.62], [-0.66, -17.94], [-0.658, -17.989], [-0.65, -18.038], [-0.638, -18.085], [-0.622, -18.131], [-0.601, -18.176], [-0.576, -18.218], [-0.547, -18.257], [-0.514, -18.294], [-0.477, -18.327], [-0.438, -18.356], [-0.396, -18.381], [-0.351, -18.402], [-0.305, -18.418], [-0.258, -18.43], [-0.209, -18.438], [-0.16, -18.44], [0.16, -18.44]]);
		polygon(points = [[2.749, -18.438], [2.798, -18.43], [2.845, -18.418], [2.891, -18.402], [2.936, -18.381], [2.978, -18.356], [3.017, -18.327], [3.054, -18.294], [3.087, -18.257], [3.116, -18.218], [3.141, -18.176], [3.162, -18.131], [3.178, -18.085], [3.19, -18.038], [3.198, -17.989], [3.2, -17.94], [3.2, -17.62], [3.198, -17.571], [3.19, -17.522], [3.178, -17.475], [3.162, -17.429], [3.141, -17.384], [3.116, -17.342], [3.087, -17.303], [3.054, -17.266], [3.017, -17.233], [2.978, -17.204], [2.936, -17.179], [2.891, -17.158], [2.845, -17.142], [2.798, -17.13], [2.749, -17.122], [2.7, -17.12], [2.38, -17.12], [2.331, -17.122], [2.282, -17.13], [2.235, -17.142], [2.189, -17.158], [2.144, -17.179], [2.102, -17.204], [2.063, -17.233], [2.026, -17.266], [1.993, -17.303], [1.964, -17.342], [1.939, -17.384], [1.918, -17.429], [1.902, -17.475], [1.89, -17.522], [1.882, -17.571], [1.88, -17.62], [1.88, -17.94], [1.882, -17.989], [1.89, -18.038], [1.902, -18.085], [1.918, -18.131], [1.939, -18.176], [1.964, -18.218], [1.993, -18.257], [2.026, -18.294], [2.063, -18.327], [2.102, -18.356], [2.144, -18.381], [2.189, -18.402], [2.235, -18.418], [2.282, -18.43], [2.331, -18.438], [2.38, -18.44], [2.7, -18.44]]);
		polygon(points = [[0.209, -20.978], [0.258, -20.97], [0.305, -20.958], [0.351, -20.942], [0.396, -20.921], [0.438, -20.896], [0.477, -20.867], [0.514, -20.834], [0.547, -20.797], [0.576, -20.758], [0.601, -20.716], [0.622, -20.671], [0.638, -20.625], [0.65, -20.578], [0.658, -20.529], [0.66, -20.48], [0.66, -20.16], [0.658, -20.111], [0.65, -20.062], [0.638, -20.015], [0.622, -19.969], [0.601, -19.924], [0.576, -19.882], [0.547, -19.843], [0.514, -19.806], [0.477, -19.773], [0.438, -19.744], [0.396, -19.719], [0.351, -19.698], [0.305, -19.682], [0.258, -19.67], [0.209, -19.662], [0.16, -19.66], [-0.16, -19.66], [-0.209, -19.662], [-0.258, -19.67], [-0.305, -19.682], [-0.351, -19.698], [-0.396, -19.719], [-0.438, -19.744], [-0.477, -19.773], [-0.514, -19.806], [-0.547, -19.843], [-0.576, -19.882], [-0.601, -19.924], [-0.622, -19.969], [-0.638, -20.015], [-0.65, -20.062], [-0.658, -20.111], [-0.66, -20.16], [-0.66, -20.48], [-0.658, -20.529], [-0.65, -20.578], [-0.638, -20.625], [-0.622, -20.671], [-0.601, -20.716], [-0.576, -20.758], [-0.547, -20.797], [-0.514, -20.834], [-0.477, -20.867], [-0.438, -20.896], [-0.396, -20.921], [-0.351, -20.942], [-0.305, -20.958], [-0.258, -20.97], [-0.209, -20.978], [-0.16, -20.98], [0.16, -20.98]]);
		polygon(points = [[2.749, -20.978], [2.798, -20.97], [2.845, -20.958], [2.891, -20.942], [2.936, -20.921], [2.978, -20.896], [3.017, -20.867], [3.054, -20.834], [3.087, -20.797], [3.116, -20.758], [3.141, -20.716], [3.162, -20.671], [3.178, -20.625], [3.19, -20.578], [3.198, -20.529], [3.2, -20.48], [3.2, -20.16], [3.198, -20.111], [3.19, -20.062], [3.178, -20.015], [3.162, -19.969], [3.141, -19.924], [3.116, -19.882], [3.087, -19.843], [3.054, -19.806], [3.017, -19.773], [2.978, -19.744], [2.936, -19.719], [2.891, -19.698], [2.845, -19.682], [2.798, -19.67], [2.749, -19.662], [2.7, -19.66], [2.38, -19.66], [2.331, -19.662], [2.282, -19.67], [2.235, -19.682], [2.189, -19.698], [2.144, -19.719], [2.102, -19.744], [2.063, -19.773], [2.026, -19.806], [1.993, -19.843], [1.964, -19.882], [1.939, -19.924], [1.918, -19.969], [1.902, -20.015], [1.89, -20.062], [1.882, -20.111], [1.88, -20.16], [1.88, -20.48], [1.882, -20.529], [1.89, -20.578], [1.902, -20.625], [1.918, -20.671], [1.939, -20.716], [1.964, -20.758], [1.993, -20.797], [2.026, -20.834], [2.063, -20.867], [2.102, -20.896], [2.144, -20.921], [2.189, -20.942], [2.235, -20.958], [2.282, -20.97], [2.331, -20.978], [2.38, -20.98], [2.7, -20.98]]);
		polygon(points = [[0.209, -23.518], [0.258, -23.51], [0.305, -23.498], [0.351, -23.482], [0.396, -23.461], [0.438, -23.436], [0.477, -23.407], [0.514, -23.374], [0.547, -23.337], [0.576, -23.298], [0.601, -23.256], [0.622, -23.211], [0.638, -23.165], [0.65, -23.118], [0.658, -23.069], [0.66, -23.02], [0.66, -22.7], [0.658, -22.651], [0.65, -22.602], [0.638, -22.555], [0.622, -22.509], [0.601, -22.464], [0.576, -22.422], [0.547, -22.383], [0.514, -22.346], [0.477, -22.313], [0.438, -22.284], [0.396, -22.259], [0.351, -22.238], [0.305, -22.222], [0.258, -22.21], [0.209, -22.202], [0.16, -22.2], [-0.16, -22.2], [-0.209, -22.202], [-0.258, -22.21], [-0.305, -22.222], [-0.351, -22.238], [-0.396, -22.259], [-0.438, -22.284], [-0.477, -22.313], [-0.514, -22.346], [-0.547, -22.383], [-0.576, -22.422], [-0.601, -22.464], [-0.622, -22.509], [-0.638, -22.555], [-0.65, -22.602], [-0.658, -22.651], [-0.66, -22.7], [-0.66, -23.02], [-0.658, -23.069], [-0.65, -23.118], [-0.638, -23.165], [-0.622, -23.211], [-0.601, -23.256], [-0.576, -23.298], [-0.547, -23.337], [-0.514, -23.374], [-0.477, -23.407], [-0.438, -23.436], [-0.396, -23.461], [-0.351, -23.482], [-0.305, -23.498], [-0.258, -23.51], [-0.209, -23.518], [-0.16, -23.52], [0.16, -23.52]]);
		polygon(points = [[2.749, -23.518], [2.798, -23.51], [2.845, -23.498], [2.891, -23.482], [2.936, -23.461], [2.978, -23.436], [3.017, -23.407], [3.054, -23.374], [3.087, -23.337], [3.116, -23.298], [3.141, -23.256], [3.162, -23.211], [3.178, -23.165], [3.19, -23.118], [3.198, -23.069], [3.2, -23.02], [3.2, -22.7], [3.198, -22.651], [3.19, -22.602], [3.178, -22.555], [3.162, -22.509], [3.141, -22.464], [3.116, -22.422], [3.087, -22.383], [3.054, -22.346], [3.017, -22.313], [2.978, -22.284], [2.936, -22.259], [2.891, -22.238], [2.845, -22.222], [2.798, -22.21], [2.749, -22.202], [2.7, -22.2], [2.38, -22.2], [2.331, -22.202], [2.282, -22.21], [2.235, -22.222], [2.189, -22.238], [2.144, -22.259], [2.102, -22.284], [2.063, -22.313], [2.026, -22.346], [1.993, -22.383], [1.964, -22.422], [1.939, -22.464], [1.918, -22.509], [1.902, -22.555], [1.89, -22.602], [1.882, -22.651], [1.88, -22.7], [1.88, -23.02], [1.882, -23.069], [1.89, -23.118], [1.902, -23.165], [1.918, -23.211], [1.939, -23.256], [1.964, -23.298], [1.993, -23.337], [2.026, -23.374], [2.063, -23.407], [2.102, -23.436], [2.144, -23.461], [2.189, -23.482], [2.235, -23.498], [2.282, -23.51], [2.331, -23.518], [2.38, -23.52], [2.7, -23.52]]);
		polygon(points = [[0.209, -26.058], [0.258, -26.05], [0.305, -26.038], [0.351, -26.022], [0.396, -26.001], [0.438, -25.976], [0.477, -25.947], [0.514, -25.914], [0.547, -25.877], [0.576, -25.838], [0.601, -25.796], [0.622, -25.751], [0.638, -25.705], [0.65, -25.658], [0.658, -25.609], [0.66, -25.56], [0.66, -25.24], [0.658, -25.191], [0.65, -25.142], [0.638, -25.095], [0.622, -25.049], [0.601, -25.004], [0.576, -24.962], [0.547, -24.923], [0.514, -24.886], [0.477, -24.853], [0.438, -24.824], [0.396, -24.799], [0.351, -24.778], [0.305, -24.762], [0.258, -24.75], [0.209, -24.742], [0.16, -24.74], [-0.16, -24.74], [-0.209, -24.742], [-0.258, -24.75], [-0.305, -24.762], [-0.351, -24.778], [-0.396, -24.799], [-0.438, -24.824], [-0.477, -24.853], [-0.514, -24.886], [-0.547, -24.923], [-0.576, -24.962], [-0.601, -25.004], [-0.622, -25.049], [-0.638, -25.095], [-0.65, -25.142], [-0.658, -25.191], [-0.66, -25.24], [-0.66, -25.56], [-0.658, -25.609], [-0.65, -25.658], [-0.638, -25.705], [-0.622, -25.751], [-0.601, -25.796], [-0.576, -25.838], [-0.547, -25.877], [-0.514, -25.914], [-0.477, -25.947], [-0.438, -25.976], [-0.396, -26.001], [-0.351, -26.022], [-0.305, -26.038], [-0.258, -26.05], [-0.209, -26.058], [-0.16, -26.06], [0.16, -26.06]]);
		polygon(points = [[2.749, -26.058], [2.798, -26.05], [2.845, -26.038], [2.891, -26.022], [2.936, -26.001], [2.978, -25.976], [3.017, -25.947], [3.054, -25.914], [3.087, -25.877], [3.116, -25.838], [3.141, -25.796], [3.162, -25.751], [3.178, -25.705], [3.19, -25.658], [3.198, -25.609], [3.2, -25.56], [3.2, -25.24], [3.198, -25.191], [3.19, -25.142], [3.178, -25.095], [3.162, -25.049], [3.141, -25.004], [3.116, -24.962], [3.087, -24.923], [3.054, -24.886], [3.017, -24.853], [2.978, -24.824], [2.936, -24.799], [2.891, -24.778], [2.845, -24.762], [2.798, -24.75], [2.749, -24.742], [2.7, -24.74], [2.38, -24.74], [2.331, -24.742], [2.282, -24.75], [2.235, -24.762], [2.189, -24.778], [2.144, -24.799], [2.102, -24.824], [2.063, -24.853], [2.026, -24.886], [1.993, -24.923], [1.964, -24.962], [1.939, -25.004], [1.918, -25.049], [1.902, -25.095], [1.89, -25.142], [1.882, -25.191], [1.88, -25.24], [1.88, -25.56], [1.882, -25.609], [1.89, -25.658], [1.902, -25.705], [1.918, -25.751], [1.939, -25.796], [1.964, -25.838], [1.993, -25.877], [2.026, -25.914], [2.063, -25.947], [2.102, -25.976], [2.144, -26.001], [2.189, -26.022], [2.235, -26.038], [2.282, -26.05], [2.331, -26.058], [2.38, -26.06], [2.7, -26.06]]);
		polygon(points = [[0.209, -28.598], [0.258, -28.59], [0.305, -28.578], [0.351, -28.562], [0.396, -28.541], [0.438, -28.516], [0.477, -28.487], [0.514, -28.454], [0.547, -28.417], [0.576, -28.378], [0.601, -28.336], [0.622, -28.291], [0.638, -28.245], [0.65, -28.198], [0.658, -28.149], [0.66, -28.1], [0.66, -27.78], [0.658, -27.731], [0.65, -27.682], [0.638, -27.635], [0.622, -27.589], [0.601, -27.544], [0.576, -27.502], [0.547, -27.463], [0.514, -27.426], [0.477, -27.393], [0.438, -27.364], [0.396, -27.339], [0.351, -27.318], [0.305, -27.302], [0.258, -27.29], [0.209, -27.282], [0.16, -27.28], [-0.16, -27.28], [-0.209, -27.282], [-0.258, -27.29], [-0.305, -27.302], [-0.351, -27.318], [-0.396, -27.339], [-0.438, -27.364], [-0.477, -27.393], [-0.514, -27.426], [-0.547, -27.463], [-0.576, -27.502], [-0.601, -27.544], [-0.622, -27.589], [-0.638, -27.635], [-0.65, -27.682], [-0.658, -27.731], [-0.66, -27.78], [-0.66, -28.1], [-0.658, -28.149], [-0.65, -28.198], [-0.638, -28.245], [-0.622, -28.291], [-0.601, -28.336], [-0.576, -28.378], [-0.547, -28.417], [-0.514, -28.454], [-0.477, -28.487], [-0.438, -28.516], [-0.396, -28.541], [-0.351, -28.562], [-0.305, -28.578], [-0.258, -28.59], [-0.209, -28.598], [-0.16, -28.6], [0.16, -28.6]]);
		polygon(points = [[2.749, -28.598], [2.798, -28.59], [2.845, -28.578], [2.891, -28.562], [2.936, -28.541], [2.978, -28.516], [3.017, -28.487], [3.054, -28.454], [3.087, -28.417], [3.116, -28.378], [3.141, -28.336], [3.162, -28.291], [3.178, -28.245], [3.19, -28.198], [3.198, -28.149], [3.2, -28.1], [3.2, -27.78], [3.198, -27.731], [3.19, -27.682], [3.178, -27.635], [3.162, -27.589], [3.141, -27.544], [3.116, -27.502], [3.087, -27.463], [3.054, -27.426], [3.017, -27.393], [2.978, -27.364], [2.936, -27.339], [2.891, -27.318], [2.845, -27.302], [2.798, -27.29], [2.749, -27.282], [2.7, -27.28], [2.38, -27.28], [2.331, -27.282], [2.282, -27.29], [2.235, -27.302], [2.189, -27.318], [2.144, -27.339], [2.102, -27.364], [2.063, -27.393], [2.026, -27.426], [1.993, -27.463], [1.964, -27.502], [1.939, -27.544], [1.918, -27.589], [1.902, -27.635], [1.89, -27.682], [1.882, -27.731], [1.88, -27.78], [1.88, -28.1], [1.882, -28.149], [1.89, -28.198], [1.902, -28.245], [1.918, -28.291], [1.939, -28.336], [1.964, -28.378], [1.993, -28.417], [2.026, -28.454], [2.063, -28.487], [2.102, -28.516], [2.144, -28.541], [2.189, -28.562], [2.235, -28.578], [2.282, -28.59], [2.331, -28.598], [2.38, -28.6], [2.7, -28.6]]);
		polygon(points = [[0.209, -31.138], [0.258, -31.13], [0.305, -31.118], [0.351, -31.102], [0.396, -31.081], [0.438, -31.056], [0.477, -31.027], [0.514, -30.994], [0.547, -30.957], [0.576, -30.918], [0.601, -30.876], [0.622, -30.831], [0.638, -30.785], [0.65, -30.738], [0.658, -30.689], [0.66, -30.64], [0.66, -30.32], [0.658, -30.271], [0.65, -30.222], [0.638, -30.175], [0.622, -30.129], [0.601, -30.084], [0.576, -30.042], [0.547, -30.003], [0.514, -29.966], [0.477, -29.933], [0.438, -29.904], [0.396, -29.879], [0.351, -29.858], [0.305, -29.842], [0.258, -29.83], [0.209, -29.822], [0.16, -29.82], [-0.16, -29.82], [-0.209, -29.822], [-0.258, -29.83], [-0.305, -29.842], [-0.351, -29.858], [-0.396, -29.879], [-0.438, -29.904], [-0.477, -29.933], [-0.514, -29.966], [-0.547, -30.003], [-0.576, -30.042], [-0.601, -30.084], [-0.622, -30.129], [-0.638, -30.175], [-0.65, -30.222], [-0.658, -30.271], [-0.66, -30.32], [-0.66, -30.64], [-0.658, -30.689], [-0.65, -30.738], [-0.638, -30.785], [-0.622, -30.831], [-0.601, -30.876], [-0.576, -30.918], [-0.547, -30.957], [-0.514, -30.994], [-0.477, -31.027], [-0.438, -31.056], [-0.396, -31.081], [-0.351, -31.102], [-0.305, -31.118], [-0.258, -31.13], [-0.209, -31.138], [-0.16, -31.14], [0.16, -31.14]]);
		polygon(points = [[2.749, -31.138], [2.798, -31.13], [2.845, -31.118], [2.891, -31.102], [2.936, -31.081], [2.978, -31.056], [3.017, -31.027], [3.054, -30.994], [3.087, -30.957], [3.116, -30.918], [3.141, -30.876], [3.162, -30.831], [3.178, -30.785], [3.19, -30.738], [3.198, -30.689], [3.2, -30.64], [3.2, -30.32], [3.198, -30.271], [3.19, -30.222], [3.178, -30.175], [3.162, -30.129], [3.141, -30.084], [3.116, -30.042], [3.087, -30.003], [3.054, -29.966], [3.017, -29.933], [2.978, -29.904], [2.936, -29.879], [2.891, -29.858], [2.845, -29.842], [2.798, -29.83], [2.749, -29.822], [2.7, -29.82], [2.38, -29.82], [2.331, -29.822], [2.282, -29.83], [2.235, -29.842], [2.189, -29.858], [2.144, -29.879], [2.102, -29.904], [2.063, -29.933], [2.026, -29.966], [1.993, -30.003], [1.964, -30.042], [1.939, -30.084], [1.918, -30.129], [1.902, -30.175], [1.89, -30.222], [1.882, -30.271], [1.88, -30.32], [1.88, -30.64], [1.882, -30.689], [1.89, -30.738], [1.902, -30.785], [1.918, -30.831], [1.939, -30.876], [1.964, -30.918], [1.993, -30.957], [2.026, -30.994], [2.063, -31.027], [2.102, -31.056], [2.144, -31.081], [2.189, -31.102], [2.235, -31.118], [2.282, -31.13], [2.331, -31.138], [2.38, -31.14], [2.7, -31.14]]);
		polygon(points = [[0.209, -33.678], [0.258, -33.67], [0.305, -33.658], [0.351, -33.642], [0.396, -33.621], [0.438, -33.596], [0.477, -33.567], [0.514, -33.534], [0.547, -33.497], [0.576, -33.458], [0.601, -33.416], [0.622, -33.371], [0.638, -33.325], [0.65, -33.278], [0.658, -33.229], [0.66, -33.18], [0.66, -32.86], [0.658, -32.811], [0.65, -32.762], [0.638, -32.715], [0.622, -32.669], [0.601, -32.624], [0.576, -32.582], [0.547, -32.543], [0.514, -32.506], [0.477, -32.473], [0.438, -32.444], [0.396, -32.419], [0.351, -32.398], [0.305, -32.382], [0.258, -32.37], [0.209, -32.362], [0.16, -32.36], [-0.16, -32.36], [-0.209, -32.362], [-0.258, -32.37], [-0.305, -32.382], [-0.351, -32.398], [-0.396, -32.419], [-0.438, -32.444], [-0.477, -32.473], [-0.514, -32.506], [-0.547, -32.543], [-0.576, -32.582], [-0.601, -32.624], [-0.622, -32.669], [-0.638, -32.715], [-0.65, -32.762], [-0.658, -32.811], [-0.66, -32.86], [-0.66, -33.18], [-0.658, -33.229], [-0.65, -33.278], [-0.638, -33.325], [-0.622, -33.371], [-0.601, -33.416], [-0.576, -33.458], [-0.547, -33.497], [-0.514, -33.534], [-0.477, -33.567], [-0.438, -33.596], [-0.396, -33.621], [-0.351, -33.642], [-0.305, -33.658], [-0.258, -33.67], [-0.209, -33.678], [-0.16, -33.68], [0.16, -33.68]]);
		polygon(points = [[2.749, -33.678], [2.798, -33.67], [2.845, -33.658], [2.891, -33.642], [2.936, -33.621], [2.978, -33.596], [3.017, -33.567], [3.054, -33.534], [3.087, -33.497], [3.116, -33.458], [3.141, -33.416], [3.162, -33.371], [3.178, -33.325], [3.19, -33.278], [3.198, -33.229], [3.2, -33.18], [3.2, -32.86], [3.198, -32.811], [3.19, -32.762], [3.178, -32.715], [3.162, -32.669], [3.141, -32.624], [3.116, -32.582], [3.087, -32.543], [3.054, -32.506], [3.017, -32.473], [2.978, -32.444], [2.936, -32.419], [2.891, -32.398], [2.845, -32.382], [2.798, -32.37], [2.749, -32.362], [2.7, -32.36], [2.38, -32.36], [2.331, -32.362], [2.282, -32.37], [2.235, -32.382], [2.189, -32.398], [2.144, -32.419], [2.102, -32.444], [2.063, -32.473], [2.026, -32.506], [1.993, -32.543], [1.964, -32.582], [1.939, -32.624], [1.918, -32.669], [1.902, -32.715], [1.89, -32.762], [1.882, -32.811], [1.88, -32.86], [1.88, -33.18], [1.882, -33.229], [1.89, -33.278], [1.902, -33.325], [1.918, -33.371], [1.939, -33.416], [1.964, -33.458], [1.993, -33.497], [2.026, -33.534], [2.063, -33.567], [2.102, -33.596], [2.144, -33.621], [2.189, -33.642], [2.235, -33.658], [2.282, -33.67], [2.331, -33.678], [2.38, -33.68], [2.7, -33.68]]);
		polygon(points = [[0.209, -36.218], [0.258, -36.21], [0.305, -36.198], [0.351, -36.182], [0.396, -36.161], [0.438, -36.136], [0.477, -36.107], [0.514, -36.074], [0.547, -36.037], [0.576, -35.998], [0.601, -35.956], [0.622, -35.911], [0.638, -35.865], [0.65, -35.818], [0.658, -35.769], [0.66, -35.72], [0.66, -35.4], [0.658, -35.351], [0.65, -35.302], [0.638, -35.255], [0.622, -35.209], [0.601, -35.164], [0.576, -35.122], [0.547, -35.083], [0.514, -35.046], [0.477, -35.013], [0.438, -34.984], [0.396, -34.959], [0.351, -34.938], [0.305, -34.922], [0.258, -34.91], [0.209, -34.902], [0.16, -34.9], [-0.16, -34.9], [-0.209, -34.902], [-0.258, -34.91], [-0.305, -34.922], [-0.351, -34.938], [-0.396, -34.959], [-0.438, -34.984], [-0.477, -35.013], [-0.514, -35.046], [-0.547, -35.083], [-0.576, -35.122], [-0.601, -35.164], [-0.622, -35.209], [-0.638, -35.255], [-0.65, -35.302], [-0.658, -35.351], [-0.66, -35.4], [-0.66, -35.72], [-0.658, -35.769], [-0.65, -35.818], [-0.638, -35.865], [-0.622, -35.911], [-0.601, -35.956], [-0.576, -35.998], [-0.547, -36.037], [-0.514, -36.074], [-0.477, -36.107], [-0.438, -36.136], [-0.396, -36.161], [-0.351, -36.182], [-0.305, -36.198], [-0.258, -36.21], [-0.209, -36.218], [-0.16, -36.22], [0.16, -36.22]]);
		polygon(points = [[2.749, -36.218], [2.798, -36.21], [2.845, -36.198], [2.891, -36.182], [2.936, -36.161], [2.978, -36.136], [3.017, -36.107], [3.054, -36.074], [3.087, -36.037], [3.116, -35.998], [3.141, -35.956], [3.162, -35.911], [3.178, -35.865], [3.19, -35.818], [3.198, -35.769], [3.2, -35.72], [3.2, -35.4], [3.198, -35.351], [3.19, -35.302], [3.178, -35.255], [3.162, -35.209], [3.141, -35.164], [3.116, -35.122], [3.087, -35.083], [3.054, -35.046], [3.017, -35.013], [2.978, -34.984], [2.936, -34.959], [2.891, -34.938], [2.845, -34.922], [2.798, -34.91], [2.749, -34.902], [2.7, -34.9], [2.38, -34.9], [2.331, -34.902], [2.282, -34.91], [2.235, -34.922], [2.189, -34.938], [2.144, -34.959], [2.102, -34.984], [2.063, -35.013], [2.026, -35.046], [1.993, -35.083], [1.964, -35.122], [1.939, -35.164], [1.918, -35.209], [1.902, -35.255], [1.89, -35.302], [1.882, -35.351], [1.88, -35.4], [1.88, -35.72], [1.882, -35.769], [1.89, -35.818], [1.902, -35.865], [1.918, -35.911], [1.939, -35.956], [1.964, -35.998], [1.993, -36.037], [2.026, -36.074], [2.063, -36.107], [2.102, -36.136], [2.144, -36.161], [2.189, -36.182], [2.235, -36.198], [2.282, -36.21], [2.331, -36.218], [2.38, -36.22], [2.7, -36.22]]);
		polygon(points = [[0.209, -38.758], [0.258, -38.75], [0.305, -38.738], [0.351, -38.722], [0.396, -38.701], [0.438, -38.676], [0.477, -38.647], [0.514, -38.614], [0.547, -38.577], [0.576, -38.538], [0.601, -38.496], [0.622, -38.451], [0.638, -38.405], [0.65, -38.358], [0.658, -38.309], [0.66, -38.26], [0.66, -37.94], [0.658, -37.891], [0.65, -37.842], [0.638, -37.795], [0.622, -37.749], [0.601, -37.704], [0.576, -37.662], [0.547, -37.623], [0.514, -37.586], [0.477, -37.553], [0.438, -37.524], [0.396, -37.499], [0.351, -37.478], [0.305, -37.462], [0.258, -37.45], [0.209, -37.442], [0.16, -37.44], [-0.16, -37.44], [-0.209, -37.442], [-0.258, -37.45], [-0.305, -37.462], [-0.351, -37.478], [-0.396, -37.499], [-0.438, -37.524], [-0.477, -37.553], [-0.514, -37.586], [-0.547, -37.623], [-0.576, -37.662], [-0.601, -37.704], [-0.622, -37.749], [-0.638, -37.795], [-0.65, -37.842], [-0.658, -37.891], [-0.66, -37.94], [-0.66, -38.26], [-0.658, -38.309], [-0.65, -38.358], [-0.638, -38.405], [-0.622, -38.451], [-0.601, -38.496], [-0.576, -38.538], [-0.547, -38.577], [-0.514, -38.614], [-0.477, -38.647], [-0.438, -38.676], [-0.396, -38.701], [-0.351, -38.722], [-0.305, -38.738], [-0.258, -38.75], [-0.209, -38.758], [-0.16, -38.76], [0.16, -38.76]]);
		polygon(points = [[2.749, -38.758], [2.798, -38.75], [2.845, -38.738], [2.891, -38.722], [2.936, -38.701], [2.978, -38.676], [3.017, -38.647], [3.054, -38.614], [3.087, -38.577], [3.116, -38.538], [3.141, -38.496], [3.162, -38.451], [3.178, -38.405], [3.19, -38.358], [3.198, -38.309], [3.2, -38.26], [3.2, -37.94], [3.198, -37.891], [3.19, -37.842], [3.178, -37.795], [3.162, -37.749], [3.141, -37.704], [3.116, -37.662], [3.087, -37.623], [3.054, -37.586], [3.017, -37.553], [2.978, -37.524], [2.936, -37.499], [2.891, -37.478], [2.845, -37.462], [2.798, -37.45], [2.749, -37.442], [2.7, -37.44], [2.38, -37.44], [2.331, -37.442], [2.282, -37.45], [2.235, -37.462], [2.189, -37.478], [2.144, -37.499], [2.102, -37.524], [2.063, -37.553], [2.026, -37.586], [1.993, -37.623], [1.964, -37.662], [1.939, -37.704], [1.918, -37.749], [1.902, -37.795], [1.89, -37.842], [1.882, -37.891], [1.88, -37.94], [1.88, -38.26], [1.882, -38.309], [1.89, -38.358], [1.902, -38.405], [1.918, -38.451], [1.939, -38.496], [1.964, -38.538], [1.993, -38.577], [2.026, -38.614], [2.063, -38.647], [2.102, -38.676], [2.144, -38.701], [2.189, -38.722], [2.235, -38.738], [2.282, -38.75], [2.331, -38.758], [2.38, -38.76], [2.7, -38.76]]);
		polygon(points = [[0.209, -41.298], [0.258, -41.29], [0.305, -41.278], [0.351, -41.262], [0.396, -41.241], [0.438, -41.216], [0.477, -41.187], [0.514, -41.154], [0.547, -41.117], [0.576, -41.078], [0.601, -41.036], [0.622, -40.991], [0.638, -40.945], [0.65, -40.898], [0.658, -40.849], [0.66, -40.8], [0.66, -40.48], [0.658, -40.431], [0.65, -40.382], [0.638, -40.335], [0.622, -40.289], [0.601, -40.244], [0.576, -40.202], [0.547, -40.163], [0.514, -40.126], [0.477, -40.093], [0.438, -40.064], [0.396, -40.039], [0.351, -40.018], [0.305, -40.002], [0.258, -39.99], [0.209, -39.982], [0.16, -39.98], [-0.16, -39.98], [-0.209, -39.982], [-0.258, -39.99], [-0.305, -40.002], [-0.351, -40.018], [-0.396, -40.039], [-0.438, -40.064], [-0.477, -40.093], [-0.514, -40.126], [-0.547, -40.163], [-0.576, -40.202], [-0.601, -40.244], [-0.622, -40.289], [-0.638, -40.335], [-0.65, -40.382], [-0.658, -40.431], [-0.66, -40.48], [-0.66, -40.8], [-0.658, -40.849], [-0.65, -40.898], [-0.638, -40.945], [-0.622, -40.991], [-0.601, -41.036], [-0.576, -41.078], [-0.547, -41.117], [-0.514, -41.154], [-0.477, -41.187], [-0.438, -41.216], [-0.396, -41.241], [-0.351, -41.262], [-0.305, -41.278], [-0.258, -41.29], [-0.209, -41.298], [-0.16, -41.3], [0.16, -41.3]]);
		polygon(points = [[2.749, -41.298], [2.798, -41.29], [2.845, -41.278], [2.891, -41.262], [2.936, -41.241], [2.978, -41.216], [3.017, -41.187], [3.054, -41.154], [3.087, -41.117], [3.116, -41.078], [3.141, -41.036], [3.162, -40.991], [3.178, -40.945], [3.19, -40.898], [3.198, -40.849], [3.2, -40.8], [3.2, -40.48], [3.198, -40.431], [3.19, -40.382], [3.178, -40.335], [3.162, -40.289], [3.141, -40.244], [3.116, -40.202], [3.087, -40.163], [3.054, -40.126], [3.017, -40.093], [2.978, -40.064], [2.936, -40.039], [2.891, -40.018], [2.845, -40.002], [2.798, -39.99], [2.749, -39.982], [2.7, -39.98], [2.38, -39.98], [2.331, -39.982], [2.282, -39.99], [2.235, -40.002], [2.189, -40.018], [2.144, -40.039], [2.102, -40.064], [2.063, -40.093], [2.026, -40.126], [1.993, -40.163], [1.964, -40.202], [1.939, -40.244], [1.918, -40.289], [1.902, -40.335], [1.89, -40.382], [1.882, -40.431], [1.88, -40.48], [1.88, -40.8], [1.882, -40.849], [1.89, -40.898], [1.902, -40.945], [1.918, -40.991], [1.939, -41.036], [1.964, -41.078], [1.993, -41.117], [2.026, -41.154], [2.063, -41.187], [2.102, -41.216], [2.144, -41.241], [2.189, -41.262], [2.235, -41.278], [2.282, -41.29], [2.331, -41.298], [2.38, -41.3], [2.7, -41.3]]);
		polygon(points = [[0.209, -43.838], [0.258, -43.83], [0.305, -43.818], [0.351, -43.802], [0.396, -43.781], [0.438, -43.756], [0.477, -43.727], [0.514, -43.694], [0.547, -43.657], [0.576, -43.618], [0.601, -43.576], [0.622, -43.531], [0.638, -43.485], [0.65, -43.438], [0.658, -43.389], [0.66, -43.34], [0.66, -43.02], [0.658, -42.971], [0.65, -42.922], [0.638, -42.875], [0.622, -42.829], [0.601, -42.784], [0.576, -42.742], [0.547, -42.703], [0.514, -42.666], [0.477, -42.633], [0.438, -42.604], [0.396, -42.579], [0.351, -42.558], [0.305, -42.542], [0.258, -42.53], [0.209, -42.522], [0.16, -42.52], [-0.16, -42.52], [-0.209, -42.522], [-0.258, -42.53], [-0.305, -42.542], [-0.351, -42.558], [-0.396, -42.579], [-0.438, -42.604], [-0.477, -42.633], [-0.514, -42.666], [-0.547, -42.703], [-0.576, -42.742], [-0.601, -42.784], [-0.622, -42.829], [-0.638, -42.875], [-0.65, -42.922], [-0.658, -42.971], [-0.66, -43.02], [-0.66, -43.34], [-0.658, -43.389], [-0.65, -43.438], [-0.638, -43.485], [-0.622, -43.531], [-0.601, -43.576], [-0.576, -43.618], [-0.547, -43.657], [-0.514, -43.694], [-0.477, -43.727], [-0.438, -43.756], [-0.396, -43.781], [-0.351, -43.802], [-0.305, -43.818], [-0.258, -43.83], [-0.209, -43.838], [-0.16, -43.84], [0.16, -43.84]]);
		polygon(points = [[2.749, -43.838], [2.798, -43.83], [2.845, -43.818], [2.891, -43.802], [2.936, -43.781], [2.978, -43.756], [3.017, -43.727], [3.054, -43.694], [3.087, -43.657], [3.116, -43.618], [3.141, -43.576], [3.162, -43.531], [3.178, -43.485], [3.19, -43.438], [3.198, -43.389], [3.2, -43.34], [3.2, -43.02], [3.198, -42.971], [3.19, -42.922], [3.178, -42.875], [3.162, -42.829], [3.141, -42.784], [3.116, -42.742], [3.087, -42.703], [3.054, -42.666], [3.017, -42.633], [2.978, -42.604], [2.936, -42.579], [2.891, -42.558], [2.845, -42.542], [2.798, -42.53], [2.749, -42.522], [2.7, -42.52], [2.38, -42.52], [2.331, -42.522], [2.282, -42.53], [2.235, -42.542], [2.189, -42.558], [2.144, -42.579], [2.102, -42.604], [2.063, -42.633], [2.026, -42.666], [1.993, -42.703], [1.964, -42.742], [1.939, -42.784], [1.918, -42.829], [1.902, -42.875], [1.89, -42.922], [1.882, -42.971], [1.88, -43.02], [1.88, -43.34], [1.882, -43.389], [1.89, -43.438], [1.902, -43.485], [1.918, -43.531], [1.939, -43.576], [1.964, -43.618], [1.993, -43.657], [2.026, -43.694], [2.063, -43.727], [2.102, -43.756], [2.144, -43.781], [2.189, -43.802], [2.235, -43.818], [2.282, -43.83], [2.331, -43.838], [2.38, -43.84], [2.7, -43.84]]);
		polygon(points = [[0.209, -46.378], [0.258, -46.37], [0.305, -46.358], [0.351, -46.342], [0.396, -46.321], [0.438, -46.296], [0.477, -46.267], [0.514, -46.234], [0.547, -46.197], [0.576, -46.158], [0.601, -46.116], [0.622, -46.071], [0.638, -46.025], [0.65, -45.978], [0.658, -45.929], [0.66, -45.88], [0.66, -45.56], [0.658, -45.511], [0.65, -45.462], [0.638, -45.415], [0.622, -45.369], [0.601, -45.324], [0.576, -45.282], [0.547, -45.243], [0.514, -45.206], [0.477, -45.173], [0.438, -45.144], [0.396, -45.119], [0.351, -45.098], [0.305, -45.082], [0.258, -45.07], [0.209, -45.062], [0.16, -45.06], [-0.16, -45.06], [-0.209, -45.062], [-0.258, -45.07], [-0.305, -45.082], [-0.351, -45.098], [-0.396, -45.119], [-0.438, -45.144], [-0.477, -45.173], [-0.514, -45.206], [-0.547, -45.243], [-0.576, -45.282], [-0.601, -45.324], [-0.622, -45.369], [-0.638, -45.415], [-0.65, -45.462], [-0.658, -45.511], [-0.66, -45.56], [-0.66, -45.88], [-0.658, -45.929], [-0.65, -45.978], [-0.638, -46.025], [-0.622, -46.071], [-0.601, -46.116], [-0.576, -46.158], [-0.547, -46.197], [-0.514, -46.234], [-0.477, -46.267], [-0.438, -46.296], [-0.396, -46.321], [-0.351, -46.342], [-0.305, -46.358], [-0.258, -46.37], [-0.209, -46.378], [-0.16, -46.38], [0.16, -46.38]]);
		polygon(points = [[2.749, -46.378], [2.798, -46.37], [2.845, -46.358], [2.891, -46.342], [2.936, -46.321], [2.978, -46.296], [3.017, -46.267], [3.054, -46.234], [3.087, -46.197], [3.116, -46.158], [3.141, -46.116], [3.162, -46.071], [3.178, -46.025], [3.19, -45.978], [3.198, -45.929], [3.2, -45.88], [3.2, -45.56], [3.198, -45.511], [3.19, -45.462], [3.178, -45.415], [3.162, -45.369], [3.141, -45.324], [3.116, -45.282], [3.087, -45.243], [3.054, -45.206], [3.017, -45.173], [2.978, -45.144], [2.936, -45.119], [2.891, -45.098], [2.845, -45.082], [2.798, -45.07], [2.749, -45.062], [2.7, -45.06], [2.38, -45.06], [2.331, -45.062], [2.282, -45.07], [2.235, -45.082], [2.189, -45.098], [2.144, -45.119], [2.102, -45.144], [2.063, -45.173], [2.026, -45.206], [1.993, -45.243], [1.964, -45.282], [1.939, -45.324], [1.918, -45.369], [1.902, -45.415], [1.89, -45.462], [1.882, -45.511], [1.88, -45.56], [1.88, -45.88], [1.882, -45.929], [1.89, -45.978], [1.902, -46.025], [1.918, -46.071], [1.939, -46.116], [1.964, -46.158], [1.993, -46.197], [2.026, -46.234], [2.063, -46.267], [2.102, -46.296], [2.144, -46.321], [2.189, -46.342], [2.235, -46.358], [2.282, -46.37], [2.331, -46.378], [2.38, -46.38], [2.7, -46.38]]);
		polygon(points = [[0.209, -48.918], [0.258, -48.91], [0.305, -48.898], [0.351, -48.882], [0.396, -48.861], [0.438, -48.836], [0.477, -48.807], [0.514, -48.774], [0.547, -48.737], [0.576, -48.698], [0.601, -48.656], [0.622, -48.611], [0.638, -48.565], [0.65, -48.518], [0.658, -48.469], [0.66, -48.42], [0.66, -48.1], [0.658, -48.051], [0.65, -48.002], [0.638, -47.955], [0.622, -47.909], [0.601, -47.864], [0.576, -47.822], [0.547, -47.783], [0.514, -47.746], [0.477, -47.713], [0.438, -47.684], [0.396, -47.659], [0.351, -47.638], [0.305, -47.622], [0.258, -47.61], [0.209, -47.602], [0.16, -47.6], [-0.16, -47.6], [-0.209, -47.602], [-0.258, -47.61], [-0.305, -47.622], [-0.351, -47.638], [-0.396, -47.659], [-0.438, -47.684], [-0.477, -47.713], [-0.514, -47.746], [-0.547, -47.783], [-0.576, -47.822], [-0.601, -47.864], [-0.622, -47.909], [-0.638, -47.955], [-0.65, -48.002], [-0.658, -48.051], [-0.66, -48.1], [-0.66, -48.42], [-0.658, -48.469], [-0.65, -48.518], [-0.638, -48.565], [-0.622, -48.611], [-0.601, -48.656], [-0.576, -48.698], [-0.547, -48.737], [-0.514, -48.774], [-0.477, -48.807], [-0.438, -48.836], [-0.396, -48.861], [-0.351, -48.882], [-0.305, -48.898], [-0.258, -48.91], [-0.209, -48.918], [-0.16, -48.92], [0.16, -48.92]]);
		polygon(points = [[2.749, -48.918], [2.798, -48.91], [2.845, -48.898], [2.891, -48.882], [2.936, -48.861], [2.978, -48.836], [3.017, -48.807], [3.054, -48.774], [3.087, -48.737], [3.116, -48.698], [3.141, -48.656], [3.162, -48.611], [3.178, -48.565], [3.19, -48.518], [3.198, -48.469], [3.2, -48.42], [3.2, -48.1], [3.198, -48.051], [3.19, -48.002], [3.178, -47.955], [3.162, -47.909], [3.141, -47.864], [3.116, -47.822], [3.087, -47.783], [3.054, -47.746], [3.017, -47.713], [2.978, -47.684], [2.936, -47.659], [2.891, -47.638], [2.845, -47.622], [2.798, -47.61], [2.749, -47.602], [2.7, -47.6], [2.38, -47.6], [2.331, -47.602], [2.282, -47.61], [2.235, -47.622], [2.189, -47.638], [2.144, -47.659], [2.102, -47.684], [2.063, -47.713], [2.026, -47.746], [1.993, -47.783], [1.964, -47.822], [1.939, -47.864], [1.918, -47.909], [1.902, -47.955], [1.89, -48.002], [1.882, -48.051], [1.88, -48.1], [1.88, -48.42], [1.882, -48.469], [1.89, -48.518], [1.902, -48.565], [1.918, -48.611], [1.939, -48.656], [1.964, -48.698], [1.993, -48.737], [2.026, -48.774], [2.063, -48.807], [2.102, -48.836], [2.144, -48.861], [2.189, -48.882], [2.235, -48.898], [2.282, -48.91], [2.331, -48.918], [2.38, -48.92], [2.7, -48.92]]);
	}
}
module keepout_volume_J12_0_1(){
	translate(v = [133.52, -71.8, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J12) {
					union() {
						shape_J12_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J12_0(){
	union() {
		translate(v = [133.52, -71.8, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J12)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J12) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
						union() {
							shape_J12_0_0();
						}
					}
				}
			}
		}
		translate(v = [133.52, -71.8, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J12)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J12) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12) + Wrapper_Thickness_For_J12)) {
							union() {
								shape_J12_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
							union() {
								shape_J12_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J12_0(){
	union() {
		keepout_volume_J12_0_0();
		keepout_volume_J12_0_1();
	}
}
module wiggle_minus_pocket_J12_0(){
	translate(v = [133.52, -71.8, min_z_J12]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J12 - min_z_J12) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J12) {
					union() {
						shape_J12_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J12(){
	polygon(points = [[183.565, -67.455], [183.565, -73.595], [131.725, -73.595], [131.725, -67.455]]);
}
module courtyard_pocket_J12(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J12]) {
			linear_extrude(height = ((max_z_J12 - min_z_J12) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J12) {
					union() {
						courtyard_J12();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J12(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J12)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J12) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
					union() {
						courtyard_J12();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J12)]) {
			linear_extrude(height = Wrapper_Height_For_J12) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12) + Wrapper_Thickness_For_J12)) {
						union() {
							courtyard_J12();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J12 + Effective_Shell_Thickness_For_J12)) {
						union() {
							courtyard_J12();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J2_0(){
	union() {
		translate(v = [119.9588, -119.5, ((PCB_Thickness - tiny_dimension) + max(2.059735560211778, Effective_Shell_Clearance_From_PCB_For_J2))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.57499707384181) - max(2.059735560211778, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-3.629251842989483, 1.3493316907763313],[-3.7788846418443445, 1.4820344620618648],0.4);
						peri_line_scad([-3.629104723544528, -3.349549707647986],[-3.808161411390388, -3.438649104602569],0.4);
						peri_line_scad([3.629104723544528, -3.349549707647986],[3.808161411390388, -3.438649104602569],0.4);
						peri_line_scad([3.629251842989483, 1.3493316907763313],[3.7788846418443445, 1.4820344620618648],0.4);
					}
				}
			}
		}
		translate(v = [119.9588, -119.5, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.57499707384181) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.7578349605185046, -3.7489945000000002],[(-0.7578349605185046 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -0.0)), (-3.7489945000000002 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -1.0))],0.4);
								peri_line_scad([0.7578349605185046, -3.7489945000000002],[(0.7578349605185046 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -0.0)), (-3.7489945000000002 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -1.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [119.9588, -119.5, ((PCB_Thickness - tiny_dimension) + max(-0.7249963976836205, Effective_Shell_Clearance_From_PCB_For_J2))]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.059735560211778) - max(-0.7249963976836205, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-3.7492694882240394, 1.3493043689273831],[-3.8938718434161808, 1.4874715100025524],0.4);
						hull() {
							union() {
								peri_line_scad([-4.0942356552536205, -3.463294767787164],[-4.292726794432667, -3.4878155277142997],0.4);
								peri_line_scad([-4.001004213351838, -3.7476197673179583],[-4.11842326898206, -3.909523335453151],0.4);
							}
						}
						peri_line_scad([-4.001004213351838, -3.7476197673179583],[-4.11842326898206, -3.909523335453151],0.4);
						hull() {
							union() {
								peri_line_scad([4.001004213351838, -3.7476197673179583],[4.11842326898206, -3.909523335453151],0.4);
								peri_line_scad([4.0942356552536205, -3.463294767787164],[4.292726794432667, -3.4878155277142997],0.4);
							}
						}
						peri_line_scad([4.0942356552536205, -3.463294767787164],[4.292726794432667, -3.4878155277142997],0.4);
						peri_line_scad([3.7492694882240394, 1.3493043689273831],[3.8938718434161808, 1.4874715100025524],0.4);
					}
				}
			}
		}
		translate(v = [119.9588, -119.5, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.059735560211778) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-1.0015925316244916, -3.7489945000000002],[(-1.0015925316244916 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -0.0)), (-3.7489945000000002 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -1.0))],0.4);
								peri_line_scad([1.0015925316244916, -3.7489945000000002],[(1.0015925316244916 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -0.0)), (-3.7489945000000002 + (((0.01 + Effective_Shell_Thickness_For_J2) + Effective_Shell_Gap_For_J2) * -1.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J2_0_0(){
	polygon(points = [[-3.7499925000000003, 1.349995204632759], [-4.095228110949516, -3.4634173715867997], [-4.0015913086299895, -3.7484292851586343], [-2.999994, -3.7499945], [2.999994, -3.7499945], [4.0015913086299895, -3.7484292851586343], [4.095228110949516, -3.4634173715867997], [3.7499925000000003, 1.349995204632759], [1.1999976476836205, 1.649994795367241], [-1.1999976476836205, 1.649994795367241]]);
}
module hullpoly_J2_0_1(){
	polygon(points = [[-3.6300000069837575, 1.349995204632759], [-3.6300000069837575, -3.349995204632759], [-3.156360035533905, -3.708072729824543], [-3.124691674264431, -3.725703033232689], [-3.0867705598449704, -3.7389681396064756], [-3.0444980766410827, -3.747202862440586], [-2.999994, -3.7499945], [2.999994, -3.7499945], [3.0444980766410827, -3.747202862440586], [3.0867705598449704, -3.7389681396064756], [3.124691674264431, -3.725703033232689], [3.156360035533905, -3.708072729824543], [3.6300000069837575, -3.349995204632759], [3.6300000069837575, 1.349995204632759], [1.1999976476836205, 1.6424731810770035], [-1.1999976476836205, 1.6424731810770035]]);
}
module fitting_pocket_J2_0(){
	union() {
		translate(v = [119.9588, -119.5, ((-tiny_dimension) + -0.7249963976836205)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((2.7847319578953984 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J2) {
						union() {
							hullpoly_J2_0_0();
						}
					}
				}
			}
		}
		translate(v = [119.9588, -119.5, ((-tiny_dimension) + 2.059735560211778)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((0.515261513630032 + (2 * tiny_dimension)) + PCB_Thickness)) {
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
module outline_J2_0(){
	union() {
		hullpoly_J2_0_0();
	}
}
module wiggle_pocket_J2_0(){
	translate(v = [119.9588, -119.5, min_z_J2]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_J2 - min_z_J2) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						outline_J2_0();
					}
				}
			}
		}
	}
}
module perimeter_J2_0(){
	union() {
		translate(v = [119.9588, -119.5, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J2)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
						union() {
							outline_J2_0();
						}
					}
				}
			}
		}
		translate(v = [119.9588, -119.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J2)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_J2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2) + Wrapper_Thickness_For_J2)) {
							union() {
								outline_J2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
							union() {
								outline_J2_0();
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
		translate(v = [119.9588, -119.5, ((PCB_Thickness + max(-0.7249963976836205, Effective_Shell_Clearance_From_PCB_For_J2)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_J2 - max(-0.7249963976836205, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
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
		translate(v = [119.9588, -119.5, ((PCB_Thickness + max(2.059735560211778, Effective_Shell_Clearance_From_PCB_For_J2)) - tiny_dimension)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((max_z_J2 - max(2.059735560211778, Effective_Shell_Clearance_From_PCB_For_J2)) + (2 * tiny_dimension))) {
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
		translate(v = [119.9588, -119.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J2)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = Wrapper_Height_For_J2) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2) + Wrapper_Thickness_For_J2)) {
							union() {
								outline_J2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
							union() {
								outline_J2_0();
							}
						}
					}
				}
			}
		}
		translate(v = [119.9588, -119.5, (PCB_Thickness + max_z_J2)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
						union() {
							outline_J2_0();
						}
					}
				}
			}
		}
	}
}
module shape_J2_0_0(){
	union() {
		polygon(points = [[4.081, -3.5], [4.093, -3.463], [4.089, -3.461], [4.083, -3.46], [4.077, -3.457], [4.07, -3.455], [4.062, -3.453], [4.052, -3.449], [4.012, -3.436], [3.881, -3.393], [3.75, -3.35], [3.75, -2.988], [3.75, -2.897], [3.75, -2.764], [3.75, -2.658], [3.75, -2.462], [3.75, -2.224], [3.75, -1.986], [3.75, -1.83], [3.75, -0.89], [3.75, -0.49], [3.75, -0.456], [3.75, 0.589], [3.75, 1.35], [3.455, 1.35], [3.1, 1.35], [2.8, 1.35], [2.8, 1.597], [2.8, 1.65], [2.71, 1.65], [2.2, 1.65], [2.191, 1.65], [2.18, 1.65], [2.171, 1.65], [2.129, 1.65], [2.126, 1.65], [2.123, 1.65], [2.121, 1.65], [2.118, 1.65], [2.084, 1.65], [2.05, 1.65], [1.884, 1.65], [1.642, 1.65], [1.631, 1.65], [1.62, 1.65], [1.608, 1.65], [1.598, 1.65], [1.492, 1.65], [1.227, 1.65], [1.223, 1.65], [1.218, 1.65], [1.215, 1.65], [1.212, 1.65], [-0.771, 1.65], [-1.212, 1.65], [-1.215, 1.65], [-1.218, 1.65], [-1.223, 1.65], [-1.227, 1.65], [-1.492, 1.65], [-1.598, 1.65], [-1.608, 1.65], [-1.62, 1.65], [-1.631, 1.65], [-1.642, 1.65], [-1.884, 1.65], [-2.206, 1.65], [-2.219, 1.65], [-2.232, 1.65], [-2.305, 1.65], [-2.385, 1.65], [-2.477, 1.65], [-2.588, 1.65], [-2.596, 1.65], [-2.732, 1.65], [-2.756, 1.65], [-2.8, 1.65], [-2.8, 1.5], [-2.8, 1.35], [-3.455, 1.35], [-3.75, 1.35], [-3.75, 0.589], [-3.75, -0.456], [-3.75, -0.49], [-3.75, -1.43], [-3.75, -1.83], [-3.75, -1.986], [-3.75, -2.224], [-3.75, -2.462], [-3.75, -2.658], [-3.75, -2.764], [-3.75, -2.897], [-3.75, -2.988], [-3.75, -3.35], [-3.881, -3.393], [-4.012, -3.436], [-4.052, -3.449], [-4.089, -3.461], [-4.093, -3.463], [-4.012, -3.711], [-4.0, -3.748], [-3.996, -3.746], [-3.99, -3.745], [-3.983, -3.742], [-3.977, -3.74], [-3.968, -3.738], [-3.959, -3.734], [-3.918, -3.721], [-3.653, -3.634], [-3.611, -3.615], [-3.597, -3.609], [-3.56, -3.581], [-3.547, -3.572], [-3.516, -3.538], [-3.506, -3.527], [-3.483, -3.487], [-3.475, -3.473], [-3.461, -3.429], [-3.456, -3.415], [-3.452, -3.369], [-3.45, -3.354], [-3.45, -3.353], [-3.45, -3.35], [-3.439, -3.35], [-3.394, -3.35], [-3.344, -3.35], [-3.297, -3.35], [-3.268, -3.35], [-3.245, -3.35], [-3.2, -3.35], [-3.2, -3.352], [-3.2, -3.414], [-3.2, -3.483], [-3.2, -3.513], [-2.5, -3.513], [-2.5, -3.529], [-2.5, -3.571], [-1.291, -3.572], [0.0, -3.571], [0.0, -3.522], [0.0, -3.513], [0.03, -3.513], [0.03, -3.522], [0.03, -3.571], [1.306, -3.572], [2.5, -3.571], [2.5, -3.529], [2.5, -3.513], [3.2, -3.513], [3.2, -3.483], [3.2, -3.414], [3.2, -3.352], [3.2, -3.35], [3.45, -3.35], [3.45, -3.351], [3.45, -3.354], [3.455, -3.399], [3.456, -3.415], [3.471, -3.459], [3.475, -3.473], [3.498, -3.513], [3.506, -3.527], [3.537, -3.561], [3.547, -3.572], [3.584, -3.6], [3.597, -3.609], [3.639, -3.628], [3.653, -3.634], [3.785, -3.677], [3.918, -3.721], [3.959, -3.734], [3.968, -3.738], [3.977, -3.74], [3.983, -3.742], [3.99, -3.745], [3.996, -3.746], [4.0, -3.748]]);
	}
}
module keepout_volume_J2_0_0(){
	translate(v = [119.9588, -119.5, max(-0.7249963976836205, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((1.0749970738418102 - max(-0.7249963976836205, 0)) + tiny_dimension) + PCB_Thickness)) {
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
		polygon(points = [[4.081, -3.5], [4.093, -3.463], [4.089, -3.461], [4.083, -3.46], [4.077, -3.457], [4.07, -3.455], [4.062, -3.453], [4.052, -3.449], [4.012, -3.436], [3.881, -3.393], [3.75, -3.35], [3.75, -2.988], [3.75, -2.897], [3.75, -2.764], [3.75, -2.658], [3.75, -2.462], [3.75, -2.224], [3.75, -1.986], [3.75, -1.83], [3.75, -0.89], [3.75, -0.49], [3.75, -0.318], [3.75, -0.044], [3.75, 0.239], [3.75, 0.475], [3.75, 0.653], [3.75, 0.78], [3.75, 1.35], [3.666, 1.35], [3.457, 1.35], [3.39, 1.35], [2.865, 1.35], [2.783, 1.35], [2.687, 1.35], [2.422, 1.35], [2.279, 1.35], [2.27, 1.35], [2.257, 1.35], [2.189, 1.35], [1.742, 1.35], [1.735, 1.35], [1.716, 1.35], [1.716, 1.27], [1.696, 1.27], [1.329, 1.27], [1.271, 1.27], [1.227, 1.27], [1.2, 1.27], [1.2, 1.283], [1.2, 1.35], [1.212, 1.35], [1.215, 1.35], [1.218, 1.35], [1.223, 1.35], [1.227, 1.35], [1.492, 1.35], [1.492, 1.486], [1.492, 1.65], [1.227, 1.65], [1.223, 1.65], [1.218, 1.65], [1.215, 1.65], [1.212, 1.65], [-0.771, 1.65], [-1.212, 1.65], [-1.215, 1.65], [-1.218, 1.65], [-1.223, 1.65], [-1.227, 1.65], [-1.492, 1.65], [-1.492, 1.486], [-1.492, 1.35], [-1.227, 1.35], [-1.223, 1.35], [-1.218, 1.35], [-1.215, 1.35], [-1.212, 1.35], [-1.2, 1.35], [-1.2, 1.283], [-1.2, 1.27], [-1.227, 1.27], [-1.271, 1.27], [-1.329, 1.27], [-1.696, 1.27], [-1.716, 1.27], [-1.716, 1.35], [-1.769, 1.35], [-1.861, 1.35], [-1.937, 1.35], [-1.967, 1.35], [-2.009, 1.35], [-2.042, 1.35], [-2.069, 1.35], [-2.103, 1.35], [-2.123, 1.35], [-2.159, 1.35], [-2.235, 1.35], [-2.408, 1.35], [-3.029, 1.35], [-3.061, 1.35], [-3.45, 1.35], [-3.561, 1.35], [-3.595, 1.35], [-3.651, 1.35], [-3.657, 1.35], [-3.666, 1.35], [-3.75, 1.35], [-3.75, 0.78], [-3.75, 0.653], [-3.75, 0.475], [-3.75, 0.239], [-3.75, -0.044], [-3.75, -0.318], [-3.75, -0.49], [-3.75, -1.43], [-3.75, -1.83], [-3.75, -1.986], [-3.75, -2.224], [-3.75, -2.462], [-3.75, -2.658], [-3.75, -2.764], [-3.75, -2.897], [-3.75, -2.988], [-3.75, -3.35], [-3.881, -3.393], [-4.012, -3.436], [-4.052, -3.449], [-4.089, -3.461], [-4.093, -3.463], [-4.012, -3.711], [-4.0, -3.748], [-3.996, -3.746], [-3.99, -3.745], [-3.983, -3.742], [-3.977, -3.74], [-3.968, -3.738], [-3.959, -3.734], [-3.918, -3.721], [-3.653, -3.634], [-3.611, -3.615], [-3.597, -3.609], [-3.56, -3.581], [-3.547, -3.572], [-3.516, -3.538], [-3.506, -3.527], [-3.483, -3.487], [-3.475, -3.473], [-3.461, -3.429], [-3.456, -3.415], [-3.452, -3.369], [-3.45, -3.354], [-3.45, -3.353], [-3.45, -3.35], [-3.439, -3.35], [-3.394, -3.35], [-3.344, -3.35], [-3.297, -3.35], [-3.268, -3.35], [-3.245, -3.35], [-3.2, -3.35], [-3.2, -3.352], [-3.2, -3.414], [-3.2, -3.483], [-3.2, -3.513], [0.845, -3.513], [3.2, -3.513], [3.2, -3.483], [3.2, -3.414], [3.2, -3.352], [3.2, -3.35], [3.221, -3.35], [3.268, -3.35], [3.297, -3.35], [3.344, -3.35], [3.394, -3.35], [3.439, -3.35], [3.45, -3.35], [3.45, -3.351], [3.45, -3.354], [3.455, -3.399], [3.456, -3.415], [3.471, -3.459], [3.475, -3.473], [3.498, -3.513], [3.506, -3.527], [3.537, -3.561], [3.547, -3.572], [3.584, -3.6], [3.597, -3.609], [3.639, -3.628], [3.653, -3.634], [3.785, -3.677], [3.918, -3.721], [3.959, -3.734], [3.968, -3.738], [3.977, -3.74], [3.983, -3.742], [3.99, -3.745], [3.996, -3.746], [4.0, -3.748]]);
	}
}
module keepout_volume_J2_0_1(){
	translate(v = [119.9588, -119.5, max(-0.7249963976836205, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((1.5749970738418102 - max(-0.7249963976836205, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						shape_J2_0_1();
					}
				}
			}
		}
	}
}
module shape_J2_0_2(){
	union() {
		polygon(points = [[3.2, -3.483], [3.2, -3.414], [3.2, -3.352], [3.2, -3.35], [3.221, -3.35], [3.268, -3.35], [3.297, -3.35], [3.344, -3.35], [3.394, -3.35], [3.439, -3.35], [3.55, -3.35], [3.576, -3.35], [3.657, -3.35], [3.657, -1.416], [3.657, 1.35], [3.651, 1.35], [3.625, 1.35], [3.606, 1.35], [3.45, 1.35], [3.088, 1.35], [3.061, 1.35], [3.029, 1.35], [2.408, 1.35], [2.235, 1.35], [2.159, 1.35], [2.14, 1.35], [2.103, 1.35], [2.08, 1.35], [2.042, 1.35], [2.004, 1.35], [1.967, 1.35], [1.937, 1.35], [1.861, 1.35], [1.769, 1.35], [1.716, 1.35], [1.716, 1.198], [1.716, 0.65], [1.769, 0.65], [1.861, 0.65], [1.937, 0.65], [1.967, 0.65], [2.009, 0.65], [2.042, 0.65], [2.069, 0.65], [2.103, 0.65], [2.123, 0.65], [2.159, 0.65], [2.235, 0.65], [2.268, 0.65], [2.36, 0.65], [2.36, 0.525], [2.36, 0.5], [2.357, 0.472], [2.356, 0.467], [2.347, 0.44], [2.345, 0.435], [2.33, 0.411], [2.327, 0.406], [2.307, 0.387], [2.304, 0.383], [2.28, 0.368], [2.275, 0.365], [2.249, 0.356], [2.243, 0.354], [2.216, 0.351], [2.21, 0.35], [1.493, 0.35], [1.35, 0.35], [1.322, 0.353], [1.317, 0.354], [1.29, 0.363], [1.285, 0.365], [1.261, 0.38], [1.256, 0.383], [1.237, 0.403], [1.233, 0.406], [1.218, 0.43], [1.215, 0.435], [1.206, 0.461], [1.204, 0.467], [1.201, 0.494], [1.2, 0.5], [1.2, 1.142], [1.2, 1.283], [1.2, 1.35], [1.2, 1.361], [1.2, 1.374], [1.2, 1.39], [1.2, 1.413], [1.2, 1.454], [1.2, 1.569], [1.2, 1.644], [0.598, 1.644], [-1.2, 1.644], [-1.2, 1.569], [-1.2, 1.454], [-1.2, 1.413], [-1.2, 1.39], [-1.2, 1.374], [-1.2, 1.361], [-1.2, 1.35], [-1.2, 1.283], [-1.2, 1.142], [-1.2, 0.5], [-1.203, 0.472], [-1.204, 0.467], [-1.213, 0.44], [-1.215, 0.435], [-1.23, 0.411], [-1.233, 0.406], [-1.253, 0.387], [-1.256, 0.383], [-1.28, 0.368], [-1.285, 0.365], [-1.311, 0.356], [-1.317, 0.354], [-1.344, 0.351], [-1.35, 0.35], [-2.067, 0.35], [-2.21, 0.35], [-2.238, 0.353], [-2.243, 0.354], [-2.27, 0.363], [-2.275, 0.365], [-2.299, 0.38], [-2.304, 0.383], [-2.323, 0.403], [-2.327, 0.406], [-2.342, 0.43], [-2.345, 0.435], [-2.354, 0.461], [-2.356, 0.467], [-2.359, 0.494], [-2.36, 0.5], [-2.36, 0.625], [-2.36, 0.65], [-2.268, 0.65], [-2.235, 0.65], [-2.159, 0.65], [-2.14, 0.65], [-2.103, 0.65], [-2.08, 0.65], [-2.042, 0.65], [-2.004, 0.65], [-1.967, 0.65], [-1.937, 0.65], [-1.861, 0.65], [-1.769, 0.65], [-1.716, 0.65], [-1.716, 0.802], [-1.716, 1.35], [-1.769, 1.35], [-1.861, 1.35], [-1.937, 1.35], [-1.967, 1.35], [-2.009, 1.35], [-2.042, 1.35], [-2.069, 1.35], [-2.103, 1.35], [-2.123, 1.35], [-2.159, 1.35], [-2.235, 1.35], [-2.408, 1.35], [-3.029, 1.35], [-3.061, 1.35], [-3.45, 1.35], [-3.561, 1.35], [-3.595, 1.35], [-3.651, 1.35], [-3.657, 1.35], [-3.657, -0.584], [-3.657, -3.35], [-3.576, -3.35], [-3.55, -3.35], [-3.439, -3.35], [-3.394, -3.35], [-3.344, -3.35], [-3.297, -3.35], [-3.268, -3.35], [-3.245, -3.35], [-3.2, -3.35], [-3.2, -3.352], [-3.2, -3.414], [-3.2, -3.483], [-3.2, -3.513], [0.845, -3.513], [3.2, -3.513]]);
	}
}
module keepout_volume_J2_0_2(){
	translate(v = [119.9588, -119.5, max(-0.7249963976836205, 0)]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = (((2.57499707384181 - max(-0.7249963976836205, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						shape_J2_0_2();
					}
				}
			}
		}
	}
}
module tight_perimeter_J2_0(){
	union() {
		translate(v = [119.9588, -119.5, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J2)]) {
			rotate(a = [0, 0, -90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J2) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J2 + Effective_Shell_Thickness_For_J2)) {
						union() {
							shape_J2_0_0();
						}
					}
				}
			}
		}
		translate(v = [119.9588, -119.5, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J2)]) {
			rotate(a = [0, 0, -90.0]) {
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
		keepout_volume_J2_0_2();
	}
}
module wiggle_minus_pocket_J2_0(){
	translate(v = [119.9588, -119.5, min_z_J2]) {
		rotate(a = [0, 0, -90.0]) {
			linear_extrude(height = ((max_z_J2 - min_z_J2) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J2) {
					union() {
						shape_J2_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J2(){
	polygon(points = [[122.4138, -115.105], [122.4138, -123.895], [116.3238, -123.895], [116.3238, -115.105]]);
}
module courtyard_pocket_J2(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J2]) {
			linear_extrude(height = ((max_z_J2 - min_z_J2) + PCB_Thickness)) {
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
module fitting_cuts_JP4_0(){
	union() {
		translate(v = [119.815111, -111.709437, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP4))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [119.815111, -111.709437, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [119.815111, -111.709437, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP4))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP4)) + (2 * tiny_dimension))) {
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
		translate(v = [119.815111, -111.709437, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_JP4_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_JP4_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_JP4_0(){
	union() {
		translate(v = [119.815111, -111.709437, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP4) {
						union() {
							hullpoly_JP4_0_0();
						}
					}
				}
			}
		}
		translate(v = [119.815111, -111.709437, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP4) {
						union() {
							hullpoly_JP4_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_JP4_0(){
	union() {
		hullpoly_JP4_0_0();
	}
}
module wiggle_pocket_JP4_0(){
	translate(v = [119.815111, -111.709437, min_z_JP4]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_JP4 - min_z_JP4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP4) {
					union() {
						outline_JP4_0();
					}
				}
			}
		}
	}
}
module perimeter_JP4_0(){
	union() {
		translate(v = [119.815111, -111.709437, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP4)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
						union() {
							outline_JP4_0();
						}
					}
				}
			}
		}
		translate(v = [119.815111, -111.709437, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP4)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_JP4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4) + Wrapper_Thickness_For_JP4)) {
							union() {
								outline_JP4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
							union() {
								outline_JP4_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_JP4_0(){
	union() {
		translate(v = [119.815111, -111.709437, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP4)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_JP4 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
							union() {
								hullpoly_JP4_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP4) {
							union() {
								hullpoly_JP4_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [119.815111, -111.709437, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP4)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_JP4 - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP4)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
							union() {
								hullpoly_JP4_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP4) {
							union() {
								hullpoly_JP4_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [119.815111, -111.709437, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP4)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_JP4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4) + Wrapper_Thickness_For_JP4)) {
							union() {
								outline_JP4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
							union() {
								outline_JP4_0();
							}
						}
					}
				}
			}
		}
		translate(v = [119.815111, -111.709437, (PCB_Thickness + max_z_JP4)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_JP4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
						union() {
							outline_JP4_0();
						}
					}
				}
			}
		}
	}
}
module shape_JP4_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_JP4_0_0(){
	translate(v = [119.815111, -111.709437, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP4) {
					union() {
						shape_JP4_0_0();
					}
				}
			}
		}
	}
}
module shape_JP4_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_JP4_0_1(){
	translate(v = [119.815111, -111.709437, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP4) {
					union() {
						shape_JP4_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_JP4_0(){
	union() {
		translate(v = [119.815111, -111.709437, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP4)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
						union() {
							shape_JP4_0_0();
						}
					}
				}
			}
		}
		translate(v = [119.815111, -111.709437, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP4)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_JP4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4) + Wrapper_Thickness_For_JP4)) {
							union() {
								shape_JP4_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
							union() {
								shape_JP4_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_JP4_0(){
	union() {
		keepout_volume_JP4_0_0();
		keepout_volume_JP4_0_1();
	}
}
module wiggle_minus_pocket_JP4_0(){
	translate(v = [119.815111, -111.709437, min_z_JP4]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_JP4 - min_z_JP4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP4) {
					union() {
						shape_JP4_0_0();
					}
				}
			}
		}
	}
}
module courtyard_JP4(){
	polygon(points = [[124.160111, -109.914437], [124.160111, -113.504437], [118.020111, -113.504437], [118.020111, -109.914437]]);
}
module courtyard_pocket_JP4(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_JP4]) {
			linear_extrude(height = ((max_z_JP4 - min_z_JP4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP4) {
					union() {
						courtyard_JP4();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_JP4(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP4)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP4) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
					union() {
						courtyard_JP4();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP4)]) {
			linear_extrude(height = Wrapper_Height_For_JP4) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4) + Wrapper_Thickness_For_JP4)) {
						union() {
							courtyard_JP4();
						}
					}
					offset(r = (Effective_Shell_Gap_For_JP4 + Effective_Shell_Thickness_For_JP4)) {
						union() {
							courtyard_JP4();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J8_0(){
	union() {
		translate(v = [119.2, -153.9, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J8))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J8)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -5.3993327091215235],[-0.46075425460358, -5.540754065358833],0.4);
						peri_line_scad([0.3193328983662705, -5.3993327091215235],[0.46075425460358, -5.540754065358833],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
					}
				}
			}
		}
		translate(v = [119.2, -153.9, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [119.2, -153.9, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J8))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J8)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([1.2690761205530252, -6.095617558594408],[1.4538520099479868, -6.1721542863680785],0.4);
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
								peri_line_scad([-1.2690761205530252, -6.095617558594408],[-1.4538520099479868, -6.1721542863680785],0.4);
								peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
						hull() {
							union() {
								peri_line_scad([1.015617331913718, -6.349076120381952],[1.0921539770860798, -6.533852043991495],0.4);
								peri_line_scad([1.2690761205530252, -6.095617558594408],[1.4538520099479868, -6.1721542863680785],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [119.2, -153.9, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -3.096000242233276],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * 1.0)), (-3.096000242233276 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604206],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * 1.0)), (-1.9839999848604206 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -3.0960002422332757],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * -1.0)), (-3.0960002422332757 + (((0.01 + Effective_Shell_Thickness_For_J8) + Effective_Shell_Gap_For_J8) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J8_0_0(){
	polygon(points = [[1.27, -6.096000242233276], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -6.096000242233276], [-1.0160000151395798, -6.35], [1.0160000151395798, -6.35]]);
}
module hullpoly_J8_0_1(){
	polygon(points = [[-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -5.40003981590271], [0.32004000514745706, -5.40003981590271], [0.32004000514745706, 0.32004000514745706]]);
}
module fitting_pocket_J8_0(){
	union() {
		translate(v = [119.2, -153.9, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J8) {
						union() {
							hullpoly_J8_0_0();
						}
					}
				}
			}
		}
		translate(v = [119.2, -153.9, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J8) {
						union() {
							hullpoly_J8_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J8_0(){
	union() {
		hullpoly_J8_0_0();
	}
}
module wiggle_pocket_J8_0(){
	translate(v = [119.2, -153.9, min_z_J8]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J8 - min_z_J8) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J8) {
					union() {
						outline_J8_0();
					}
				}
			}
		}
	}
}
module perimeter_J8_0(){
	union() {
		translate(v = [119.2, -153.9, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J8)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J8) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
						union() {
							outline_J8_0();
						}
					}
				}
			}
		}
		translate(v = [119.2, -153.9, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J8)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J8) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8) + Wrapper_Thickness_For_J8)) {
							union() {
								outline_J8_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
							union() {
								outline_J8_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J8_0(){
	union() {
		translate(v = [119.2, -153.9, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J8)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J8 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J8)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
							union() {
								hullpoly_J8_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J8) {
							union() {
								hullpoly_J8_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [119.2, -153.9, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J8)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_J8 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J8)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
							union() {
								hullpoly_J8_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J8) {
							union() {
								hullpoly_J8_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [119.2, -153.9, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J8)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J8) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8) + Wrapper_Thickness_For_J8)) {
							union() {
								outline_J8_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
							union() {
								outline_J8_0();
							}
						}
					}
				}
			}
		}
		translate(v = [119.2, -153.9, (PCB_Thickness + max_z_J8)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_J8) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
						union() {
							outline_J8_0();
						}
					}
				}
			}
		}
	}
}
module shape_J8_0_0(){
	union() {
		polygon(points = [[1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35]]);
	}
}
module keepout_volume_J8_0_0(){
	translate(v = [119.2, -153.9, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J8) {
					union() {
						shape_J8_0_0();
					}
				}
			}
		}
	}
}
module shape_J8_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
	}
}
module keepout_volume_J8_0_1(){
	translate(v = [119.2, -153.9, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J8) {
					union() {
						shape_J8_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J8_0(){
	union() {
		translate(v = [119.2, -153.9, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J8)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J8) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
						union() {
							shape_J8_0_0();
						}
					}
				}
			}
		}
		translate(v = [119.2, -153.9, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J8)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_J8) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8) + Wrapper_Thickness_For_J8)) {
							union() {
								shape_J8_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
							union() {
								shape_J8_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J8_0(){
	union() {
		keepout_volume_J8_0_0();
		keepout_volume_J8_0_1();
	}
}
module wiggle_minus_pocket_J8_0(){
	translate(v = [119.2, -153.9, min_z_J8]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_J8 - min_z_J8) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J8) {
					union() {
						shape_J8_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J8(){
	polygon(points = [[126.045, -152.105], [126.045, -155.695], [117.405, -155.695], [117.405, -152.105]]);
}
module courtyard_pocket_J8(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J8]) {
			linear_extrude(height = ((max_z_J8 - min_z_J8) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J8) {
					union() {
						courtyard_J8();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J8(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J8)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J8) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
					union() {
						courtyard_J8();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J8)]) {
			linear_extrude(height = Wrapper_Height_For_J8) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8) + Wrapper_Thickness_For_J8)) {
						union() {
							courtyard_J8();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J8 + Effective_Shell_Thickness_For_J8)) {
						union() {
							courtyard_J8();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_JP1_0(){
	union() {
		translate(v = [177.6, -134.95, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP1))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([0.3193328983662705, -2.8593330119131193],[0.46075425460358, -3.000754368150429],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -2.8593330119131193],[-0.46075425460358, -3.000754368150429],0.4);
					}
				}
			}
		}
		translate(v = [177.6, -134.95, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [177.6, -134.95, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP1))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP1)) + (2 * tiny_dimension))) {
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
		translate(v = [177.6, -134.95, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
	}
}
module hullpoly_JP1_0_0(){
	polygon(points = [[1.27, -3.555999939441681], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -3.555999939441681], [-1.0160000151395798, -3.81], [1.0160000151395798, -3.81]]);
}
module hullpoly_JP1_0_1(){
	polygon(points = [[0.32004000514745706, -2.8600401186943056], [0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -2.8600401186943056]]);
}
module fitting_pocket_JP1_0(){
	union() {
		translate(v = [177.6, -134.95, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP1) {
						union() {
							hullpoly_JP1_0_0();
						}
					}
				}
			}
		}
		translate(v = [177.6, -134.95, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_JP1) {
						union() {
							hullpoly_JP1_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_JP1_0(){
	union() {
		hullpoly_JP1_0_0();
	}
}
module wiggle_pocket_JP1_0(){
	translate(v = [177.6, -134.95, min_z_JP1]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_JP1 - min_z_JP1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP1) {
					union() {
						outline_JP1_0();
					}
				}
			}
		}
	}
}
module perimeter_JP1_0(){
	union() {
		translate(v = [177.6, -134.95, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP1)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
						union() {
							outline_JP1_0();
						}
					}
				}
			}
		}
		translate(v = [177.6, -134.95, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP1)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_JP1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1) + Wrapper_Thickness_For_JP1)) {
							union() {
								outline_JP1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
							union() {
								outline_JP1_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_JP1_0(){
	union() {
		translate(v = [177.6, -134.95, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_JP1 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_JP1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
							union() {
								hullpoly_JP1_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP1) {
							union() {
								hullpoly_JP1_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [177.6, -134.95, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_JP1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_JP1 - max(2.54, Effective_Shell_Clearance_From_PCB_For_JP1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
							union() {
								hullpoly_JP1_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_JP1) {
							union() {
								hullpoly_JP1_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [177.6, -134.95, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP1)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_JP1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1) + Wrapper_Thickness_For_JP1)) {
							union() {
								outline_JP1_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
							union() {
								outline_JP1_0();
							}
						}
					}
				}
			}
		}
		translate(v = [177.6, -134.95, (PCB_Thickness + max_z_JP1)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - max_z_JP1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
						union() {
							outline_JP1_0();
						}
					}
				}
			}
		}
	}
}
module shape_JP1_0_0(){
	union() {
		polygon(points = [[1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81]]);
	}
}
module keepout_volume_JP1_0_0(){
	translate(v = [177.6, -134.95, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP1) {
					union() {
						shape_JP1_0_0();
					}
				}
			}
		}
	}
}
module shape_JP1_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
	}
}
module keepout_volume_JP1_0_1(){
	translate(v = [177.6, -134.95, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP1) {
					union() {
						shape_JP1_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_JP1_0(){
	union() {
		translate(v = [177.6, -134.95, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP1)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
						union() {
							shape_JP1_0_0();
						}
					}
				}
			}
		}
		translate(v = [177.6, -134.95, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP1)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_JP1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1) + Wrapper_Thickness_For_JP1)) {
							union() {
								shape_JP1_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
							union() {
								shape_JP1_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_JP1_0(){
	union() {
		keepout_volume_JP1_0_0();
		keepout_volume_JP1_0_1();
	}
}
module wiggle_minus_pocket_JP1_0(){
	translate(v = [177.6, -134.95, min_z_JP1]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_JP1 - min_z_JP1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP1) {
					union() {
						shape_JP1_0_0();
					}
				}
			}
		}
	}
}
module courtyard_JP1(){
	polygon(points = [[179.395, -130.605], [179.395, -136.745], [175.805, -136.745], [175.805, -130.605]]);
}
module courtyard_pocket_JP1(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_JP1]) {
			linear_extrude(height = ((max_z_JP1 - min_z_JP1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_JP1) {
					union() {
						courtyard_JP1();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_JP1(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_JP1)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_JP1) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
					union() {
						courtyard_JP1();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_JP1)]) {
			linear_extrude(height = Wrapper_Height_For_JP1) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1) + Wrapper_Thickness_For_JP1)) {
						union() {
							courtyard_JP1();
						}
					}
					offset(r = (Effective_Shell_Gap_For_JP1 + Effective_Shell_Thickness_For_JP1)) {
						union() {
							courtyard_JP1();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J10_0(){
	union() {
		translate(v = [122.3, -98.780001, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J10))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J10)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([2.8593330119131193, 0.3193328983662705],[3.000754368150429, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -23.179333920287906],[-0.46075425460358, -23.320755276525215],0.4);
						peri_line_scad([2.8593330119131193, -23.179333920287906],[3.000754368150429, -23.320755276525215],0.4);
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -20.18004102706909],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * -1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([2.8590401186943057, -20.18004102706909],[(2.8590401186943057 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 1.0)), (-20.18004102706909 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
								peri_line_scad([2.8590401186943057, -2.679959994852542],[(2.8590401186943057 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 1.0)), (-2.679959994852542 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J10))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J10)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([3.809076120125344, -23.87561634846054],[3.993852095056519, -23.95215286973133],0.4);
						hull() {
							union() {
								peri_line_scad([3.809076120496001, 1.0156173316383803],[3.993852021295831, 1.0921540318782748],0.4);
								peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
							}
						}
						peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
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
								peri_line_scad([3.555617255183305, -24.129076120809632],[3.6321541068584917, -24.313851958882825],0.4);
								peri_line_scad([3.809076120125344, -23.87561634846054],[3.993852095056519, -23.95215286973133],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([3.809, -20.875999031066893],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
								peri_line_scad([3.809, -1.9839999848604215],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 1.0)), (-1.9839999848604215 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -20.875999031066893],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * -1.0)), (-20.875999031066893 + (((0.01 + Effective_Shell_Thickness_For_J10) + Effective_Shell_Gap_For_J10) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J10_0_0(){
	polygon(points = [[3.81, -23.875999031066893], [3.81, 1.0160000151395798], [3.555999939441681, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -23.875999031066893], [-1.0160000151395798, -24.13], [3.555999939441681, -24.13]]);
}
module hullpoly_J10_0_1(){
	polygon(points = [[2.8600401186943056, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -23.18004102706909], [2.8600401186943056, -23.18004102706909]]);
}
module fitting_pocket_J10_0(){
	union() {
		translate(v = [122.3, -98.780001, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J10) {
						union() {
							hullpoly_J10_0_0();
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J10) {
						union() {
							hullpoly_J10_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J10_0(){
	union() {
		hullpoly_J10_0_0();
	}
}
module wiggle_pocket_J10_0(){
	translate(v = [122.3, -98.780001, min_z_J10]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J10 - min_z_J10) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J10) {
					union() {
						outline_J10_0();
					}
				}
			}
		}
	}
}
module perimeter_J10_0(){
	union() {
		translate(v = [122.3, -98.780001, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J10)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J10) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
						union() {
							outline_J10_0();
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J10)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J10) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10) + Wrapper_Thickness_For_J10)) {
							union() {
								outline_J10_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
							union() {
								outline_J10_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J10_0(){
	union() {
		translate(v = [122.3, -98.780001, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J10)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_J10 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J10)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
							union() {
								hullpoly_J10_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J10) {
							union() {
								hullpoly_J10_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J10)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_J10 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J10)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
							union() {
								hullpoly_J10_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J10) {
							union() {
								hullpoly_J10_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J10)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J10) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10) + Wrapper_Thickness_For_J10)) {
							union() {
								outline_J10_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
							union() {
								outline_J10_0();
							}
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, (PCB_Thickness + max_z_J10)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - max_z_J10) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
						union() {
							outline_J10_0();
						}
					}
				}
			}
		}
	}
}
module shape_J10_0_0(){
	union() {
		polygon(points = [[3.556, -24.13], [3.806, -23.88], [3.81, -23.876], [3.81, -21.876], [3.81, -21.844], [3.56, -21.594], [3.556, -21.59], [3.806, -21.34], [3.81, -21.336], [3.81, -19.336], [3.81, -19.304], [3.56, -19.054], [3.556, -19.05], [3.806, -18.8], [3.81, -18.796], [3.81, -16.796], [3.81, -16.764], [3.56, -16.514], [3.556, -16.51], [3.806, -16.26], [3.81, -16.256], [3.81, -14.256], [3.81, -14.224], [3.56, -13.974], [3.556, -13.97], [3.806, -13.72], [3.81, -13.716], [3.81, -11.716], [3.81, -11.684], [3.56, -11.434], [3.556, -11.43], [3.806, -11.18], [3.81, -11.176], [3.81, -9.176], [3.81, -9.144], [3.56, -8.894], [3.556, -8.89], [3.806, -8.64], [3.81, -8.636], [3.81, -6.636], [3.81, -6.604], [3.56, -6.354], [3.556, -6.35], [3.806, -6.1], [3.81, -6.096], [3.81, -4.096], [3.81, -4.064], [3.56, -3.814], [3.556, -3.81], [3.806, -3.56], [3.81, -3.556], [3.81, -1.556], [3.81, -1.524], [3.56, -1.274], [3.556, -1.27], [3.806, -1.02], [3.81, -1.016], [3.81, 0.984], [3.81, 1.016], [3.56, 1.266], [3.556, 1.27], [-0.945, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43], [-1.27, -11.684], [-1.27, -13.716], [-1.016, -13.97], [-1.27, -14.224], [-1.27, -16.256], [-1.016, -16.51], [-1.27, -16.764], [-1.27, -18.796], [-1.016, -19.05], [-1.27, -19.304], [-1.27, -21.336], [-1.016, -21.59], [-1.27, -21.844], [-1.27, -23.876], [-1.016, -24.13], [-1.015, -24.13]]);
	}
}
module keepout_volume_J10_0_0(){
	translate(v = [122.3, -98.780001, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J10) {
					union() {
						shape_J10_0_0();
					}
				}
			}
		}
	}
}
module shape_J10_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[2.749, -0.658], [2.798, -0.65], [2.845, -0.638], [2.891, -0.622], [2.936, -0.601], [2.978, -0.576], [3.017, -0.547], [3.054, -0.514], [3.087, -0.477], [3.116, -0.438], [3.141, -0.396], [3.162, -0.351], [3.178, -0.305], [3.19, -0.258], [3.198, -0.209], [3.2, -0.16], [3.2, 0.16], [3.198, 0.209], [3.19, 0.258], [3.178, 0.305], [3.162, 0.351], [3.141, 0.396], [3.116, 0.438], [3.087, 0.477], [3.054, 0.514], [3.017, 0.547], [2.978, 0.576], [2.936, 0.601], [2.891, 0.622], [2.845, 0.638], [2.798, 0.65], [2.749, 0.658], [2.7, 0.66], [2.38, 0.66], [2.331, 0.658], [2.282, 0.65], [2.235, 0.638], [2.189, 0.622], [2.144, 0.601], [2.102, 0.576], [2.063, 0.547], [2.026, 0.514], [1.993, 0.477], [1.964, 0.438], [1.939, 0.396], [1.918, 0.351], [1.902, 0.305], [1.89, 0.258], [1.882, 0.209], [1.88, 0.16], [1.88, -0.16], [1.882, -0.209], [1.89, -0.258], [1.902, -0.305], [1.918, -0.351], [1.939, -0.396], [1.964, -0.438], [1.993, -0.477], [2.026, -0.514], [2.063, -0.547], [2.102, -0.576], [2.144, -0.601], [2.189, -0.622], [2.235, -0.638], [2.282, -0.65], [2.331, -0.658], [2.38, -0.66], [2.7, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[2.749, -3.198], [2.798, -3.19], [2.845, -3.178], [2.891, -3.162], [2.936, -3.141], [2.978, -3.116], [3.017, -3.087], [3.054, -3.054], [3.087, -3.017], [3.116, -2.978], [3.141, -2.936], [3.162, -2.891], [3.178, -2.845], [3.19, -2.798], [3.198, -2.749], [3.2, -2.7], [3.2, -2.38], [3.198, -2.331], [3.19, -2.282], [3.178, -2.235], [3.162, -2.189], [3.141, -2.144], [3.116, -2.102], [3.087, -2.063], [3.054, -2.026], [3.017, -1.993], [2.978, -1.964], [2.936, -1.939], [2.891, -1.918], [2.845, -1.902], [2.798, -1.89], [2.749, -1.882], [2.7, -1.88], [2.38, -1.88], [2.331, -1.882], [2.282, -1.89], [2.235, -1.902], [2.189, -1.918], [2.144, -1.939], [2.102, -1.964], [2.063, -1.993], [2.026, -2.026], [1.993, -2.063], [1.964, -2.102], [1.939, -2.144], [1.918, -2.189], [1.902, -2.235], [1.89, -2.282], [1.882, -2.331], [1.88, -2.38], [1.88, -2.7], [1.882, -2.749], [1.89, -2.798], [1.902, -2.845], [1.918, -2.891], [1.939, -2.936], [1.964, -2.978], [1.993, -3.017], [2.026, -3.054], [2.063, -3.087], [2.102, -3.116], [2.144, -3.141], [2.189, -3.162], [2.235, -3.178], [2.282, -3.19], [2.331, -3.198], [2.38, -3.2], [2.7, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[2.749, -5.738], [2.798, -5.73], [2.845, -5.718], [2.891, -5.702], [2.936, -5.681], [2.978, -5.656], [3.017, -5.627], [3.054, -5.594], [3.087, -5.557], [3.116, -5.518], [3.141, -5.476], [3.162, -5.431], [3.178, -5.385], [3.19, -5.338], [3.198, -5.289], [3.2, -5.24], [3.2, -4.92], [3.198, -4.871], [3.19, -4.822], [3.178, -4.775], [3.162, -4.729], [3.141, -4.684], [3.116, -4.642], [3.087, -4.603], [3.054, -4.566], [3.017, -4.533], [2.978, -4.504], [2.936, -4.479], [2.891, -4.458], [2.845, -4.442], [2.798, -4.43], [2.749, -4.422], [2.7, -4.42], [2.38, -4.42], [2.331, -4.422], [2.282, -4.43], [2.235, -4.442], [2.189, -4.458], [2.144, -4.479], [2.102, -4.504], [2.063, -4.533], [2.026, -4.566], [1.993, -4.603], [1.964, -4.642], [1.939, -4.684], [1.918, -4.729], [1.902, -4.775], [1.89, -4.822], [1.882, -4.871], [1.88, -4.92], [1.88, -5.24], [1.882, -5.289], [1.89, -5.338], [1.902, -5.385], [1.918, -5.431], [1.939, -5.476], [1.964, -5.518], [1.993, -5.557], [2.026, -5.594], [2.063, -5.627], [2.102, -5.656], [2.144, -5.681], [2.189, -5.702], [2.235, -5.718], [2.282, -5.73], [2.331, -5.738], [2.38, -5.74], [2.7, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[2.749, -8.278], [2.798, -8.27], [2.845, -8.258], [2.891, -8.242], [2.936, -8.221], [2.978, -8.196], [3.017, -8.167], [3.054, -8.134], [3.087, -8.097], [3.116, -8.058], [3.141, -8.016], [3.162, -7.971], [3.178, -7.925], [3.19, -7.878], [3.198, -7.829], [3.2, -7.78], [3.2, -7.46], [3.198, -7.411], [3.19, -7.362], [3.178, -7.315], [3.162, -7.269], [3.141, -7.224], [3.116, -7.182], [3.087, -7.143], [3.054, -7.106], [3.017, -7.073], [2.978, -7.044], [2.936, -7.019], [2.891, -6.998], [2.845, -6.982], [2.798, -6.97], [2.749, -6.962], [2.7, -6.96], [2.38, -6.96], [2.331, -6.962], [2.282, -6.97], [2.235, -6.982], [2.189, -6.998], [2.144, -7.019], [2.102, -7.044], [2.063, -7.073], [2.026, -7.106], [1.993, -7.143], [1.964, -7.182], [1.939, -7.224], [1.918, -7.269], [1.902, -7.315], [1.89, -7.362], [1.882, -7.411], [1.88, -7.46], [1.88, -7.78], [1.882, -7.829], [1.89, -7.878], [1.902, -7.925], [1.918, -7.971], [1.939, -8.016], [1.964, -8.058], [1.993, -8.097], [2.026, -8.134], [2.063, -8.167], [2.102, -8.196], [2.144, -8.221], [2.189, -8.242], [2.235, -8.258], [2.282, -8.27], [2.331, -8.278], [2.38, -8.28], [2.7, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
		polygon(points = [[2.749, -10.818], [2.798, -10.81], [2.845, -10.798], [2.891, -10.782], [2.936, -10.761], [2.978, -10.736], [3.017, -10.707], [3.054, -10.674], [3.087, -10.637], [3.116, -10.598], [3.141, -10.556], [3.162, -10.511], [3.178, -10.465], [3.19, -10.418], [3.198, -10.369], [3.2, -10.32], [3.2, -10.0], [3.198, -9.951], [3.19, -9.902], [3.178, -9.855], [3.162, -9.809], [3.141, -9.764], [3.116, -9.722], [3.087, -9.683], [3.054, -9.646], [3.017, -9.613], [2.978, -9.584], [2.936, -9.559], [2.891, -9.538], [2.845, -9.522], [2.798, -9.51], [2.749, -9.502], [2.7, -9.5], [2.38, -9.5], [2.331, -9.502], [2.282, -9.51], [2.235, -9.522], [2.189, -9.538], [2.144, -9.559], [2.102, -9.584], [2.063, -9.613], [2.026, -9.646], [1.993, -9.683], [1.964, -9.722], [1.939, -9.764], [1.918, -9.809], [1.902, -9.855], [1.89, -9.902], [1.882, -9.951], [1.88, -10.0], [1.88, -10.32], [1.882, -10.369], [1.89, -10.418], [1.902, -10.465], [1.918, -10.511], [1.939, -10.556], [1.964, -10.598], [1.993, -10.637], [2.026, -10.674], [2.063, -10.707], [2.102, -10.736], [2.144, -10.761], [2.189, -10.782], [2.235, -10.798], [2.282, -10.81], [2.331, -10.818], [2.38, -10.82], [2.7, -10.82]]);
		polygon(points = [[0.209, -13.358], [0.258, -13.35], [0.305, -13.338], [0.351, -13.322], [0.396, -13.301], [0.438, -13.276], [0.477, -13.247], [0.514, -13.214], [0.547, -13.177], [0.576, -13.138], [0.601, -13.096], [0.622, -13.051], [0.638, -13.005], [0.65, -12.958], [0.658, -12.909], [0.66, -12.86], [0.66, -12.54], [0.658, -12.491], [0.65, -12.442], [0.638, -12.395], [0.622, -12.349], [0.601, -12.304], [0.576, -12.262], [0.547, -12.223], [0.514, -12.186], [0.477, -12.153], [0.438, -12.124], [0.396, -12.099], [0.351, -12.078], [0.305, -12.062], [0.258, -12.05], [0.209, -12.042], [0.16, -12.04], [-0.16, -12.04], [-0.209, -12.042], [-0.258, -12.05], [-0.305, -12.062], [-0.351, -12.078], [-0.396, -12.099], [-0.438, -12.124], [-0.477, -12.153], [-0.514, -12.186], [-0.547, -12.223], [-0.576, -12.262], [-0.601, -12.304], [-0.622, -12.349], [-0.638, -12.395], [-0.65, -12.442], [-0.658, -12.491], [-0.66, -12.54], [-0.66, -12.86], [-0.658, -12.909], [-0.65, -12.958], [-0.638, -13.005], [-0.622, -13.051], [-0.601, -13.096], [-0.576, -13.138], [-0.547, -13.177], [-0.514, -13.214], [-0.477, -13.247], [-0.438, -13.276], [-0.396, -13.301], [-0.351, -13.322], [-0.305, -13.338], [-0.258, -13.35], [-0.209, -13.358], [-0.16, -13.36], [0.16, -13.36]]);
		polygon(points = [[2.749, -13.358], [2.798, -13.35], [2.845, -13.338], [2.891, -13.322], [2.936, -13.301], [2.978, -13.276], [3.017, -13.247], [3.054, -13.214], [3.087, -13.177], [3.116, -13.138], [3.141, -13.096], [3.162, -13.051], [3.178, -13.005], [3.19, -12.958], [3.198, -12.909], [3.2, -12.86], [3.2, -12.54], [3.198, -12.491], [3.19, -12.442], [3.178, -12.395], [3.162, -12.349], [3.141, -12.304], [3.116, -12.262], [3.087, -12.223], [3.054, -12.186], [3.017, -12.153], [2.978, -12.124], [2.936, -12.099], [2.891, -12.078], [2.845, -12.062], [2.798, -12.05], [2.749, -12.042], [2.7, -12.04], [2.38, -12.04], [2.331, -12.042], [2.282, -12.05], [2.235, -12.062], [2.189, -12.078], [2.144, -12.099], [2.102, -12.124], [2.063, -12.153], [2.026, -12.186], [1.993, -12.223], [1.964, -12.262], [1.939, -12.304], [1.918, -12.349], [1.902, -12.395], [1.89, -12.442], [1.882, -12.491], [1.88, -12.54], [1.88, -12.86], [1.882, -12.909], [1.89, -12.958], [1.902, -13.005], [1.918, -13.051], [1.939, -13.096], [1.964, -13.138], [1.993, -13.177], [2.026, -13.214], [2.063, -13.247], [2.102, -13.276], [2.144, -13.301], [2.189, -13.322], [2.235, -13.338], [2.282, -13.35], [2.331, -13.358], [2.38, -13.36], [2.7, -13.36]]);
		polygon(points = [[0.209, -15.898], [0.258, -15.89], [0.305, -15.878], [0.351, -15.862], [0.396, -15.841], [0.438, -15.816], [0.477, -15.787], [0.514, -15.754], [0.547, -15.717], [0.576, -15.678], [0.601, -15.636], [0.622, -15.591], [0.638, -15.545], [0.65, -15.498], [0.658, -15.449], [0.66, -15.4], [0.66, -15.08], [0.658, -15.031], [0.65, -14.982], [0.638, -14.935], [0.622, -14.889], [0.601, -14.844], [0.576, -14.802], [0.547, -14.763], [0.514, -14.726], [0.477, -14.693], [0.438, -14.664], [0.396, -14.639], [0.351, -14.618], [0.305, -14.602], [0.258, -14.59], [0.209, -14.582], [0.16, -14.58], [-0.16, -14.58], [-0.209, -14.582], [-0.258, -14.59], [-0.305, -14.602], [-0.351, -14.618], [-0.396, -14.639], [-0.438, -14.664], [-0.477, -14.693], [-0.514, -14.726], [-0.547, -14.763], [-0.576, -14.802], [-0.601, -14.844], [-0.622, -14.889], [-0.638, -14.935], [-0.65, -14.982], [-0.658, -15.031], [-0.66, -15.08], [-0.66, -15.4], [-0.658, -15.449], [-0.65, -15.498], [-0.638, -15.545], [-0.622, -15.591], [-0.601, -15.636], [-0.576, -15.678], [-0.547, -15.717], [-0.514, -15.754], [-0.477, -15.787], [-0.438, -15.816], [-0.396, -15.841], [-0.351, -15.862], [-0.305, -15.878], [-0.258, -15.89], [-0.209, -15.898], [-0.16, -15.9], [0.16, -15.9]]);
		polygon(points = [[2.749, -15.898], [2.798, -15.89], [2.845, -15.878], [2.891, -15.862], [2.936, -15.841], [2.978, -15.816], [3.017, -15.787], [3.054, -15.754], [3.087, -15.717], [3.116, -15.678], [3.141, -15.636], [3.162, -15.591], [3.178, -15.545], [3.19, -15.498], [3.198, -15.449], [3.2, -15.4], [3.2, -15.08], [3.198, -15.031], [3.19, -14.982], [3.178, -14.935], [3.162, -14.889], [3.141, -14.844], [3.116, -14.802], [3.087, -14.763], [3.054, -14.726], [3.017, -14.693], [2.978, -14.664], [2.936, -14.639], [2.891, -14.618], [2.845, -14.602], [2.798, -14.59], [2.749, -14.582], [2.7, -14.58], [2.38, -14.58], [2.331, -14.582], [2.282, -14.59], [2.235, -14.602], [2.189, -14.618], [2.144, -14.639], [2.102, -14.664], [2.063, -14.693], [2.026, -14.726], [1.993, -14.763], [1.964, -14.802], [1.939, -14.844], [1.918, -14.889], [1.902, -14.935], [1.89, -14.982], [1.882, -15.031], [1.88, -15.08], [1.88, -15.4], [1.882, -15.449], [1.89, -15.498], [1.902, -15.545], [1.918, -15.591], [1.939, -15.636], [1.964, -15.678], [1.993, -15.717], [2.026, -15.754], [2.063, -15.787], [2.102, -15.816], [2.144, -15.841], [2.189, -15.862], [2.235, -15.878], [2.282, -15.89], [2.331, -15.898], [2.38, -15.9], [2.7, -15.9]]);
		polygon(points = [[0.209, -18.438], [0.258, -18.43], [0.305, -18.418], [0.351, -18.402], [0.396, -18.381], [0.438, -18.356], [0.477, -18.327], [0.514, -18.294], [0.547, -18.257], [0.576, -18.218], [0.601, -18.176], [0.622, -18.131], [0.638, -18.085], [0.65, -18.038], [0.658, -17.989], [0.66, -17.94], [0.66, -17.62], [0.658, -17.571], [0.65, -17.522], [0.638, -17.475], [0.622, -17.429], [0.601, -17.384], [0.576, -17.342], [0.547, -17.303], [0.514, -17.266], [0.477, -17.233], [0.438, -17.204], [0.396, -17.179], [0.351, -17.158], [0.305, -17.142], [0.258, -17.13], [0.209, -17.122], [0.16, -17.12], [-0.16, -17.12], [-0.209, -17.122], [-0.258, -17.13], [-0.305, -17.142], [-0.351, -17.158], [-0.396, -17.179], [-0.438, -17.204], [-0.477, -17.233], [-0.514, -17.266], [-0.547, -17.303], [-0.576, -17.342], [-0.601, -17.384], [-0.622, -17.429], [-0.638, -17.475], [-0.65, -17.522], [-0.658, -17.571], [-0.66, -17.62], [-0.66, -17.94], [-0.658, -17.989], [-0.65, -18.038], [-0.638, -18.085], [-0.622, -18.131], [-0.601, -18.176], [-0.576, -18.218], [-0.547, -18.257], [-0.514, -18.294], [-0.477, -18.327], [-0.438, -18.356], [-0.396, -18.381], [-0.351, -18.402], [-0.305, -18.418], [-0.258, -18.43], [-0.209, -18.438], [-0.16, -18.44], [0.16, -18.44]]);
		polygon(points = [[2.749, -18.438], [2.798, -18.43], [2.845, -18.418], [2.891, -18.402], [2.936, -18.381], [2.978, -18.356], [3.017, -18.327], [3.054, -18.294], [3.087, -18.257], [3.116, -18.218], [3.141, -18.176], [3.162, -18.131], [3.178, -18.085], [3.19, -18.038], [3.198, -17.989], [3.2, -17.94], [3.2, -17.62], [3.198, -17.571], [3.19, -17.522], [3.178, -17.475], [3.162, -17.429], [3.141, -17.384], [3.116, -17.342], [3.087, -17.303], [3.054, -17.266], [3.017, -17.233], [2.978, -17.204], [2.936, -17.179], [2.891, -17.158], [2.845, -17.142], [2.798, -17.13], [2.749, -17.122], [2.7, -17.12], [2.38, -17.12], [2.331, -17.122], [2.282, -17.13], [2.235, -17.142], [2.189, -17.158], [2.144, -17.179], [2.102, -17.204], [2.063, -17.233], [2.026, -17.266], [1.993, -17.303], [1.964, -17.342], [1.939, -17.384], [1.918, -17.429], [1.902, -17.475], [1.89, -17.522], [1.882, -17.571], [1.88, -17.62], [1.88, -17.94], [1.882, -17.989], [1.89, -18.038], [1.902, -18.085], [1.918, -18.131], [1.939, -18.176], [1.964, -18.218], [1.993, -18.257], [2.026, -18.294], [2.063, -18.327], [2.102, -18.356], [2.144, -18.381], [2.189, -18.402], [2.235, -18.418], [2.282, -18.43], [2.331, -18.438], [2.38, -18.44], [2.7, -18.44]]);
		polygon(points = [[0.209, -20.978], [0.258, -20.97], [0.305, -20.958], [0.351, -20.942], [0.396, -20.921], [0.438, -20.896], [0.477, -20.867], [0.514, -20.834], [0.547, -20.797], [0.576, -20.758], [0.601, -20.716], [0.622, -20.671], [0.638, -20.625], [0.65, -20.578], [0.658, -20.529], [0.66, -20.48], [0.66, -20.16], [0.658, -20.111], [0.65, -20.062], [0.638, -20.015], [0.622, -19.969], [0.601, -19.924], [0.576, -19.882], [0.547, -19.843], [0.514, -19.806], [0.477, -19.773], [0.438, -19.744], [0.396, -19.719], [0.351, -19.698], [0.305, -19.682], [0.258, -19.67], [0.209, -19.662], [0.16, -19.66], [-0.16, -19.66], [-0.209, -19.662], [-0.258, -19.67], [-0.305, -19.682], [-0.351, -19.698], [-0.396, -19.719], [-0.438, -19.744], [-0.477, -19.773], [-0.514, -19.806], [-0.547, -19.843], [-0.576, -19.882], [-0.601, -19.924], [-0.622, -19.969], [-0.638, -20.015], [-0.65, -20.062], [-0.658, -20.111], [-0.66, -20.16], [-0.66, -20.48], [-0.658, -20.529], [-0.65, -20.578], [-0.638, -20.625], [-0.622, -20.671], [-0.601, -20.716], [-0.576, -20.758], [-0.547, -20.797], [-0.514, -20.834], [-0.477, -20.867], [-0.438, -20.896], [-0.396, -20.921], [-0.351, -20.942], [-0.305, -20.958], [-0.258, -20.97], [-0.209, -20.978], [-0.16, -20.98], [0.16, -20.98]]);
		polygon(points = [[2.749, -20.978], [2.798, -20.97], [2.845, -20.958], [2.891, -20.942], [2.936, -20.921], [2.978, -20.896], [3.017, -20.867], [3.054, -20.834], [3.087, -20.797], [3.116, -20.758], [3.141, -20.716], [3.162, -20.671], [3.178, -20.625], [3.19, -20.578], [3.198, -20.529], [3.2, -20.48], [3.2, -20.16], [3.198, -20.111], [3.19, -20.062], [3.178, -20.015], [3.162, -19.969], [3.141, -19.924], [3.116, -19.882], [3.087, -19.843], [3.054, -19.806], [3.017, -19.773], [2.978, -19.744], [2.936, -19.719], [2.891, -19.698], [2.845, -19.682], [2.798, -19.67], [2.749, -19.662], [2.7, -19.66], [2.38, -19.66], [2.331, -19.662], [2.282, -19.67], [2.235, -19.682], [2.189, -19.698], [2.144, -19.719], [2.102, -19.744], [2.063, -19.773], [2.026, -19.806], [1.993, -19.843], [1.964, -19.882], [1.939, -19.924], [1.918, -19.969], [1.902, -20.015], [1.89, -20.062], [1.882, -20.111], [1.88, -20.16], [1.88, -20.48], [1.882, -20.529], [1.89, -20.578], [1.902, -20.625], [1.918, -20.671], [1.939, -20.716], [1.964, -20.758], [1.993, -20.797], [2.026, -20.834], [2.063, -20.867], [2.102, -20.896], [2.144, -20.921], [2.189, -20.942], [2.235, -20.958], [2.282, -20.97], [2.331, -20.978], [2.38, -20.98], [2.7, -20.98]]);
		polygon(points = [[0.209, -23.518], [0.258, -23.51], [0.305, -23.498], [0.351, -23.482], [0.396, -23.461], [0.438, -23.436], [0.477, -23.407], [0.514, -23.374], [0.547, -23.337], [0.576, -23.298], [0.601, -23.256], [0.622, -23.211], [0.638, -23.165], [0.65, -23.118], [0.658, -23.069], [0.66, -23.02], [0.66, -22.7], [0.658, -22.651], [0.65, -22.602], [0.638, -22.555], [0.622, -22.509], [0.601, -22.464], [0.576, -22.422], [0.547, -22.383], [0.514, -22.346], [0.477, -22.313], [0.438, -22.284], [0.396, -22.259], [0.351, -22.238], [0.305, -22.222], [0.258, -22.21], [0.209, -22.202], [0.16, -22.2], [-0.16, -22.2], [-0.209, -22.202], [-0.258, -22.21], [-0.305, -22.222], [-0.351, -22.238], [-0.396, -22.259], [-0.438, -22.284], [-0.477, -22.313], [-0.514, -22.346], [-0.547, -22.383], [-0.576, -22.422], [-0.601, -22.464], [-0.622, -22.509], [-0.638, -22.555], [-0.65, -22.602], [-0.658, -22.651], [-0.66, -22.7], [-0.66, -23.02], [-0.658, -23.069], [-0.65, -23.118], [-0.638, -23.165], [-0.622, -23.211], [-0.601, -23.256], [-0.576, -23.298], [-0.547, -23.337], [-0.514, -23.374], [-0.477, -23.407], [-0.438, -23.436], [-0.396, -23.461], [-0.351, -23.482], [-0.305, -23.498], [-0.258, -23.51], [-0.209, -23.518], [-0.16, -23.52], [0.16, -23.52]]);
		polygon(points = [[2.749, -23.518], [2.798, -23.51], [2.845, -23.498], [2.891, -23.482], [2.936, -23.461], [2.978, -23.436], [3.017, -23.407], [3.054, -23.374], [3.087, -23.337], [3.116, -23.298], [3.141, -23.256], [3.162, -23.211], [3.178, -23.165], [3.19, -23.118], [3.198, -23.069], [3.2, -23.02], [3.2, -22.7], [3.198, -22.651], [3.19, -22.602], [3.178, -22.555], [3.162, -22.509], [3.141, -22.464], [3.116, -22.422], [3.087, -22.383], [3.054, -22.346], [3.017, -22.313], [2.978, -22.284], [2.936, -22.259], [2.891, -22.238], [2.845, -22.222], [2.798, -22.21], [2.749, -22.202], [2.7, -22.2], [2.38, -22.2], [2.331, -22.202], [2.282, -22.21], [2.235, -22.222], [2.189, -22.238], [2.144, -22.259], [2.102, -22.284], [2.063, -22.313], [2.026, -22.346], [1.993, -22.383], [1.964, -22.422], [1.939, -22.464], [1.918, -22.509], [1.902, -22.555], [1.89, -22.602], [1.882, -22.651], [1.88, -22.7], [1.88, -23.02], [1.882, -23.069], [1.89, -23.118], [1.902, -23.165], [1.918, -23.211], [1.939, -23.256], [1.964, -23.298], [1.993, -23.337], [2.026, -23.374], [2.063, -23.407], [2.102, -23.436], [2.144, -23.461], [2.189, -23.482], [2.235, -23.498], [2.282, -23.51], [2.331, -23.518], [2.38, -23.52], [2.7, -23.52]]);
	}
}
module keepout_volume_J10_0_1(){
	translate(v = [122.3, -98.780001, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J10) {
					union() {
						shape_J10_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J10_0(){
	union() {
		translate(v = [122.3, -98.780001, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J10)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J10) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
						union() {
							shape_J10_0_0();
						}
					}
				}
			}
		}
		translate(v = [122.3, -98.780001, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J10)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J10) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10) + Wrapper_Thickness_For_J10)) {
							union() {
								shape_J10_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
							union() {
								shape_J10_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J10_0(){
	union() {
		keepout_volume_J10_0_0();
		keepout_volume_J10_0_1();
	}
}
module wiggle_minus_pocket_J10_0(){
	translate(v = [122.3, -98.780001, min_z_J10]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J10 - min_z_J10) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J10) {
					union() {
						shape_J10_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J10(){
	polygon(points = [[124.095, -74.135001], [124.095, -100.575001], [117.955, -100.575001], [117.955, -74.135001]]);
}
module courtyard_pocket_J10(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J10]) {
			linear_extrude(height = ((max_z_J10 - min_z_J10) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J10) {
					union() {
						courtyard_J10();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J10(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J10)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J10) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
					union() {
						courtyard_J10();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J10)]) {
			linear_extrude(height = Wrapper_Height_For_J10) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10) + Wrapper_Thickness_For_J10)) {
						union() {
							courtyard_J10();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J10 + Effective_Shell_Thickness_For_J10)) {
						union() {
							courtyard_J10();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_J4_0(){
	union() {
		translate(v = [195.0, -87.16, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J4))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([2.8593330119131193, -10.479332709121524],[3.000754368150429, -10.620754065358833],0.4);
						peri_line_scad([2.8593330119131193, 0.3193328983662705],[3.000754368150429, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -10.479332709121524],[-0.46075425460358, -10.620754065358833],0.4);
					}
				}
			}
		}
		translate(v = [195.0, -87.16, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([2.8590401186943057, -7.48003981590271],[(2.8590401186943057 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
								peri_line_scad([2.8590401186943057, -2.6799599948525428],[(2.8590401186943057 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-0.31904000514745706, -2.6799599948525428],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * -1.0)), (-2.6799599948525428 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
								peri_line_scad([-0.31904000514745706, -7.48003981590271],[(-0.31904000514745706 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * -1.0)), (-7.48003981590271 + (((0.9600000000000006 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -87.16, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
						hull() {
							union() {
								peri_line_scad([-1.2690761205530252, -11.175617558594409],[-1.4538520099479868, -11.25215428636808],0.4);
								peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -11.429076120381952],[-1.0921539770860795, -11.613852043991496],0.4);
						hull() {
							union() {
								peri_line_scad([3.5556172562846533, -11.42907612035344],[3.6321538876901367, -11.613852049665407],0.4);
								peri_line_scad([3.8090761205815373, -11.175617558525575],[3.993852004274068, -11.25215430006612],0.4);
							}
						}
						peri_line_scad([3.8090761205815373, -11.175617558525575],[3.993852004274068, -11.25215430006612],0.4);
						hull() {
							union() {
								peri_line_scad([3.809076120496001, 1.0156173316383803],[3.993852021295831, 1.0921540318782748],0.4);
								peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
							}
						}
						peri_line_scad([3.55561725607815, 1.2690761204389767],[3.632153928784291, 1.4538520326436606],0.4);
						hull() {
							union() {
								peri_line_scad([-1.0156173317072148, 1.2690761204674887],[-1.0921540181802327, 1.4538520269697461],0.4);
								peri_line_scad([-1.2690761204674887, 1.0156173317072148],[-1.4538520269697461, 1.0921540181802327],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -87.16, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -8.176000242233277],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * -1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([3.809, -8.176000242233277],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 1.0)), (-8.176000242233277 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
								peri_line_scad([3.809, -1.9839999848604197],[(3.809 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 1.0)), (-1.9839999848604197 + (((0.01 + Effective_Shell_Thickness_For_J4) + Effective_Shell_Gap_For_J4) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J4_0_0(){
	polygon(points = [[-1.27, 1.0160000151395798], [-1.27, -11.176000242233277], [-1.0160000151395798, -11.43], [3.555999939441681, -11.43], [3.81, -11.176000242233277], [3.81, 1.0160000151395798], [3.555999939441681, 1.27], [-1.0160000151395798, 1.27]]);
}
module hullpoly_J4_0_1(){
	polygon(points = [[2.8600401186943056, -10.48003981590271], [2.8600401186943056, 0.32004000514745706], [-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -10.48003981590271]]);
}
module fitting_pocket_J4_0(){
	union() {
		translate(v = [195.0, -87.16, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J4) {
						union() {
							hullpoly_J4_0_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -87.16, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
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
module outline_J4_0(){
	union() {
		hullpoly_J4_0_0();
	}
}
module wiggle_pocket_J4_0(){
	translate(v = [195.0, -87.16, min_z_J4]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J4 - min_z_J4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J4) {
					union() {
						outline_J4_0();
					}
				}
			}
		}
	}
}
module perimeter_J4_0(){
	union() {
		translate(v = [195.0, -87.16, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J4)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
						union() {
							outline_J4_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -87.16, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J4)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4) + Wrapper_Thickness_For_J4)) {
							union() {
								outline_J4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
							union() {
								outline_J4_0();
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
		translate(v = [195.0, -87.16, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J4)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
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
		translate(v = [195.0, -87.16, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J4)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
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
		translate(v = [195.0, -87.16, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J4)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J4) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4) + Wrapper_Thickness_For_J4)) {
							union() {
								outline_J4_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
							union() {
								outline_J4_0();
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -87.16, (PCB_Thickness + max_z_J4)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - max_z_J4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
						union() {
							outline_J4_0();
						}
					}
				}
			}
		}
	}
}
module shape_J4_0_0(){
	union() {
		polygon(points = [[3.556, -11.43], [3.806, -11.18], [3.81, -11.176], [3.81, -9.176], [3.81, -9.144], [3.56, -8.894], [3.556, -8.89], [3.806, -8.64], [3.81, -8.636], [3.81, -6.636], [3.81, -6.604], [3.56, -6.354], [3.556, -6.35], [3.806, -6.1], [3.81, -6.096], [3.81, -4.096], [3.81, -4.064], [3.56, -3.814], [3.556, -3.81], [3.806, -3.56], [3.81, -3.556], [3.81, -1.556], [3.81, -1.524], [3.56, -1.274], [3.556, -1.27], [3.806, -1.02], [3.81, -1.016], [3.81, 0.984], [3.81, 1.016], [3.56, 1.266], [3.556, 1.27], [-0.945, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35], [-1.27, -6.604], [-1.27, -8.636], [-1.016, -8.89], [-1.27, -9.144], [-1.27, -11.176], [-1.016, -11.43], [-1.015, -11.43]]);
	}
}
module keepout_volume_J4_0_0(){
	translate(v = [195.0, -87.16, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
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
		polygon(points = [[2.749, -0.658], [2.798, -0.65], [2.845, -0.638], [2.891, -0.622], [2.936, -0.601], [2.978, -0.576], [3.017, -0.547], [3.054, -0.514], [3.087, -0.477], [3.116, -0.438], [3.141, -0.396], [3.162, -0.351], [3.178, -0.305], [3.19, -0.258], [3.198, -0.209], [3.2, -0.16], [3.2, 0.16], [3.198, 0.209], [3.19, 0.258], [3.178, 0.305], [3.162, 0.351], [3.141, 0.396], [3.116, 0.438], [3.087, 0.477], [3.054, 0.514], [3.017, 0.547], [2.978, 0.576], [2.936, 0.601], [2.891, 0.622], [2.845, 0.638], [2.798, 0.65], [2.749, 0.658], [2.7, 0.66], [2.38, 0.66], [2.331, 0.658], [2.282, 0.65], [2.235, 0.638], [2.189, 0.622], [2.144, 0.601], [2.102, 0.576], [2.063, 0.547], [2.026, 0.514], [1.993, 0.477], [1.964, 0.438], [1.939, 0.396], [1.918, 0.351], [1.902, 0.305], [1.89, 0.258], [1.882, 0.209], [1.88, 0.16], [1.88, -0.16], [1.882, -0.209], [1.89, -0.258], [1.902, -0.305], [1.918, -0.351], [1.939, -0.396], [1.964, -0.438], [1.993, -0.477], [2.026, -0.514], [2.063, -0.547], [2.102, -0.576], [2.144, -0.601], [2.189, -0.622], [2.235, -0.638], [2.282, -0.65], [2.331, -0.658], [2.38, -0.66], [2.7, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[2.749, -3.198], [2.798, -3.19], [2.845, -3.178], [2.891, -3.162], [2.936, -3.141], [2.978, -3.116], [3.017, -3.087], [3.054, -3.054], [3.087, -3.017], [3.116, -2.978], [3.141, -2.936], [3.162, -2.891], [3.178, -2.845], [3.19, -2.798], [3.198, -2.749], [3.2, -2.7], [3.2, -2.38], [3.198, -2.331], [3.19, -2.282], [3.178, -2.235], [3.162, -2.189], [3.141, -2.144], [3.116, -2.102], [3.087, -2.063], [3.054, -2.026], [3.017, -1.993], [2.978, -1.964], [2.936, -1.939], [2.891, -1.918], [2.845, -1.902], [2.798, -1.89], [2.749, -1.882], [2.7, -1.88], [2.38, -1.88], [2.331, -1.882], [2.282, -1.89], [2.235, -1.902], [2.189, -1.918], [2.144, -1.939], [2.102, -1.964], [2.063, -1.993], [2.026, -2.026], [1.993, -2.063], [1.964, -2.102], [1.939, -2.144], [1.918, -2.189], [1.902, -2.235], [1.89, -2.282], [1.882, -2.331], [1.88, -2.38], [1.88, -2.7], [1.882, -2.749], [1.89, -2.798], [1.902, -2.845], [1.918, -2.891], [1.939, -2.936], [1.964, -2.978], [1.993, -3.017], [2.026, -3.054], [2.063, -3.087], [2.102, -3.116], [2.144, -3.141], [2.189, -3.162], [2.235, -3.178], [2.282, -3.19], [2.331, -3.198], [2.38, -3.2], [2.7, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
		polygon(points = [[2.749, -5.738], [2.798, -5.73], [2.845, -5.718], [2.891, -5.702], [2.936, -5.681], [2.978, -5.656], [3.017, -5.627], [3.054, -5.594], [3.087, -5.557], [3.116, -5.518], [3.141, -5.476], [3.162, -5.431], [3.178, -5.385], [3.19, -5.338], [3.198, -5.289], [3.2, -5.24], [3.2, -4.92], [3.198, -4.871], [3.19, -4.822], [3.178, -4.775], [3.162, -4.729], [3.141, -4.684], [3.116, -4.642], [3.087, -4.603], [3.054, -4.566], [3.017, -4.533], [2.978, -4.504], [2.936, -4.479], [2.891, -4.458], [2.845, -4.442], [2.798, -4.43], [2.749, -4.422], [2.7, -4.42], [2.38, -4.42], [2.331, -4.422], [2.282, -4.43], [2.235, -4.442], [2.189, -4.458], [2.144, -4.479], [2.102, -4.504], [2.063, -4.533], [2.026, -4.566], [1.993, -4.603], [1.964, -4.642], [1.939, -4.684], [1.918, -4.729], [1.902, -4.775], [1.89, -4.822], [1.882, -4.871], [1.88, -4.92], [1.88, -5.24], [1.882, -5.289], [1.89, -5.338], [1.902, -5.385], [1.918, -5.431], [1.939, -5.476], [1.964, -5.518], [1.993, -5.557], [2.026, -5.594], [2.063, -5.627], [2.102, -5.656], [2.144, -5.681], [2.189, -5.702], [2.235, -5.718], [2.282, -5.73], [2.331, -5.738], [2.38, -5.74], [2.7, -5.74]]);
		polygon(points = [[0.209, -8.278], [0.258, -8.27], [0.305, -8.258], [0.351, -8.242], [0.396, -8.221], [0.438, -8.196], [0.477, -8.167], [0.514, -8.134], [0.547, -8.097], [0.576, -8.058], [0.601, -8.016], [0.622, -7.971], [0.638, -7.925], [0.65, -7.878], [0.658, -7.829], [0.66, -7.78], [0.66, -7.46], [0.658, -7.411], [0.65, -7.362], [0.638, -7.315], [0.622, -7.269], [0.601, -7.224], [0.576, -7.182], [0.547, -7.143], [0.514, -7.106], [0.477, -7.073], [0.438, -7.044], [0.396, -7.019], [0.351, -6.998], [0.305, -6.982], [0.258, -6.97], [0.209, -6.962], [0.16, -6.96], [-0.16, -6.96], [-0.209, -6.962], [-0.258, -6.97], [-0.305, -6.982], [-0.351, -6.998], [-0.396, -7.019], [-0.438, -7.044], [-0.477, -7.073], [-0.514, -7.106], [-0.547, -7.143], [-0.576, -7.182], [-0.601, -7.224], [-0.622, -7.269], [-0.638, -7.315], [-0.65, -7.362], [-0.658, -7.411], [-0.66, -7.46], [-0.66, -7.78], [-0.658, -7.829], [-0.65, -7.878], [-0.638, -7.925], [-0.622, -7.971], [-0.601, -8.016], [-0.576, -8.058], [-0.547, -8.097], [-0.514, -8.134], [-0.477, -8.167], [-0.438, -8.196], [-0.396, -8.221], [-0.351, -8.242], [-0.305, -8.258], [-0.258, -8.27], [-0.209, -8.278], [-0.16, -8.28], [0.16, -8.28]]);
		polygon(points = [[2.749, -8.278], [2.798, -8.27], [2.845, -8.258], [2.891, -8.242], [2.936, -8.221], [2.978, -8.196], [3.017, -8.167], [3.054, -8.134], [3.087, -8.097], [3.116, -8.058], [3.141, -8.016], [3.162, -7.971], [3.178, -7.925], [3.19, -7.878], [3.198, -7.829], [3.2, -7.78], [3.2, -7.46], [3.198, -7.411], [3.19, -7.362], [3.178, -7.315], [3.162, -7.269], [3.141, -7.224], [3.116, -7.182], [3.087, -7.143], [3.054, -7.106], [3.017, -7.073], [2.978, -7.044], [2.936, -7.019], [2.891, -6.998], [2.845, -6.982], [2.798, -6.97], [2.749, -6.962], [2.7, -6.96], [2.38, -6.96], [2.331, -6.962], [2.282, -6.97], [2.235, -6.982], [2.189, -6.998], [2.144, -7.019], [2.102, -7.044], [2.063, -7.073], [2.026, -7.106], [1.993, -7.143], [1.964, -7.182], [1.939, -7.224], [1.918, -7.269], [1.902, -7.315], [1.89, -7.362], [1.882, -7.411], [1.88, -7.46], [1.88, -7.78], [1.882, -7.829], [1.89, -7.878], [1.902, -7.925], [1.918, -7.971], [1.939, -8.016], [1.964, -8.058], [1.993, -8.097], [2.026, -8.134], [2.063, -8.167], [2.102, -8.196], [2.144, -8.221], [2.189, -8.242], [2.235, -8.258], [2.282, -8.27], [2.331, -8.278], [2.38, -8.28], [2.7, -8.28]]);
		polygon(points = [[0.209, -10.818], [0.258, -10.81], [0.305, -10.798], [0.351, -10.782], [0.396, -10.761], [0.438, -10.736], [0.477, -10.707], [0.514, -10.674], [0.547, -10.637], [0.576, -10.598], [0.601, -10.556], [0.622, -10.511], [0.638, -10.465], [0.65, -10.418], [0.658, -10.369], [0.66, -10.32], [0.66, -10.0], [0.658, -9.951], [0.65, -9.902], [0.638, -9.855], [0.622, -9.809], [0.601, -9.764], [0.576, -9.722], [0.547, -9.683], [0.514, -9.646], [0.477, -9.613], [0.438, -9.584], [0.396, -9.559], [0.351, -9.538], [0.305, -9.522], [0.258, -9.51], [0.209, -9.502], [0.16, -9.5], [-0.16, -9.5], [-0.209, -9.502], [-0.258, -9.51], [-0.305, -9.522], [-0.351, -9.538], [-0.396, -9.559], [-0.438, -9.584], [-0.477, -9.613], [-0.514, -9.646], [-0.547, -9.683], [-0.576, -9.722], [-0.601, -9.764], [-0.622, -9.809], [-0.638, -9.855], [-0.65, -9.902], [-0.658, -9.951], [-0.66, -10.0], [-0.66, -10.32], [-0.658, -10.369], [-0.65, -10.418], [-0.638, -10.465], [-0.622, -10.511], [-0.601, -10.556], [-0.576, -10.598], [-0.547, -10.637], [-0.514, -10.674], [-0.477, -10.707], [-0.438, -10.736], [-0.396, -10.761], [-0.351, -10.782], [-0.305, -10.798], [-0.258, -10.81], [-0.209, -10.818], [-0.16, -10.82], [0.16, -10.82]]);
		polygon(points = [[2.749, -10.818], [2.798, -10.81], [2.845, -10.798], [2.891, -10.782], [2.936, -10.761], [2.978, -10.736], [3.017, -10.707], [3.054, -10.674], [3.087, -10.637], [3.116, -10.598], [3.141, -10.556], [3.162, -10.511], [3.178, -10.465], [3.19, -10.418], [3.198, -10.369], [3.2, -10.32], [3.2, -10.0], [3.198, -9.951], [3.19, -9.902], [3.178, -9.855], [3.162, -9.809], [3.141, -9.764], [3.116, -9.722], [3.087, -9.683], [3.054, -9.646], [3.017, -9.613], [2.978, -9.584], [2.936, -9.559], [2.891, -9.538], [2.845, -9.522], [2.798, -9.51], [2.749, -9.502], [2.7, -9.5], [2.38, -9.5], [2.331, -9.502], [2.282, -9.51], [2.235, -9.522], [2.189, -9.538], [2.144, -9.559], [2.102, -9.584], [2.063, -9.613], [2.026, -9.646], [1.993, -9.683], [1.964, -9.722], [1.939, -9.764], [1.918, -9.809], [1.902, -9.855], [1.89, -9.902], [1.882, -9.951], [1.88, -10.0], [1.88, -10.32], [1.882, -10.369], [1.89, -10.418], [1.902, -10.465], [1.918, -10.511], [1.939, -10.556], [1.964, -10.598], [1.993, -10.637], [2.026, -10.674], [2.063, -10.707], [2.102, -10.736], [2.144, -10.761], [2.189, -10.782], [2.235, -10.798], [2.282, -10.81], [2.331, -10.818], [2.38, -10.82], [2.7, -10.82]]);
	}
}
module keepout_volume_J4_0_1(){
	translate(v = [195.0, -87.16, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
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
		translate(v = [195.0, -87.16, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J4)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J4) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J4 + Effective_Shell_Thickness_For_J4)) {
						union() {
							shape_J4_0_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -87.16, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J4)]) {
			rotate(a = [0, 0, 180.0]) {
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
module wiggle_minus_pocket_J4_0(){
	translate(v = [195.0, -87.16, min_z_J4]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J4 - min_z_J4) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J4) {
					union() {
						shape_J4_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J4(){
	polygon(points = [[196.795, -75.214999], [196.795, -88.955], [190.655, -88.955], [190.655, -75.214999]]);
}
module courtyard_pocket_J4(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J4]) {
			linear_extrude(height = ((max_z_J4 - min_z_J4) + PCB_Thickness)) {
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
module fitting_cuts_J11_0(){
	union() {
		translate(v = [195.0, -113.279999, ((PCB_Thickness - tiny_dimension) + max(2.54, Effective_Shell_Clearance_From_PCB_For_J11))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) - max(2.54, Effective_Shell_Clearance_From_PCB_For_J11)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-0.3193328983662705, 0.3193328983662705],[-0.46075425460358, 0.46075425460358],0.4);
						peri_line_scad([-0.3193328983662705, -5.3993327091215235],[-0.46075425460358, -5.540754065358833],0.4);
						peri_line_scad([0.3193328983662705, -5.3993327091215235],[0.46075425460358, -5.540754065358833],0.4);
						peri_line_scad([0.3193328983662705, 0.3193328983662705],[0.46075425460358, 0.46075425460358],0.4);
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 8.539479970932007) + (2 * tiny_dimension))) {
					union();
				}
			}
		}
		translate(v = [195.0, -113.279999, ((PCB_Thickness - tiny_dimension) + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J11))]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J11)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([1.2690761205530252, -6.095617558594408],[1.4538520099479868, -6.1721542863680785],0.4);
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
								peri_line_scad([-1.2690761205530252, -6.095617558594408],[-1.4538520099479868, -6.1721542863680785],0.4);
								peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
							}
						}
						peri_line_scad([-1.015617331913718, -6.349076120381952],[-1.0921539770860798, -6.533852043991495],0.4);
						hull() {
							union() {
								peri_line_scad([1.015617331913718, -6.349076120381952],[1.0921539770860798, -6.533852043991495],0.4);
								peri_line_scad([1.2690761205530252, -6.095617558594408],[1.4538520099479868, -6.1721542863680785],0.4);
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 2.54) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([1.2690000000000001, -3.096000242233276],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * 1.0)), (-3.096000242233276 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * 0.0))],0.4);
								peri_line_scad([1.2690000000000001, -1.9839999848604206],[(1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * 1.0)), (-1.9839999848604206 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-1.2690000000000001, -1.9839999848604202],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * -1.0)), (-1.9839999848604202 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * 0.0))],0.4);
								peri_line_scad([-1.2690000000000001, -3.0960002422332757],[(-1.2690000000000001 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * -1.0)), (-3.0960002422332757 + (((0.01 + Effective_Shell_Thickness_For_J11) + Effective_Shell_Gap_For_J11) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_J11_0_0(){
	polygon(points = [[1.27, -6.096000242233276], [1.27, 1.0160000151395798], [1.0160000151395798, 1.27], [-1.0160000151395798, 1.27], [-1.27, 1.0160000151395798], [-1.27, -6.096000242233276], [-1.0160000151395798, -6.35], [1.0160000151395798, -6.35]]);
}
module hullpoly_J11_0_1(){
	polygon(points = [[-0.32004000514745706, 0.32004000514745706], [-0.32004000514745706, -5.40003981590271], [0.32004000514745706, -5.40003981590271], [0.32004000514745706, 0.32004000514745706]]);
}
module fitting_pocket_J11_0(){
	union() {
		translate(v = [195.0, -113.279999, ((-tiny_dimension) + -2.9997399854660034)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.539739985466003 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J11) {
						union() {
							hullpoly_J11_0_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, ((-tiny_dimension) + 2.54)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((5.999479970932007 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_J11) {
						union() {
							hullpoly_J11_0_1();
						}
					}
				}
			}
		}
	}
}
module outline_J11_0(){
	union() {
		hullpoly_J11_0_0();
	}
}
module wiggle_pocket_J11_0(){
	translate(v = [195.0, -113.279999, min_z_J11]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J11 - min_z_J11) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J11) {
					union() {
						outline_J11_0();
					}
				}
			}
		}
	}
}
module perimeter_J11_0(){
	union() {
		translate(v = [195.0, -113.279999, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J11)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J11) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
						union() {
							outline_J11_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J11)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J11) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11) + Wrapper_Thickness_For_J11)) {
							union() {
								outline_J11_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
							union() {
								outline_J11_0();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_J11_0(){
	union() {
		translate(v = [195.0, -113.279999, ((PCB_Thickness + max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J11)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_J11 - max(-2.9997399854660034, Effective_Shell_Clearance_From_PCB_For_J11)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
							union() {
								hullpoly_J11_0_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_J11) {
							union() {
								hullpoly_J11_0_0();
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, ((PCB_Thickness + max(2.54, Effective_Shell_Clearance_From_PCB_For_J11)) - tiny_dimension)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((max_z_J11 - max(2.54, Effective_Shell_Clearance_From_PCB_For_J11)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
							union() {
								hullpoly_J11_0_1();
							}
						}
						offset(r = Effective_Shell_Gap_For_J11) {
							union() {
								hullpoly_J11_0_1();
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J11)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J11) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11) + Wrapper_Thickness_For_J11)) {
							union() {
								outline_J11_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
							union() {
								outline_J11_0();
							}
						}
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, (PCB_Thickness + max_z_J11)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - max_z_J11) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
						union() {
							outline_J11_0();
						}
					}
				}
			}
		}
	}
}
module shape_J11_0_0(){
	union() {
		polygon(points = [[1.016, -6.35], [1.266, -6.1], [1.27, -6.096], [1.27, -4.096], [1.27, -4.064], [1.02, -3.814], [1.016, -3.81], [1.266, -3.56], [1.27, -3.556], [1.27, -1.556], [1.27, -1.524], [1.02, -1.274], [1.016, -1.27], [1.266, -1.02], [1.27, -1.016], [1.27, 0.984], [1.27, 1.016], [1.02, 1.266], [1.016, 1.27], [-0.984, 1.27], [-1.016, 1.27], [-1.27, 1.016], [-1.27, -1.016], [-1.016, -1.27], [-1.27, -1.524], [-1.27, -3.556], [-1.016, -3.81], [-1.27, -4.064], [-1.27, -6.096], [-1.016, -6.35]]);
	}
}
module keepout_volume_J11_0_0(){
	translate(v = [195.0, -113.279999, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((2.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J11) {
					union() {
						shape_J11_0_0();
					}
				}
			}
		}
	}
}
module shape_J11_0_1(){
	union() {
		polygon(points = [[0.209, -0.658], [0.258, -0.65], [0.305, -0.638], [0.351, -0.622], [0.396, -0.601], [0.438, -0.576], [0.477, -0.547], [0.514, -0.514], [0.547, -0.477], [0.576, -0.438], [0.601, -0.396], [0.622, -0.351], [0.638, -0.305], [0.65, -0.258], [0.658, -0.209], [0.66, -0.16], [0.66, 0.16], [0.658, 0.209], [0.65, 0.258], [0.638, 0.305], [0.622, 0.351], [0.601, 0.396], [0.576, 0.438], [0.547, 0.477], [0.514, 0.514], [0.477, 0.547], [0.438, 0.576], [0.396, 0.601], [0.351, 0.622], [0.305, 0.638], [0.258, 0.65], [0.209, 0.658], [0.16, 0.66], [-0.16, 0.66], [-0.209, 0.658], [-0.258, 0.65], [-0.305, 0.638], [-0.351, 0.622], [-0.396, 0.601], [-0.438, 0.576], [-0.477, 0.547], [-0.514, 0.514], [-0.547, 0.477], [-0.576, 0.438], [-0.601, 0.396], [-0.622, 0.351], [-0.638, 0.305], [-0.65, 0.258], [-0.658, 0.209], [-0.66, 0.16], [-0.66, -0.16], [-0.658, -0.209], [-0.65, -0.258], [-0.638, -0.305], [-0.622, -0.351], [-0.601, -0.396], [-0.576, -0.438], [-0.547, -0.477], [-0.514, -0.514], [-0.477, -0.547], [-0.438, -0.576], [-0.396, -0.601], [-0.351, -0.622], [-0.305, -0.638], [-0.258, -0.65], [-0.209, -0.658], [-0.16, -0.66], [0.16, -0.66]]);
		polygon(points = [[0.209, -3.198], [0.258, -3.19], [0.305, -3.178], [0.351, -3.162], [0.396, -3.141], [0.438, -3.116], [0.477, -3.087], [0.514, -3.054], [0.547, -3.017], [0.576, -2.978], [0.601, -2.936], [0.622, -2.891], [0.638, -2.845], [0.65, -2.798], [0.658, -2.749], [0.66, -2.7], [0.66, -2.38], [0.658, -2.331], [0.65, -2.282], [0.638, -2.235], [0.622, -2.189], [0.601, -2.144], [0.576, -2.102], [0.547, -2.063], [0.514, -2.026], [0.477, -1.993], [0.438, -1.964], [0.396, -1.939], [0.351, -1.918], [0.305, -1.902], [0.258, -1.89], [0.209, -1.882], [0.16, -1.88], [-0.16, -1.88], [-0.209, -1.882], [-0.258, -1.89], [-0.305, -1.902], [-0.351, -1.918], [-0.396, -1.939], [-0.438, -1.964], [-0.477, -1.993], [-0.514, -2.026], [-0.547, -2.063], [-0.576, -2.102], [-0.601, -2.144], [-0.622, -2.189], [-0.638, -2.235], [-0.65, -2.282], [-0.658, -2.331], [-0.66, -2.38], [-0.66, -2.7], [-0.658, -2.749], [-0.65, -2.798], [-0.638, -2.845], [-0.622, -2.891], [-0.601, -2.936], [-0.576, -2.978], [-0.547, -3.017], [-0.514, -3.054], [-0.477, -3.087], [-0.438, -3.116], [-0.396, -3.141], [-0.351, -3.162], [-0.305, -3.178], [-0.258, -3.19], [-0.209, -3.198], [-0.16, -3.2], [0.16, -3.2]]);
		polygon(points = [[0.209, -5.738], [0.258, -5.73], [0.305, -5.718], [0.351, -5.702], [0.396, -5.681], [0.438, -5.656], [0.477, -5.627], [0.514, -5.594], [0.547, -5.557], [0.576, -5.518], [0.601, -5.476], [0.622, -5.431], [0.638, -5.385], [0.65, -5.338], [0.658, -5.289], [0.66, -5.24], [0.66, -4.92], [0.658, -4.871], [0.65, -4.822], [0.638, -4.775], [0.622, -4.729], [0.601, -4.684], [0.576, -4.642], [0.547, -4.603], [0.514, -4.566], [0.477, -4.533], [0.438, -4.504], [0.396, -4.479], [0.351, -4.458], [0.305, -4.442], [0.258, -4.43], [0.209, -4.422], [0.16, -4.42], [-0.16, -4.42], [-0.209, -4.422], [-0.258, -4.43], [-0.305, -4.442], [-0.351, -4.458], [-0.396, -4.479], [-0.438, -4.504], [-0.477, -4.533], [-0.514, -4.566], [-0.547, -4.603], [-0.576, -4.642], [-0.601, -4.684], [-0.622, -4.729], [-0.638, -4.775], [-0.65, -4.822], [-0.658, -4.871], [-0.66, -4.92], [-0.66, -5.24], [-0.658, -5.289], [-0.65, -5.338], [-0.638, -5.385], [-0.622, -5.431], [-0.601, -5.476], [-0.576, -5.518], [-0.547, -5.557], [-0.514, -5.594], [-0.477, -5.627], [-0.438, -5.656], [-0.396, -5.681], [-0.351, -5.702], [-0.305, -5.718], [-0.258, -5.73], [-0.209, -5.738], [-0.16, -5.74], [0.16, -5.74]]);
	}
}
module keepout_volume_J11_0_1(){
	translate(v = [195.0, -113.279999, max(-2.9997399854660034, 0)]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = (((8.539479970932007 - max(-2.9997399854660034, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J11) {
					union() {
						shape_J11_0_1();
					}
				}
			}
		}
	}
}
module tight_perimeter_J11_0(){
	union() {
		translate(v = [195.0, -113.279999, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J11)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J11) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
						union() {
							shape_J11_0_0();
						}
					}
				}
			}
		}
		translate(v = [195.0, -113.279999, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J11)]) {
			rotate(a = [0, 0, 180.0]) {
				linear_extrude(height = Wrapper_Height_For_J11) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11) + Wrapper_Thickness_For_J11)) {
							union() {
								shape_J11_0_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
							union() {
								shape_J11_0_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_J11_0(){
	union() {
		keepout_volume_J11_0_0();
		keepout_volume_J11_0_1();
	}
}
module wiggle_minus_pocket_J11_0(){
	translate(v = [195.0, -113.279999, min_z_J11]) {
		rotate(a = [0, 0, 180.0]) {
			linear_extrude(height = ((max_z_J11 - min_z_J11) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J11) {
					union() {
						shape_J11_0_0();
					}
				}
			}
		}
	}
}
module courtyard_J11(){
	polygon(points = [[196.795, -106.434999], [196.795, -115.074999], [193.205, -115.074999], [193.205, -106.434999]]);
}
module courtyard_pocket_J11(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_J11]) {
			linear_extrude(height = ((max_z_J11 - min_z_J11) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_J11) {
					union() {
						courtyard_J11();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_J11(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_J11)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_J11) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
					union() {
						courtyard_J11();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_J11)]) {
			linear_extrude(height = Wrapper_Height_For_J11) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11) + Wrapper_Thickness_For_J11)) {
						union() {
							courtyard_J11();
						}
					}
					offset(r = (Effective_Shell_Gap_For_J11 + Effective_Shell_Thickness_For_J11)) {
						union() {
							courtyard_J11();
						}
					}
				}
			}
		}
	}
}
module fitting_cuts_U1_2(){
	union() {
		translate(v = [142.8, -140.49, ((PCB_Thickness - tiny_dimension) + max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 9.898839888572693) - max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([7.620707106781188, -25.399292893218817],[7.479285750543879, -25.540714249456126],0.4);
						peri_line_scad([10.159292893218813, -25.399292893218817],[10.300714249456123, -25.540714249456126],0.4);
						peri_line_scad([10.159292893218813, 25.399292893218814],[10.300714249456123, 25.540714249456123],0.4);
						peri_line_scad([7.620707106781188, 25.399292893218814],[7.479285750543879, 25.540714249456123],0.4);
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 9.898839888572693) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([10.159, -22.400000000000002],[(10.159 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 1.0)), (-22.400000000000002 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
								peri_line_scad([10.159, 22.399999999999995],[(10.159 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 1.0)), (22.399999999999995 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([7.621000000000001, 22.4],[(7.621000000000001 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * -1.0)), (22.4 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
								peri_line_scad([7.621000000000001, -22.4],[(7.621000000000001 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * -1.0)), (-22.4 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_U1_2_0(){
	polygon(points = [[7.620000000000001, -25.400000000000002], [10.16, -25.400000000000002], [10.16, 25.4], [7.620000000000001, 25.4]]);
}
module fitting_pocket_U1_2(){
	union() {
		translate(v = [142.8, -140.49, ((-tiny_dimension) + -1.6988000726699832)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((11.597639961242677 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U1) {
						union() {
							hullpoly_U1_2_0();
						}
					}
				}
			}
		}
	}
}
module outline_U1_2(){
	union() {
		hullpoly_U1_2_0();
	}
}
module wiggle_pocket_U1_2(){
	translate(v = [142.8, -140.49, min_z_U1]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_U1 - min_z_U1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U1) {
					union() {
						outline_U1_2();
					}
				}
			}
		}
	}
}
module perimeter_U1_2(){
	union() {
		translate(v = [142.8, -140.49, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
						union() {
							outline_U1_2();
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_U1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1) + Wrapper_Thickness_For_U1)) {
							union() {
								outline_U1_2();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								outline_U1_2();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U1_2(){
	union() {
		translate(v = [142.8, -140.49, ((PCB_Thickness + max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_U1 - max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								hullpoly_U1_2_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U1) {
							union() {
								hullpoly_U1_2_0();
							}
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_U1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1) + Wrapper_Thickness_For_U1)) {
							union() {
								outline_U1_2();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								outline_U1_2();
							}
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (PCB_Thickness + max_z_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_U1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
						union() {
							outline_U1_2();
						}
					}
				}
			}
		}
	}
}
module shape_U1_2_0(){
	union() {
		polygon(points = [[10.16, -25.4], [10.16, 25.4], [7.62, 25.4], [7.62, -25.4]]);
	}
}
module keepout_volume_U1_2_0(){
	translate(v = [142.8, -140.49, max(-1.6988000726699832, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((9.898839888572693 - max(-1.6988000726699832, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U1) {
					union() {
						shape_U1_2_0();
					}
				}
			}
		}
	}
}
module tight_perimeter_U1_2(){
	union() {
		translate(v = [142.8, -140.49, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
						union() {
							shape_U1_2_0();
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_U1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1) + Wrapper_Thickness_For_U1)) {
							union() {
								shape_U1_2_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								shape_U1_2_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U1_2(){
	union() {
		keepout_volume_U1_2_0();
	}
}
module wiggle_minus_pocket_U1_2(){
	translate(v = [142.8, -140.49, min_z_U1]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_U1 - min_z_U1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U1) {
					union() {
						shape_U1_2_0();
					}
				}
			}
		}
	}
}
module fitting_cuts_U1_3(){
	union() {
		translate(v = [142.8, -140.49, ((PCB_Thickness - tiny_dimension) + max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1))]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 9.898839888572693) - max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1)) + (2 * tiny_dimension))) {
					union() {
						peri_line_scad([-10.159292893218813, -25.399292893218817],[-10.300714249456123, -25.540714249456126],0.4);
						peri_line_scad([-7.620707106781188, -25.399292893218817],[-7.479285750543879, -25.540714249456126],0.4);
						peri_line_scad([-7.620707106781188, 25.399292893218814],[-7.479285750543879, 25.540714249456123],0.4);
						peri_line_scad([-10.159292893218813, 25.399292893218814],[-10.300714249456123, 25.540714249456123],0.4);
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (PCB_Thickness - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = (min(((topmost_z + c_Base_Thickness) - c_Base_Line_Height), 9.898839888572693) + (2 * tiny_dimension))) {
					union() {
						hull() {
							union() {
								peri_line_scad([-7.621000000000001, -22.400000000000002],[(-7.621000000000001 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 1.0)), (-22.400000000000002 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
								peri_line_scad([-7.621000000000001, 22.399999999999995],[(-7.621000000000001 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 1.0)), (22.399999999999995 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
							}
						}
						hull() {
							union() {
								peri_line_scad([-10.159, 22.4],[(-10.159 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * -1.0)), (22.4 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
								peri_line_scad([-10.159, -22.4],[(-10.159 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * -1.0)), (-22.4 + (((0.01 + Effective_Shell_Thickness_For_U1) + Effective_Shell_Gap_For_U1) * 0.0))],0.4);
							}
						}
					}
				}
			}
		}
	}
}
module hullpoly_U1_3_0(){
	polygon(points = [[-10.16, -25.400000000000002], [-7.620000000000001, -25.400000000000002], [-7.620000000000001, 25.4], [-10.16, 25.4]]);
}
module fitting_pocket_U1_3(){
	union() {
		translate(v = [142.8, -140.49, ((-tiny_dimension) + -1.6988000726699832)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((11.597639961242677 + (2 * tiny_dimension)) + PCB_Thickness)) {
					offset(r = Effective_Shell_Gap_For_U1) {
						union() {
							hullpoly_U1_3_0();
						}
					}
				}
			}
		}
	}
}
module outline_U1_3(){
	union() {
		hullpoly_U1_3_0();
	}
}
module wiggle_pocket_U1_3(){
	translate(v = [142.8, -140.49, min_z_U1]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_U1 - min_z_U1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U1) {
					union() {
						outline_U1_3();
					}
				}
			}
		}
	}
}
module perimeter_U1_3(){
	union() {
		translate(v = [142.8, -140.49, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
						union() {
							outline_U1_3();
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_U1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1) + Wrapper_Thickness_For_U1)) {
							union() {
								outline_U1_3();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								outline_U1_3();
							}
						}
					}
				}
			}
		}
	}
}
module fitting_flower_U1_3(){
	union() {
		translate(v = [142.8, -140.49, ((PCB_Thickness + max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1)) - tiny_dimension)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((max_z_U1 - max(-1.6988000726699832, Effective_Shell_Clearance_From_PCB_For_U1)) + (2 * tiny_dimension))) {
					difference() {
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								hullpoly_U1_3_0();
							}
						}
						offset(r = Effective_Shell_Gap_For_U1) {
							union() {
								hullpoly_U1_3_0();
							}
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_U1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1) + Wrapper_Thickness_For_U1)) {
							union() {
								outline_U1_3();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								outline_U1_3();
							}
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (PCB_Thickness + max_z_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - max_z_U1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
						union() {
							outline_U1_3();
						}
					}
				}
			}
		}
	}
}
module shape_U1_3_0(){
	union() {
		polygon(points = [[-7.62, -25.4], [-7.62, 25.4], [-10.16, 25.4], [-10.16, -25.4]]);
	}
}
module keepout_volume_U1_3_0(){
	translate(v = [142.8, -140.49, max(-1.6988000726699832, 0)]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = (((9.898839888572693 - max(-1.6988000726699832, 0)) + tiny_dimension) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U1) {
					union() {
						shape_U1_3_0();
					}
				}
			}
		}
	}
}
module tight_perimeter_U1_3(){
	union() {
		translate(v = [142.8, -140.49, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U1) + c_Base_Thickness)) {
					offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
						union() {
							shape_U1_3_0();
						}
					}
				}
			}
		}
		translate(v = [142.8, -140.49, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U1)]) {
			rotate(a = [0, 0, 90.0]) {
				linear_extrude(height = Wrapper_Height_For_U1) {
					difference() {
						offset(r = ((Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1) + Wrapper_Thickness_For_U1)) {
							union() {
								shape_U1_3_0();
							}
						}
						offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
							union() {
								shape_U1_3_0();
							}
						}
					}
				}
			}
		}
	}
}
module tight_pocket_U1_3(){
	union() {
		keepout_volume_U1_3_0();
	}
}
module wiggle_minus_pocket_U1_3(){
	translate(v = [142.8, -140.49, min_z_U1]) {
		rotate(a = [0, 0, 90.0]) {
			linear_extrude(height = ((max_z_U1 - min_z_U1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U1) {
					union() {
						shape_U1_3_0();
					}
				}
			}
		}
	}
}
module courtyard_U1(){
	polygon(points = [[168.795, -129.495], [168.795, -151.485], [116.805, -151.485], [116.805, -129.495]]);
}
module courtyard_pocket_U1(){
	translate(v = [0, 0, 0]) {
		translate(v = [0, 0, min_z_U1]) {
			linear_extrude(height = ((max_z_U1 - min_z_U1) + PCB_Thickness)) {
				offset(r = Effective_Shell_Gap_For_U1) {
					union() {
						courtyard_U1();
					}
				}
			}
		}
	}
}
module courtyard_perimeter_U1(){
	union() {
		translate(v = [0, 0, (PCB_Thickness + Effective_Shell_Clearance_From_PCB_For_U1)]) {
			linear_extrude(height = ((topmost_z - Effective_Shell_Clearance_From_PCB_For_U1) + c_Base_Thickness)) {
				offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
					union() {
						courtyard_U1();
					}
				}
			}
		}
		translate(v = [0, 0, (((PCB_Thickness + topmost_z) + c_Base_Thickness) - Wrapper_Height_For_U1)]) {
			linear_extrude(height = Wrapper_Height_For_U1) {
				difference() {
					offset(r = ((Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1) + Wrapper_Thickness_For_U1)) {
						union() {
							courtyard_U1();
						}
					}
					offset(r = (Effective_Shell_Gap_For_U1 + Effective_Shell_Thickness_For_U1)) {
						union() {
							courtyard_U1();
						}
					}
				}
			}
		}
	}
}
module keepout_U2_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_U2_0 + smd_clearance_from_pcb_U2_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_U2_0) {
				polygon(points = [[162.11, -95.4075], [162.11, -96.8075], [162.78, -96.8075], [162.78, -97.4775], [164.18, -97.4775], [164.18, -110.6275], [162.78, -110.6275], [162.78, -111.2975], [162.11, -111.2975], [162.11, -112.6975], [148.96, -112.6975], [148.96, -111.2975], [148.29, -111.2975], [148.29, -110.6275], [146.89, -110.6275], [146.89, -97.4775], [148.29, -97.4775], [148.29, -96.8075], [148.96, -96.8075], [148.96, -95.4075]]);
			}
		}
	}
}
module keepout_R42_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R42_0 + smd_clearance_from_pcb_R42_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R42_0) {
				polygon(points = [[135.2325, -117.1], [135.2325, -118.55], [131.9425, -118.55], [131.9425, -117.1]]);
			}
		}
	}
}
module keepout_R5_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R5_0 + smd_clearance_from_pcb_R5_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R5_0) {
				polygon(points = [[148.521774, -113.424991], [148.521774, -114.874991], [145.231774, -114.874991], [145.231774, -113.424991]]);
			}
		}
	}
}
module keepout_C25_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_C25_0 + smd_clearance_from_pcb_C25_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_C25_0) {
				polygon(points = [[132.392669, -99.976116], [132.392669, -101.426116], [129.102669, -101.426116], [129.102669, -99.976116]]);
			}
		}
	}
}
module keepout_R18_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R18_0 + smd_clearance_from_pcb_R18_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R18_0) {
				polygon(points = [[171.035, -95.225], [171.035, -98.515], [169.585, -98.515], [169.585, -95.225]]);
			}
		}
	}
}
module keepout_R29_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R29_0 + smd_clearance_from_pcb_R29_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R29_0) {
				polygon(points = [[174.225, -95.225], [174.225, -98.515], [172.775, -98.515], [172.775, -95.225]]);
			}
		}
	}
}
module keepout_R8_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R8_0 + smd_clearance_from_pcb_R8_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R8_0) {
				polygon(points = [[141.515, -74.925], [141.515, -76.375], [138.225, -76.375], [138.225, -74.925]]);
			}
		}
	}
}
module keepout_U6_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_U6_0 + smd_clearance_from_pcb_U6_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_U6_0) {
				polygon(points = [[138.29, -98.355], [138.29, -107.645], [132.58, -107.645], [132.58, -98.355]]);
			}
		}
	}
}
module keepout_R26_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R26_0 + smd_clearance_from_pcb_R26_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R26_0) {
				polygon(points = [[163.955, -91.4625], [163.955, -94.7525], [162.505, -94.7525], [162.505, -91.4625]]);
			}
		}
	}
}
module keepout_R22_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R22_0 + smd_clearance_from_pcb_R22_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R22_0) {
				polygon(points = [[154.449867, -117.194724], [154.449867, -120.484724], [152.999867, -120.484724], [152.999867, -117.194724]]);
			}
		}
	}
}
module keepout_R16_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R16_0 + smd_clearance_from_pcb_R16_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R16_0) {
				polygon(points = [[168.275, -95.2325], [168.275, -98.5225], [166.825, -98.5225], [166.825, -95.2325]]);
			}
		}
	}
}
module keepout_R28_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R28_0 + smd_clearance_from_pcb_R28_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R28_0) {
				polygon(points = [[172.655605, -95.227865], [172.655605, -98.517865], [171.205605, -98.517865], [171.205605, -95.227865]]);
			}
		}
	}
}
module keepout_R39_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R39_0 + smd_clearance_from_pcb_R39_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R39_0) {
				polygon(points = [[135.206788, -110.547509], [135.206788, -111.997509], [131.916788, -111.997509], [131.916788, -110.547509]]);
			}
		}
	}
}
module keepout_C25A1_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_C25A1_0 + smd_clearance_from_pcb_C25A1_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_C25A1_0) {
				polygon(points = [[132.425367, -98.349265], [132.425367, -99.799265], [129.135367, -99.799265], [129.135367, -98.349265]]);
			}
		}
	}
}
module keepout_R43_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R43_0 + smd_clearance_from_pcb_R43_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R43_0) {
				polygon(points = [[141.45, -117.905], [141.45, -121.195], [140.0, -121.195], [140.0, -117.905]]);
			}
		}
	}
}
module keepout_R30_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R30_0 + smd_clearance_from_pcb_R30_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R30_0) {
				polygon(points = [[175.807738, -95.223686], [175.807738, -98.513686], [174.357738, -98.513686], [174.357738, -95.223686]]);
			}
		}
	}
}
module keepout_R24_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R24_0 + smd_clearance_from_pcb_R24_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R24_0) {
				polygon(points = [[161.155, -91.3625], [161.155, -94.6525], [159.705, -94.6525], [159.705, -91.3625]]);
			}
		}
	}
}
module keepout_R9_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R9_0 + smd_clearance_from_pcb_R9_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R9_0) {
				polygon(points = [[138.086614, -73.726179], [138.086614, -75.176179], [134.796614, -75.176179], [134.796614, -73.726179]]);
			}
		}
	}
}
module keepout_R1_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R1_0 + smd_clearance_from_pcb_R1_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R1_0) {
				polygon(points = [[152.425, -125.2425], [152.425, -128.5325], [150.975, -128.5325], [150.975, -125.2425]]);
			}
		}
	}
}
module keepout_R25_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R25_0 + smd_clearance_from_pcb_R25_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R25_0) {
				polygon(points = [[159.725, -82.9425], [159.725, -86.2325], [158.275, -86.2325], [158.275, -82.9425]]);
			}
		}
	}
}
module keepout_R41_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R41_0 + smd_clearance_from_pcb_R41_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R41_0) {
				polygon(points = [[135.237377, -114.658153], [135.237377, -116.108153], [131.947377, -116.108153], [131.947377, -114.658153]]);
			}
		}
	}
}
module keepout_R70_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R70_0 + smd_clearance_from_pcb_R70_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R70_0) {
				polygon(points = [[144.685, -100.965], [144.685, -102.415], [141.395, -102.415], [141.395, -100.965]]);
			}
		}
	}
}
module keepout_R4_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R4_0 + smd_clearance_from_pcb_R4_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R4_0) {
				polygon(points = [[145.094439, -111.893679], [145.094439, -115.183679], [143.644439, -115.183679], [143.644439, -111.893679]]);
			}
		}
	}
}
module keepout_R31_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R31_0 + smd_clearance_from_pcb_R31_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R31_0) {
				polygon(points = [[177.47522, -93.8768], [177.47522, -97.1668], [176.02522, -97.1668], [176.02522, -93.8768]]);
			}
		}
	}
}
module keepout_R40_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R40_0 + smd_clearance_from_pcb_R40_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R40_0) {
				polygon(points = [[135.2325, -112.275], [135.2325, -113.725], [131.9425, -113.725], [131.9425, -112.275]]);
			}
		}
	}
}
module keepout_R20_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R20_0 + smd_clearance_from_pcb_R20_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R20_0) {
				polygon(points = [[152.255, -114.085], [152.255, -117.375], [150.805, -117.375], [150.805, -114.085]]);
			}
		}
	}
}
module keepout_R38_0(){
	translate(v = [0, 0, 0]) {
		linear_extrude(height = ((max_z_R38_0 + smd_clearance_from_pcb_R38_0) + PCB_Thickness)) {
			offset(r = smd_gap_from_shells_R38_0) {
				polygon(points = [[135.205411, -108.855915], [135.205411, -110.305915], [131.915411, -110.305915], [131.915411, -108.855915]]);
			}
		}
	}
}
module pcb_edge(){
	polygon(points = [[117.249518, -66.6], [198.6, -66.6], [198.6, -155.8], [117.249518, -155.8]]);
}
module pcb(){
	linear_extrude(height = PCB_Thickness) {
		union() {
			pcb_edge();
		}
	}
}
module mounted_smd_keepouts(){
	union() {
		keepout_U2_0();
		keepout_R42_0();
		keepout_R5_0();
		keepout_C25_0();
		keepout_R18_0();
		keepout_R29_0();
		keepout_R8_0();
		keepout_U6_0();
		keepout_R26_0();
		keepout_R22_0();
		keepout_R16_0();
		keepout_R28_0();
		keepout_R39_0();
		keepout_C25A1_0();
		keepout_R43_0();
		keepout_R30_0();
		keepout_R24_0();
		keepout_R9_0();
		keepout_R1_0();
		keepout_R25_0();
		keepout_R41_0();
		keepout_R70_0();
		keepout_R4_0();
		keepout_R31_0();
		keepout_R40_0();
		keepout_R20_0();
		keepout_R38_0();
	}
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
	translate(v = [0, 0, (PCB_Thickness + SMD_Clearance_From_PCB)]) {
		linear_extrude(height = ((topmost_z + c_Base_Thickness) - SMD_Clearance_From_PCB)) {
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
				wide_line([157.65, -70.53],[198.6, -66.6]);
				wide_line([198.6, -66.6],[117.249518, -66.6]);
				wide_line([117.249518, -66.6],[157.65, -70.53]);
				wide_line([150.43, -153.9],[117.249518, -155.8]);
				wide_line([117.249518, -155.8],[198.6, -155.8]);
				wide_line([198.6, -155.8],[150.43, -153.9]);
				wide_line([195.0, -97.80499999999999],[157.65, -70.53]);
				wide_line([157.65, -70.53],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[195.0, -97.80499999999999]);
				wide_line([195.0, -97.80499999999999],[193.73, -82.08]);
				wide_line([193.73, -82.08],[157.65, -70.53]);
				wide_line([157.65, -70.53],[195.0, -97.80499999999999]);
				wide_line([193.73, -82.08],[195.0, -97.80499999999999]);
				wide_line([195.0, -97.80499999999999],[198.6, -66.6]);
				wide_line([198.6, -66.6],[193.73, -82.08]);
				wide_line([117.249518, -155.8],[118.90880014768362, -119.5]);
				wide_line([118.90880014768362, -119.5],[117.249518, -66.6]);
				wide_line([117.249518, -66.6],[117.249518, -155.8]);
				wide_line([118.90880014768362, -119.5],[121.03, -87.35000099999999]);
				wide_line([121.03, -87.35000099999999],[117.249518, -66.6]);
				wide_line([117.249518, -66.6],[118.90880014768362, -119.5]);
				wide_line([181.16, -124.9234],[195.0, -97.80499999999999]);
				wide_line([195.0, -97.80499999999999],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[181.16, -124.9234]);
				wide_line([195.0, -97.80499999999999],[181.16, -124.9234]);
				wide_line([181.16, -124.9234],[195.0, -110.739999]);
				wide_line([195.0, -110.739999],[195.0, -97.80499999999999]);
				wide_line([150.43, -153.9],[174.7834, -138.5]);
				wide_line([174.7834, -138.5],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[150.43, -153.9]);
				wide_line([157.65, -70.53],[194.4, -70.5]);
				wide_line([194.4, -70.5],[198.6, -66.6]);
				wide_line([198.6, -66.6],[157.65, -70.53]);
				wide_line([194.4, -70.5],[193.73, -82.08]);
				wide_line([193.73, -82.08],[198.6, -66.6]);
				wide_line([198.6, -66.6],[194.4, -70.5]);
				wide_line([193.73, -82.08],[194.4, -70.5]);
				wide_line([194.4, -70.5],[157.65, -70.53]);
				wide_line([157.65, -70.53],[193.73, -82.08]);
				wide_line([121.33, -126.0],[118.90880014768362, -119.5]);
				wide_line([118.90880014768362, -119.5],[117.249518, -155.8]);
				wide_line([117.249518, -155.8],[121.33, -126.0]);
				wide_line([121.1, -70.5],[157.65, -70.53]);
				wide_line([157.65, -70.53],[117.249518, -66.6]);
				wide_line([117.249518, -66.6],[121.1, -70.5]);
				wide_line([121.03, -87.35000099999999],[121.1, -70.5]);
				wide_line([121.1, -70.5],[117.249518, -66.6]);
				wide_line([117.249518, -66.6],[121.03, -87.35000099999999]);
				wide_line([121.1, -70.5],[121.03, -87.35000099999999]);
				wide_line([121.03, -87.35000099999999],[157.65, -70.53]);
				wide_line([157.65, -70.53],[121.1, -70.5]);
				wide_line([121.07000000000001, -105.14],[118.90880014768362, -119.5]);
				wide_line([118.90880014768362, -119.5],[121.085111, -111.709437]);
				wide_line([121.085111, -111.709437],[121.07000000000001, -105.14]);
				wide_line([121.07000000000001, -105.14],[121.03, -87.35000099999999]);
				wide_line([121.03, -87.35000099999999],[118.90880014768362, -119.5]);
				wide_line([118.90880014768362, -119.5],[121.07000000000001, -105.14]);
				wide_line([181.16, -124.9234],[194.4, -119.5]);
				wide_line([194.4, -119.5],[195.0, -110.739999]);
				wide_line([195.0, -110.739999],[181.16, -124.9234]);
				wide_line([196.4, -134.0166],[194.4, -152.0]);
				wide_line([194.4, -152.0],[198.6, -155.8]);
				wide_line([198.6, -155.8],[196.4, -134.0166]);
				wide_line([194.4, -152.0],[183.87660000000002, -153.74]);
				wide_line([183.87660000000002, -153.74],[198.6, -155.8]);
				wide_line([198.6, -155.8],[194.4, -152.0]);
				wide_line([181.16, -124.9234],[177.6, -126.97000000000001]);
				wide_line([177.6, -126.97000000000001],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[181.16, -124.9234]);
				wide_line([177.6, -126.97000000000001],[181.16, -124.9234]);
				wide_line([181.16, -124.9234],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[177.6, -126.97000000000001]);
				wide_line([174.78340000000003, -153.74],[174.7834, -138.5]);
				wide_line([174.7834, -138.5],[150.43, -153.9]);
				wide_line([150.43, -153.9],[174.78340000000003, -153.74]);
				wide_line([174.78340000000003, -153.74],[150.43, -153.9]);
				wide_line([150.43, -153.9],[198.6, -155.8]);
				wide_line([198.6, -155.8],[174.78340000000003, -153.74]);
				wide_line([183.87660000000002, -153.74],[174.78340000000003, -153.74]);
				wide_line([174.78340000000003, -153.74],[198.6, -155.8]);
				wide_line([198.6, -155.8],[183.87660000000002, -153.74]);
				wide_line([174.7834, -138.5],[183.8766, -138.5]);
				wide_line([183.8766, -138.5],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[174.7834, -138.5]);
				wide_line([194.4, -152.0],[183.8766, -138.5]);
				wide_line([183.8766, -138.5],[183.87660000000002, -153.74]);
				wide_line([183.87660000000002, -153.74],[194.4, -152.0]);
				wide_line([183.8766, -138.5],[196.4, -134.0166]);
				wide_line([196.4, -134.0166],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[183.8766, -138.5]);
				wide_line([183.8766, -138.5],[194.4, -152.0]);
				wide_line([194.4, -152.0],[196.4, -134.0166]);
				wide_line([196.4, -134.0166],[183.8766, -138.5]);
				wide_line([150.43, -153.9],[121.74000000000001, -153.9]);
				wide_line([121.74000000000001, -153.9],[117.249518, -155.8]);
				wide_line([117.249518, -155.8],[150.43, -153.9]);
				wide_line([121.74000000000001, -153.9],[121.33, -126.0]);
				wide_line([121.33, -126.0],[117.249518, -155.8]);
				wide_line([117.249518, -155.8],[121.74000000000001, -153.9]);
				wide_line([142.8, -149.38],[121.74000000000001, -153.9]);
				wide_line([121.74000000000001, -153.9],[150.43, -153.9]);
				wide_line([150.43, -153.9],[142.8, -149.38]);
				wide_line([142.8, -131.60000000000002],[150.43, -153.9]);
				wide_line([150.43, -153.9],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[142.8, -131.60000000000002]);
				wide_line([142.8, -131.60000000000002],[142.8, -149.38]);
				wide_line([142.8, -149.38],[150.43, -153.9]);
				wide_line([150.43, -153.9],[142.8, -131.60000000000002]);
				wide_line([121.74000000000001, -153.9],[131.29999999999998, -126.0]);
				wide_line([131.29999999999998, -126.0],[121.33, -126.0]);
				wide_line([121.33, -126.0],[121.74000000000001, -153.9]);
				wide_line([142.8, -149.38],[131.29999999999998, -126.0]);
				wide_line([131.29999999999998, -126.0],[121.74000000000001, -153.9]);
				wide_line([121.74000000000001, -153.9],[142.8, -149.38]);
				wide_line([142.8, -131.60000000000002],[131.29999999999998, -126.0]);
				wide_line([131.29999999999998, -126.0],[142.8, -149.38]);
				wide_line([142.8, -149.38],[142.8, -131.60000000000002]);
				wide_line([121.03, -87.35000099999999],[137.35, -115.28999999999999]);
				wide_line([137.35, -115.28999999999999],[157.65, -70.53]);
				wide_line([157.65, -70.53],[121.03, -87.35000099999999]);
				wide_line([121.07000000000001, -105.14],[137.35, -115.28999999999999]);
				wide_line([137.35, -115.28999999999999],[121.03, -87.35000099999999]);
				wide_line([121.03, -87.35000099999999],[121.07000000000001, -105.14]);
				wide_line([157.65, -70.53],[137.35, -115.28999999999999]);
				wide_line([137.35, -115.28999999999999],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[157.65, -70.53]);
				wide_line([137.35, -115.28999999999999],[121.07000000000001, -105.14]);
				wide_line([121.07000000000001, -105.14],[121.085111, -111.709437]);
				wide_line([121.085111, -111.709437],[137.35, -115.28999999999999]);
				wide_line([196.4, -124.9234],[194.4, -119.5]);
				wide_line([194.4, -119.5],[181.16, -124.9234]);
				wide_line([181.16, -124.9234],[196.4, -124.9234]);
				wide_line([194.4, -119.5],[196.4, -124.9234]);
				wide_line([196.4, -124.9234],[195.0, -110.739999]);
				wide_line([195.0, -110.739999],[194.4, -119.5]);
				wide_line([195.0, -97.80499999999999],[196.4, -124.9234]);
				wide_line([196.4, -124.9234],[198.6, -66.6]);
				wide_line([198.6, -66.6],[195.0, -97.80499999999999]);
				wide_line([196.4, -124.9234],[195.0, -97.80499999999999]);
				wide_line([195.0, -97.80499999999999],[195.0, -110.739999]);
				wide_line([195.0, -110.739999],[196.4, -124.9234]);
				wide_line([196.4, -124.9234],[198.6, -155.8]);
				wide_line([198.6, -155.8],[198.6, -66.6]);
				wide_line([198.6, -66.6],[196.4, -124.9234]);
				wide_line([196.4, -124.9234],[196.4, -134.0166]);
				wide_line([196.4, -134.0166],[198.6, -155.8]);
				wide_line([198.6, -155.8],[196.4, -124.9234]);
				wide_line([177.6, -133.67999999999998],[174.7834, -138.5]);
				wide_line([174.7834, -138.5],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[177.6, -133.67999999999998]);
				wide_line([177.6, -126.97000000000001],[177.6, -133.67999999999998]);
				wide_line([177.6, -133.67999999999998],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[177.6, -126.97000000000001]);
				wide_line([174.7834, -138.5],[177.6, -133.67999999999998]);
				wide_line([177.6, -133.67999999999998],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[174.7834, -138.5]);
				wide_line([177.6, -133.67999999999998],[177.6, -126.97000000000001]);
				wide_line([177.6, -126.97000000000001],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[177.6, -133.67999999999998]);
				wide_line([142.73, -126.0],[131.29999999999998, -126.0]);
				wide_line([131.29999999999998, -126.0],[142.8, -131.60000000000002]);
				wide_line([142.8, -131.60000000000002],[142.73, -126.0]);
				wide_line([142.73, -126.0],[137.35, -115.28999999999999]);
				wide_line([137.35, -115.28999999999999],[131.29999999999998, -126.0]);
				wide_line([131.29999999999998, -126.0],[142.73, -126.0]);
				wide_line([142.73, -126.0],[142.8, -131.60000000000002]);
				wide_line([142.8, -131.60000000000002],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[142.73, -126.0]);
				wide_line([137.35, -115.28999999999999],[142.73, -126.0]);
				wide_line([142.73, -126.0],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[137.35, -115.28999999999999]);
				wide_line([128.62, -119.5],[137.35, -115.28999999999999]);
				wide_line([137.35, -115.28999999999999],[121.085111, -111.709437]);
				wide_line([121.085111, -111.709437],[128.62, -119.5]);
				wide_line([137.35, -115.28999999999999],[128.62, -119.5]);
				wide_line([128.62, -119.5],[131.29999999999998, -126.0]);
				wide_line([131.29999999999998, -126.0],[137.35, -115.28999999999999]);
				wide_line([118.90880014768362, -119.5],[128.62, -119.5]);
				wide_line([128.62, -119.5],[121.085111, -111.709437]);
				wide_line([121.085111, -111.709437],[118.90880014768362, -119.5]);
				wide_line([121.33, -126.0],[128.62, -119.5]);
				wide_line([128.62, -119.5],[118.90880014768362, -119.5]);
				wide_line([118.90880014768362, -119.5],[121.33, -126.0]);
				wide_line([131.29999999999998, -126.0],[128.62, -119.5]);
				wide_line([128.62, -119.5],[121.33, -126.0]);
				wide_line([121.33, -126.0],[131.29999999999998, -126.0]);
				wide_line([174.78340000000003, -153.74],[183.8766, -138.5]);
				wide_line([183.8766, -138.5],[174.7834, -138.5]);
				wide_line([174.7834, -138.5],[174.78340000000003, -153.74]);
				wide_line([183.8766, -138.5],[174.78340000000003, -153.74]);
				wide_line([174.78340000000003, -153.74],[183.87660000000002, -153.74]);
				wide_line([183.87660000000002, -153.74],[183.8766, -138.5]);
				wide_line([196.4, -124.9234],[181.16, -124.9234]);
				wide_line([181.16, -124.9234],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[196.4, -124.9234]);
				wide_line([196.4, -134.0166],[196.4, -124.9234]);
				wide_line([196.4, -124.9234],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[196.4, -134.0166]);
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
				wide_line([117.249518, -66.6],[157.65, -70.53]);
				wide_line([157.65, -70.53],[198.6, -66.6]);
				wide_line([198.6, -66.6],[194.4, -70.5]);
				wide_line([194.4, -70.5],[193.73, -82.08]);
				wide_line([193.73, -82.08],[195.0, -97.80499999999999]);
				wide_line([195.0, -97.80499999999999],[195.0, -110.739999]);
				wide_line([195.0, -110.739999],[194.4, -119.5]);
				wide_line([194.4, -119.5],[196.4, -124.9234]);
				wide_line([196.4, -124.9234],[196.4, -134.0166]);
				wide_line([196.4, -134.0166],[181.16, -124.9234]);
				wide_line([181.16, -124.9234],[177.6, -126.97000000000001]);
				wide_line([177.6, -126.97000000000001],[161.88000000000002, -126.0]);
				wide_line([161.88000000000002, -126.0],[174.7834, -138.5]);
				wide_line([174.7834, -138.5],[177.6, -133.67999999999998]);
				wide_line([177.6, -133.67999999999998],[181.16, -134.0166]);
				wide_line([181.16, -134.0166],[183.8766, -138.5]);
				wide_line([183.8766, -138.5],[194.4, -152.0]);
				wide_line([194.4, -152.0],[198.6, -155.8]);
				wide_line([198.6, -155.8],[183.87660000000002, -153.74]);
				wide_line([183.87660000000002, -153.74],[174.78340000000003, -153.74]);
				wide_line([174.78340000000003, -153.74],[150.43, -153.9]);
				wide_line([150.43, -153.9],[142.8, -149.38]);
				wide_line([142.8, -149.38],[142.8, -131.60000000000002]);
				wide_line([142.8, -131.60000000000002],[142.73, -126.0]);
				wide_line([142.73, -126.0],[137.35, -115.28999999999999]);
				wide_line([137.35, -115.28999999999999],[128.62, -119.5]);
				wide_line([128.62, -119.5],[131.29999999999998, -126.0]);
				wide_line([131.29999999999998, -126.0],[121.74000000000001, -153.9]);
				wide_line([121.74000000000001, -153.9],[117.249518, -155.8]);
				wide_line([117.249518, -155.8],[121.33, -126.0]);
				wide_line([121.33, -126.0],[118.90880014768362, -119.5]);
				wide_line([118.90880014768362, -119.5],[121.085111, -111.709437]);
				wide_line([121.085111, -111.709437],[121.07000000000001, -105.14]);
				wide_line([121.07000000000001, -105.14],[121.03, -87.35000099999999]);
				wide_line([121.03, -87.35000099999999],[121.1, -70.5]);
				wide_line([117.249518, -66.6],[121.1, -70.5]);
				wide_line([117.249518, -66.6],[117.249518, -66.6]);
				wide_line([157.65, -70.53],[157.65, -66.6]);
				wide_line([198.6, -66.6],[198.6, -66.6]);
				wide_line([194.4, -70.5],[194.4, -66.6]);
				wide_line([193.73, -82.08],[198.6, -82.08]);
				wide_line([195.0, -97.80499999999999],[198.6, -97.80499999999999]);
				wide_line([195.0, -110.739999],[198.6, -110.739999]);
				wide_line([194.4, -119.5],[198.6, -119.5]);
				wide_line([196.4, -124.9234],[198.6, -124.92339999999999]);
				wide_line([196.4, -134.0166],[198.6, -134.0166]);
				wide_line([181.16, -124.9234],[198.6, -124.92339999999999]);
				wide_line([177.6, -126.97000000000001],[198.6, -126.97]);
				wide_line([161.88000000000002, -126.0],[161.88000000000002, -155.8]);
				wide_line([174.7834, -138.5],[174.7834, -155.8]);
				wide_line([177.6, -133.67999999999998],[198.6, -133.67999999999998]);
				wide_line([181.16, -134.0166],[198.6, -134.0166]);
				wide_line([183.8766, -138.5],[198.6, -138.49999999999997]);
				wide_line([194.4, -152.0],[194.4, -155.8]);
				wide_line([198.6, -155.8],[198.6, -155.8]);
				wide_line([183.87660000000002, -153.74],[183.87660000000002, -155.8]);
				wide_line([174.78340000000003, -153.74],[174.78340000000003, -155.8]);
				wide_line([150.43, -153.9],[150.43, -155.8]);
				wide_line([142.8, -149.38],[142.8, -155.8]);
				wide_line([142.8, -131.60000000000002],[142.8, -155.8]);
				wide_line([142.73, -126.0],[142.73, -155.8]);
				wide_line([137.35, -115.28999999999999],[137.35, -155.8]);
				wide_line([128.62, -119.5],[128.62, -155.8]);
				wide_line([131.29999999999998, -126.0],[131.29999999999998, -155.8]);
				wide_line([121.74000000000001, -153.9],[121.74000000000001, -155.8]);
				wide_line([117.249518, -155.8],[117.249518, -155.8]);
				wide_line([121.33, -126.0],[121.32999999999998, -155.8]);
				wide_line([118.90880014768362, -119.5],[118.90880014768362, -155.8]);
				wide_line([121.085111, -111.709437],[121.08511099999998, -155.8]);
				wide_line([121.07000000000001, -105.14],[121.07000000000001, -66.6]);
				wide_line([121.03, -87.35000099999999],[121.03, -66.6]);
				wide_line([121.1, -70.5],[121.1, -66.6]);
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
				peri_line_scad([117.249518, -66.6],[124.749518, -66.6],groove_width);
				peri_line_scad([191.1, -66.6],[198.6, -66.6],groove_width);
				peri_line_scad([198.6, -66.6],[198.6, -74.1],groove_width);
				peri_line_scad([198.6, -148.3],[198.6, -155.8],groove_width);
				peri_line_scad([198.6, -155.8],[191.1, -155.8],groove_width);
				peri_line_scad([124.749518, -155.8],[117.249518, -155.8],groove_width);
				peri_line_scad([117.249518, -155.8],[117.249518, -148.3],groove_width);
				peri_line_scad([117.249518, -74.1],[117.249518, -66.6],groove_width);
			}
		}
	}
}

//
module mounted_component_shells() {
  union() {
  if(Include_J7_in_Jig) {
    if(Shell_Type_For_J7=="courtyard") {
      courtyard_perimeter_J7();
    } else if(Shell_Type_For_J7=="tight") {
      tight_perimeter_J7_0();
    } else if(Shell_Type_For_J7=="fitting_flower") {
      fitting_flower_J7_0();
    } else if(Shell_Type_For_J7=="wiggle_minus") {
      tight_perimeter_J7_0();
    } else {
      perimeter_J7_0();
    }
  }
  if(Include_J5_in_Jig) {
    if(Shell_Type_For_J5=="courtyard") {
      courtyard_perimeter_J5();
    } else if(Shell_Type_For_J5=="tight") {
      tight_perimeter_J5_0();
    } else if(Shell_Type_For_J5=="fitting_flower") {
      fitting_flower_J5_0();
    } else if(Shell_Type_For_J5=="wiggle_minus") {
      tight_perimeter_J5_0();
    } else {
      perimeter_J5_0();
    }
  }
  if(Include_J9_in_Jig) {
    if(Shell_Type_For_J9=="courtyard") {
      courtyard_perimeter_J9();
    } else if(Shell_Type_For_J9=="tight") {
      tight_perimeter_J9_0();
    } else if(Shell_Type_For_J9=="fitting_flower") {
      fitting_flower_J9_0();
    } else if(Shell_Type_For_J9=="wiggle_minus") {
      tight_perimeter_J9_0();
    } else {
      perimeter_J9_0();
    }
  }
  if(Include_J1_in_Jig) {
    if(Shell_Type_For_J1=="courtyard") {
      courtyard_perimeter_J1();
    } else if(Shell_Type_For_J1=="tight") {
      tight_perimeter_J1_0();
    } else if(Shell_Type_For_J1=="fitting_flower") {
      fitting_flower_J1_0();
    } else if(Shell_Type_For_J1=="wiggle_minus") {
      tight_perimeter_J1_0();
    } else {
      perimeter_J1_0();
    }
  }
  if(Include_J3_in_Jig) {
    if(Shell_Type_For_J3=="courtyard") {
      courtyard_perimeter_J3();
    } else if(Shell_Type_For_J3=="tight") {
      tight_perimeter_J3_0();
    } else if(Shell_Type_For_J3=="fitting_flower") {
      fitting_flower_J3_0();
    } else if(Shell_Type_For_J3=="wiggle_minus") {
      tight_perimeter_J3_0();
    } else {
      perimeter_J3_0();
    }
  }
  if(Include_J6_in_Jig) {
    if(Shell_Type_For_J6=="courtyard") {
      courtyard_perimeter_J6();
    } else if(Shell_Type_For_J6=="tight") {
      tight_perimeter_J6_0();
    } else if(Shell_Type_For_J6=="fitting_flower") {
      fitting_flower_J6_0();
    } else if(Shell_Type_For_J6=="wiggle_minus") {
      tight_perimeter_J6_0();
    } else {
      perimeter_J6_0();
    }
  }
  if(Include_JP3_in_Jig) {
    if(Shell_Type_For_JP3=="courtyard") {
      courtyard_perimeter_JP3();
    } else if(Shell_Type_For_JP3=="tight") {
      tight_perimeter_JP3_0();
    } else if(Shell_Type_For_JP3=="fitting_flower") {
      fitting_flower_JP3_0();
    } else if(Shell_Type_For_JP3=="wiggle_minus") {
      tight_perimeter_JP3_0();
    } else {
      perimeter_JP3_0();
    }
  }
  if(Include_JP2_in_Jig) {
    if(Shell_Type_For_JP2=="courtyard") {
      courtyard_perimeter_JP2();
    } else if(Shell_Type_For_JP2=="tight") {
      tight_perimeter_JP2_0();
    } else if(Shell_Type_For_JP2=="fitting_flower") {
      fitting_flower_JP2_0();
    } else if(Shell_Type_For_JP2=="wiggle_minus") {
      tight_perimeter_JP2_0();
    } else {
      perimeter_JP2_0();
    }
  }
  if(Include_J13_in_Jig) {
    if(Shell_Type_For_J13=="courtyard") {
      courtyard_perimeter_J13();
    } else if(Shell_Type_For_J13=="tight") {
      tight_perimeter_J13_0();
    } else if(Shell_Type_For_J13=="fitting_flower") {
      fitting_flower_J13_0();
    } else if(Shell_Type_For_J13=="wiggle_minus") {
      tight_perimeter_J13_0();
    } else {
      perimeter_J13_0();
    }
  }
  if(Include_U5_in_Jig) {
    if(Shell_Type_For_U5=="courtyard") {
      courtyard_perimeter_U5();
    } else if(Shell_Type_For_U5=="tight") {
      tight_perimeter_U5_0();
      tight_perimeter_U5_1();
      tight_perimeter_U5_2();
      tight_perimeter_U5_3();
    } else if(Shell_Type_For_U5=="fitting_flower") {
      fitting_flower_U5_0();
      fitting_flower_U5_1();
      fitting_flower_U5_2();
      fitting_flower_U5_3();
    } else if(Shell_Type_For_U5=="wiggle_minus") {
      tight_perimeter_U5_0();
      tight_perimeter_U5_1();
      tight_perimeter_U5_2();
      tight_perimeter_U5_3();
    } else {
      perimeter_U5_0();
      perimeter_U5_1();
      perimeter_U5_2();
      perimeter_U5_3();
    }
  }
  if(Include_U4_in_Jig) {
    if(Shell_Type_For_U4=="courtyard") {
      courtyard_perimeter_U4();
    } else if(Shell_Type_For_U4=="tight") {
      tight_perimeter_U4_0();
      tight_perimeter_U4_1();
      tight_perimeter_U4_2();
      tight_perimeter_U4_3();
    } else if(Shell_Type_For_U4=="fitting_flower") {
      fitting_flower_U4_0();
      fitting_flower_U4_1();
      fitting_flower_U4_2();
      fitting_flower_U4_3();
    } else if(Shell_Type_For_U4=="wiggle_minus") {
      tight_perimeter_U4_0();
      tight_perimeter_U4_1();
      tight_perimeter_U4_2();
      tight_perimeter_U4_3();
    } else {
      perimeter_U4_0();
      perimeter_U4_1();
      perimeter_U4_2();
      perimeter_U4_3();
    }
  }
  if(Include_J12_in_Jig) {
    if(Shell_Type_For_J12=="courtyard") {
      courtyard_perimeter_J12();
    } else if(Shell_Type_For_J12=="tight") {
      tight_perimeter_J12_0();
    } else if(Shell_Type_For_J12=="fitting_flower") {
      fitting_flower_J12_0();
    } else if(Shell_Type_For_J12=="wiggle_minus") {
      tight_perimeter_J12_0();
    } else {
      perimeter_J12_0();
    }
  }
  if(Include_J2_in_Jig) {
    if(Shell_Type_For_J2=="courtyard") {
      courtyard_perimeter_J2();
    } else if(Shell_Type_For_J2=="tight") {
      tight_perimeter_J2_0();
    } else if(Shell_Type_For_J2=="fitting_flower") {
      fitting_flower_J2_0();
    } else if(Shell_Type_For_J2=="wiggle_minus") {
      tight_perimeter_J2_0();
    } else {
      perimeter_J2_0();
    }
  }
  if(Include_JP4_in_Jig) {
    if(Shell_Type_For_JP4=="courtyard") {
      courtyard_perimeter_JP4();
    } else if(Shell_Type_For_JP4=="tight") {
      tight_perimeter_JP4_0();
    } else if(Shell_Type_For_JP4=="fitting_flower") {
      fitting_flower_JP4_0();
    } else if(Shell_Type_For_JP4=="wiggle_minus") {
      tight_perimeter_JP4_0();
    } else {
      perimeter_JP4_0();
    }
  }
  if(Include_J8_in_Jig) {
    if(Shell_Type_For_J8=="courtyard") {
      courtyard_perimeter_J8();
    } else if(Shell_Type_For_J8=="tight") {
      tight_perimeter_J8_0();
    } else if(Shell_Type_For_J8=="fitting_flower") {
      fitting_flower_J8_0();
    } else if(Shell_Type_For_J8=="wiggle_minus") {
      tight_perimeter_J8_0();
    } else {
      perimeter_J8_0();
    }
  }
  if(Include_JP1_in_Jig) {
    if(Shell_Type_For_JP1=="courtyard") {
      courtyard_perimeter_JP1();
    } else if(Shell_Type_For_JP1=="tight") {
      tight_perimeter_JP1_0();
    } else if(Shell_Type_For_JP1=="fitting_flower") {
      fitting_flower_JP1_0();
    } else if(Shell_Type_For_JP1=="wiggle_minus") {
      tight_perimeter_JP1_0();
    } else {
      perimeter_JP1_0();
    }
  }
  if(Include_J10_in_Jig) {
    if(Shell_Type_For_J10=="courtyard") {
      courtyard_perimeter_J10();
    } else if(Shell_Type_For_J10=="tight") {
      tight_perimeter_J10_0();
    } else if(Shell_Type_For_J10=="fitting_flower") {
      fitting_flower_J10_0();
    } else if(Shell_Type_For_J10=="wiggle_minus") {
      tight_perimeter_J10_0();
    } else {
      perimeter_J10_0();
    }
  }
  if(Include_J4_in_Jig) {
    if(Shell_Type_For_J4=="courtyard") {
      courtyard_perimeter_J4();
    } else if(Shell_Type_For_J4=="tight") {
      tight_perimeter_J4_0();
    } else if(Shell_Type_For_J4=="fitting_flower") {
      fitting_flower_J4_0();
    } else if(Shell_Type_For_J4=="wiggle_minus") {
      tight_perimeter_J4_0();
    } else {
      perimeter_J4_0();
    }
  }
  if(Include_J11_in_Jig) {
    if(Shell_Type_For_J11=="courtyard") {
      courtyard_perimeter_J11();
    } else if(Shell_Type_For_J11=="tight") {
      tight_perimeter_J11_0();
    } else if(Shell_Type_For_J11=="fitting_flower") {
      fitting_flower_J11_0();
    } else if(Shell_Type_For_J11=="wiggle_minus") {
      tight_perimeter_J11_0();
    } else {
      perimeter_J11_0();
    }
  }
  if(Include_U1_in_Jig) {
    if(Shell_Type_For_U1=="courtyard") {
      courtyard_perimeter_U1();
    } else if(Shell_Type_For_U1=="tight") {
      tight_perimeter_U1_2();
      tight_perimeter_U1_3();
    } else if(Shell_Type_For_U1=="fitting_flower") {
      fitting_flower_U1_2();
      fitting_flower_U1_3();
    } else if(Shell_Type_For_U1=="wiggle_minus") {
      tight_perimeter_U1_2();
      tight_perimeter_U1_3();
    } else {
      perimeter_U1_2();
      perimeter_U1_3();
    }
  }
  }
}
module mounted_component_cuts() {
  union() {
    if(Include_J7_in_Jig) {
      if(Shell_Type_For_J7=="fitting") {
        fitting_cuts_J7_0();
      } else if(Shell_Type_For_J7=="fitting_flower") {
        fitting_cuts_J7_0();
      }
    }
    if(Include_J5_in_Jig) {
      if(Shell_Type_For_J5=="fitting") {
        fitting_cuts_J5_0();
      } else if(Shell_Type_For_J5=="fitting_flower") {
        fitting_cuts_J5_0();
      }
    }
    if(Include_J9_in_Jig) {
      if(Shell_Type_For_J9=="fitting") {
        fitting_cuts_J9_0();
      } else if(Shell_Type_For_J9=="fitting_flower") {
        fitting_cuts_J9_0();
      }
    }
    if(Include_J1_in_Jig) {
      if(Shell_Type_For_J1=="fitting") {
        fitting_cuts_J1_0();
      } else if(Shell_Type_For_J1=="fitting_flower") {
        fitting_cuts_J1_0();
      }
    }
    if(Include_J3_in_Jig) {
      if(Shell_Type_For_J3=="fitting") {
        fitting_cuts_J3_0();
      } else if(Shell_Type_For_J3=="fitting_flower") {
        fitting_cuts_J3_0();
      }
    }
    if(Include_J6_in_Jig) {
      if(Shell_Type_For_J6=="fitting") {
        fitting_cuts_J6_0();
      } else if(Shell_Type_For_J6=="fitting_flower") {
        fitting_cuts_J6_0();
      }
    }
    if(Include_JP3_in_Jig) {
      if(Shell_Type_For_JP3=="fitting") {
        fitting_cuts_JP3_0();
      } else if(Shell_Type_For_JP3=="fitting_flower") {
        fitting_cuts_JP3_0();
      }
    }
    if(Include_JP2_in_Jig) {
      if(Shell_Type_For_JP2=="fitting") {
        fitting_cuts_JP2_0();
      } else if(Shell_Type_For_JP2=="fitting_flower") {
        fitting_cuts_JP2_0();
      }
    }
    if(Include_J13_in_Jig) {
      if(Shell_Type_For_J13=="fitting") {
        fitting_cuts_J13_0();
      } else if(Shell_Type_For_J13=="fitting_flower") {
        fitting_cuts_J13_0();
      }
    }
    if(Include_U5_in_Jig) {
      if(Shell_Type_For_U5=="fitting") {
        fitting_cuts_U5_0();
      } else if(Shell_Type_For_U5=="fitting_flower") {
        fitting_cuts_U5_0();
      }
      if(Shell_Type_For_U5=="fitting") {
        fitting_cuts_U5_1();
      } else if(Shell_Type_For_U5=="fitting_flower") {
        fitting_cuts_U5_1();
      }
      if(Shell_Type_For_U5=="fitting") {
        fitting_cuts_U5_2();
      } else if(Shell_Type_For_U5=="fitting_flower") {
        fitting_cuts_U5_2();
      }
      if(Shell_Type_For_U5=="fitting") {
        fitting_cuts_U5_3();
      } else if(Shell_Type_For_U5=="fitting_flower") {
        fitting_cuts_U5_3();
      }
    }
    if(Include_U4_in_Jig) {
      if(Shell_Type_For_U4=="fitting") {
        fitting_cuts_U4_0();
      } else if(Shell_Type_For_U4=="fitting_flower") {
        fitting_cuts_U4_0();
      }
      if(Shell_Type_For_U4=="fitting") {
        fitting_cuts_U4_1();
      } else if(Shell_Type_For_U4=="fitting_flower") {
        fitting_cuts_U4_1();
      }
      if(Shell_Type_For_U4=="fitting") {
        fitting_cuts_U4_2();
      } else if(Shell_Type_For_U4=="fitting_flower") {
        fitting_cuts_U4_2();
      }
      if(Shell_Type_For_U4=="fitting") {
        fitting_cuts_U4_3();
      } else if(Shell_Type_For_U4=="fitting_flower") {
        fitting_cuts_U4_3();
      }
    }
    if(Include_J12_in_Jig) {
      if(Shell_Type_For_J12=="fitting") {
        fitting_cuts_J12_0();
      } else if(Shell_Type_For_J12=="fitting_flower") {
        fitting_cuts_J12_0();
      }
    }
    if(Include_J2_in_Jig) {
      if(Shell_Type_For_J2=="fitting") {
        fitting_cuts_J2_0();
      } else if(Shell_Type_For_J2=="fitting_flower") {
        fitting_cuts_J2_0();
      }
    }
    if(Include_JP4_in_Jig) {
      if(Shell_Type_For_JP4=="fitting") {
        fitting_cuts_JP4_0();
      } else if(Shell_Type_For_JP4=="fitting_flower") {
        fitting_cuts_JP4_0();
      }
    }
    if(Include_J8_in_Jig) {
      if(Shell_Type_For_J8=="fitting") {
        fitting_cuts_J8_0();
      } else if(Shell_Type_For_J8=="fitting_flower") {
        fitting_cuts_J8_0();
      }
    }
    if(Include_JP1_in_Jig) {
      if(Shell_Type_For_JP1=="fitting") {
        fitting_cuts_JP1_0();
      } else if(Shell_Type_For_JP1=="fitting_flower") {
        fitting_cuts_JP1_0();
      }
    }
    if(Include_J10_in_Jig) {
      if(Shell_Type_For_J10=="fitting") {
        fitting_cuts_J10_0();
      } else if(Shell_Type_For_J10=="fitting_flower") {
        fitting_cuts_J10_0();
      }
    }
    if(Include_J4_in_Jig) {
      if(Shell_Type_For_J4=="fitting") {
        fitting_cuts_J4_0();
      } else if(Shell_Type_For_J4=="fitting_flower") {
        fitting_cuts_J4_0();
      }
    }
    if(Include_J11_in_Jig) {
      if(Shell_Type_For_J11=="fitting") {
        fitting_cuts_J11_0();
      } else if(Shell_Type_For_J11=="fitting_flower") {
        fitting_cuts_J11_0();
      }
    }
    if(Include_U1_in_Jig) {
      if(Shell_Type_For_U1=="fitting") {
        fitting_cuts_U1_2();
      } else if(Shell_Type_For_U1=="fitting_flower") {
        fitting_cuts_U1_2();
      }
      if(Shell_Type_For_U1=="fitting") {
        fitting_cuts_U1_3();
      } else if(Shell_Type_For_U1=="fitting_flower") {
        fitting_cuts_U1_3();
      }
    }
  }
}
module mounted_component_pockets() {
  union() {
    if(Shell_Type_For_J7=="courtyard") {
      courtyard_pocket_J7();
    } else if(Shell_Type_For_J7=="wiggle") {
      wiggle_pocket_J7_0();
    } else if(Shell_Type_For_J7=="wiggle_minus") {
      wiggle_minus_pocket_J7_0();
    } else if(Shell_Type_For_J7=="tight") {
      tight_pocket_J7_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J7_0();
    }
    if(Shell_Type_For_J5=="courtyard") {
      courtyard_pocket_J5();
    } else if(Shell_Type_For_J5=="wiggle") {
      wiggle_pocket_J5_0();
    } else if(Shell_Type_For_J5=="wiggle_minus") {
      wiggle_minus_pocket_J5_0();
    } else if(Shell_Type_For_J5=="tight") {
      tight_pocket_J5_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J5_0();
    }
    if(Shell_Type_For_J9=="courtyard") {
      courtyard_pocket_J9();
    } else if(Shell_Type_For_J9=="wiggle") {
      wiggle_pocket_J9_0();
    } else if(Shell_Type_For_J9=="wiggle_minus") {
      wiggle_minus_pocket_J9_0();
    } else if(Shell_Type_For_J9=="tight") {
      tight_pocket_J9_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J9_0();
    }
    if(Shell_Type_For_J1=="courtyard") {
      courtyard_pocket_J1();
    } else if(Shell_Type_For_J1=="wiggle") {
      wiggle_pocket_J1_0();
    } else if(Shell_Type_For_J1=="wiggle_minus") {
      wiggle_minus_pocket_J1_0();
    } else if(Shell_Type_For_J1=="tight") {
      tight_pocket_J1_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J1_0();
    }
    if(Shell_Type_For_J3=="courtyard") {
      courtyard_pocket_J3();
    } else if(Shell_Type_For_J3=="wiggle") {
      wiggle_pocket_J3_0();
    } else if(Shell_Type_For_J3=="wiggle_minus") {
      wiggle_minus_pocket_J3_0();
    } else if(Shell_Type_For_J3=="tight") {
      tight_pocket_J3_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J3_0();
    }
    if(Shell_Type_For_J6=="courtyard") {
      courtyard_pocket_J6();
    } else if(Shell_Type_For_J6=="wiggle") {
      wiggle_pocket_J6_0();
    } else if(Shell_Type_For_J6=="wiggle_minus") {
      wiggle_minus_pocket_J6_0();
    } else if(Shell_Type_For_J6=="tight") {
      tight_pocket_J6_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J6_0();
    }
    if(Shell_Type_For_JP3=="courtyard") {
      courtyard_pocket_JP3();
    } else if(Shell_Type_For_JP3=="wiggle") {
      wiggle_pocket_JP3_0();
    } else if(Shell_Type_For_JP3=="wiggle_minus") {
      wiggle_minus_pocket_JP3_0();
    } else if(Shell_Type_For_JP3=="tight") {
      tight_pocket_JP3_0();
    } else { //fitting or fitting_flower
      fitting_pocket_JP3_0();
    }
    if(Shell_Type_For_JP2=="courtyard") {
      courtyard_pocket_JP2();
    } else if(Shell_Type_For_JP2=="wiggle") {
      wiggle_pocket_JP2_0();
    } else if(Shell_Type_For_JP2=="wiggle_minus") {
      wiggle_minus_pocket_JP2_0();
    } else if(Shell_Type_For_JP2=="tight") {
      tight_pocket_JP2_0();
    } else { //fitting or fitting_flower
      fitting_pocket_JP2_0();
    }
    if(Shell_Type_For_J13=="courtyard") {
      courtyard_pocket_J13();
    } else if(Shell_Type_For_J13=="wiggle") {
      wiggle_pocket_J13_0();
    } else if(Shell_Type_For_J13=="wiggle_minus") {
      wiggle_minus_pocket_J13_0();
    } else if(Shell_Type_For_J13=="tight") {
      tight_pocket_J13_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J13_0();
    }
    if(Shell_Type_For_U5=="courtyard") {
      courtyard_pocket_U5();
    } else if(Shell_Type_For_U5=="wiggle") {
      wiggle_pocket_U5_0();
      wiggle_pocket_U5_1();
      wiggle_pocket_U5_2();
      wiggle_pocket_U5_3();
    } else if(Shell_Type_For_U5=="wiggle_minus") {
      wiggle_minus_pocket_U5_0();
      wiggle_minus_pocket_U5_1();
      wiggle_minus_pocket_U5_2();
      wiggle_minus_pocket_U5_3();
    } else if(Shell_Type_For_U5=="tight") {
      tight_pocket_U5_0();
      tight_pocket_U5_1();
      tight_pocket_U5_2();
      tight_pocket_U5_3();
    } else { //fitting or fitting_flower
      fitting_pocket_U5_0();
      fitting_pocket_U5_1();
      fitting_pocket_U5_2();
      fitting_pocket_U5_3();
    }
    if(Shell_Type_For_U4=="courtyard") {
      courtyard_pocket_U4();
    } else if(Shell_Type_For_U4=="wiggle") {
      wiggle_pocket_U4_0();
      wiggle_pocket_U4_1();
      wiggle_pocket_U4_2();
      wiggle_pocket_U4_3();
    } else if(Shell_Type_For_U4=="wiggle_minus") {
      wiggle_minus_pocket_U4_0();
      wiggle_minus_pocket_U4_1();
      wiggle_minus_pocket_U4_2();
      wiggle_minus_pocket_U4_3();
    } else if(Shell_Type_For_U4=="tight") {
      tight_pocket_U4_0();
      tight_pocket_U4_1();
      tight_pocket_U4_2();
      tight_pocket_U4_3();
    } else { //fitting or fitting_flower
      fitting_pocket_U4_0();
      fitting_pocket_U4_1();
      fitting_pocket_U4_2();
      fitting_pocket_U4_3();
    }
    if(Shell_Type_For_J12=="courtyard") {
      courtyard_pocket_J12();
    } else if(Shell_Type_For_J12=="wiggle") {
      wiggle_pocket_J12_0();
    } else if(Shell_Type_For_J12=="wiggle_minus") {
      wiggle_minus_pocket_J12_0();
    } else if(Shell_Type_For_J12=="tight") {
      tight_pocket_J12_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J12_0();
    }
    if(Shell_Type_For_J2=="courtyard") {
      courtyard_pocket_J2();
    } else if(Shell_Type_For_J2=="wiggle") {
      wiggle_pocket_J2_0();
    } else if(Shell_Type_For_J2=="wiggle_minus") {
      wiggle_minus_pocket_J2_0();
    } else if(Shell_Type_For_J2=="tight") {
      tight_pocket_J2_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J2_0();
    }
    if(Shell_Type_For_JP4=="courtyard") {
      courtyard_pocket_JP4();
    } else if(Shell_Type_For_JP4=="wiggle") {
      wiggle_pocket_JP4_0();
    } else if(Shell_Type_For_JP4=="wiggle_minus") {
      wiggle_minus_pocket_JP4_0();
    } else if(Shell_Type_For_JP4=="tight") {
      tight_pocket_JP4_0();
    } else { //fitting or fitting_flower
      fitting_pocket_JP4_0();
    }
    if(Shell_Type_For_J8=="courtyard") {
      courtyard_pocket_J8();
    } else if(Shell_Type_For_J8=="wiggle") {
      wiggle_pocket_J8_0();
    } else if(Shell_Type_For_J8=="wiggle_minus") {
      wiggle_minus_pocket_J8_0();
    } else if(Shell_Type_For_J8=="tight") {
      tight_pocket_J8_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J8_0();
    }
    if(Shell_Type_For_JP1=="courtyard") {
      courtyard_pocket_JP1();
    } else if(Shell_Type_For_JP1=="wiggle") {
      wiggle_pocket_JP1_0();
    } else if(Shell_Type_For_JP1=="wiggle_minus") {
      wiggle_minus_pocket_JP1_0();
    } else if(Shell_Type_For_JP1=="tight") {
      tight_pocket_JP1_0();
    } else { //fitting or fitting_flower
      fitting_pocket_JP1_0();
    }
    if(Shell_Type_For_J10=="courtyard") {
      courtyard_pocket_J10();
    } else if(Shell_Type_For_J10=="wiggle") {
      wiggle_pocket_J10_0();
    } else if(Shell_Type_For_J10=="wiggle_minus") {
      wiggle_minus_pocket_J10_0();
    } else if(Shell_Type_For_J10=="tight") {
      tight_pocket_J10_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J10_0();
    }
    if(Shell_Type_For_J4=="courtyard") {
      courtyard_pocket_J4();
    } else if(Shell_Type_For_J4=="wiggle") {
      wiggle_pocket_J4_0();
    } else if(Shell_Type_For_J4=="wiggle_minus") {
      wiggle_minus_pocket_J4_0();
    } else if(Shell_Type_For_J4=="tight") {
      tight_pocket_J4_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J4_0();
    }
    if(Shell_Type_For_J11=="courtyard") {
      courtyard_pocket_J11();
    } else if(Shell_Type_For_J11=="wiggle") {
      wiggle_pocket_J11_0();
    } else if(Shell_Type_For_J11=="wiggle_minus") {
      wiggle_minus_pocket_J11_0();
    } else if(Shell_Type_For_J11=="tight") {
      tight_pocket_J11_0();
    } else { //fitting or fitting_flower
      fitting_pocket_J11_0();
    }
    if(Shell_Type_For_U1=="courtyard") {
      courtyard_pocket_U1();
    } else if(Shell_Type_For_U1=="wiggle") {
      wiggle_pocket_U1_2();
      wiggle_pocket_U1_3();
    } else if(Shell_Type_For_U1=="wiggle_minus") {
      wiggle_minus_pocket_U1_2();
      wiggle_minus_pocket_U1_3();
    } else if(Shell_Type_For_U1=="tight") {
      tight_pocket_U1_2();
      tight_pocket_U1_3();
    } else { //fitting or fitting_flower
      fitting_pocket_U1_2();
      fitting_pocket_U1_3();
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
        if(Include_J7_in_Jig) {
          wide_line([pcb_min_x, -97.805000],[pcb_max_x, -97.805000]);
        }
        if(Include_J5_in_Jig) {
          wide_line([pcb_min_x, -115.290000],[pcb_max_x, -115.290000]);
        }
        if(Include_J9_in_Jig) {
          wide_line([pcb_min_x, -126.000000],[pcb_max_x, -126.000000]);
        }
        if(Include_J1_in_Jig) {
          wide_line([pcb_min_x, -126.000000],[pcb_max_x, -126.000000]);
        }
        if(Include_J3_in_Jig) {
          wide_line([pcb_min_x, -105.140000],[pcb_max_x, -105.140000]);
        }
        if(Include_J6_in_Jig) {
          wide_line([pcb_min_x, -153.900000],[pcb_max_x, -153.900000]);
        }
        if(Include_JP3_in_Jig) {
          wide_line([pcb_min_x, -126.000000],[pcb_max_x, -126.000000]);
        }
        if(Include_JP2_in_Jig) {
          wide_line([pcb_min_x, -126.970000],[pcb_max_x, -126.970000]);
        }
        if(Include_J13_in_Jig) {
          wide_line([pcb_min_x, -126.000000],[pcb_max_x, -126.000000]);
        }
        if(Include_U5_in_Jig) {
          wide_line([pcb_min_x, -134.016600],[pcb_max_x, -134.016600]);
          wide_line([pcb_min_x, -124.923400],[pcb_max_x, -124.923400]);
          wide_line([pcb_min_x, -134.016600],[pcb_max_x, -134.016600]);
          wide_line([pcb_min_x, -124.923400],[pcb_max_x, -124.923400]);
        }
        if(Include_U4_in_Jig) {
          wide_line([pcb_min_x, -138.500000],[pcb_max_x, -138.500000]);
          wide_line([pcb_min_x, -138.500000],[pcb_max_x, -138.500000]);
          wide_line([pcb_min_x, -153.740000],[pcb_max_x, -153.740000]);
          wide_line([pcb_min_x, -153.740000],[pcb_max_x, -153.740000]);
        }
        if(Include_J12_in_Jig) {
          wide_line([pcb_min_x, -70.530000],[pcb_max_x, -70.530000]);
        }
        if(Include_J2_in_Jig) {
          wide_line([pcb_min_x, -119.500000],[pcb_max_x, -119.500000]);
        }
        if(Include_JP4_in_Jig) {
          wide_line([pcb_min_x, -111.709437],[pcb_max_x, -111.709437]);
        }
        if(Include_J8_in_Jig) {
          wide_line([pcb_min_x, -153.900000],[pcb_max_x, -153.900000]);
        }
        if(Include_JP1_in_Jig) {
          wide_line([pcb_min_x, -133.680000],[pcb_max_x, -133.680000]);
        }
        if(Include_J10_in_Jig) {
          wide_line([pcb_min_x, -87.350001],[pcb_max_x, -87.350001]);
        }
        if(Include_J4_in_Jig) {
          wide_line([pcb_min_x, -82.080000],[pcb_max_x, -82.080000]);
        }
        if(Include_J11_in_Jig) {
          wide_line([pcb_min_x, -110.739999],[pcb_max_x, -110.739999]);
        }
        if(Include_U1_in_Jig) {
          wide_line([pcb_min_x, -131.600000],[pcb_max_x, -131.600000]);
          wide_line([pcb_min_x, -149.380000],[pcb_max_x, -149.380000]);
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
        if(Include_J7_in_Jig) {
          wide_line([195.000000, pcb_min_y],[195.000000, pcb_max_y]);
        }
        if(Include_J5_in_Jig) {
          wide_line([137.350000, pcb_min_y],[137.350000, pcb_max_y]);
        }
        if(Include_J9_in_Jig) {
          wide_line([161.880000, pcb_min_y],[161.880000, pcb_max_y]);
        }
        if(Include_J1_in_Jig) {
          wide_line([131.300000, pcb_min_y],[131.300000, pcb_max_y]);
        }
        if(Include_J3_in_Jig) {
          wide_line([121.070000, pcb_min_y],[121.070000, pcb_max_y]);
        }
        if(Include_J6_in_Jig) {
          wide_line([150.430000, pcb_min_y],[150.430000, pcb_max_y]);
        }
        if(Include_JP3_in_Jig) {
          wide_line([121.330000, pcb_min_y],[121.330000, pcb_max_y]);
        }
        if(Include_JP2_in_Jig) {
          wide_line([177.600000, pcb_min_y],[177.600000, pcb_max_y]);
        }
        if(Include_J13_in_Jig) {
          wide_line([142.730000, pcb_min_y],[142.730000, pcb_max_y]);
        }
        if(Include_U5_in_Jig) {
          wide_line([181.160000, pcb_min_y],[181.160000, pcb_max_y]);
          wide_line([181.160000, pcb_min_y],[181.160000, pcb_max_y]);
          wide_line([196.400000, pcb_min_y],[196.400000, pcb_max_y]);
          wide_line([196.400000, pcb_min_y],[196.400000, pcb_max_y]);
        }
        if(Include_U4_in_Jig) {
          wide_line([174.783400, pcb_min_y],[174.783400, pcb_max_y]);
          wide_line([183.876600, pcb_min_y],[183.876600, pcb_max_y]);
          wide_line([174.783400, pcb_min_y],[174.783400, pcb_max_y]);
          wide_line([183.876600, pcb_min_y],[183.876600, pcb_max_y]);
        }
        if(Include_J12_in_Jig) {
          wide_line([157.650000, pcb_min_y],[157.650000, pcb_max_y]);
        }
        if(Include_J2_in_Jig) {
          wide_line([118.908800, pcb_min_y],[118.908800, pcb_max_y]);
        }
        if(Include_JP4_in_Jig) {
          wide_line([121.085111, pcb_min_y],[121.085111, pcb_max_y]);
        }
        if(Include_J8_in_Jig) {
          wide_line([121.740000, pcb_min_y],[121.740000, pcb_max_y]);
        }
        if(Include_JP1_in_Jig) {
          wide_line([177.600000, pcb_min_y],[177.600000, pcb_max_y]);
        }
        if(Include_J10_in_Jig) {
          wide_line([121.030000, pcb_min_y],[121.030000, pcb_max_y]);
        }
        if(Include_J4_in_Jig) {
          wide_line([193.730000, pcb_min_y],[193.730000, pcb_max_y]);
        }
        if(Include_J11_in_Jig) {
          wide_line([195.000000, pcb_min_y],[195.000000, pcb_max_y]);
        }
        if(Include_U1_in_Jig) {
          wide_line([142.800000, pcb_min_y],[142.800000, pcb_max_y]);
          wide_line([142.800000, pcb_min_y],[142.800000, pcb_max_y]);
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
    translate([194.4,-152.0,PCB_Thickness+SMD_Clearance_From_PCB]) {
      linear_extrude(topmost_z+c_Base_Thickness-SMD_Clearance_From_PCB) {
        difference() {
          circle(r=2.9000000000000004);
          circle(r=1.7000000000000002);
        }
      }
    }
    translate([128.62,-119.5,PCB_Thickness+SMD_Clearance_From_PCB]) {
      linear_extrude(topmost_z+c_Base_Thickness-SMD_Clearance_From_PCB) {
        difference() {
          circle(r=2.8);
          circle(r=1.6);
        }
      }
    }
    translate([121.1,-70.5,PCB_Thickness+SMD_Clearance_From_PCB]) {
      linear_extrude(topmost_z+c_Base_Thickness-SMD_Clearance_From_PCB) {
        difference() {
          circle(r=2.9000000000000004);
          circle(r=1.7000000000000002);
        }
      }
    }
    translate([194.4,-119.5,PCB_Thickness+SMD_Clearance_From_PCB]) {
      linear_extrude(topmost_z+c_Base_Thickness-SMD_Clearance_From_PCB) {
        difference() {
          circle(r=2.9000000000000004);
          circle(r=1.7000000000000002);
        }
      }
    }
    translate([194.4,-70.5,PCB_Thickness+SMD_Clearance_From_PCB]) {
      linear_extrude(topmost_z+c_Base_Thickness-SMD_Clearance_From_PCB) {
        difference() {
          circle(r=2.9000000000000004);
          circle(r=1.7000000000000002);
        }
      }
    }
    translate([114.5,-159,0]) {
      linear_extrude(topmost_z+c_Base_Thickness+PCB_Thickness) {
        difference() {
          circle(r=2.9000000000000004);
          circle(r=1.7000000000000002);
        }
      }
    }
  }
}
module mounting_hole_keepout_volume() {
  translate([0,0,PCB_Thickness]) {
    linear_extrude(topmost_z+c_Base_Thickness) {
      translate([194.4,-152.0,0]) {
        circle(r=1.7000000000000002);
      }
      translate([128.62,-119.5,0]) {
        circle(r=1.6);
      }
      translate([121.1,-70.5,0]) {
        circle(r=1.7000000000000002);
      }
      translate([194.4,-119.5,0]) {
        circle(r=1.7000000000000002);
      }
      translate([194.4,-70.5,0]) {
        circle(r=1.7000000000000002);
      }
      translate([114.5,-159,0]) {
        circle(r=1.7000000000000002);
      }
    }
  }
}
module base_connect_mounting_hole_lines() {
  translate([0,0,mesh_start_z]) {
    union() {
      wide_line([194.400000, -152.000000],[194.400000, -155.800000]);
      wide_line([128.620000, -119.500000],[117.249518, -119.500000]);
      wide_line([121.100000, -70.500000],[117.249518, -70.500000]);
      wide_line([194.400000, -119.500000],[198.600000, -119.500000]);
      wide_line([194.400000, -70.500000],[194.400000, -66.600000]);
      wide_line([114.500000, -159.000000],[117.249518, -155.800000]);
     }
  }
}
module mounting_hole_jig_keepout() {
  translate([0,0,PCB_Thickness+MH_Spacer_Start-tiny_dimension]) {
    linear_extrude(MH_Spacer_End-MH_Spacer_Start+2*tiny_dimension) {
      offset(1000)
        pcb_edge();
    }
  }
}
module mounting_hole_jig_spacers() {
  spacer_gap = c_Spacer_Is_Fused ? 0: 2*tiny_dimension;
  translate([0,0,PCB_Thickness+MH_Spacer_Start+2*tiny_dimension]) {
    linear_extrude(MH_Spacer_End-MH_Spacer_Start-spacer_gap) {
      translate([194.4,-152.0,0]) {
        difference() {
          circle(r=2.9000000000000004);
          if (Bolt_Is_External) {
            circle(r=1.7000000000000002);
          }
        }
      }
      translate([128.62,-119.5,0]) {
        difference() {
          circle(r=2.8);
          if (Bolt_Is_External) {
            circle(r=1.6);
          }
        }
      }
      translate([121.1,-70.5,0]) {
        difference() {
          circle(r=2.9000000000000004);
          if (Bolt_Is_External) {
            circle(r=1.7000000000000002);
          }
        }
      }
      translate([194.4,-119.5,0]) {
        difference() {
          circle(r=2.9000000000000004);
          if (Bolt_Is_External) {
            circle(r=1.7000000000000002);
          }
        }
      }
      translate([194.4,-70.5,0]) {
        difference() {
          circle(r=2.9000000000000004);
          if (Bolt_Is_External) {
            circle(r=1.7000000000000002);
          }
        }
      }
      translate([114.5,-159,0]) {
        difference() {
          circle(r=2.9000000000000004);
          if (Bolt_Is_External) {
            circle(r=1.7000000000000002);
          }
        }
      }
    }
  }
  if (!Bolt_Is_External) {
      translate([194.4,-152.0,0]) {
        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {
          circle(r=1.5);
        }
      }
      translate([128.62,-119.5,0]) {
        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {
          circle(r=1.4);
        }
      }
      translate([121.1,-70.5,0]) {
        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {
          circle(r=1.5);
        }
      }
      translate([194.4,-119.5,0]) {
        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {
          circle(r=1.5);
        }
      }
      translate([194.4,-70.5,0]) {
        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {
          circle(r=1.5);
        }
      }
      translate([114.5,-159,0]) {
        linear_extrude(PCB_Thickness+topmost_z+c_Base_Thickness) {
          circle(r=1.5);
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

pcb_min_x = 117.249518;
pcb_max_x = 198.6;
pcb_min_y = -155.8;
pcb_max_y = -66.6;

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

# All dimensions are specified in millimeters
#
# Please see documentation for meaning of "gap", "overlap", and "perimeter"
#
[pcb]
thickness = 1.6
tesellate_edge_cuts_curve = 0.1

[holder]
pcb_overlap = 0.3
pcb_gap = 0.3
groove_size = 15
forced_grooves = [
  #  [ X, Y ] coordinates from KiCAD PCB
]

# Holder will have a solid border around the edge points of the PCB. This
# provides rigidity to the jig structure.
perimeter = 1.6

[holder.base]
type = "mesh"
thickness = 0.4 # if 0, then the Pico headers can even be inserted from bottom
perimeter_height = 1
line_width = 1.6
line_height = 1.0

[TH]
# There is no mounting hole in one corner. Add that in the jig
# to allow fastening if needed.
extra_mounting_holes = [
  # Corner near Pico debug connector is close to (117.5, 156)
  # the M3 nut is ~6 mm. Plastic around PCB edges will be
  # 1.2 to 1.6, max 2 mm. So, we can use a clearance of 6x6
  [ 114.5, 159, 3.2 ],
]

# Remove some mounting holes that aren't useful in the jig
refs_do_not_process = [
#  Uncomment to exclude specific mounting holes
   'H1', 'H2', 'H4', # Pi HAT holes
#  'H3', # Pi HAT hole closer to left corner  
#  'TP6', # PTH on center right corner
#  'TP2' # PTH on bottom right corner
#  'TP1', 'TP4', # Plated TH on top border edge
]

[TH.component_shell]
shell_type = "fitting"
insertion_direction = "top"
shell_thickness = 1.2
#
# 0.25 mm was found cleanly avoid flexing of a 2x20 header
# 0.3 mm was loose
# 0.2 mm caused a slight bow, and smaller values caused noticeable flex
# along the long axis
shell_gap = 0.25
# vertical gap lets you see components from the side
shell_clearance_from_pcb = 1

[SMD]
clearance_from_shells = 0.5
gap_from_shells = 0.5

[jig]
type = "TH_soldering"

[footprint.FP11]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical'
display_name='Header 2x5'
# components ['J4']

[footprint.FP10]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical'
display_name='Header 2x10'
# components ['J10']

[footprint.FP3]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical'
display_name='Header 2x3'
# components ['J3']

[footprint.FP1]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical'
display_name='Header 1x5'
# components ['J7', 'J5', 'J9']

[footprint.FP2]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical'
display_name='Header 1x4'
# components ['J1']

[footprint.FP8]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical'
display_name='Header 2x20'
# components ['J12']

[footprint.FP4]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical'
display_name='Header 1x10'
# components ['J6']

[footprint.FP6]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical'
display_name='Header 1x3'
# components ['J13', 'J8', 'J11']

[footprint.FP12]
kicad_footprint='RPi_Pico:RPi_Pico_SMD_TH'
display_name='RPi Pico'
# components ['U1']

[footprint.FP9]
kicad_footprint='Connector_USB:USB_Micro-B_Molex-105017-0001'
display_name='USB Connector'
# components : J2

[footprint.FP7]
kicad_footprint='project_lib:Mini360_step-down'
display_name='Mini 360'
# components : U5, U4

[footprint.FP5]
kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical'
display_name='Header 1x2'
# components : JP3, JP2, JP4, JP1

#
# The individual components on the board
# Each has a friendly display name that is visible in openscad customizer
# That way you don't have to refer back to your PCB design to figure out
# what J1 is. Also great for others to refer to!
#
# kicad_footprint line is retained for reference in each case, but
# commented out to show it's not necessary
#

[TH.J4]
display_name='I2C+SPI Header'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical'

[TH.J10]
display_name='GPIOx14'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical'

[TH.J3]
display_name='BOOT UART'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical'

[TH.J7]
display_name='PWM'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical'

[TH.J5]
display_name='JTAG'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical'

[TH.J9]
display_name='SPI1'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical'

[TH.J1]
display_name='J1'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical'

[TH.J12]
display_name='RPi HAT'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical'

[TH.J6]
display_name='Pico GPIO'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical'

[TH.J13]
display_name='I2C0'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical'

[TH.J8]
display_name='Pico Debug'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical'

[TH.J11]
display_name='UART1'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical'

[TH.U1]
display_name='Pico'
#kicad_footprint='RPi_Pico:RPi_Pico_SMD_TH'

[TH.J2]
display_name='USB Power'
#kicad_footprint='Connector_USB:USB_Micro-B_Molex-105017-0001'

[TH.U5]
display_name='1.2V DCDC'
#kicad_footprint='project_lib:Mini360_step-down'

[TH.U4]
display_name='3.3V DCDC'
#kicad_footprint='project_lib:Mini360_step-down'

[TH.JP3]
display_name='JP3'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical'

[TH.JP2]
display_name='1.2V'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical'

[TH.JP4]
display_name='JP4'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical'

[TH.JP1]
display_name='3.3V'
#kicad_footprint='Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical'


*/
