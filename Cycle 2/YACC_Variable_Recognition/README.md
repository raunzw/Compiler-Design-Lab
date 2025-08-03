# YACC Variable Recognition

Write a YACC program to recognize a valid variable which starts with a letter or underscore followed by any number of letters, digits, or underscores.

## Algorithm
1. Start
2. Define tokens for letters, digits, and underscores in LEX.
3. Define grammar rules in YACC:
   - variable → letter or underscore followed by zero or more letters, digits, or underscores.
4. Parse input strings using the defined grammar.
5. For each input:
   - If it matches the grammar, print "Valid".
   - Else print "Not a valid identifier".
6. Stop

## Files
- variable.l - LEX file for tokenizing input.
- variable.y - YACC grammar file for parsing.

## Output
```
Enter identifier: variable123
Valid

Enter identifier: 123variable
Not a valid identifier

Enter identifier: x1
Valid

Enter identifier: _var
Not a valid identifier
```
