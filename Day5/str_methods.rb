#length
str = "Hello, World!"
puts str.length 

#empty?
str1 = ""
puts str.empty?
puts str1.empty?

#count-case sensitive
puts str.count("l")

#insert
puts str.insert(5, " Beautiful")

#upcase
puts str.upcase

#downcase
puts str.downcase

#capitalize
puts str.capitalize

#swapcase
puts str.swapcase

#reverse - reverse in second array and take first array 
puts str.reverse

#reverse! - reverse in that array
puts str.reverse!

#split
str = "Hello World! How are you?"
puts str.split(" ").inspect

#chop and chop! as reverse and reverse!
puts str.chop

#chomp
puts str.chomp("you?")

#strip
str= "   Hello, World and World!   "
puts str.lstrip
puts str.rstrip
puts str.strip

#to_integer
puts "123".to_i

#gsub
puts str.gsub("World", "Universe")
puts "ruby is cool".gsub(/[aeiou]/, "*")

#sub
puts str.sub("World", "Universe")

#tr
puts str.tr("l", "x")

#tr_s
puts str.tr_s("l", "x")

#concat
str2 = " How are you?"      
puts str + str2
puts str << str2
puts str.concat(str2)

#index
str = "Hello, World!"
puts str.index("World")

#clear
str.clear
puts str