factorial(0, 1).
factorial(N, F) :- N > 0, Prev is N -1, factorial(Prev, R), F is R * N.

