SYNTAX OF BOOLEAN OPERATIONS  (2/2 points)
Select the valid expressions that evaluate to false.

not true , not (not false) , - correct ! true ! ! false not true not not false not (not false)
Select the syntactically valid expressions that do not use deprecated operators.

true && false , false || false , - correct true and false true && false true & false false or false false || false false | false
Check your answer  Save your answer  Show Answer  You have used 1 of 3 submissions
SIMPLE BOOLEAN EXPRESSIONS  (2/2 points)
Warning: you only have 2 attempts. Some hints will be displayed after the first attempt.

What is the result of compiling and evaluating false and true?

Syntax error. Syntax error. - correct Type error. false true
The keyword and is not an infix operator, and it has a completely different meaning. For the boolean conjunction you shoud use &&.
What is the result of compiling and evaluating not false || true?

Syntax error. Type error. false true <code>true</code> - correct
Function applications have a greater priority than arithmetic operators; this is read as (not false) || true.
 Final Check your answer  Save your answer  Show Answer  You have used 1 of 2 submissions
SIMPLE COMPARISON EXPRESSIONS  (4/4 points)
Warning: you only have 2 attempts. Some hints will be displayed after the first attempt.

What is the result of compiling and evaluating 1 < 2 && 2 <> 3?

Syntax error. Type error. false true <code>true</code> - correct
The inequality operator is written <>. The operator != exists but it has a different meaning.
What is the result of compiling and evaluating true > false?

Syntax error. Type error. false true <code>true</code> - correct
The comparison operators are polymorphic, you might compare booleans and in that case true is greater than false.
What is the result of compiling and evaluating 1 = true?

Syntax error. Type error. Type error. - correct false true
While the comparison operators are polymorphic, you cannot compare two values of different types. Hence, the expressions true = 1 is rejected by the typechecker.
What is the result of compiling and evaluating 1 < 2 < 3?

Syntax error. Type error. Type error. - correct false true
The comparison operators are left associative. It means that this expression is syntactically valid, and is read as: (1 < 2) < 3.
However, the typechecker rejects this expression, because the polymorphic comparaison cannot compare two values of different types, namely 1 < 2 fo type bool and 3 of type int.
 Final Check your answer  Save your answer  Show Answer  You have used 1 of 2 submissions
SIMPLE COMPARISON EXPRESSIONS (BIS)  (4/4 points)
Warning: you only have 1 attempt.

What is the result of compiling and evaluating true = 1 && not (3 = 4)?

Syntax error. Type error. Type error. - correct false true
You can't compare booleans and integers.
What is the result of compiling and evaluating false <= 0 && 3 <= 4?

Syntax error. Type error. Type error. - correct false true
You can't compare booleans and integers.
What is the result of compiling and evaluating true <> false && 3 <> 4?

Syntax error. Type error. false true <code>true</code> - correct
What is the result of compiling and evaluating not (true >= false) || 3 = 4?

Syntax error. Type error. false <code>false</code> - correct true
 Show Answer  You have used 1 of 1 submissions
SIMPLE COMPARISON EXPRESSIONS (TER)  (4/4 points)
Warning: you only have 1 attempt.

What is the result of compiling and evaluating (not true) >= false || 3 = 4?

Syntax error. Type error. false true <code>true</code> - correct
This is read as ((not true) >= false) || (3 = 4).
What is the result of compiling and evaluating not true >= false || 3 = 4?

Syntax error. Type error. false true <code>true</code> - correct
This is read as ((not true) >= false) || (3 = 4).
What is the result of compiling and evaluating 1 = 2 = true?

Syntax error. Type error. false <code>false</code> - correct true
This is read as (1 = 2) = true.
What is the result of compiling and evaluating false = 1 = 2?

Syntax error. Type error. Type error. - correct false true
This is read as (false = 1) = 2.
 Show Answer  You have used 1 of 1 submissions
