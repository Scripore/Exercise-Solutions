def text_type (delay_in_seconds)
  yield.split("").each do |char|
    print char
    sleep delay_in_seconds
  end
end

text_type(0.03) do
  "\n\nThis rock-paper-scissors program was created by Ming Zhang.\nSubmitted as an assignment to Tealeaf Academy. \n\n\n"
end


loop do

  puts "Choice one: (P/R/S)"
  option_hash = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}
  option_hash2 = {'1' => 'paper', '2' => 'rock', '3' => 'scissors'}
  user_input = gets.chomp.downcase
  user_selection = option_hash[user_input]

  while user_selection.nil?
    puts "Make a valid selection: P/R/S"
    user_input = gets.chomp.downcase
    user_selection = option_hash[user_input]
  end

  computer_input = rand(1..3).to_s
  computer_selection = option_hash2[computer_input]

  if computer_selection == user_selection
    puts "It's a tie."
  else

    string = user_selection + computer_selection

    win = nil

    case string
      when 'paperrock' then win = 'win'
      when 'paperscissors' then win = 'lose'
      when 'rockpaper' then win = 'lose'
      when 'rockscissors' then win = 'win'
      when 'scissorspaper' then win = 'win'
      when 'scissorsrock' then win = 'lose'
    end

    puts "You picked #{user_selection}. Computer picks #{computer_selection}"
    puts "You #{win}!"

    puts "play again? (y/n)"
    play_again = gets.chomp.downcase
    unless play_again == 'y' || play_again == 'yes'
      abort
    end

  end

end
