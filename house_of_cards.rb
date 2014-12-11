=begin
http://www.codewars.com/kata/543abbc35f0461d28f000c11/train/ruby

You want to build a standard house of cards, but you don't know how many cards you will need. Write a program which will count the minimal number of cards according to the number of floors you want to have. For example, if you want a one floor house, you will need 7 of them (two pairs of two cards on the base floor, one horizontal card and one pair to get the first floor). Here you can see which kind of house of cards I mean: http://www.wikihow.com/Build-a-Tower-of-Cards
=end


def house_of_cards(floors)
  #good luck!
  if floors == 1
    return 7
  end
  if floors < 1
    raise exception
  end
  cards = 7
  num = 1
  while num < floors
    cards += (num + 2) * 3
    num += 1
  end
  cards -= (num - 1)
end

