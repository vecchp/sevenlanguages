2DArray := Object clone

2DArray dim := method(x,y,
    self elements := List clone

    y repeat(
       tmp := List clone
       x repeat (
           tmp append(0)
       )
       elements append(tmp)
    )
) 

2DArray set := method(x, y, value,
    self elements at(y) atPut(x, value)
)

2DArray dim(2,4)
"Empty List" println
2DArray elements println

2DArray set(1,3,4)
"Set 1,3 = 4" println

2DArray elements println

"Get 1,3" println
2DArray get := method(x, y,
    self elements at(y) at(x)
)

2DArray get(1,3) println