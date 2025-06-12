
geeks = Hash.new

puts "#{geeks[4]}"

geeks_default = Hash.new("GFG")

puts "#{geeks_default[0]}"
puts "#{geeks_default[7]}"

geeks_hash1 = {"DS" => 1, "Java" => 2}

puts geeks_hash1['DS']   
puts geeks_hash1['Java']




geeks_hash1 = {"DS" => 1, "Java" => 2}

puts "Before Modifying"

puts geeks_hash1['DS']   
puts geeks_hash1['Java']  

puts "\n"

puts "After Modifying"

geeks_hash1["DS"] = 4
geeks_hash1["Java"] = 5

puts geeks_hash1['DS'] 
puts geeks_hash1['Java']




geeks_hash1 = {"DS" => 1, "DS" => 4,"Java" => 2}

puts "Before Modifying"

puts geeks_hash1['DS']   
puts geeks_hash1['Java']  

puts "\n"

puts "After Modifying"

geeks_hash1["DS"] = 4
geeks_hash1["Java"] = 5

puts geeks_hash1['DS'] 
puts geeks_hash1['Java']




#class
p Hash["x", 30, "y", 19] 
p Hash["x" => 30, "y" => 19]

a = Hash.new("geeksforgeeks")
p a["x"] = 40
p a["y"] = 49
p a["x"] 
p a["y"]
p a["z"]

p Hash.try_convert({3=>8})
p Hash.try_convert("3=>8")


a1 = {"x" => 4, "y" => 109}
a2 = {"x" => 67, "f" => 78, "z" => 21}
a3 = {"f" => 78, "x" => 67, "z" => 21}
p a1 == a2 
p a2 == a3 


a = {"x" => 45, "y" => 67}
p a["x"] 
p a["z"]

a = {"x" => 45, "y" => 67}
a["x"]= 34
a["z"]= 89
p a


a = {"x" => 45, "y" => 67}
p a.clear


a = Hash.new("geeksforgeeks") 
p a.default 
p a.default(2)


a = Hash.new {|a, v| a[v] = v*v*v} 
b = a.default_proc 
c = [] 
p b.call(c, 2)
p c  

