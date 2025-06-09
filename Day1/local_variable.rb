# Ex:1
1.times do
  a = 1
  puts "local variables in the block: #{local_variables.join ", "}"
end

puts "no local variables outside the block" if local_variables.empty?


#Ex:2
a = 0

1.times do
  puts "local variables: #{local_variables.join ", "}"
end