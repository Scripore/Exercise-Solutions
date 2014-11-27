#require 'pry'
tic_tac_hash = {"1" => " ","2" => " ","3" => " ","4" => " ","5" => " ","6" => " ","7" => " ","8" => " ","9" => " "}
tic_tac_array = []
tally = 0

def tic_tac_display(ttt_hash)
  puts "    |    |    "
  puts " #{ttt_hash["1"]}  |#{ttt_hash["2"]}   |#{ttt_hash["3"]}   "
  puts "    |    |    "
  puts "--------------"
  puts "    |    |    "
  puts " #{ttt_hash["4"]}  |#{ttt_hash["5"]}   |#{ttt_hash["6"]}   "
  puts "    |    |    "
  puts "--------------"
  puts "    |    |    "
  puts " #{ttt_hash["7"]}  |#{ttt_hash["8"]}   |#{ttt_hash["9"]}   "
  puts "    |    |    "
end


tic_tac_display(tic_tac_hash)



num_iterations = 0

while tally < 9 do

  puts "\nenter in a number selection:"
  user_pick = gets.chomp

  tic_tac_hash[user_pick] = "X"
  tally += 1

  computer_selection = rand(1..9).to_s



if tally < 9
  while tic_tac_hash[computer_selection] != " "
    computer_selection = rand(1..9).to_s
  end
  tic_tac_hash[computer_selection] = "O"
  tally += 1


  p tic_tac_display(tic_tac_hash)
  p "tally is: #{tally}"
  num_iterations += 1

#  binding.pry

  tic_tac_array = []
  tic_tac_hash.each do |key, value|
    tic_tac_array << value
  end
  p tic_tac_array

  p tic_tac_array[1..3] == "O"
end


end

p tic_tac_display(tic_tac_hash)






#if hash["1"] == hash["2"] && hash["3"] || hash["4"] == hash["5"] && hash["6"] || hash["7"] == hash["8"] && hash["9"] || hash["1"] == hash["4"] && hash["7"] || hash["2"] == hash["5"] && hash["8"] || hash["3"] == hash["6"] && hash["9"] || hash["1"] == hash["5"] && hash["9"] || hash["3"] == hash["5"] && hash["7"]
