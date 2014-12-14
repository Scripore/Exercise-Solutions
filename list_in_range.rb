=begin
http://www.codewars.com/kata/53e8ab878f9e6658410002af/train/ruby

Complete the solution so that it returns a String in the format:
"Key (Value), Key (Value)"
From a hash for values within the given range, sorted by value lowest to highest.
=end

def list_in_range(hash, range)
  # Return a string of the values from the hash within the given range
  # in the format Key (Value), Key (Value)
  hash2 = {}
  
  hash.each_pair do |key, value|
    if range.include? value
      hash2[key] = value
    end
  end

  hash2 = hash2.sort_by {|key, value| value}
  str = ""
  arr = []
  hash2.each do |x|
    arr << "#{x[0]} (#{x[1]})"
  end

  return arr.join(", ")

end