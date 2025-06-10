ary = [1, "two", 3.0]
puts "#{ary}"

ary = Array.new    #=> []
puts Array.new(3, true) #=> [true, true, true]

Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
a=Array.new(4) {|i| i.to_s }
puts "#{a}"

b=Array({:a => "a", :b => "b"})
puts "#{b}"

arr = [1, 2, 3, 4, 5, 6]
puts arr[2]    #=> 3
puts arr[100]  #=> nil
puts arr[-3]   #=> 4
c = arr[2, 3] #=> [3, 4, 5]
d = arr[1..4] #=> [2, 3, 4, 5]
e = arr[1..-3] #=> [2, 3, 4]

puts "#{c}, #{d},#{e}"

arr = [1, 2, 3, 4]
f = arr.push(5) #=> [1, 2, 3, 4, 5]
puts "#{f}"
g = arr << 6    #=> [1, 2, 3, 4, 5, 6]
puts "#{g}"
h = arr.unshift(0) #=> [0, 1, 2, 3, 4, 5, 6]
puts "#{h}"

i = arr.insert(3, 'apple') 
puts "#{i}"




arr =  [1, 2, 3, 4, 5, 6]
arr.pop #=> 6
puts "#{arr}" #=> [1, 2, 3, 4, 5]
arr.shift #=> 1
puts "#{arr}"
arr.delete_at(2)
puts "#{arr}"
arr.delete(2) #=> 2
puts "#{arr}"





arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]
puts "#{arr.compact}"  #=> ['foo', 0, 'bar', 7, 'baz']
puts "#{arr}"         #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact! #=> ['foo', 0, 'bar', 7, 'baz']
puts "#{arr}"        #=> ['foo', 0, 'bar', 7, 'baz']


arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]
puts "#{arr.uniq}" #=> [2, 5, 6, 556, 8, 9, 0, 123]


arr = [1, 2, 3, 4, 5]
p "#{arr.each {|a| print a -= 10, " "}}"


words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each {|word| str += "#{word} "}
p str




p "#{arr.map {|a| 2*a}}"     #=> [2, 4, 6, 8, 10]
p "#{arr}"                   #=> [1, 2, 3, 4, 5]
p "#{arr.map! {|a| a**2}}"   #=> [1, 4, 9, 16, 25]
p "#{arr}"


arr = [1, 2, 3, 4, 5, 6]
arr.delete_if {|a| a < 4}   #=> [4, 5, 6]
p "#{arr}"                         #=> [4, 5, 6]

arr = [1, 2, 3, 4, 5, 6]
arr.keep_if {|a| a < 4}   #=> [1, 2, 3]
p "#{arr}"                       #=> [1, 2, 3]