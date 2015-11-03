(*
  STRING IDENTIFIERS  (2/2 points)
Suppose that a variable word exists and is a string.

Define a variable sentence that uses 5 string concatenations to create a string containing 9 times word, separated by comas (',').

This time, experiment with defining local let ... ins to store the partial results.
*)

let sentence =
  let s = word ^ "," in
    let s2 = s ^ s in
      let s3 = s2 ^ s2 in
s3 ^ s3 ^ word ;;
