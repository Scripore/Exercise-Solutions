=being
http://www.codewars.com/kata/534d0a229345375d520006a0/train/ruby

Write a body of function power_of_two?(x) (javascript isPowerOfTwo) which has to return true if the given natural number is power of 2 or false if the number is not power of 2. The given number is always greater than 0.
=end

def power_of_two?(x)
  # code
  num = 1
  product = 0
  while product < x
    product = 2 ** num
    num += 1
    if product == x
      return true
    end
  end
  return false
end