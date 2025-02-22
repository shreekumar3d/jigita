# TSSOP20 Breakout Board

The breakout board is this [part](https://sharvielectronics.com/product/soic-to-dip-20-pin-adapter/).
This provides a breakout from TSSOP20 (0.65 mm pitch) to dual 0.1 inch berg headers.

This is an off the shelf TSSOP20 breakout board. The design of this isn't
available, so I am forced to create it from scratch by reverse engineering
from the actual board. Only then can I make it work solderless.

Here's how I do the "reverse engineering":

* Scan the breakout board using a regular color scanner (part of all in one printer). Scan at 300 DPI. Board is kept in a corner next to a small helper object (also 3D
printed - see scan-helper.3mf, dimensions in freecad file). Helper provides margin
and ensures corners of the PCB don't get chewed by the scanner.
* Import scanned image to inkscape.
* Mark PCB with a rectangle size same as PCB size
* Overlay circles of 2mm size to correspond to mounting holes
* Find approx corner of TSSOP footprint, mark with a rectangle
* Create a KiCAD file and transfer all the coordinates from the inkscape file to
kicad file. See tssop20-breakout schematic and PCB file.

Verified the board by printing the layout from KiCAD.  Print front copper layer
and edge cuts layer, and exported to PDF file (see tssop20-breakout.pdf). I next
printed this 1:1 on an A4 paper sheet and checked location of holes. Seemed
perfect!

## Testing

Ran

  $ ./jigit -i demo/tssop20-breakout/tssop20-breakout.kicad_pcb -o tssop20-breakout.stl

Printed the STL file. The M2 hole locations seem perfect, and the 10 pin header
location too.  The TSSOP location seems fine to the eye, but further checks are
required to be sure.




