# Ruby program to demonstrate 
# the Arithmetic Operators

# Addition
puts ("Addition:")
puts (10 + 20)

# Subtraction
puts ("Subtraction:")
puts (40 - 20)

# Division
puts ("Division:")
puts (100 / 20)

# Multiplication
puts ("Multiplication:")
puts (10 * 20)

# Modulus
puts ("Modulus:")
puts (20 % 7)

# Exponent
puts ("Exponent:")
puts (2 ** 4)


# Ruby program to demonstrate 
# the Comparison Operators
 
puts "Equal To Operator:"
puts (10 == 20)
 
puts "Not Equal To Operator:"
puts (40 != 20)
 
puts "Greater than Operator"
puts (100 > 20)
 
puts "Less than Operator"
puts (10  < 20)
 
puts "Less than Equal To Operator"
puts (2  <=  5)

puts "Greater than Equal To Operator"
puts (2  >=  5)
 
puts "Combined combination operator"
puts(20 <=> 20)
puts(10 <=> 20)
puts(20 <=> 10)


# Ruby program to demonstrate 
# the Logical Operators
 
# Variables
a = 10
b = 20
c = 30

# using && operator
if a == 10 && b == 20 && c == 30
    puts "Logical AND Operator"
    puts result = a * b * c
end

# using || operator
puts "Logical OR operator"
if a == 10 || b == 20
    puts result = a + b + c
end

# using ! operator
puts "Logical Not Operator"
puts !(true)



# Ruby program to demonstrate 
# the Assignments Operators
 
puts "Simple assignment operator"
puts a = 20

puts "Add AND assignment operator"
puts a += 10

puts "Subtract AND assignment operator"
puts a -= 5

puts "Multiply AND assignment operator"
puts a *= 10

puts "Divide AND assignment operator"
puts a /= 4

puts "Modulus AND assignment operator"
puts a %= 3

puts "Exponent AND assignment operator"
puts a **= 3




# Ruby program to demonstrate 
# the Bitwise Operators

# variables
a = 10
b = 20

puts "Bitwise AND operator"
puts (a & b)

puts "Bitwise OR operator"
puts (a |b)

puts "Bitwise XOR operator"
puts (a ^ b)

puts "Bitwise Complement operator"
puts (~a)

puts "Binary right shift operator"
puts (a >> 2)

puts "Binary left shift operator"
puts (a << 2)




# Ruby program to demonstrate 
# the Ternary Operator

# variable
marks_obtained = 100

# using ternary operator
result = marks_obtained > 40 ? 'Pass' : 'Fail'

# displaying output
puts result



# Ruby program to demonstrate 
# the Range Operator

# Array value separator
$, =", "  

# using .. Operator
range_op = (7 .. 10).to_a

# displaying result
puts "#{range_op}"

# using ... Operator
range_op1 = (7 ... 10).to_a

# displaying result
puts "#{range_op1}"



# Ruby program to demonstrate 
# the defined? Operator

# variables
GFG =  1
Geeks = 70


puts ("define? Operator Results")

# using defined? Operator
# it returns constant
puts defined? GFG        

# it returns constant
puts defined? Geeks 

# it returns nil
puts defined? a  
       
# it returns expression
puts defined? 50




