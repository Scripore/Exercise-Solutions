=begin
Complete the solution so that it returns a formatted string. The return value should equal "Value is VALUE" where value is a 5 digit padded number.
Example:
solution(5) # should return "Value is 00005"
=end


def solution(value)
 
  value = value.to_s
  value = value.split("")

  while value.length < 5
    value = value.unshift(0)
  end

  value =  value.join("")  
  return "Value is #{value}"
  
end