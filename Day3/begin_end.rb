# Ruby Program of BEGIN and END Block

# BEGIN block 
BEGIN {

  a = 4
  b = 3
  c = a + b
      
   # BEGIN block code  
   puts "This is BEGIN block code"
   puts c

}  
  
# END block  
END {  

  a = 4
  b = 3
  c = a * b
      
   # END block code  
   puts "This is END block code"
   puts c
} 
  
# Code will execute before END block  
puts "Main Block"