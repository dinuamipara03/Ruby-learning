require 'webrick'

server = WEBrick::HTTPServer.new(:Port => 8000,
                             :SSLEnable => false,
                             :DocumentRoot => '/var/www/myapp',
                             :ServerAlias => 'myapp.example.com')

server.mount_proc '/' do |req, res|
  res.body = 'Hello, world!'
end

trap 'INT' do server.shutdown end

server.start