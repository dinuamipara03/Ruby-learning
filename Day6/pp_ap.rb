require "pp"

data=[1,"ruby",
{:name=>"Yuki Nishijima", :age=>42, :languages=>["Ruby", "Python", "JavaScript"]},
[1,2,3,4,5]]
puts "Pretty Print Output:\n"
pp data

require "awesome_print"
data = [ false, 42, %w(forty two), { :now => Time.now, :class => Time.now.class, :distance => 42e42 } ]
puts "\nAwesome Print Output:\n"
ap data