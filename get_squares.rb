=begin
Given an array of numbers return an array of numbers from the array that qualify as perfect squares. A perfect square is defined as a 
whole number that, when square rooted, is a whole number. (Such as 1, 4, 9, 16, etc, etc.)
Note: Return only one copy of each perfect square in ascendingorder
  Test.assert_equals(get_squares((1..16)), [1,4,9,16])
  Test.assert_equals(get_squares((1..100)), [1,4,9,16,25,36,49,64,81,100])
  Test.assert_equals(get_squares([4,1,16,1,10,35,22]), [1,4,16])
=end

def get_squares(array)
  arr = []

  unless array.is_a? Range
    array = array.sort.uniq
  end

  array.each do |x|
    (0..x).each do |num|
      if num ** 2 == x
        arr << x
      end

    end
  end
  return arr
end