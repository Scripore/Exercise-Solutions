# tealeaf academy exercise

puts "enter in your name"
name = gets.chomp

puts name


# output age

puts "how old are you?"
age = gets.to_i

puts "in 10 years you will be #{age+10}, in 20 you will be #{age+20}"

10.times do 
  puts name
  
end

puts "enter in your last name"

last_name = gets.chomp

puts name + " " + last_name
