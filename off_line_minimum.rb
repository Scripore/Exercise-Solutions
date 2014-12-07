=begin
http://coderbyte.com/CodingArea/GuestEditor.php?ct=Off%20Line%20Minimum&lan=Ruby

Using the Ruby language, have the function OffLineMinimum(strArr) take the strArr parameter being passed which will be an array of integers ranging from 1...n and the letter "E" and return the
correct subset based on the following rules. The input will be in the following format: ["I","I","E","I",...,"E",...,"I"] where the I's stand for integers and the E means take out the smallest
integer currently in the whole set. When finished, your program should return that new set with integers separated by commas. For example: if strArr is ["5","4","6","E","1","7","E","E","3","2"]
then your program should return 4,1,5.
=end

str_arr = ["5","4","6","E","1","7","E","E","3","2"]
control_arr = []
answer = []

while str_arr[0].nil? == false
  if str_arr[0] == "E"
    control_arr.sort!
    answer << control_arr[0]
    control_arr.shift
    control_arr << str_arr.shift
  else
    control_arr << str_arr.shift
  end
end

p answer.join(',')