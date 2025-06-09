# Abbreviated Assignment

#EX1
a = 1

a += 2

p a

#EX2
a ||= 0
a &&= 1

p a 


#Multiple Assignment

#EX3
a, b = 1, 2

p a: a, b: b 

#EX4
def value=(value)
  p assigned: value
end

self.value, $global = 1, 2 # prints {:assigned=>1}

p $global

#EX5
*a, b = 1, 2, 3

p a: a, b: b

#Array Decomposition

#EX6
(a, b) = [1, 2]

p a: a, b: b

#EX7
a, (b, *c), *d = 1, [2, 3, 4], 5, 6

p a: a, b: b, c: c, d: d