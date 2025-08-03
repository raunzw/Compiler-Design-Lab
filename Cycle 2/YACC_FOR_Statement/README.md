# YACC FOR Statement Validation

Write a YACC program to check the syntax of FOR statements in C.

## Algorithm
1. Start
2. Define tokens for keywords, identifiers, operators, and punctuation in LEX.
3. Define grammar rules in YACC for FOR statements:
   - start → 'for' '(' A A B ')' '{' start '}' NEWLINE | ;
   - A → OPERAND OPERATOR OPERAND SEMICOLON | OPERAND OPERATOR OPERAND COMMA A | SEMICOLON;
   - B → OPERAND OPERATOR | OPERAND OPERATOR COMMA B | ;
4. Parse input statements using the defined grammar.
5. For each input:
   - If it matches the grammar, print "Valid."
   - Else print "Invalid."
6. Stop

## Files
- for_statement.l - LEX file for tokenizing C-style FOR statements.
- for_statement.y - YACC file for parsing and validating FOR statements.

## Output
```
Enter string:
for (i = 0; i < 10; i++) { printf("Hello"); }
Valid.

Enter string:
for (i = 0 i < 10; i++) printf("Hello");
Invalid.

Enter string:
for (i = 0; i < 10) printf("Hello");
Invalid.
```
