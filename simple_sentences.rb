=begin
http://www.codewars.com/kata/5297bf69649be865e6000922/train/ruby
Implement a function, so it will produce a sentence out of the given parts.

Array of parts could contain:
- words;
- commas in the middle;
- multiple periods at the end.

Sentence making rules:
- there must always be a space between words;
- there must not be a space between a comma and word on the left;
- there must always be one and only one period at the end of a sentence.
=end


def make_sentence parts

  x = parts.join(" ")
  x += '.'
  x.delete! "."

  while x[-1] == " "
    x = x.chop!
  end

  x += '.'
  x = x.gsub(" ,", ",")
  return x

end