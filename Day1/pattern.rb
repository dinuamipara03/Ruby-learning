case [1, 2, 3]
in [Integer, Integer]
puts "matched"
else
  puts "not matched"
end


case {a: 1, b: 2, c: 3}
in {a: Integer}
  puts "matched"
else
  puts "not matched"
end


case {a: 1, b: 2}
in {a: Integer, **nil} # this will not match the pattern having keys other than a:
  puts "matched a part"
in {a: Integer, b: Integer, **nil}
  puts "matched a whole"
else
  puts "not matched"
end