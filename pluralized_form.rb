# adding 'es' or 's' to create the plural form of the word. hardcoded.

arr = "flower box flash lunch peach waltz blanket dog car wish tool tree church apple truck crash tax egg beach cloud"

arr = arr.split(' ')

arr.each do |x|
  if /.+[x|z|s|sh|ch]/.match(x)
    puts x += "es"
  else
    puts x += "s"
  end
end