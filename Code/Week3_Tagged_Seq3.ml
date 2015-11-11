(*
THE OPTION TYPE  (30 points possible)
Optional values are commonly used in OCaml in the return type of partial functions, i.e. functions that may fail on some input. The following questions illustrate such situations.
In the Pervasives module which is loaded automatically, there is a type option with two constructors:
Some (e) has type t option if e has type t and represents the presence of some value e of type t.
None has type t option and represents the absence of some value of type t.

Write a function find : string array -> string -> int option such that find a w = Some idx if a.(idx) = w and find a w = None if there is no such index.
Sometimes, when a value of type t is missing, a default value should be used.
Write a function default_int : int option -> int such that: default_int None = 0 and default_int (Some x) = x.
Write a function merge : int option -> int option -> int option such that:
merge None None = None
merge (Some x) None = merge None (Some x) = Some x
merge (Some x) (Some y) = Some (x + y)
*)

type index = Index of int;;

let read a index =
  match index with
  | Index i -> a.(i);;

let inside a index =
  match index with
  | Index i -> i >= 0 && i < (Array.length a);;

let next index =
  match index with
  | Index i -> Index (i+1);;

let min_index a =
  let minIdx = (Index 0) in
  let rec findMin minIdx i =
    if not (inside a i) then minIdx
    else if read a i < read a minIdx
    then findMin i (next i)
    else findMin minIdx (next i) in
  findMin minIdx (next minIdx);;
