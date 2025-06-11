# thr = Thread.new { puts "What's the big deal" }
#  puts thr.join


#  threads = []
# threads << Thread.new { puts "What's the big deal" }
# threads << Thread.new { 3.times { puts "Threads are fun!" } }
# puts threads.each { |thr| thr.join }


thr = Thread.new { sleep 1; "Useful value" }
puts thr.value



#terminate
thr = Thread.new { sleep }
puts thr.status # => "sleep"
thr.exit
puts thr.status # => false