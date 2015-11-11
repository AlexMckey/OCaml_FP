(*
BALANCED BINARY TREES  (11/22 points)
A binary tree t, of the 'a bt type given in the prelude, is either an empty tree, or the root of a tree with a value and two children subtrees.

Write a function height : 'a bt -> int that computes the height of a tree.
A tree is balanced if, for all internal node n, its two subtrees have the same height. Write a function balanced : 'a bt -> bool that tells if a tree is balanced.
*)

type 'a bt =
  | Empty
  | Node of 'a bt * 'a * 'a bt ;;

let rec height t =
  let rec loop h = function
    | Empty          -> h
    | Node (lt,_,rt) ->
        let lh = loop (h+1) lt
        and rh = loop (h+1) rt in
        if lh > rh then lh else rh in
  loop 0 t;;

let rec balanced  = function
  | Empty          -> true
  | Node (lt,_,rt) ->
      let lh = height lt
      and rh = height rt in
      balanced lt && balanced rt && height lt = height rt;;
