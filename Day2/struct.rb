Customer = Struct.new(:name, :address) do
  def greeting
   puts "Hello #{name}!"
  end
end

dave = Customer.new("Dave", "123 Main")
dave.name     #=> "Dave"
dave.greeting #=> "Hello Dave!"

#openStruct
require "ostruct"
first_pet  = OpenStruct.new(:name => "Rowdy", :owner => "John Smith")
second_pet = OpenStruct.new(:name => "Rowdy")

first_pet.owner = nil
puts first_pet                 # => #<OpenStruct name="Rowdy", owner=nil>
puts first_pet == second_pet   # => false

first_pet.delete_field(:owner)
puts first_pet                 # => #<OpenStruct name="Rowdy">
puts first_pet == second_pet   # => true