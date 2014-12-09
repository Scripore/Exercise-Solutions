=begin
My submission to r/dailyprogrammer under username scripore.
http://www.reddit.com/r/dailyprogrammer/comments/2onyoq/2014128_challenge_192_easy_carry_adding/
=end



def carry_adding(user_input)

  user_input = user_input.split("+")
  user_input.each do |x| puts x.rjust(19) end
  user_input.map! {|x| x.to_i}
  sum = (user_input.reduce(:+)).to_s

  puts ("-" * sum.length).rjust(19)
  puts sum.rjust(19)
  puts ("-" * sum.length).rjust(19)

  user_input.map! do |x|
    x.to_s.split('')
  end

  user_input.each do |i|
    i.map! do |z|
        z.to_i
    end
  end

  max_length = 0

  user_input.each do |x|
    if x.length > max_length
      max_length = x.length
    end
  end

  user_input.each do |x|
    if x.length < max_length
      while x.length < max_length
        x.unshift(0)
      end
    end
  end

  user_input = user_input.transpose

  user_input.map! do |x|
    x.reduce(:+)
  end

  user_input.map! do |x|
    x.to_s
  end

  string = ""
  index = 0

  while index < user_input.size
    if user_input[index][-2] == nil
      string += " "
      index += 1
    else
      string += user_input[index][-2]
      index += 1
    end
  end

  string += " "
  puts string.rjust(19)
end

carry_adding("12+34+56+78+90+4543534534+9999999999")