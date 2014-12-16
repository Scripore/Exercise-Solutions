=begin
http://www.codewars.com/kata/5274e122fc75c0943d000148/train/ruby
Finish the solution so that it takes an input 'n' (integer) and returns a string that is the decimal representation of the number grouped by commas after every 3 digits.
100000 -> "100,000"
1000000 -> "1,000,000"
35235235 -> "35,235,235"
=end

def solution(n)

  n = n.to_s
  n.reverse.scan(/.{3}|.+/).join(",").reverse

end