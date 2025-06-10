require 'set'

p s1 = Set[1, 2]                        #=> #<Set: {1, 2}>
p s2 = [1, 2].to_set                    #=> #<Set: {1, 2}>
p s1 == s2                              #=> true
p s1.add("foo")                         #=> #<Set: {1, 2, "foo"}>
p s1.merge([2, 6])                      #=> #<Set: {1, 2, "foo", 6}>
p s1.subset?(s2)                        #=> false
p s2.subset?(s1)                        #=> true