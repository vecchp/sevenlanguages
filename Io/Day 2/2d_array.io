array := list(
    list(0,0,2,3,4),
    list(4,5,6,7,8)
)

sum1D := method(a,
    s := 0
    a foreach(i, v, s = s+v)
    s
)

sum2D := method(a,
    s := 0
    # call and self work here too
    a foreach(i, v, s = s + sum1D(v))
    s
)

total := sum2D(array)

total println