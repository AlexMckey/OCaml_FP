(*
SEARCHING FOR STRINGS IN ARRAYS  (30/30 points)
Write a function is_sorted : string array -> bool which checks if the values of the input array are sorted in strictly increasing order, implying that its elements are unique (use String.compare).
Using the binary search algorithm, an element can be found very quickly in a sorted array.
Write a function find : string array -> string -> int such that find arr word is the index of the word in the sorted array arr if it occurs in arr or -1 if word does not occur in arr.
The number or array accesses will be counted, to check that you obtain the expected algorithmic complexity. Beware that you really perform the minimal number of accesses. For instance, if your function has to test the contents of a cell twice, be sure to put the result of the access in a variable, and then perform the tests on that variable.
*)

let is_sorted a =
  let rec checkArr i =
    if i = 0 then true
    else if String.compare a.(i) a.(i-1) = 1
    then checkArr (i-1)
    else false in
  if Array.length a = 0 then true
  else checkArr (Array.length a - 1);;

let find dict word =
  let rec findInSubArr l r =
    if l > r then -1
    else let m = (l+r)/2 in
      let el = dict.(m) in
      let cmp = String.compare word el in
      if cmp = 0 then m
      else if cmp = 1
      then findInSubArr (m+1) r
      else findInSubArr l (m-1) in
  if Array.length dict = 0 then -1
  else findInSubArr 0 (Array.length dict - 1);;
