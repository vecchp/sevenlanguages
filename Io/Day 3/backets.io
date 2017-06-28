# Create a list syntax that uses brackets
OperatorTable addAssignOperator(":", "appendElement")

squareBrackets := method (call message arguments)

List appendElement := method(self append (call evalArgAt(0)))
List squareBrackets := method(index, at(index))
s := File with("list.txt") openForReading contents

l := doString(s)
l println

l[3]