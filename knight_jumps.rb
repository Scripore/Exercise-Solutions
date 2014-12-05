=begin
Using the Ruby language, have the function KnightJumps(str) read str which will be a string consisting of the location of a knight on a standard 8x8 chess board with no other pieces on the board. 
The structure of str will be the following: "(x y)" which represents the position of the knight with x and y ranging from 1 to 8. Your program should determine the number of spaces the knight can 
move to from a given location. For example: if str is "(4 5)" then your program should output 8 because the knight can move to 8 different spaces from position x=4 and y=5.
=end

def knight_jumps(str)
str.split("")
pos_x, pos_y = str[1].to_i, str[-2].to_i
array = [[2,1],[2,-1],[1,2],[1,-2],[-2,1],[-2,-1],[-1,2],[-1,-2]]
tally = 0

array.each do |x|
  temp_x = pos_x + x[0]
  temp_y = pos_y + x[1]
  if (1..8).include?(temp_x) && (1..8).include?(temp_y)
    tally += 1
  end
end

return tally
end

puts knight_jumps("(2 8)")

