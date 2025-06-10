square = Proc.new {|x| x**2 }

puts square.call(3)  #=> 9
# shorthands:
puts square.(3)      #=> 9
puts square[3]       #=> 9



def gen_times(factor)
  Proc.new {|n| n*factor } # remembers the value of factor at the moment of creation
end

times3 = gen_times(3)
times5 = gen_times(5)

puts times3.call(12)               #=> 36
puts times5.call(5)                #=> 25
puts times3.call(times5.call(4))   #=> 60