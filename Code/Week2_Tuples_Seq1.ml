(*
  ENIGMA  (30 points possible)
Let us solve the following puzzle: 
If you multiply my grand-son age by four, you know how old I am. Now, if you exchange the two digits of our ages then you have to multiply by three my age to get the age of my grand-son!

Write a function exchange of type int -> int that takes an integer x between 10 and 99 and returns an integer which is x whose digits have been exchanged. For instance, exchange 73 = 37.
Define is_valid_answer of type int * int -> bool such that is_valid_answer (grand_father_age, grand_son_age) returns true if and only if grand_father_age and grand_son_age verify the constraints of the puzzle.
Write a function find : (int * int) -> (int * int) that takes a pair (max_grand_father_age, min_grand_son_age) and returns a solution (grand_father_age, grand_son_age) to the problem, where min_grand_son_age <= grand_son_age < grand_father_age <= max_grand_father_age or (-1, -1) if there was no valid answer in the given range.
*)

let exchange k =
  let x = k / 10 and y = k mod 10 in y * 10 + x;;

let is_valid_answer (grand_father_age, grand_son_age) =
  let (grand_father_exchange_age, grand_son_exchange_age) =
    (exchange grand_father_age, exchange grand_son_age) in
  grand_father_age = (grand_son_age * 4) &&
  grand_son_exchange_age =(grand_father_exchange_age * 3);;

let find answer =
  let (mgf,mgs) = answer in
  let check_age gsa = (gsa * 4) > mgf in
  let rec calc_rec gsa = 
    if check_age gsa then (-1, -1)
    else if is_valid_answer (4 * gsa, gsa) then (4 * gsa, gsa)
    else calc_rec (gsa + 1)
  in calc_rec mgs;;