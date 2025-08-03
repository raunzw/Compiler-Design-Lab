# Compiler Design Lab - Cycle 2

This directory contains Lexical Analysis and Parsing programs using LEX and YACC as part of the Compiler Design Laboratory course (CSDL442).

## Experiments

1. [LEX String Recognition](Lex_String_Recognition/) - A lex program to recognize all strings which does not contain first four characters of your name as a substring.

2. [YACC Variable Recognition](YACC_Variable_Recognition/) - A YACC program to recognize a valid variable which starts with a letter followed by any number of letters or digits.

3. [LEX & YACC Calculator](LEX_YACC_Calculator/) - Implementation of Calculator using LEX and YACC.

4. [BNF to Abstract Syntax Tree](BNF_to_AST/) - Convert the BNF rules into YACC form and write code to generate abstract syntax tree.

5. [YACC FOR Statement Validation](YACC_FOR_Statement/) - A YACC program to check the syntax of FOR statement in C.

## How to Compile and Run LEX/YACC Programs

1. Compile the LEX file:
   ```
   flex filename.l
   ```

2. Compile the YACC file (if applicable):
   ```
   bison -d filename.y
   ```

3. Compile the generated C files:
   ```
   gcc lex.yy.c filename.tab.c -o output_program -lfl
   ```

4. Run the executable:
   ```
   ./output_program
   ```
