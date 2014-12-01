=begin
http://coderbyte.com/CodingArea/GuestEditor.php?ct=Ex%20Oh&lan=Ruby

Using the Ruby language, have the function ExOh(str) take the str parameter being passed and return the string true if there is an 
equal number of x's and o's, otherwise return the string false. Only these two letters will be entered in the string, no punctuation
or numbers. For example: if str is "xooxxxxooxo" then the output should return false because there are 6 x's and 5 o's. 
=end

def ex_oh(str)
  chars_o, chars_x = 0, 0
  str.each_char do |char|
    if char == "o"
      chars_o += 1
    end

    if char == "x"
      chars_x += 1
    end
  end
  chars_o == chars_x
end

puts ex_oh("xxx oooxo xoxoxoo")