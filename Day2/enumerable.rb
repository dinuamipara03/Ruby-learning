numbers = [1, 2, 8, 9, 18, 7]

puts numbers.each { |n| puts n }       # prints each number
puts numbers.map { |n| n**2 }          #=> [1, 4, 64, 81, 324, 49]
puts numbers.select { |n| n.odd? }     #=> [1, 9, 7]
puts numbers.reject { |n| n.odd? }     #=> [2, 8, 18]
puts numbers.partition { |n| n.odd? }  #=> [[1, 9, 7], [2, 8, 18]]
puts numbers.sort                      #=> [1, 2, 7, 8, 9, 18]
puts numbers.take_while { |n| n < 9 }  #=> [1, 2, 8]
puts numbers.drop_while { |n| n < 9 }  #=> [9, 18, 7]
# ...and so on

# Range is Enumerable, too
puts (1..10).select { |n| n.odd? }   #=> [1, 3, 5, 7, 9]

e = [1,2,3].each   # returns an enumerator object.
puts e.next   # => 1
puts e.next   # => 2
puts e.next   # => 3
puts e.next