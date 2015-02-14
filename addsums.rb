# testing c9

def LetterChanges(str)

  # code goes here

  str = str.chars.to_a



  str.map! {|x| x.next}

  str.map do |x|
    if x == 'aa'
      x = 'a'

    end
    end

  str.map do |x|

    if x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u'
      x.capitalize!

    end

  end

  str = str.join()



  return str

end

# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
puts LetterChanges(STDIN.gets)




