=begin
A quick flash spelling test game with two second recognition time delay.
=end

list = [[5,"knotted"], [5,"knitting"], [5,"knocked"], [5,"wringing"], [5,"wronged"], [5,"whipped"], [5,"whined"], [5,"quitting"], [5,"quacked"], [5,"all"]]
delay_secs = 2

loop do
  list.sort!
  x = list[0][1]
  p x
  sleep delay_secs

  50.times do
    puts "-"
  end

  puts "enter in word:"
  input = gets.chomp

  while input != x
    puts "try again!! word is: #{x}"
    list[0][0] -= 1
    sleep delay_secs
    50.times do
      puts "-"
    end
    input = gets.chomp
   end

  list[0][0] = list[0][0] +  1
end













