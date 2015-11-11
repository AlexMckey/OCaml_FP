(*
SYMBOLIC MANIPULATION OF ARITHMETIC EXPRESSIONS  (44 points possible)
Abstract syntax trees are a convenient way to represent a syntactic expression in a structured way.
Let us consider arithmetic expressions formed by the following rules:

an integer is an arithmetic expression ;
if lhs and rhs are arithmetic expressions then lhs + rhs is an arithmetic expression;
if lhs and rhs are arithmetic expressions then lhs * rhs is an arithmetic expression.
Such an expression can be represented by a value of type exp as defined in the given prelude (as well as the definition of 1 + 2 * 3 as an example).
Write the expression 2 * 2 + 3 * 3 in a variable my_example.
Write a function eval : exp -> int that computes the value of an arithmetic expression. The evaluation rules are:
If the expression is an integer x, the evaluation is x.
If the expression is lhs + rhs and lhs evaluates to x and rhs evaluates to y, then the evaluation is x + y.
If the expression is lhs * rhs and lhs evaluates to x and rhs evaluates to y, then the evaluation is x * y.
If an expression is of the form a * b + a * c then a * (b + c) is a factorized equivalent expression.
Write a function factorize : exp -> exp that implements this transformation on its input exp if it has the shape a * b + a * c or does nothing otherwise.
Note: this is a purely syntactical rewriting, so the two occurrences of a must be the same expressions (not two expressions with the same result), and a, b and c can be any expressions (not just integers).
Write the reverse transformation of factorize, expand : exp -> exp, which turns an expression of the shape a * (b + c) into a * b + a * c.
Note: here also, a, b and c can be any expressions (not just integers).
Implement a function simplify: exp -> exp which takes an expression e and:
If e is of the shape e * 0 or 0 * e, returns the expression 0.
If e is of the shape e * 1 or 1 * e, returns the expression e.
If e is of the shape e + 0 or 0 + e, returns the expression e.
and does nothing otherwise.
*)

type exp =
  | EInt of int
  | EAdd of exp * exp
  | EMul of exp * exp;;

let example =
  EAdd (EInt 1, EMul (EInt 2, EInt 3));;

let my_example = EAdd (EMul (EInt 2, EInt 2), EMul (EInt 3, EInt 3));;

let rec eval e =
  match e with
  | EInt x     -> x
  | EAdd (l,r) -> (eval l) + (eval r)
  | EMul (l,r) -> (eval l) * (eval r);;

let factorize e =
  match e with
  | EAdd (EMul (e1, e2), EMul (e3, e4)) -> if e1 = e3
      then EMul (e1, EAdd (e2, e4))
      else e
  | _                                   -> e;;

let expand e =
  match e with
  | EMul (e1, EAdd (e2, e3)) -> EAdd (EMul (e1, e2), EMul (e1, e3))
  | _                        -> e;;

let simplify e =
  match e with
  | EMul (e1, EInt 0) -> EInt 0
  | EMul (e1, EInt 1) -> e1
  | EAdd (e1, EInt 0) -> e1
  | _                 -> e;;
