#Define a method that accepts 2 strings as parameters. The method returns the first string sorted by second.

def sort_string(str, ordering)
  # your code here
  scan_this = str
  str = str.split("")
  ordering = ordering.split("").uniq
  new_str = ''

  ordering.each do |char|
    str.each do |str_char|
      if char == str_char
        new_str << str_char
      end
    end
  end
new_str << scan_this.scan(/[^#{ordering}]/).join("")
  return new_str
end