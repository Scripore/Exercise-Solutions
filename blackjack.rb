# work in progress
require 'pry'

puts "Welcome to Blackjack!"
@bankroll = 500

def bid_into_pot
  if @bankroll == 0
    puts "YOU'RE BROKE!! GAME OVER!!"
    abort
  end

  puts "You bankroll is #{@bankroll}"
  puts "How much would you like to bet? \nAmount:"
  @bet_amount = gets.to_i
  while @bet_amount < 1 || @bet_amount > @bankroll
    puts "Please bet an amount within your bankroll.\nEnter:"
    @bet_amount = gets.to_i
  end
end

loop do

  bid_into_pot
  user_status = nil
  dealer_status = nil
  deck = []
  suits = ['(s)','(h)','(c)','(d)']
  face_cards = ['jack','king','queen','ace']
  @players_cards = []
  @players_cards_values = []
  @dealers_cards = []
  @dealers_cards_values = []
  @player_total = 0
  @dealer_total = 0

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

  deck = deck * 2  # how many multiple decks of cards
  deck.shuffle!

  2.times do
    @players_cards << deck.shift
  end

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

      if (@players_cards_values.reduce(:+)) > 21
        puts "over 21"
        puts "this is player values #@players_cards_values"
        if @players_cards_values.include? 11
          delete_index = @players_cards_values.find_index(11)
          @players_cards_values.delete_at(delete_index)
          @players_cards_values << 2
          @player_total -= (11 - 2)
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
  @dealer_total = @dealers_cards_values.reduce(:+)

  if user_status != "busted"
    while @dealer_total < 17
      temp_card = deck.shift
      @dealers_cards << temp_card
      @dealer_total += @hash[temp_card]
      @dealers_cards_values << @hash[temp_card]
      p @dealers_cards
      p @dealers_cards_values
      puts "Dealer total is #@dealer_total"

      if @dealer_total > 21

        if @dealers_cards_values.include? 11
          delete_index = @dealers_cards_values.find_index(11)
          @dealers_cards_values.delete_at(delete_index)
          @dealers_cards_values << 2
          @dealer_total -= (11 - 2)
          puts "dealer total is #{@dealer_total}"

        else
          dealer_status = "busted"
          puts "DEALER BUSTED!"
        end
      end

    end
  end

  if user_status == 'busted'
    @bankroll -= @bet_amount
  elsif dealer_status == 'busted'
    @bankroll += @bet_amount
  elsif @player_total > @dealer_total
    @bankroll += @bet_amount
  elsif @dealer_total > @player_total
    @bankroll -= @bet_amount
  else
    puts "Tie Game"
  end

  puts "Play again? (y/n)"
  play_again = gets.chomp

  if play_again != 'y' && play_again != 'yes'
    abort
  end

end

