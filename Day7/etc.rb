require 'etc'

login = Etc.getlogin
info = Etc.getpwnam(login)
username = info.gecos.split(/,/).first
puts "Hello #{username}, I see your login name is #{login}"
