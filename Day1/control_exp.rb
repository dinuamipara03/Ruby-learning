#if 

#ex1
if true then
  puts "the test resulted in a true-value"
end

#ex2
if false
  puts "the test resulted in a true-value"
else
  puts "the test resulted in a false-value"
end

#ex3
a = 1

if a == 0
  puts "a is zero"
elsif a == 1
  puts "a is one"
elsif a >= 1
  puts "a is greater than or equal to one"
else
  puts "a is some other value"
end

#ternary

puts 2>1 ? "this is true" : "this is not true"

#unless
unless true
  puts "the value is a false-value"
end

#case
a = 2

case
when a == 1, a == 2
  puts "a is one or two"
when a == 3
  puts "a is three"
else
  puts "I don't know what a is"
end


#while
a = 0

while a < 10 do
  p a
  a += 1
end

p a

#until
a = 0

until a > 10 do
  p a
  a += 1
end

p a


#for
i = "Sudo Placements"

for a in 1..5 do
    
 puts i
 
end


# break
x = 0
    while true do
        puts x
        x += 1

    break if x > 3
end

#next
result = [1, 2, 3].map do |value|
  next if value.even?

  value * 2
end

p result