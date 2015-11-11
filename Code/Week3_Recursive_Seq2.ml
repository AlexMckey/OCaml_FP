(*
CLASSIC FUNCTIONS OVER LISTS  (40 points possible)

In this exercise, we implement the classic functions over lists.

Write a function mem : int -> int list -> bool such that mem x l is true if and only if x occurs in l.
Write a function append : int list -> int list -> int list such that append l1 l2 is the concatenation of l1 and l2.
Write a function combine : int list -> int list -> (int * int) list such that combine l1 l2 is the list of pairs obtained by joining the elements of l1 and l2. This function assumes that l1 and l2 have the same length. For instance, combine [1;2] [3;4] = [(1, 3); (2, 4)].
Write a function assoc : (string * int) list -> string -> int option such that assoc l k = Some x if (k, x) is the first pair of l whose first component is k. If no such pair exists, assoc l k = None.
*)

let rec mem x l =
  match l with
  | []    -> false
  | e::es -> if x = e
      then true
      else mem x es;;

let rec append l1 l2 =
  match l1 with
  | []      -> l2
  | (x::xs) -> x::(append xs l2);;

let rec combine l1 l2 =
  match (l1,l2) with
  | (x::xs, y::ys) -> (x,y)::(combine xs ys)
  | _              -> [];;

let rec assoc l k =
  match l with
  | [] -> None
  | (s,x)::xs -> if s = k then Some x
      else assoc xs k;;
