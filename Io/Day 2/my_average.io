List myAverage := method( 
  sum := 0
  self foreach(i, v, 
    if(v type == "Number", sum = sum + v,
       Exception raise("#{v} is not a Number" interpolate)
    )
  )
  sum / (self size)
)

x := list(0,0,2,3,4)

x myAverage println

x2 := list(0,"shoop",3,4)
x2 myAverage println