=begin
http://www.codewars.com/kata/51ba717bb08c1cd60f00002f/train/ruby
A format for expressing an ordered list of integers is to use a comma separated list of either
    individual integers
    or a range of integers denoted by the starting integer separated from the end integer in the range by a dash, '-'. The range includes all integers in the interval including both endpoints. It is not considered a range unless it spans at least 3 numbers. For example ("12, 13, 15-17")
Complete the solution so that it takes a list of integers in increasing order and returns a correctly formatted string in the range format.
Example:
solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
# returns "-6,-3-1,3-5,7-11,14,15,17-20"
=end

# need to refactor this.

def solution(list)
  i = 0
  arr = []

  while i < (list.size - 1)
    if (list[i]+1 == list[i + 1] && list[i]+2 != list[i + 2])
      arr << list[i].to_s
      arr << list[i + 1].to_s
    end
    if (list[i] + 2) == list[i + 2]
      a = list[i]
      while (list[i] + 1) == list[i + 1]
        b = list[i + 1]
        i += 1
      end
      arr << "#{a}-#{b}"
    else
      arr << list[i].to_s
    end
    i += 1
  end

  if list[0].to_s != (arr[0][0] + arr[0][1])
    arr.unshift(list[0])
  end

  if list[-1].size == 2 && list[-1] != (list[-2][-2] + list[-2][-1])
    arr << list[-1].to_s
  end

  arr.uniq!
  arr = arr.join(",")

  return arr
end

  
