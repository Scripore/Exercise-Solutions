# program prompts for user for integer and outputs resulting factorial number.

puts "enter in an integer to get its factorial number."

input = gets.to_i
placeholder = 1

while input > 1 do 
  placeholder = placeholder * input
  input -= 1 
end

puts placeholder