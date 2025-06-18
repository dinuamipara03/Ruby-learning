# require "readline"
# while buf = Readline.readline("> ", true)
#   p buf
# end


require "readline"
while buf = Readline.readline("> ", true)
  p Readline::HISTORY.to_a
  print("-> ", buf, "\n")
end