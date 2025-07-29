# DFA Minimization

## Algorithm

1. Start
2. Get the DFA transition table, final states, and number of symbols from the user
3. Initialize the algorithm by partitioning the states into two groups:
   - Final states
   - Non-final states
4. While the partitions can still be refined:
   - For each state in each partition, compute the next state for each input symbol
   - If two states in the same partition transition to states in different partitions, split the partition
5. Once no further refinement is possible, each partition represents a set of equivalent states
6. Create the minimized DFA by treating each partition as a single state
7. Output the minimized DFA transition table
8. Stop

## Program Explanation

- The program uses the partition refinement algorithm for DFA minimization
- It starts by dividing states into final and non-final states
- It then iteratively refines partitions by checking if states in the same partition transition to states in different partitions
- The algorithm terminates when no further refinement is possible
- The resulting partitions represent the states in the minimized DFA

## Sample Input/Output

```
Number of states: 5
Number of symbols: 2
Enter transitions
Transition of A with input 0:   B
Transition of A with input 1:   C
Transition of B with input 0:   D
Transition of B with input 1:   A
Transition of C with input 0:   A
Transition of C with input 1:   E
Transition of D with input 0:   D
Transition of D with input 1:   A
Transition of E with input 0:   E
Transition of E with input 1:   A
Final states withut any seperation in cap letters: BC
```

Output:
```
DFA: STATE TRANSITION TABLE
     |   0    1  
-----+------------
  A  |   B    C  
  B  |   D    A  
  C  |   A    E  
  D  |   D    A  
  E  |   E    A  
Final states = BC

After minimization
DFA: STATE TRANSITION TABLE
     |   0    1  
-----+------------
  A  |   B    C  
  B  |   D    A  
  C  |   A    D  
  D  |   D    A  
Final states = BC
```

Note: In this minimized DFA, states D and E from the original DFA have been merged into state D as they are equivalent.
