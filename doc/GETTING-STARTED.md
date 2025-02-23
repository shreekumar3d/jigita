# Getting Started

Jigit directly works on KiCAD board files. It is an external tool.

Given a KiCAD board file, it generates a 3D model for a jig that keeps
components in place.  Once you 3D print the jig, you can use it to solder
components on the board with perfect results.  It also has experimental
support for holding SMD components in place without soldering
(check the demo directory).

For through hole components, jigit can handle cases with components of various
heights on the same board.

## Dependencies

Jigit has a few dependencies, you need to install them first:

- KiCAD (tested version 8). This installs kicad python modules also to python.
- OpenSCAD (recommended to use a development version with Manifold mesh support for fast mesh output)
- MeshLab
- FreeCAD

Jigit is developed in python, and depends on the following modules

- toml
- shapely
- rectpack
- python_tsp
- trimesh

If you face package clashes, consider using python virtual environment to run jigit.

## Installation

Clone the jigit git repository to a location of your choice. If you intend to
use it frequently, set the PATH to include the location of the repository.

## Basic Usage

Jigit ships with some test files. These can be used to understand basic usage
and the fundamental concepts of Jigit.

test-boards/hello is a minimal hypothetical example - it's a board with a single
mounting hole and a 2 pin berg header.  To generate a jig for this, run:

$ /path/to/jigit /path/to-/jigit/test-boards/hello/hello.kicad_pcb -o hello.stl

This generates hello.stl.  You may also generate 3MF(.3mf) files, as well as
openscad (.scad) files.

When loaded into the slicer (image below from Prusa Slicer), you will be able to
see the details.  For this particular model, the jig has a single shell(cavity)
to hold the 2 pin berg header. There is a "lip" in which the PCB can sit.  The cylindrical hole can be used to push in an M3 screw to hold the PCB in place
with a nut on the other side.  The resulting model should print without any
failures, as it follows all the rules of design for FDM printing.

## Checking Generated Models

You can check the generated models by overlaying the generated models over 3D
models of boards.

FreeCAD can be used to check the generated models, as follows:

- Export a STEP file from KiCAD, taking care to select "Grid Origin" for coordinates.
- Import STEP file into FreeCAD. This will show the PCB and components. 
- Import STL file generated with jigit (export with --keep-orientation so that both share the same coordinate system)

Show/hide components/PCB/jig to check alignment.

## PCB Shapes

Jigit is designed to handle various PCB shapes, including circular and
arbitrary shapes.  Test boards hello-circle and "pacman" can be used
as examples.

## Tweaking Parameters

Jigit ships with reasonable defaults for common use cases. If you want
to improve the fitting of the components, you may need to create a configuration
file with parameters.  Jigit configuration files are in TOML. You may use the
--genconfig option to generate a configuration file.

An alternate way is to generate an openscad model using jigit. This lets you
tweak various parameters interactively with OpenSCAD's GUI.  Note that Jigit
internally creates and openscad file and exports 3MF or STL as requested.
