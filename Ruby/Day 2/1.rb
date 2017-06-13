# Print the contents of an array. of sixteen numbers,

a = (1..16).to_a

## Four at a time, using just each.
tmp = []
a.each { |x|
    tmp.push(x)
    puts tmp.join(' '), tmp = [] if tmp.size % 4 == 0
}
puts tmp.join(' ') if tmp.size > 0

## With each_slice in Enumerable
a.each_slice(4){ |slice| p slice}