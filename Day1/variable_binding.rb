case [1, 2]
in Integer => a, Integer
  puts "matched: #{a}"
else
  puts "not matched"
end

case {a: 1, b: 2, c: 3}
in a: Integer => m
  puts "matched: #{m}"
else
  puts "not matched"
end

case {name: 'John', friends: [{name: 'Jane'}, {name: 'Rajesh'}]}
in name:, friends: [{name: first_friend}, *]
  puts "matched: #{first_friend}"
else
  puts "not matched"
end


# rest
case [1, 2, 3]
in a, *rest
  puts "matched: #{a}, #{rest}"
else
  puts "not matched"
end

case {a: 1, b: 2, c: 3}
in a:, **rest
  puts "matched: #{a}, #{rest}"
else
  puts "not matched"
end



# Guard clauses
case [1, 2]
in a, b if b == a*2
    puts "matched"
else
    puts "not matched"
end

case [1, 1]
in a, b if b == a*2
    puts "matched"
else
    puts "not matched"
end