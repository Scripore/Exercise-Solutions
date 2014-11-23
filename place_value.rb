# This program returns the second digit in a four digital number in three different ways.


puts "enter in a four digit number"

x = gets.chomp.to_i

def place_value (number)

  first_num = number / 1000

  first_num_zeros = 1000 * first_num
  sec_num_z = number - first_num_zeros
  result = sec_num_z / 100


end

puts place_value(x)


puts "enter in a four digit number"
x2 = gets.chomp

puts x2[1]


puts "enter in a four digit number"
x3 = gets.chomp.to_i

puts x3 % 1000 / 100



