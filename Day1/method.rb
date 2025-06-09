def hi 
    puts "hello"
end

hi


def add(a,b)
    puts a+b
end
add(2,3)


def add(a,b,c,d)
    puts a+b+c+d
end
argument=[1,2,3,4]
add(*argument)


def str(name)
    puts "Hello #{name}"
end
str("joy")