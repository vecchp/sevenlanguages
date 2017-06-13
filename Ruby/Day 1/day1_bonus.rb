rnd_num = rand(0..10)
input = nil

while rnd_num != input do
  puts "Guess between 0 and 10: "
  input = gets.to_i
  puts input < rnd_num ? "Too low" : "Too High"
end

puts "You found it!"

