# Casing determines the behavior
If a word begins with a lowercase character, it’s an atom—a fixed value like a Ruby symbol. If it begins with an uppercase letter or an underscore, it’s a variable. Variable values can change; atoms can’t.

# Unification can work on both sides of the implication.

``` prolog
Try this one:
| ?- dorothy(One, Two, Three).
One = lion
Three = bear
Two = tiger
yes
```

This example has one more layer of indirection. In the goals, Prolog unifies X, Y, and Z to lion, tiger, and bear. On the left side, Prolog unifies X, Y, and Z to One, Two, and Three and then reports the result.

The declarative programming model is very appealing. In general, if you can describe the problem, you have solved the problem. In most languages I’ve found myself arguing with the computer at some point saying, “You know what I mean; just do it!” C and C++ compiler errors such as “semicolon expected” are symbolic of this