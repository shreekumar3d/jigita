# Test to understand pcbnew's python interface, units
# etc
import pcbnew
import sys
from pprint import pprint

def dumpShape(shape):
    result = []
    for i in range(shape.OutlineCount()):
        lc = shape.Outline(i)
        for j in range(lc.PointCount()):
            pt = lc.CPoint(j)
            result.append([pcbnew.ToMM(pt.x),pcbnew.ToMM(pt.y)])
    pprint(result)


board = pcbnew.LoadBoard(sys.argv[1])
fp_list = board.Footprints()
for fp in fp_list:
    print('Component ', fp.GetReference(), ' at ', fp.GetPosition())
    print('    Attribs = ', fp.GetAttributes()) # What are these ?
    print('    TH ? ', fp.HasThroughHolePads())
    #pprint(dir(fp))
    for pad in fp.Pads():
        print('    Pad :', pad.GetPadName())
        print('         position = ', pad.GetPosition())
        print('         offset   = ', pad.GetPosition())
        bb = pad.GetBoundingBox()
        print('         bb       = ', bb.GetX(), bb.GetY(), ' w x h=, ',bb.GetWidth(), bb.GetHeight())
        print('         radius   = ', pad.GetBoundingRadius())
        print('         drill    = ', pad.GetDrillSize())
        print('         drill shape   = ', pad.GetDrillShape())
        shapes = [ 'CIRCLE', 'RECTANGLE', 'OVAL', 'TRAPEZOID', 'ROUNDRECT', 'CHAMFERED_RECT', 'CUSTOM']
        print('         shape   = ', shapes[pad.GetShape()])
        # pcbnew.PAD_DRILL_SHAPE_CIRCLE is 0
        # GetShape() returns PAD_SHAPE defined in pcbnew/padstack.h
        #   CIRCLE, (0)
        #   RECTANGLE,
        #   OVAL,
        #   TRAPEZOID,
        #   ROUNDRECT,
        #   CHAMFERED_RECT
        #   CUSTOM
        # Haven't verified oval , but shape does have 4 points for rect
        #   dumpShape(pad.GetEffectivePolygon())
        #pprint(dir(pad))
        #help(pad)
    for mod3d in fp.Models():
        print('    3D Model File = ', mod3d.m_Filename)
        print('        Rot = ', mod3d.m_Rotation)
        print('        Scale = ', mod3d.m_Scale)
        print('        Offset = ', mod3d.m_Offset)

