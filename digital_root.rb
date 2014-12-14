=begin
http://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby

In this kata, you must create a digital root function.
A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.
=end

def digital_root(n)
  if n < 10
    return n
  end

  s = n.to_s
  arr = s.split("")

  arr.map! do |x|
    x.to_i
  end

  sum = arr.reduce {|sum, value| sum += value}

  if sum > 9
    digital_root(sum)
  else
    return sum
  end
end