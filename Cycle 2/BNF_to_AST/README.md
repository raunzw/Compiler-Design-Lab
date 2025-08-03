# BNF to Abstract Syntax Tree

Convert the BNF rules into YACC form and write code to generate an abstract syntax tree (AST).

## Algorithm
1. Start
2. Define BNF grammar for a simple expression language.
3. Convert BNF rules to YACC syntax:
   - Add tokens and precedence.
   - Create productions with semantic actions.
4. Create data structures for AST nodes.
5. Implement functions to:
   - Create AST nodes.
   - Link nodes based on grammar rules.
   - Generate quadruples for intermediate representation.
6. Parse input expressions and generate AST.
7. Display the AST and quadruples.
8. Stop

## Files
- `ast_builder.l` - LEX file for tokenizing expressions.
- `ast_builder.y` - YACC file for parsing expressions and building AST.
- `ast_nodes.c` - Implementation of AST node creation, quadruple generation, and printing functions.

## Output
```
Enter expression: a = b + c

Quadruples:
0	 =	 b	 	 a
1	 +	 b	 c	 t0

Enter expression: if (a < b) { a = a + b; }

Quadruples:
0	 <	 a	 b	 t0
1	 ==	 t0	 FALSE	 -1
2	 =	 a	 b	 t1
3	 +	 a	 b	 t2
4	 GOTO	 	 	 -1
```
