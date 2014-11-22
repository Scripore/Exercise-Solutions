def LetterChanges(str)
  array = str.split("")

  i = 0
  while i < array.length
    char = array[i]

    if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
      char.capitalize!
    else
      char.succ!
    end

    i += 1
  end

  answer = array.join("")
  p answer

end


LetterChanges("fun times!")