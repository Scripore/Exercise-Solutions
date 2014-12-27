# work in progress
require 'pry'

puts "Welcome to Blackjack!"

user_status = nil
bankroll = 500
deck = []
suits = ['(s)','(h)','(c)','(d)']
face_cards = ['jack','king','queen','ace']
@players_cards = []
@players_cards_values = []
@dealers_cards = []
@dealers_cards_values = []
@player_total = 0

@hash = {}
suits.each do |suits|
  (2..10).each do |x|
  deck << x.to_s + suits
  @hash[x.to_s + suits] = x
  end

  face_cards.each do |rank_cards|
  deck << rank_cards + suits
  @hash[rank_cards + suits] = 10
  end
end

@hash['ace(s)'], @hash['ace(h)'], @hash['ace(c)'], @hash['ace(d)'] = 11,11,11,11

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!testing
#!!!!!! delete below
@hash['2(s)'] = 11


p @hash

deck = deck * 2  # how many multiple decks of cards

#deck.shuffle!

p deck

2.times do
  @players_cards << deck.shift
end

p deck
p @players_cards

def convert_to_value (players_or_dealer_cards,card_values)
  card_values.clear
  players_or_dealer_cards.each do |card|

    card_values << @hash[card]


  end
  p card_values
  @players_cards_values = card_values

end

convert_to_value(@players_cards,@players_cards_values)
@player_total = @players_cards_values.reduce(:+)
puts "player total is #{@player_total}"
p "aa"
p @players_cards_values



p "------"
p @players_cards
p @players_cards_values

p @players_cards

user_input = 'hit'
while user_input == 'hit' && user_status != "busted"
puts "hit or stay?"
user_input = gets.chomp
  if user_input == 'hit'
    temp_card = deck.shift
    @players_cards << temp_card
    @player_total += @hash[temp_card]
    @players_cards_values << @hash[temp_card]
    puts "player total is #{@player_total}"
    @players_cards_values


    p @players_cards
    p @players_cards_values.reduce(:+)

    if (@players_cards_values.reduce(:+)) > 21
      puts "over 21"
      puts "this is player values #@players_cards_values"
      if @players_cards_values.include? 11
        delete_index = @players_cards_values.find_index(11)
        @players_cards_values.delete_at(delete_index)
        @players_cards_values << 2
        puts "player total is #{@player_total}"

      else
      user_status = "busted"
      puts "BUSTED!"
      end
    end
  end
end


2.times{@dealers_cards << deck.shift}

convert_to_value(@dealers_cards, @dealers_cards_values)

while (@dealers_cards_values.reduce(:+)) < 17
  @dealers_cards << deck.shift

  convert_to_value(@dealers_cards, @dealers_cards_values)
end
p "----"

convert_to_value(@dealers_cards, @dealers_cards_values)
p @dealers_cards_values.reduce(:+)

p @dealers_cards
p @dealers_cards_values
p @dealers_cards_values.reduce(:+)


