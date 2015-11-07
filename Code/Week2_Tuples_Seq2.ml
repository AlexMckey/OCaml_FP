(*
TETRAGON  (51 points possible)
In this exercise, we will do some basic two-dimensional geometry.

We represent a point in two dimensions using a pair, as defined by type point2d in the given prelude. The first component is abscissa (x) and the second component is the ordinate (y). Abscissas grow from left to right and ordinates grow from bottom to top as illustrated by the following schema:

                          ^ (y)
                          |
                          |
                          |
                          |
   -------------------- (0,0) --------------------> (x)
                          |
                          |
                          |
                          |
A tetragon is a polygon with four sides. We represent such an object using a 4-uple of points, as defined by type tetragon in the given prelude. that appear in the following order: the left upper point (lup), the right upper point (rup), the left lower point (llp) and the right lower point (rlp).

In the sequel, we assume that all the points are pairwise distinct.

Write a function pairwise_distinct of type tetragon -> bool that checks that the points of an input tetragon are pairwise distinct.
A tetragon is well-formed if the following properties are verified:
The left upper and the left lower points have the lowest abscissa.
Between the two leftmost points, the left upper point has the greatest ordinate.
Between the two rightmost points, the right upper point has the greatest ordinate.
Write a function wellformed of type tetragon -> bool that returns true if and only if the input tetragon is well formed.
A simple way to rotate a tetragon by 90 degrees clockwise with respect to (0, 0) is to rotate each of its points by exchanging their abscissa and ordinate and negating the resulting ordinate. 
Write a function rotate_point of type point2d -> point2d such that rotate_point p is the point p rotated as explained in the previous paragraph.
Once rotated, the points of the tetragon may not be in the right order: lup may be now llp, rup may be now llp, etc. 
Write a function reorder of type point2d * point2d * point2d * point2d -> tetragon that takes 4 pairwise distinct points and returns a wellformed tetragon.
Write a function rotate_tetragon that takes a well-formed tetragon and returns a well-formed rotated tetragon.
*)

type point2d = int * int
type tetragon = point2d * point2d * point2d * point2d

let pairwise_distinct (lup, rup, llp, rlp) =
  not (lup = rup || lup = llp || lup = rlp || rup = llp || rup = rlp || llp = rlp);;

let wellformed (lup, rup, llp, rlp) =
  let (lup_x,lup_y) = lup
  and (rup_x,rup_y) = rup
  and (llp_x,llp_y) = llp
  and (rlp_x,rlp_y) = rlp in
  if not (pairwise_distinct (lup, rup, llp, rlp)) ||
     (lup_x > rup_x) || (lup_x > rlp_x) || (llp_x > rup_x) || (llp_x > rlp_x)
  then false
  else (lup_y >= llp_y) && (rup_y >= rlp_y);;

let rotate_point (x, y) = (y,-x);;

let reorder (p1, p2, p3, p4) = 
  if      wellformed (p1, p2, p3, p4) then (p1, p2, p3, p4)
  else if wellformed (p1, p2, p4, p3) then (p1, p2, p4, p3)
  else if wellformed (p1, p3, p2, p4) then (p1, p3, p2, p4)
  else if wellformed (p1, p3, p4, p2) then (p1, p3, p4, p2)
  else if wellformed (p1, p4, p2, p3) then (p1, p4, p2, p3)
  else if wellformed (p1, p4, p3, p2) then (p1, p4, p3, p2)
  else if wellformed (p2, p1, p3, p4) then (p2, p1, p3, p4)
  else if wellformed (p2, p1, p4, p3) then (p2, p1, p4, p3)
  else if wellformed (p2, p3, p1, p4) then (p2, p3, p1, p4)
  else if wellformed (p2, p3, p4, p1) then (p2, p3, p4, p1)
  else if wellformed (p2, p4, p1, p3) then (p2, p4, p1, p3)
  else if wellformed (p2, p4, p3, p1) then (p2, p4, p3, p1)
  else if wellformed (p3, p1, p2, p4) then (p3, p1, p2, p4)
  else if wellformed (p3, p1, p4, p2) then (p3, p1, p4, p2)
  else if wellformed (p3, p2, p1, p4) then (p3, p2, p1, p4)
  else if wellformed (p3, p2, p4, p1) then (p3, p2, p4, p1)
  else if wellformed (p3, p4, p1, p2) then (p3, p4, p1, p2)
  else if wellformed (p3, p4, p2, p1) then (p3, p4, p2, p1)
  else if wellformed (p4, p1, p2, p3) then (p4, p1, p2, p3)
  else if wellformed (p4, p1, p3, p2) then (p4, p1, p3, p2)
  else if wellformed (p4, p2, p1, p3) then (p4, p2, p1, p3)
  else if wellformed (p4, p2, p3, p1) then (p4, p2, p3, p1)
  else if wellformed (p4, p3, p1, p2) then (p4, p3, p1, p2)
  else                                     (p4, p3, p2, p1);;

let rotate_tetragon (lup, rup, llp, rlp) =
  let p1 = rotate_point lup
  and p2 = rotate_point rup
  and p3 = rotate_point llp
  and p4 = rotate_point rlp in
  reorder (p1, p2, p3, p4);;