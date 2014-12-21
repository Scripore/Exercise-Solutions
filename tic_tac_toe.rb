#  By Ming Zhang
#  Tic-Tac-Toe console game program submitted as part of the Flatiron School admissions process.

tic_tac_hash = {"1" => " ","2" => " ","3" => " ","4" => " ","5" => " ","6" => " ","7" => " ","8" => " ","9" => " "}  # created a hash to hold the "X" and "O" marks.
tally = 0 # tracking the number of moves
winning_combinations = [['1','2','3'],['4','5','6'],['7','8','9'],['1','4','7'],['2','5','8'],['3','6','9'],['1','5','9'],['3','5','7']] # array of different winning combinations

def tic_tac_display(ttt_hash)  # creating a method to draw the board, interpolating the hash values to string.
  puts "     |     |     "
  puts "  #{ttt_hash["1"]}  |  #{ttt_hash["2"]}  |  #{ttt_hash["3"]}  "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{ttt_hash["4"]}  |  #{ttt_hash["5"]}  |  #{ttt_hash["6"]}  "
  puts "     |     |     "
  puts "-----------------"
  puts "     |     |     "
  puts "  #{ttt_hash["7"]}  |  #{ttt_hash["8"]}  |  #{ttt_hash["9"]}  "
  puts "     |     |     "
end

def check_winner (tic_tac_hash, winning_combinations)
  winning_combinations.each do |combo|  # iterates through the array. the if statement below checks to see if the elements in the subarrays all have the same value when embedded as a key in the tic_tac_hash.
     if (tic_tac_hash[(combo[0])] == "X" || tic_tac_hash[(combo[0])] == "O") && (tic_tac_hash[(combo[0])] == tic_tac_hash[(combo[1])] && tic_tac_hash[(combo[0])] == tic_tac_hash[(combo[2])] )
       tic_tac_display(tic_tac_hash)
       case tic_tac_hash[(combo[0])]
         when "X" then puts "YOU WIN!! GOOD JOB!!"
       else
         puts "YOU LOSE!! BOOOOOO!!!!"
       end
       abort
     end
  end
end

tic_tac_display(tic_tac_hash)   # drawing the board

while tally < 9 do   # while there is less than 9 moves, execute the following
  puts "\nenter in a number selection:"
  user_pick = gets.chomp
  while tic_tac_hash[user_pick] != ' '        # if the corresponding user selection does not result in a blank character then it is not a valid selection. raise the following error.
    puts "USER, PLEASE PICK AN AVAILABLE SELECTION!!"
    p (tic_tac_hash.select {|x, y| y == ' '}).keys  # displays what keys are available for selection
    user_pick = gets.chomp
  end

  tic_tac_hash[user_pick] = "X"   # assigns "X" to hash with user selection as the hash key
  tally += 1
  check_winner(tic_tac_hash, winning_combinations)
  computer_selection = rand(1..9).to_s  # computer randomly selects a integer 1 to 9.

  if tally < 9   # if the number of marks on the board is less than 9 then execute the following
    while tic_tac_hash[computer_selection] != " "  # if computer selection does not correspond to a value containing a blank character then the program makes a new selection
      computer_selection = rand(1..9).to_s
    end
    tic_tac_hash[computer_selection] = "O"  # assigning "O" to hash value that computer has selected
    tally += 1
    tic_tac_display(tic_tac_hash)
    puts "tally is: #{tally}"
    check_winner(tic_tac_hash, winning_combinations)
  end

  if tally == 9
    puts "It's a tie."
    tic_tac_display(tic_tac_hash)
  end
    end


