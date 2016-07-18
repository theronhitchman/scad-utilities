/*
    scad-utilities/vectors.scad
    
    This file contains some common vector operations.
    
    Author: Theron J. Hitchman
    Date: July 16, 2016
    
*/

function cross_product(vector1,vector2) =
    /*
    Returns the cross product of two vectors. 
    
    Input:
      - vector1, vector2 :: a pair of vectors
    */
    (len(vector1) != 3 || len(vector2) != 3) ? undef :
          [vector1[1]*vector2[2] - vector1[2]*vector2[1],
          -vector1[0]*vector2[2] + vector1[2]*vector2[0],
          vector1[0]*vector2[1] - vector1[1]*vector2[0] ];





/* TESTING */

echo( cross_product([1,0,0],[0,1,0]) );