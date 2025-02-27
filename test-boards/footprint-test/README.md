This directory has examples of how jigit can be used to generate shells directly
from components - i.e. KiCAD footprints.  KiCAD footprints typically have 3D models
associated with them. Jigit can use this information to generate holders for those
components. These holders may even be used standalone.

The common 2 Pin Berg header can be found in the KiCAD footprint library
"Connector_PinHeader_2.54mm" with the name "PinHeader_1x02_P2.54mm_Vertical". You can
directly pass this name to jigit and get it to generate models !

    jigit -c config.toml \
          --footprint Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical \
          -o 2pin_berg_header.scad

A footprint specifier consists of the library name and the footprint name, with a
colon (:) in between.

You may include multiple copies of a component in the output. This is useful to
generate models with different parameters (tolerances, shapes) and test them at
once.  The following command generates a 2x2 grid of 4 of these components:

    jigit \
      -c config.toml \
      --footprint Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical{4} \
      --arrange grid \
      --grid 2,2 \
      -o 4x2pin_berg_header.scad

config.toml defines the size of the print bed.  This is used to lay out models.
When laying out in a grid, models may be laid out using the "arrange" parameter
in various ways:

- in X followed by Y ("grid" or "grid_xy")
- in Y followed by X ("grid_yx")

Apart from a grid, models may laid out to fill the bed in specific directions:

- Arrange in X dimension first ("x")
- Arrange in Y dimension first ("y")
- Packed optimally ("xy")

Glob patterns work as well. The following command includes all the single row
vertical 2.54 mm headers upto 9 pins:

    jigit \
      -c config.toml \
      --footprint Connector_PinHeader_2.54mm:PinHeader_1x0*_P2.54mm_Vertical \
      -o kicad_single_row_headers.scad

To generate standalone components holders, they need a base. Let's generate two
pin headers suitable for soldering a Raspberry Pi Pico.

    jigit \
      -c config.toml \
      --footprint Connector_PinHeader_2.54mm:PinHeader_1x20_P2.54mm_Vertical{2} \
      --arrange grid --grid 2,1 -o 2x20pin_berg_header.scad

Open the output scad file next and set the following properties for both FP1 and
FP2:

- Wrapper Thickness to 3.0
- Wrapper Height to 1.0

This will give the holders a nice base. Try it out! Check 2x20pin_berg_header.stl
for a pre-generated ready to use model. If you need a thicker base, just increase
the height.
