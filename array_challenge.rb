
=begin
coderbyte challenge - Array Addition 1
need to develop more.


=end

array = [1,2,3,4,5,43,65,324,56,34,23,56,34,6,7,1,1,10,43,454,676,343,657,343,65,63,44,54,65,7,5,643,3,5]
print " ---"
array2 = []
match_array = []

m = array.max

array = array - [m]
#hardcoding it for now

stop_loop = false
array_length = array.length


2000.times do

while array.empty? == false do


l = array.length
x = rand(l)
array2 << array[x]

array.delete_at(x)
sum = 0
array2.each {|z| sum += z}
#puts sum

if sum == m

  puts "match>"
  print array2
  match_array = array2
  puts "<match"
end


end

array, array2 = array2, array

#p array



end

puts "------------------------"
#print match_array


