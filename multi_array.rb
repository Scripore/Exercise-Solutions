# just learned recursion from a pair programming session.


arr = [154,543,543,54,[54,[545,45,[543,454,[454,10000000000]]]]]


def recursive_loop(array)
sum = 0


  array.each do |element|
    if element.is_a? Array   # if element is a array
      sum += recursive_loop(element)  # we call the method recursive_loop on the element. take the return sum and add it to the sum.
      else

      sum += element  # if it is not an array then take the integer and add it to sum
    end

  end

return sum
end


puts recursive_loop(arr)