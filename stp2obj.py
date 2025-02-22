# Call using freecad.cmd
# e.g., like freecad.cmd stp2obj.py step_file obj_file
import Part, Mesh
import sys

in_file = sys.argv[2]
out_file = sys.argv[3]
print("Converting %s to %s" % (in_file, out_file))
p = Part.read(in_file)  # Step file
m = Mesh.Mesh()
m.addFacets(p.tessellate(1))
m.write(out_file)  # Obj file
