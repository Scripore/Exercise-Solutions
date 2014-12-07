=begin
codewars.com kata
http://www.codewars.com/kata/52ed326b8df6540e06000029/train/ruby
=end


def goto(level="8", button="8")
  #return a number, how much levels the elevator must go up or down
  unless [0,1,2,3].include? level
    return 0
  end

  unless ['0','1','2','3',0,1,2,3].include? button
    return 0
  end

  x = button.to_i - level

end
