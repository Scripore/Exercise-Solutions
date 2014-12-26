# work in progress

puts "Welcome to Blackjack!"

user_status = nil
bankroll = 500
deck = []
suits = ['(s)','(h)','(c)','(d)']
face_cards = ['jack','king','queen','ace']
players_cards = []
@players_cards_values = []
opponents_cards = []

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

deck = deck * 2  # how many multiple decks of cards

#deck.shuffle!

p deck

2.times do
  players_cards << deck.shift
end
p deck
p players_cards

def convert_to_value (players_cards)
  @players_cards_values = []
  players_cards.each do |card|
    @players_cards_values << @hash[card]
  end
end

convert_to_value (players_cards)

p players_cards

user_input = 'hit'
while user_input == 'hit' && user_status != "busted"
puts "hit or stay?"
user_input = gets.chomp
  if user_input == 'hit'
    p players_cards << deck.shift
    p @players_cards_values
    convert_to_value (players_cards)
    p @players_cards_values
    p @players_cards_values.reduce(:+)
    if (@players_cards_values.reduce(:+)) > 21
      user_status = "busted"
      puts "BUSTED!"
    end
  end
end





