=begin

http://coderbyte.com/CodingArea/GuestEditor.php?ct=Fibonacci%20Checker&lan=Ruby
Using the Ruby language, have the function FibonacciChecker(num) return the string yes if the number given is part of the Fibonacci sequence. This sequence is defined by: Fn = Fn-1 + Fn-2, which means to find Fn you add the previous two numbers up. The first two numbers are 0 and 1, then comes 1, 2, 3, 5 etc. If num is not in the Fibonacci sequence, return the string no.

=end


def fibonacci_checker(num)
  array = [0,1]
  while array[-1] < num do
    array << array[-1] + array[-2]
  end

  print array
  puts "\n"

  number_in_sequence = array.include? num
  if number_in_sequence == true
    puts "TRUE ---- The number #{num} is in the sequence"
  else
    puts "FALSE --- The number #{num} is NOT in the sequence"
  end

end

loop do
  puts "\n\nenter in a number to check if the number given is part of the Fibonacci sequence."
  fibonacci_checker (STDIN.gets.to_i)
end