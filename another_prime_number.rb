# About to start my second week at Flatiron School, been a while since I've coded in Ruby. This was a quick 
# program I wrote up just to make sure I didn't inexplicably forgotten everything.

puts "Enter in a number to begin a range"
user_input = gets.to_i
puts "Enter in a second number"
user_input2 = gets.to_i

if user_input == 1
  user_input = 2
end

(user_input..user_input2).each do |num|

  num_flag = true
  (2..(num/2)).each do |x|
    if num % x == 0
      num_flag = false
      break
    end
  end

  if num_flag == true
    puts "#{num} is a prime"
  end


end
