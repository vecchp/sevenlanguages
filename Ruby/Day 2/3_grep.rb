<<-DOC
Write a simple grep that will print the lines of a file having
any occurences of a phrase anywhere in that line.  You need to
do a simple regular expression match and real lines from a file.
(This is surprisingly simple in Ruby).  If you want, include
line numbers. 
DOC

puts "What to grep? "
input = gets.strip
File.open('working.txt') do |f|
    f.each_with_index {|x, i|
        puts "#{i}: #{x}" unless x.lines.grep(/#{Regexp.quote(input)}/).empty?
    }
end