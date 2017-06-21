fib_rec := method(
    n,
    if (
        n == 0 or n == 1, 
        n,
        self fib_rec(n-1) + self fib_rec(n-2)
        #call fib_rec(n-1) + call fib_rec(n-2)
    )
)

fib_rec(0) println
fib_rec(1) println
fib_rec(2) println
fib_rec(10) println

fib_loop := method( n,
    a := 0
    b := 1
    for(i, 0, n-1,
        temp := a
        a = b
        b = temp + b
    )
    a 
)

fib_loop(0) println
fib_loop(1) println
fib_loop(2) println
fib_loop(10) println