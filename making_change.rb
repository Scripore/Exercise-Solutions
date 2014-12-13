=begin
http://www.codewars.com/kata/5365bb5d5d0266cd010009be/train/ruby

Write a method make_change that will determine the minimum number of coins needed to make change for a given amount in American currency.

Coins used will be half-dollars, quarters, dimes, nickels, and pennies, worth 50¢, 25¢, 10¢, 5¢ and 1¢, respectively. They'll be represented by the symbols :H, :Q, :D, :N and :P.

The argument passed in will be an integer representing the value in cents. The return value should be a hash with the symbols as keys, and the numbers of coins as values. Coins that are not used should not be included in the hash. If the argument passed in is 0, then the method should return an empty hash.

=end


def make_change(amount)
  hash = {:H=>1, :Q=>1, :D=>1, :N=>1, :P=>1}

  hash.each do |key,value|
  case key
    when :H then num = 50
    when :Q then num = 25
    when :D then num = 10
    when :N then num = 5
    when :P then num = 1
  end
  halves = amount / num
  hash[key] = halves
  amount = amount - (num * halves)
end

  hash.delete_if {|key, value| value == 0}
  return hash

end

p make_change(259)