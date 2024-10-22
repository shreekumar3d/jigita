import pcbnew
import sys
from pprint import pprint

filename = '../test-boards/hello/hello.kicad_pcb'
if len(sys.argv)==2:
    filename = sys.argv[1]
board = pcbnew.LoadBoard(filename)
#help(board)
#for i in range(128):
#    print(i, ' -- %s --'%(board.GetLayerName(i)))
# FIXME: are the layer numbers a standard thing with KiCAD ?
# These numbers don't match include/layer_ids.h in KiCAD source codes
# How are the numbers mapped ?
B_Courtyard = 46
F_Courtyard = 47

for fp in board.Footprints():
    print('Component = ',fp.GetReference(), ' on layer = ', fp.GetLayer())
    # front layer = 0
    # back layer = 31
    # you'll find that TH & SMD components will have a courtyard in the layer
    # on which it is mounted, and an empty courtyard on the opposite layer
    # At the footprint level, front and back courtyard can both be specified
    # Probably useful for specifying keepout areas on the other side, and 
    # get them enforced in DRC.
    for side, shape in [
            ('front',fp.GetCourtyard(F_Courtyard)),
            ('back', fp.GetCourtyard(B_Courtyard))]:
        shapeText = shape.Format(False)
        print(f'  Courtyard side : {side}')
        print('    ', shapeText)
    # See kicad-dump-edge-cuts.py for how to convert these into
    # points
    #cyrd = fp.GetCourtyard(F_Courtyard) # returns pcbnew.SHAPE_POLY_SET
    #print(cyrd)
    #help(cyrd)
    #print(dir(cyrd))
    #break
