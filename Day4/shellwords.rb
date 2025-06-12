$ irb
irb(main):001:0> require 'shellwords'
=> true
irb(main):002:0> 
irb(main):003:0> argv = Shellwords.split('three blind "mice"')
irb(main):004:0> argv
=> ["three", "blind", "mice"]
irb(main):005:0> argv = "see how they run".shellsplit
irb(main):006:0> argv
irb(main):007:0> argv = "they all ran after the farmer's wife".shellsplit
	from /usr/lib/ruby/3.0.0/shellwords.rb:91:in `scan'
	from /usr/lib/ruby/3.0.0/shellwords.rb:214:in `shellsplit'
	from (irb):7:in `<main>'
	from /usr/bin/irb:23:in `load'
	from /usr/bin/irb:23:in `<main>'
irb(main):008:0> argv = "they all ran after the farmer\'s wife".shellsplit
/usr/lib/ruby/3.0.0/shellwords.rb:93:in `block in shellsplit': Unmatched quote: "they all ran after the farmer's wife" (ArgumentError)
	from /usr/lib/ruby/3.0.0/shellwords.rb:91:in `scan'
	from /usr/lib/ruby/3.0.0/shellwords.rb:91:in `shellsplit'
	from /usr/lib/ruby/3.0.0/shellwords.rb:214:in `shellsplit'
	from (irb):8:in `<main>'
	from /usr/lib/ruby/gems/3.0.0/gems/irb-1.3.5/exe/irb:11:in `<top (required)>'
	from /usr/bin/irb:23:in `load'
	from /usr/bin/irb:23:in `<main>'
irb(main):009:0> argv = "they all ran after the farmer wife".shellsplit
=> ["they", "all", "ran", "after", "the", "farmer", "wife"]
irb(main):010:0> argv = Shellwords.escape("special's.txt")
irb(main):011:0> argv
=> "special\\'s.txt"
irb(main):012:0> system("cat"+argv)
sh: 1: catspecial's.txt: not found
=> false
irb(main):013:0> argv = %w{ls -lta lib}
irb(main):014:0> system(argv.shelljoin)
ls: cannot access 'lib': No such file or directory
=> false
irb(main):015:0> 

