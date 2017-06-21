x := 1/0

x println

OperatorTable addOperator("/", 2)

origDiv := Number getSlot("/")

Number / := method(i,
    if (i != 0, self origDiv(i), 0)
)
# if we switch this self to a call you get an error
# Exception: CFunction defined for type Number but called on type Call

c := 1/0
c println
d := 1/2
d println