# Files with codeblock
# Each close the file automatically at the end
# like a with (context) in Python 

File.open('foo.txt') do |f|
    f.each{|x| puts x}
end

File.open('foo.txt') do |f|
    f.each_line{|line| puts line}
end

#Without 
f = File.open("foo.txt", "r")
puts f.read
f.close
