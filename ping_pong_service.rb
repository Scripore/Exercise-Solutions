=begin
http://www.codewars.com/kata/544bdc2ec29fb3456e00064a/train/ruby

Playing ping-pong can be really fun! Unfortunatelly after a long and exciting play you can forget who's service turn it is. Let's do something about that!
Write a function that takes the current score as a string separated by : sign as an only parameter and returns "first" or "second" depending on whose service turn it is.
We're playing old-school, so the rule is that players take turn after every 5 services. That is until the score is 20:20 - from that moment each player serves 2 times in his turn. 
=end

def service(score)
  a, b = score.split(':')
  a = a.to_i  
  b = b.to_i
  c = a + b
  if (c / 5).even? && c < 40 
    return 'first'
  elsif c < 40
    return 'second'
  elsif ((c - 40) / 2).even?
    return 'first'
  else
    return 'second'
  end
end