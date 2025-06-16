irb(main):026:0> require 'did_you_mean'
    # => false
irb(main):027:0> methosd
    # (irb):27:in `<main>': undefined local variable or method `methosd' for main:Object (NameError)
    # Did you mean?  method
    #             methods
    #     from /usr/lib/ruby/gems/3.0.0/gems/irb-1.3.5/exe/irb:11:in `<top (required)>'
    #     from /usr/bin/irb:23:in `load'
    #     from /usr/bin/irb:23:in `<main>'
irb(main):028:0> OBject
    # (irb):28:in `<main>': uninitialized constant OBject (NameError)
    # Did you mean?  Object
    #     from /usr/lib/ruby/gems/3.0.0/gems/irb-1.3.5/exe/irb:11:in `<top (required)>'
    #     from /usr/bin/irb:23:in `load'
    #     from /usr/bin/irb:23:in `<main>'
irb(main):029:0> @full_name = "Yuki Nishijima"
irb(main):030:0> first_name, last_name = full_name.split(" ")
    # (irb):30:in `<main>': undefined local variable or method `full_name' for main:Object (NameError)
    # Did you mean?  @full_name
    # 	from /usr/lib/ruby/gems/3.0.0/gems/irb-1.3.5/exe/irb:11:in `<top (required)>'
    # 	from /usr/bin/irb:23:in `load'
    # 	from /usr/bin/irb:23:in `<main>'
    # irb(main):031:0> first_name, last_name = @full_name.split(" ")

