=begin

http://coderbyte.com/CodingArea/GuestEditor.php?ct=Second%20GreatLow&lan=Ruby
Using the Ruby language, have the function SecondGreatLow(arr) take the array of numbers stored in arr and return the second lowest and second greatest numbers,
respectively, separated by a space. For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98. The array will not be empty and will contain at
least 2 numbers. It can get tricky if there's just two numbers!

=end

main_array = []

def populate_array(array)
  10.times do
    array << rand(100..500)
  end
end

def second_great_low(array)
  populate_array(array)
  array.sort!
  return "#{array[1]} #{array[-2]}"
end

puts "\n\n" + second_great_low(main_array)
print "\n\n"
print main_array.to_s