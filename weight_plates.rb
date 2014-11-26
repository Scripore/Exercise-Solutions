
#work in progress






#weight = gets.to_i

weight = 400
# hardcoding for now



weight = weight - 45
# without the bar

weight_45lbs = weight / 90

puts " #{weight_45lbs*2} plates of 45 lbs"
weight = weight % 90


if weight > 70
weight_35lbs = weight - 70
puts " #{weight_35lbs*2} plates of 35 lbs"
  end

puts weight
weight = weight % 70

if weight > 50
  weight_25lbs = weight - 50
  puts " #{weight_25lbs} plates of 25 lbs"
end






