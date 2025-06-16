require 'shellwords'

argv = Shellwords.split('three blind "mice"')
puts argv.inspect

argv = "see how they run".shellsplit
puts argv.inspect

argv = Shellwords.escape("special's.txt")
puts argv.inspect

argv = Shellwords.shelljoin(['one', 'two', 'three'])
puts argv.inspect