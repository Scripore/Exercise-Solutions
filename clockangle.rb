
def  clock_angles(_hour, _minute)
  angle_one = _hour * 30 + (_minute/60.0 * 30)
  angle_two = _minute * 6
  first_answer = (angle_one - angle_two).abs
end

puts clock_angles( 3, 30)