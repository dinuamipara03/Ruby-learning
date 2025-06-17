require 'socket'
server = TCPServer.new 2000 # server bind to port 2000
loop do
  client = server.accept    # wait for a client to connect
  client.puts(Time.now)
  client.puts "Closing the connection. Later!" 
  client.close
end