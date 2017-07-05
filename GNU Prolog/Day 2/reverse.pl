mylist([1, 2, 3, 4]).


reverse([],Z,Z).
 reverse([H|T],Z,Acc) :- reverse(T,Z,[H|Acc]).