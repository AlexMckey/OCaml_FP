FUNCTION APPLICATIONS  (4/4 points)
Warning: you only have 2 attempts. Some hints will be displayed after the first attempt.

What is the type of the expression String.get "Hello" 3?

Type error. int bool float string char <code>char</code> - correct
This is the application of the function String.get to the two arguments "Hello" and 3.
What is the type of the expression String.get "Hello" (1 + 2)?

Type error. int bool float string char <code>char</code> - correct
This is the application of the function String.get to the two arguments "Hello" and (1 + 3).
What is the type of the expression String.get "Hello" 1 + 2?

Type error. Type error. - correct int bool float string char
This is read as: (String.get "Hello" 1) + 2
The left argument of integer addition would be a character.
What is the type of the expression Char.code 'a' + 2?

Type error. int <code>int</code> - correct bool float string char
This is read as: (Char.code 'a') + 2.
The Char.code function returns an integer value that is the ASCII code af the argument.
 Final Check your answer  Save your answer  Show Answer  You have used 1 of 2 submissions
FUNCTION APPLICATIONS (BIS)  (4/4 points)
Warning: you only have 1 attempt.

What is the type of the expression 1 + Char.code String.get "Hello" 3?

Type error. Type error. - correct int bool float string char
The Char.code function does not expect three arguments.
The expression 1 + Char.code (String.get "Hello" 3) would have been a valid integer expression.
What is the type of the expression Char.code (String.get "Hello" 3) + 2?

Type error. int <code>int</code> - correct bool float string char
Business as usual.
What is the type of the expression String.get "Hello" int_of_string "2"?

Type error. Type error. - correct int bool float string char
The String.get function does not expect three arguments.
The expression String.get "Hello" (int_of_string "2") would have been a valid character expression.
What is the type of the expression String.get ("OCaml" ^ " is " ^ "wonderful!") (String.length ("I love " ^ "Pascal"))?

Type error. int bool float string char <code>char</code> - correct
The String.length function returns the length of its string argument, as an integer value.
 Show Answer  You have used 1 of 1 submissions
NESTED EXPRESSIONS  (3/3 points)
Warning: you only have 2 attempts. Some hints will be displayed after the first attempt.

What is the type of the expression "An approximation of pi is: " ^ string_of_int (int_of_float 3.14) ^ ".14"?

Type error. int bool float string <code>string</code> - correct char
This is read as: "An approximation of pi is: " ^ (string_of_int (int_of_float 3.14)) ^ ".14".
The sub-expression string_of_int (int_of_float 3.14) is a valid string expression.
What is the type of the expression 1 + int_of_string "23" + 45?

Type error. int <code>int</code> - correct bool float string char
This is read as: 1 + (int_of_string "23") + 45.
The sub-expression int_of_string "23" is a valid integer expression.
What is the type of the expression int_of_string "12" ^ "34"?

Type error. Type error. - correct int bool float string char
This is read as: (int_of_string "12") ^ "34".
The left operand of the concatenation operator is an integer expression.
 Final Check your answer  Save your answer  Show Answer  You have used 1 of 2 submissions
NESTED EXPRESSIONS (BIS)  (3/3 points)
Warning: you only have 1 attempt.

What is the type of the expression not (if true then 2 = 3 else 'a' <> 'c')?

Type error. int bool <code>bool</code> - correct float string char
Both branches contains valid boolean expressions.
What is the type of the expression if not not false then float_of_int 2 else sqrt (sqrt 16.)?

Type error. Type error. - correct int bool float string char
Beware! The double negation should be written not (not false).
What is the type of the expression if 'a' = String.get "abcd" (if 0. = 1. then 2 else 3) then Char.code 'A' else 65?

Type error. int <code>int</code> - correct bool float string char
The sub-expression if 0. = 1. then 2 else 3 is a valid integer expression.
Then, the sub-expresion String.get "abcd" (if 0. = 1. then 2 else 3) is a valid character expression.
Both branch of the outer conditional contain valid integer expressions.
 Show Answer  You have used 1 of 1 submissions
NESTED EXPRESSIONS (TER)  (3/3 points)
Warning: you only have 1 attempt.

What is the type of the expression 1 + (if "int" <> "float" then 2. else 3.) +. 4.?

Type error. Type error. - correct int bool float string char
One can not mix integer and floating-point number additions without in-advance proper notification to the authority!
What is the type of the expression if "string" <> "char" then String.get "A" 0 else "A"?

Type error. Type error. - correct int bool float string char
One should not mix characters and strings in an potion, otherwise you will be cursed to eternal indecision!
What is the type of the expression String.get "King's Cross Station" (if 0 <> 1 then 8.25 else 9.75)?

Type error. Type error. - correct int bool float string char
There is no character between the eighth one and the ninth one!
 Show Answer  You have used 1 of 1 submissions
