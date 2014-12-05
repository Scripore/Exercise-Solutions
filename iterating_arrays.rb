number = 1
puts "enter in how many numbers:"
total = gets.to_i
 
nested_arrays = (total / 3.0).ceil
main_array = Array.new(nested_arrays){[]}
 
p main_array
array_index = 0
 
while number < total
if main_array[array_index].size < 3
main_array[array_index] << number
else
array_index += 1
main_array[array_index] << number
end
number += 1
end
 
p main_array 