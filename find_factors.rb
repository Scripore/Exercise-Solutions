loop do
  puts "Enter in a number:"
  user_input = gets.to_i
  num = user_input
  arr = []

  (1..num).each do |factor|
    if num % factor == 0
      arr << factor
    end
    puts "#{num} / #{factor} = #{num/factor.to_f}"
  end

  p arr

end
