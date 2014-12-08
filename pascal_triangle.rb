=begin
http://www.codewars.com/kata/5226eb40316b56c8d500030f/train/ruby
Pascal's Triangle

Wikipedia article on Pascal's Triangle: http://en.wikipedia.org/wiki/Pascal's_triangle
Write a function that, given a depth (n), returns a single-dimensional array representing Pascal's Triangle to the n-th level.
For example: pascalsTriangle(4) == [1,1,1,1,2,1,1,3,3,1]

=end

def pascalsTriangle(n)
  #return a flat array representing the values of Pascal's Triangle to the n-th level
  arr = Array.new(n) {[1]}
  sum = 1

  arr.each do |x|
    while x.size != sum
      x << 1
    end
    sum += 1
  end

  x = 0
  trans_array = 2
  trans_index = 1

  while trans_array < arr.size

    while trans_index < arr[trans_array].size - 1
      arr[trans_array][trans_index] = arr[trans_array - 1][x] + arr[trans_array - 1][x + 1]
      trans_index += 1
      x += 1
    end

    x = 0
    trans_index = 1
    trans_array += 1

  end

  arr.flatten()

end