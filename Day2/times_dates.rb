puts Time.new(2002)         #=> 2002-01-01 00:00:00 -0500
puts Time.new(2002, 10)     #=> 2002-10-01 00:00:00 -0500
puts Time.new(2002, 10, 31)

puts Time.new(2002, 10, 31, 2, 2, 2, "+02:00")

puts Time.at(1111111111)

t = Time.new(1993, 02, 24, 12, 0, 0, "+09:00")
puts t.year


require 'time'

t = Time.now
puts t.iso8601  # => "2011-10-05puts 22:26:12-04:00"
puts t.rfc2822  # => "Wed, 05 Oct 2011 22:26:12 -0400"
puts t.httpdate # => "Thu, 06 Oct 2011 02:26:12 GMT"

puts Time.parse("2010-10-31") #=> 2010-10-31 00:00:00 -0500
puts Time.strptime("2000-10-31", "%Y-%m-%d") #=> 2000-10-31 00:00:00 -0500


#DATE

require 'date'

puts Date.new(2001,2,3)

puts Date.jd(2451944)

puts Date.ordinal(2001,34)

puts Date.commercial(2001,5,6)

puts Date.parse('2001-02-03')

puts Date.strptime('03-02-2001', '%d-%m-%Y')

puts Time.new(2001,2,3).to_date


d = Date.parse('3rd Feb 2001')
                             
puts d.year                      
puts d.mon                        
puts d.mday                       
puts d.wday                       
puts d += 1                      
puts d.strftime('%a %d %b %Y')    


#DATETIME

require 'date'

puts DateTime.new(2001,2,3,4,5,6)

puts DateTime.new(2001,2,3.5)

d = DateTime.parse('3rd Feb 2001 04:05:06+03:30')
                   
puts d.hour              
puts d.min               
puts d.sec             
puts d.offset            
puts d.zone              
puts d += Rational('1.5')
puts d = d.new_offset('+09:00')
puts d.strftime('%I:%M:%S %p')
puts d > DateTime.new(1999)