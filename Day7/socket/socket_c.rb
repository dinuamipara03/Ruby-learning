require 'socket'
hostname = 'localhost'           # means "this computer"
port = 2000                      # a specific protocol
s = TCPSocket.new hostname, port # opens a TCP connection
while line = s.gets              # read lines from the socket
  puts line                      # and print them
end
s.close    