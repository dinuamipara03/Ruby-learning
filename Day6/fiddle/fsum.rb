require 'fiddle'
require 'fiddle/import'

module LibSum
  extend Fiddle::Importer
  dlload './libsum.so' # Replace with your library path
  extern 'int mul(int, int)' # Declares the C function
end

# Example usage
a = 10
b = 20
result = LibSum.mul(a, b)
puts "Sum of #{a} and #{b} is: #{result}"