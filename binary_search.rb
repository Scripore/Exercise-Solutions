
# need to be refactored. decouple code into functions.

array = []
guesses = 1

array_size = rand(14000..15000)
puts "This is the size of the array: #{array_size} numbers"

array_size.times do
  random_number = rand(10_000..100_000)
  array << random_number
end

secret_number = array[rand(0..(array_size-1))]
puts "Secret number is #{secret_number}\n\n"

puts "This is the array:"
print array.sort!

pick = array.length / 2


while array[pick] != secret_number do

  puts "\n\nProgram picks #{array[pick]} at index #{pick}"
  puts "-" * 1000
  print array

  if secret_number > array[pick]
      array.shift(pick+1)
  else
    while array[pick].nil? == false do
      array.delete_at(pick)
    end
  end

  puts "\nArray after the reduction:"
  p array

  pick = array.length / 2
  guesses += 1

end

if array[pick] == secret_number
  puts "\n\n\nmatch found: #{secret_number}"
  puts "guesses: #{guesses}"
end