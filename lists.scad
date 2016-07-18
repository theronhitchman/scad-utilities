/*

  scad-utilities/lists.scad

  This file provides list utilities for use across *.scad files.

  Author: Theron J Hitchman
  Date: July 16, 2016

*/

function hadamard_product(list1, list2=[]) =
    /*
      Returns the Hadamard product of two lists. The lists
      must be of the same length.

      Inputs:
        - list1 :: a list
        - list2 :: a list
     */
     [for (i=[0:len(list1)-1]) list1[i]*list2[i]];


function flatter(list) = 
     let(N = len(list))
     let(tail = [for (i=[1:N-1]) list[i]])
     N==1   ? list[0] : concat(list[0], flatter(tail));
     /*
       Returns a list flatter by one level.

       Inputs:
         - a list
     */


/*
     TESTING
 */
echo( len([4]) );
echo( flatter( flatter([[2,7,[[4]]],[[3],3,5]]) ) );

