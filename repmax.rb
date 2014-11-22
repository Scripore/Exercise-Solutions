def max_rep (weight,reps)
  r = 1 + 0.0333 * reps
  max = r * weight
end

start_weight = 85
i = 0
up_weight = 2.5
weeks = 8


while i < (weeks*3)
puts max_rep(start_weight+(i*up_weight),20).round(1).to_s  +  "  #{start_weight+i*up_weight}"

i = i + 1
end
