(*
PRIME NUMBERS  (30 points possible)
Let's define some usual arithmetical functions.

gcd that takes two non-negative integers n and m, and that returns the greatest common divisor of n and m, following Euclid's algorithm.
multiple_upto that takes two non-negative integers n and r, and that checks whether n admits at least one divisor between 2 and r, returning a boolean.
is_prime a takes a non-negative integer n and checks whether it is a prime number.
Important note: You can assume that both integer_square_root and multiple_of exist, and that they are correct answers to the Simple functions over integers exercise from the previous sequence.

Once is_prime works, you can try writing a new version of it which is self-contained (that contains all definitions of auxiliary functions as locally defined functions).
*)

let multiple_of n d = n mod d == 0 ;;

let integer_square_root n = int_of_float (sqrt (float_of_int n)) ;;

let rec gcd n m = if m = 0 then n else gcd m (n mod m) ;;

let rec multiple_upto n r =
  if r = 1
  then false
  else if gcd n r > 1
  then true
  else multiple_upto n (r-1) ;;

let is_prime n =
  if n = 1
  then false
  else not (multiple_upto n (integer_square_root n)) ;;
