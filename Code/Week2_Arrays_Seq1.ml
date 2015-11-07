(*
FINDING THE MINIMUM  (20/20 points)
Consider a non empty array of integers a.

Write a function min : int array -> int that returns the minimal element of a.
Write a function min_index : int array -> int that returns the index of the minimal element of a.
Do you think these functions work well on large arrays ?

Define a variable it_scales and set it to "yes" or "no".
*)

let min a =
  let i = Array.length a - 2 in
  let minVal = a.(i + 1) in
  let rec findMin i minVal =
    if i < 0 then minVal
    else if a.(i) <= minVal
    then findMin (i-1) a.(i)
    else findMin (i-1) minVal in
  findMin i minVal;;

let min_index a =
  let i = Array.length a - 2 in
  let rec findMin i minIdx =
    if i < 0 then minIdx
    else if a.(i) <= a.(minIdx)
    then findMin (i-1) i
    else findMin (i-1) minIdx in
  findMin i (i+1);;

let it_scales = "no";;
