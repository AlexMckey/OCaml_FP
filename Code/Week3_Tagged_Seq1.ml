(*
PATTERN MATCHING EXHAUSTIVITY  (10/10 points)
We have seen in the course the example of non exhaustive pattern matching given below. Write the code for the missing cases.
*)

type color = Black | Gray | White ;;

let lighter c1 c2 =
  match (c1, c2) with
  | (Black, Black) -> false
  | (White, White) -> false
  | (Gray, Gray) -> false
  | (Black, _) -> true
  | (_, White) -> true
  | (White, _) -> false
  | (Gray, Black) -> false
;;
