# NFA to DFA Conversion

## Algorithm

1. Start
2. Insert transitions, final states, start states, and symbols
3. Initialize states array with start state
4. Initialize nfa states counter to 1 and nfa state pointer to 0
5. While state counter not equal to states pointer:
   - Initialize s to empty
   - For each symbol:
     - For each character in current state:
       - For each transition:
         - If transition is from current state character with current symbol, append the next state of transition to s
     - If s is empty, print state[state pointer] symbol dead state
     - Else print state[state pointer] symbol s
     - If s is not in states array, add it
     - Increment state counter
   - Increment state pointer
6. For each state in state array, if state contains any final state, print the state
7. Stop

## Program Explanation

- The program reads an NFA definition with transitions, start state, and final states
- It converts the NFA to a DFA using the subset construction algorithm
- Each state in the resulting DFA represents a set of states in the original NFA
- The program tracks all possible states that the NFA can be in after reading each symbol
- New DFA states are created as needed when new subsets of NFA states are discovered

## Sample Input/Output

```
Number of transitions and final state:
4 1
Start state:
a
Final states:
c
Symbols:
12
Transitions:
a 1 a
a 2 a
a 2 b
b 2 c
```

Output:
```
a 1 a
a 2 ab
ab 1 a
ab 2 abc
abc 1 a
abc 2 abc
Final states:{abc,}
```

Note: In this conversion, the original NFA states {a, b, c} have been transformed into DFA states {a, ab, abc}. The state 'abc' is a final state because it contains 'c', which was a final state in the original NFA.
