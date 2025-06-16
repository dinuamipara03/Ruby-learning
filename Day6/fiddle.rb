require 'fiddle'

# Open the libm library
libm = Fiddle.dlopen(nil) 

# Create a Fiddle::Function object to wrap the C function
floor_func = Fiddle::Function.new(
  libm['floor'],      # C function name
  [Fiddle::TYPE_DOUBLE], # Argument types
  Fiddle::TYPE_DOUBLE  # Return type
)

# Call the C function using the wrapper
result = floor_func.call(3.14159)
puts "Result of floor(3.14159): #{result}"

#Example of using Fiddle::Pointer to access a string's memory address
str = "Hello world!"
str_ptr_int = str.object_id << 1
str_ptr = Fiddle::Pointer.new(str_ptr_int)
puts "String memory address: #{str_ptr_int}"
puts "String pointer value: #{str_ptr.to_i}"
