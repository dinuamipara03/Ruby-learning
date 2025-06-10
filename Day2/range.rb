puts (-1..-5).to_a      #=> []
puts (-5..-1).to_a      #=> [-5, -4, -3, -2, -1]
puts ('a'..'e').to_a    #=> ["a", "b", "c", "d", "e"]
puts ('a'...'e').to_a   #=> ["a", "b", "c", "d"]

puts [1, 2, 3, 4, 5][...2]   # => [1, 2]
puts [1, 2, 3, 4, 5][2...] 


class Xs                # represent a string of 'x's
  include Comparable
  attr :length
  def initialize(n)
    @length = n
  end
  def succ
    Xs.new(@length + 1)
  end
  def <=>(other)
    @length <=> other.length
  end
  def to_s
    sprintf "%2d #{inspect}", @length
  end
  def inspect
    'x' * @length
  end
end

r = Xs.new(3)..Xs.new(6)   #=> xxx..xxxxxx
puts r.to_a                     #=> [xxx, xxxx, xxxxx, xxxxxx]
puts r.member?(Xs.new(5))