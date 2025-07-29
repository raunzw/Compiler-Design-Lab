# Epsilon Closure

## Algorithm

1. Start
2. Get the number of states and transitions from the user
3. Build an adjacency matrix representation of the epsilon transitions
4. For each state i in the NFA:
   - Initialize its epsilon closure with the state itself
   - Use depth-first search to find all states reachable from state i through epsilon transitions
   - Add these states to the epsilon closure of state i
5. Display the epsilon closure for each state
6. Stop

## Program Explanation

- The program computes the epsilon closure for all states in an NFA (Non-deterministic Finite Automaton)
- The epsilon closure of a state is the set of all states reachable from that state by following zero or more epsilon transitions
- It uses a depth-first search algorithm implemented recursively in the `closure()` function
- An adjacency matrix is used to represent the epsilon transitions between states
- The program marks visited states to avoid infinite loops in the recursive calls
- Each state is included in its own epsilon closure (as a state can reach itself with zero epsilon transitions)

## Sample Input/Output

```
Enter the no of states: 4
Enter number of transitions: 5
Enter transitions
0 e 1
0 e 2
1 e 3
2 e 3
3 e 0
```

Output:
```
The epsilon closures are : 
State q0 : {q0,q1,q2,q3}
State q1 : {q1,q3,q0,q2}
State q2 : {q2,q3,q0,q1}
State q3 : {q3,q0,q1,q2}
```

Note: In this example, all states can reach all other states through epsilon transitions, so each state's epsilon closure contains all states in the NFA.
