
def  sum_of_overlap( x1,  x2,  y1,  y2)

  array_one = []
  total = 0

  while x1 < x2+1 do


    array_one << x1

    x1 += 1

  end

  while y1 < y2+1 do


    array_one << y1

    y1 += 1

  end



  print array_one
  print "---"

  print array_one.sort!
  print "---"


z = 0
while z < array_one.length
  if array_one[z] == array_one[z+1]
    total += array_one[z]
  end


  z += 1
end

  print total
  return total

end



sum_of_overlap( 1,  10,  5,  20)

