require 'ripper'
require 'pp'

pp Ripper.sexp('def hello(world) "Hello, #{world}!"; end')
#   #=> [:program,
#        [[:def,
#          [:@ident, "hello", [1, 4]],
#          [:paren,
#           [:params, [[:@ident, "world", [1, 10]]], nil, nil, nil, nil, nil, nil]],
#          [:bodystmt,
#           [[:string_literal,
#             [:string_content,
#              [:@tstring_content, "Hello, ", [1, 18]],
#              [:string_embexpr, [[:var_ref, [:@ident, "world", [1, 27]]]]],
#              [:@tstring_content, "!", [1, 33]]]]],
#           nil,
#           nil,
#           nil]]]