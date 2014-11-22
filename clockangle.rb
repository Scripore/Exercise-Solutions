
def  clock_angles(_hour, _minute)

  angle_one = _hour * 30

  angle_two = _minute * 6

  first_answer = angle_one - angle_two
  second_answer = angle_two - angle_one


  if first_answer > second_answer
    return first_answer
  else
    return second_answer
  end



end

clock_angles( 2, 40)