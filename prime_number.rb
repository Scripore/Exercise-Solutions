=begin

need to need in additional features like find the nth prime number. output what numbers the number that is being tested is divisible by.
also, explore the benchmark module more.

explore minitest to write test cases for this program.

=end

require 'benchmark'

measurement = Benchmark.measure do

  def is_prime? (number)

    number_to_compare = 1
    tally = 1

    while number_to_compare < number do
      if number % number_to_compare == 0
        tally += 1
      end
      number_to_compare += 1
    end

    if tally < 3
      puts "true: the number #{number} is a prime. it is divisible by #{tally} numbers"
    else
      puts "false: this is not a prime number. it is divisible by #{tally} numbers"
    end

  end

is_prime?(17)
is_prime?(170)
is_prime?(1700)

end

puts measurement