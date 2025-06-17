require 'pty'

master, slave = PTY.open
read, write = IO.pipe
pid = spawn("factor", :in=>read, :out=>slave)
read.close     # we dont need the read
slave.close    # or the slave

# pipe "42" to the factor command
write.puts "42"
# output the response from factor
p master.gets #=> "42: 2 3 7\n"

# pipe "144" to factor and print out the response
write.puts "144"
p master.gets #=> "144: 2 2 2 2 3 3\n"
write.close # close the pipe

# The result of read operation when pty slave is closed is platform
# dependent.
ret = begin
        master.gets     # FreeBSD returns nil.
      rescue Errno::EIO # GNU/Linux raises EIO.
        nil
      end
p ret #=> nil