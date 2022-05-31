#!/usr/bin/env python

"""
pyramid.py -- Calculates the number of blocks of cut copper, copper, and copper ingots
required to build a pyramid given the edge length of the square base
"""

from math import ceil

def count_blocks(edge_length: int) -> int:
    """
    Solve recursively for entire pyramid, starting with base
    and moving up... each consecutive edge will be two blocks shorter
    """
    print("Solving for an edge of " + str(edge_length) + " blocks.")
    # Two end cases: a four block top or 1 block top
    if (edge_length == 2):
        return(4)

    if (edge_length == 1):
        return(edge_length)

    # Add the number of blocks to the number of blocks in the next level up
    # account for corners
    edge_no_corners = edge_length - 2
    total_blocks_this_layer = (edge_no_corners * 4) + 4
    return(total_blocks_this_layer + count_blocks(edge_length - 2))

base_size = int(input("Enter the base edge length in blocks: "))
#print(base_size)

materials = dict()
materials["Cut Copper"] = count_blocks(base_size)
materials["Copper"] = ceil(materials["Cut Copper"] / 4)
materials["Copper Ingots"] = materials["Copper"] * 9

#print(materials)
for material in materials.keys():
    print("\t-> " + material + ": " + str(materials[material]))

#print("Blocks: " + str(count_blocks(base_size)))
