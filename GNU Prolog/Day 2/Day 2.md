# Find
## Implementations of a Fibonacci series and factorials. How do they work?
### Fibonacci
https://stackoverflow.com/questions/22795708/program-to-generate-fibonacci-series-in-gnu-prolog-is-giving-an-instantiation-er
```prolog
fib(0,0).
fib(1,1).
fib(F,N) :-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fib(F1,N1),
    fib(F2,N2),
    F is F1+F2,
    format('~w, ',[F]).
```

This is the typical fibinacci definition.  First the results for 0 and 1 are defined. Then define the rule for the recursive relationship.  For N > 1 set N1 to N-1 and N2 to N-2, then call fib
for N1 and N2.  The calls will recurse until one of the the base cases are hit, with each iteration F1+F2 is expanded out.  i.e F is (F1a+F2a) + (F1b+F2b) etc

### Factorial
https://stackoverflow.com/questions/27137023/factorial-by-given-number-in-prolog

You do it the usual Prolog way - by defining a recursive rule that covers two clauses:

When the number is 0, its factorial is 1 - This can be done with a simple fact.
When the number is greater than zero, compute Number-1, obtain its factorial, and multiplying the result by Number.

* A real-world community using Prolog. What problems are they solving with it today?
https://www.quora.com/What-is-Prolog-used-for-today

```
We're using it to build an online CAD editor for a manufacturing as a service startup.

It's also used for semantic web development, and is common in the quantitative training field.

There are many projects in machine reading and machine learning - Prolog is commonly used for 'finding terrorists' activities.

It's also widely used for natural language processing and AI.

It's my primary language.
```

```
Machine learning. The field of Inductive logic programming relies greatly on Prolog.
```

If you’re looking for something more advanced to sink your teeth into, try these problems:
* An implementation of the Towers of Hanoi. How does it work?
* What are some of the problems of dealing with “not” expressions?

Why do you have to be careful with negation in Prolog?

# Do
* Reverse the elements of a list.
* Find the smallest element of a list.
* Sort the elements of a list.