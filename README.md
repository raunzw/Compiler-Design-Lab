# Compiler Design Laboratory (CSL411)

This repository contains the implementation of various compiler design concepts as part of the Compiler Design Laboratory course (CSL411) at Kerala Technological University.

## Course Overview

The Compiler Design Laboratory focuses on the practical implementation of compiler components and automata theory concepts. Through these experiments, students gain hands-on experience with:

- Finite automata design and implementation
- Regular expressions and language processing
- Lexical analysis and parsing techniques
- Code optimization and generation

## Repository Structure

This repository is organized into cycles, each containing multiple experiments:

### [Cycle 1: Automata Theory Implementation](Cycle%201/)

1. [DFA Minimization](Cycle%201/DFA_Minimization/) - Implementation of DFA minimization using partition refinement algorithm
2. [Epsilon-NFA to NFA Conversion](Cycle%201/Epsilon_NFA_to_NFA/) - Program to convert Epsilon-NFA to NFA by eliminating epsilon transitions
3. [NFA to DFA Conversion](Cycle%201/NFA_to_DFA/) - Program to convert NFA to DFA using subset construction
4. [Epsilon Closure](Cycle%201/Epsilon_Closure/) - Program to find epsilon closure of all states in an NFA

### [Cycle 2: Lexical Analysis and Parsing](Cycle%202/)

1. [LEX String Recognition](Cycle%202/Lex_String_Recognition/) - A LEX program to recognize strings that don't contain specific substrings
2. [YACC Variable Recognition](Cycle%202/YACC_Variable_Recognition/) - A YACC program to validate variable identifiers
3. [LEX & YACC Calculator](Cycle%202/LEX_YACC_Calculator/) - Implementation of a calculator using LEX and YACC
4. [BNF to Abstract Syntax Tree](Cycle%202/BNF_to_AST/) - Converting BNF rules to YACC and generating ASTs
5. [YACC FOR Statement Validation](Cycle%202/YACC_FOR_Statement/) - A YACC program to check C FOR statement syntax

### Cycle 3: Syntax Analysis and Code Generation (Coming Soon)

## Prerequisites

- C/C++ compiler (GCC recommended)
- Basic understanding of automata theory and compiler design concepts
- Knowledge of C programming language

## How to Use This Repository

1. Clone the repository:
   ```
   git clone https://github.com/raunzw/Compiler-Design-Lab.git
   ```

2. Navigate to the specific experiment directory:
   ```
   cd Compiler-Design-Lab/Cycle\ 1/DFA_Minimization/
   ```

3. Compile and run the programs:
   ```
   gcc dfa_minimization.c -o dfa_minimization
   ./dfa_minimization
   ```

4. Follow the input instructions provided in the respective README files for each experiment.

## Learning Outcomes

After completing these lab experiments, students will be able to:

1. Implement and manipulate various types of finite automata
2. Convert between different forms of automata
3. Design and implement lexical analyzers
4. Build simple parsers for context-free grammars
5. Implement code optimization techniques



## Acknowledgments

- Kerala Technological University for the curriculum
- Course instructors and lab assistants for their guidance
