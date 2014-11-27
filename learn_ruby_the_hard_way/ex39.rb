
# create a mapping of state to abbreviation

# this create a hash with the full name of the state as the key and the abbreviations as the value.
states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
}


# create a basic set of states and some cities in them


# this creates a hash with abbreviations as key and the cities as the value
cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
}


# add some more cities
# this add more keys:values to the hash named cities.

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities

puts '-' * 10
puts "NY State has: #{cities['NY']}"      #this called the value of the 'NY' key in the cities hash.
puts "OR State has: #{cities['OR']}"

# puts some states
puts '-' * 20
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbrev is: #{states['Florida']}"


# do it by using the state then cities dict

puts '-' * 20
puts "Michigan has: #{cities[states['Michigan']]}"    # calling states['Michigan'] returns the value 'MI' which is nested in as the key in cities[] which while return the city of MI.
puts "Florida has: #{cities[states['Florida']]}"


# puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|    # iterates each element in the states hash. key, value is assigned to variables  state, abbrev.
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in state
puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end


# now do both at the same time
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end


puts '-' * 10
# by default ruby says "nil" when something isn't in there.
state = states['Texas']

puts "***"

if !state    # the variable 'state' contains nothing.
  puts "Sorry, no Texas."
end


puts "***"

# default values using ||= with the nil result

city = cities['TX']
city ||= 'Does Not Exist'     # what this means is that if city is nil then 'Does Not Exist' is assigned to city. is city already contains something then the = 'Does Not Exist' does not occur.

puts "The city for the state 'TX' is: #{city}"

 