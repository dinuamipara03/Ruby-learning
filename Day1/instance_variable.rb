class C
  def initialize(value)
    @instance_variable = value
  end

  def value
    @instance_variable
  end
end

object1 = C.new "some value"
object2 = C.new "other value"

p object1.value 
p object2.value 