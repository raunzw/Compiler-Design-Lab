# Epsilon-NFA to NFA Conversion

## Algorithm

1. Start
2. Get the Epsilon-NFA transitions and final states from the user
3. For each state with epsilon transitions:
   - Follow all epsilon transitions recursively
   - For each non-epsilon transition from the target state, add a direct transition from the source state
4. Remove all epsilon transitions
5. Update the set of final states:
   - If a state can reach a final state through epsilon transitions, mark it as a final state
6. Output the resulting NFA transitions and final states
7. Stop

## Program Explanation

- The program reads an Epsilon-NFA definition with states, symbols, and transitions
- Epsilon transitions are represented by the symbol 'e'
- It processes each epsilon transition and creates direct non-epsilon transitions
- The `addstate` function recursively follows epsilon transitions and adds corresponding non-epsilon transitions
- The program updates final states by including any state that can reach a final state through epsilon transitions
- The resulting NFA has no epsilon transitions but preserves the language accepted by the original Epsilon-NFA

## Sample Input/Output

```
Enter number of transitions: 6
Enter transitions as 
state symbol state
A e B
A 0 C
B 1 B
B 1 D
C 0 C
D 0 D
Final states: D
```

Output:
```
NFA transitions
A 0 C
B 1 B
B 1 D
C 0 C
D 0 D
A 1 B
A 1 D
Final states : {D}
```

Note: In the resulting NFA, the epsilon transition from A to B has been removed, and direct transitions (A 1 B) and (A 1 D) have been added because B has transitions on symbol 1 to B and D.
