# LEX & YACC Calculator

Implementation of a Calculator using LEX and YACC.

## Algorithm
1. Start
2. Define tokens for numbers, operators, and parentheses in LEX.
3. Define grammar rules in YACC with operator precedence:
   - e → e + e | e - e | e * e | e / e | ( e ) | number
4. Implement semantic actions to calculate values.
5. For each input expression:
   - Tokenize using LEX.
   - Parse using YACC.
   - Evaluate the expression and print the result.
6. Stop

## Files
- calculator.l - LEX file for tokenizing calculator input.
- calculator.y - YACC grammar file for parsing and evaluating expressions.

## Output
```
Enter expression: 5 + 3
 Result is : 8

Enter expression: 10 - 2 * 3
 Result is : 4

Enter expression: (7 + 3) * 2
 Result is : 20

Enter expression: 15 / 3 + 2 * 4
 Result is : 13
```
