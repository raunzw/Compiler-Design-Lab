# LEX String Recognition

Write a LEX program to recognize all strings which do not contain the substring "nand".

## Algorithm
1. Start
2. Define a pattern in LEX that matches any string not containing the substring "nand".
3. Use the yylex() function to scan input strings.
4. For each input string:
   - If it does not contain the substring "nand", print "doesn't contain substring of your name".
   - Otherwise, print "contains substring of your name".
5. Repeat until EOF.
6. Stop

## Output
```
Enter name: Hello World
doesn't contain substring of your name
Enter name: nandini
contains substring of your name
Enter name: random
doesn't contain substring of your name
Enter name: nand
contains substring of your name
```
