# Ruby program of regular expression

# Checking if the word is present in the string
if "hi there".match(/hi/)
    puts "match"
end




# Ruby program of regular expression

# declaring a function which checks for vowel in a string
def contains_vowel(str)
  str =~ /[aeiou]/
end

# Driver code

# Geeks has vowel at index 1, so function returns 1
puts( contains_vowel("Geeks") )

# bcd has no vowel, so return nil and nothing is printed
puts( contains_vowel("bcd") )


if (/1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?')) && (/a\\\\b/.match('a\\\\b'))  
  puts "matched"
end


if /W[aeiou]rd/.match("Word") 
  puts "matched"
end

if "Hello".match(/[[:upper:]]+[[:lower:]]+l{2}o/) 
  puts "matched"
end