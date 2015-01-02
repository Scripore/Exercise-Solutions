# work in progress

arr = []

string = ""

p arr

array = ["programming", "technology", "computer science"]

puts secret_word = array[rand(array.size)]
secret_word_array = secret_word.split("")
blank_array = []
secret_word_array.size.times {|num| blank_array << "_"}

secret_word_array.each do |char|
  arr << Array[char,'_']
end

p arr

arr.each do |subarray|
  if subarray[0] == " "
    subarray[1] = subarray[0]
  end
end

loop do
  string = ""
  puts "Enter a guess"
  user_guess = gets.chomp

  if user_guess == secret_word
    puts "CORRECT!!"
    abort
  end

  if secret_word.include? user_guess
    puts "match found!"
    arr.each do |subarray|
      if subarray[0] == user_guess
        subarray[1] = subarray[0]
      end
    end
  else
    puts "no match!"
  end

  arr.each do |subarray|
    print "#{subarray[1]} "
    string += subarray[1]
  end
  puts "\n#{string}"
  if secret_word == string
    puts "GOOD JOB!!"
    abort
  end
end