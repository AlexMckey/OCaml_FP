CONDITIONAL EXPRESSIONS  (4/4 points)
Warning: you only have 2 attempts. Some hints will be displayed after the first attempt.

What is the result of compiling and evaluating if 1 = 2 then "abc" else "def"?

Syntax error. Type error. "abc" "def" <code>"def"</code> - correct
A conditional expression is well-typed when the condition is a boolean expression and the two branches share the same type.
The condition evaluating to false, the conditional expression evaluates like its second branch.
What is the result of compiling and evaluating if 1 = 2 then 3 else 4.5?

Syntax error. Type error. Type error. - correct 3 4.5
The first branch contains an integer expression, while the second branch contains a floating-point expression.
What is the result of compiling and evaluating if (1 <> 2) then 3 else 4?

Syntax error. Type error. 3 <code>3</code> - correct 4
The parenthesis around the conditional expression are not mandatory.
What is the result of compiling and evaluating if 1 then 2 else 3?

Syntax error. Type error. Type error. - correct 2 3
The integer literal 1 is not a valid boolean expression.
 Final Check your answer  Save your answer  Show Answer  You have used 1 of 2 submissions
CONDITIONAL EXPRESSIONS (BIS)  (4/4 points)
Warning: you only have 1 attempt.

What is the result of compiling and evaluating if 1 = 2 then 34 else "56"?

Syntax error. Type error. Type error. - correct 34 "56"
The first branch contains an integer expression, while the second branch contains a string expression.
What is the result of compiling and evaluating if 1 < "2" then 3.4 else 5.6?

Syntax error. Type error. Type error. - correct 3.4 5.6
One cannot compare integer and string expressions without explicit conversion.
What is the result of compiling and evaluating if "Amazone" < "Amour" then 3.4 else 5.6?

Syntax error. Type error. 3.4 <code>3.4</code> - correct 5.6
In the alphanumerical order, "Amazone" comes before "Amour".
What is the result of compiling and evaluating if 0 then 1 else 2?

Syntax error. Type error. Type error. - correct 1 2
The integer literal 0 is not a valid boolean expression.
 Show Answer  You have used 1 of 1 submissions
NESTED CONDITIONAL EXPRESSIONS  (3/3 points)
Warning: you only have 2 attempts. Some hints will be displayed after the first attempt.

What is the result of compiling and evaluating 1 + (if 2 = 3 then 4. else 5.)?

Syntax error. Type error. Type error. - correct 5 5. 6 6.
The conditional is the right operand of an integer addition.
The two branches of the conditional contain floating-point expressions. Then, the conditional is a valid floating-point expression and not the expected integer expression.
What is the result of compiling and evaluating if (if 1 = 2 then 3 else 4) <> 5 then 6 else 7?

Syntax error. Type error. 6 <code>6</code> - correct 7
The inner conditionnal is a valid integer expression that can safely be compared to 5.
What is the result of compiling and evaluating if 1 <> 2 then (if 3 <> 4 then 6 else 7) else 8?

Syntax error. Type error. 6 <code>6</code> - correct 7 8
This expression is more readable when written:
 if 1 <> 2 then
   if 3 <> 4 then 6 else 7
 else
   8
The parenthesis around the inner conditionnal are not mandatory.
The two conditionnals are valid integer expressions.
Both conditions are valid boolean expressions that evaluates to true.
 Final Check your answer  Save your answer  Show Answer  You have used 1 of 2 submissions
NESTED CONDITIONAL EXPRESSIONS (BIS)  (4/4 points)
Warning: you only have 1 attempt.

What is the result of compiling and evaluating 1 + (if 2 = 3 then 4 else 5)?

Syntax error. Type error. 5 6 <code>6</code> - correct
This is a valid integer expression.
What is the result of compiling and evaluating if 1 <> 2 then if 3 = 4 then 'a' else 'b' else 'c'?

Syntax error. Type error. 'a' 'b' <code>'b'</code> - correct 'c'
This is a valid character expression.
What is the result of compiling and evaluating if 1 = 2 then (if 3 = 4 then 'a' else 'b') else (if 'c' <> 'd' then 'e' else 'f')?

Syntax error. Type error. 'a' 'b' 'c' 'd' 'e' <code>'e'</code> - correct 'f'
This is a valid character expression where the two branches of the outer conditional contain valid character conditional expressions.
What is the result of compiling and evaluating if 1 = 2 then if 3 = 4 then 5 else 6 else if 'a' <> 'b' then 'c' else 'd'?

Syntax error. Type error. Type error. - correct 5 6 'c' 'd'
This is better read:
  if 1 = 2 then
    if 3 = 4 then 5 else 6
  else
    if 'a' <> 'b' then 'c' else 'd'
The first branch of the outer conditional contains an integer expression, while its second branch contains a character expression.
 Show Answer  You have used 1 of 1 submissions
