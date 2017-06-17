# Variable Naming convention
Car slotNames => list("type")

ferrari =: Car clone
ferrari slotNames => list()
ferrari type => Car

Simply using a coding convention rather than a full language feature to
distinguish between types and instances.  In other cases, they behave
the same way.

``` io
Io> Car drive := method("Vroom" println)
==> method(
    "Vroom" println
)
Io> ferrari drive
Vroom
==> Vroom
```

Is Io Strongly or weakly typed?
Stronly typed, at least it doesn't convert numbers into string automatically (and vice versa)

Is 0 true of false?
("0 is " ..   if(0,   "true", "false")) println
0 is true

Empty String?
("'' is " ..  if("",  "true", "false")) println
'' is true

Nil?
("nil is " .. if(nil, "true", "false")) 
nil is false


Slots that a prototype supports?
object slotNames 
object slotNames println (if you want to print it)


= ?
Equals will only assign if it exists

:= 
Will assign a slot even if it doesn't exist

::=
Creates a setter

Io> Employee :=  Object clone do (
... department ::= nil
... )
==>  Employee_0xf64ad0:
  department       = nil
  setDepartment    = method(...)
  type             = "Employee"

Io> Employee setDepartment("Engineering")
==>  Employee_0xf64ad0:
  department       = "Engineering"
  setDepartment    = method(...)
  type             = "Employee"
