#
# Evaluating travelling salesman as a way of drawing a least cost
# connecting line (alternative to delaunay mesh)
#
# Making the base mesh takes time and material. Delaunay is reasonable,
# but how can we do better ?
#
import numpy as np
from pprint import pprint
from python_tsp.distances import euclidean_distance_matrix
from python_tsp.exact import solve_tsp_dynamic_programming
from python_tsp.heuristics import solve_tsp_local_search, solve_tsp_simulated_annealing

# these points are 
# fp_centers of AtiVEGA +
# mounting hole centers +
# pcb corners
nodes = [
[195.0, -97.80499999999999],
 [137.35, -115.28999999999999],
 [161.88000000000002, -126.0],
 [131.29999999999998, -126.0],
 [121.07000000000001, -105.14],
 [150.43, -153.9],
 [121.33, -126.0],
 [177.6, -126.97000000000001],
 [142.73, -126.0],
 [181.16, -134.0166],
 [181.16, -124.9234],
 [196.4, -134.0166],
 [196.4, -124.9234],
 [174.7834, -138.5],
 [183.8766, -138.5],
 [174.78340000000003, -153.74],
 [183.87660000000002, -153.74],
 [157.65, -70.53],
 [118.9088001, -119.5],
 [121.085111, -111.709437],
 [121.74000000000001, -153.9],
 [177.6, -133.67999999999998],
 [121.03, -87.35000099999999],
 [193.73, -82.08],
 [195.0, -110.739999],
 [142.8, -131.60000000000002],
 [142.8, -149.38],
 [128.62, -70.5],
 [186.62, -119.5],
 [186.62, -70.5],
 [194.4, -152.0],
 [128.62, -119.5],
# [114.5, -159]
 [117.249518, -66.6],
 [117.249518, -155.8],
 [198.6, -66.6],
 [198.6, -155.8]
]

distance_matrix = euclidean_distance_matrix(np.array(nodes), np.array(nodes))
print('Nodes:',len(nodes))
#pprint(distance_matrix)

# Exact solution for 37 nodes.
#
# Laptop froze! Linux had had enough. It killed the proc after 6 minutes.
# 
#permutation, distance = solve_tsp_dynamic_programming(distance_matrix)

# Local search - fast runtime - less than 1 sec
# Distance 1025.877
#permutation, distance = solve_tsp_local_search(distance_matrix)

# Using method from TSP docs https://github.com/fillipe-gsm/python-tsp
# """
# Finally, if you don't feel like fine-tunning the solvers for each problem,
# a rule of thumb that worked relatively well for me is to run the SA with
# a 2-opt and follow it by a LS with PS3 or PS6, like
# """
# Yeah, sure I don't like fine tuning the travelling salesman right now.
# Will take this up later.
#
# Distance 959.42
permutation, distance = solve_tsp_simulated_annealing(distance_matrix)
permutation2, distance2 = solve_tsp_local_search(
    distance_matrix, x0=permutation, perturbation_scheme="ps3"
)
print(distance)
print(permutation)

all_nodes = np.array(nodes)

import matplotlib.pyplot as plt
from shapely.geometry import LineString
from shapely.plotting import plot_line, plot_points
from figures import SIZE, BLACK, BLUE, GRAY, YELLOW, set_limits

fig = plt.figure(1, figsize=SIZE, dpi=90)
# 1: simple line
ax = fig.add_subplot(121)
ax.axis("equal")
line = LineString(all_nodes[permutation])

plot_line(line, ax=ax, add_points=True, color=BLUE, alpha=0.7)
plt.show()

