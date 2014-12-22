# W3E7: Document Stats
# work in progress
# hardcoded file directory

file = File.open("C:/Users/Ming/Desktop/text.txt")
data = file.read

word_count = data.scan(/\w+/).count
sentence_count = data.scan(/[.!?]/).count
paragraph_count = data.split(/\n\n/).count

puts <<-EOF
Character count: #{data.size}
Char count without spaces: #{data.gsub(" ","").size}
Line count: #{data.lines.count}
Word count: #{word_count}
Sentence count: #{sentence_count}
Paragraph count: #{paragraph_count}
Average words per sentence: #{(word_count.to_f / sentence_count).round(1)}
Average sentences per paragraph: #{(sentence_count.to_f / paragraph_count).round(1)}

EOF