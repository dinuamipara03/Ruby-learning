# require 'optparse'

# options = {}
# OptionParser.new do |opts|
#   opts.banner = "Usage: example.rb [options]"

#   opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
#     options[:verbose] = v
#   end
# end.parse!

# p options
# p ARGV

# require 'optparse'

# Options = Struct.new(:name)

# class Parser
#   def self.parse(options)
#     args = Options.new("world")

#     opt_parser = OptionParser.new do |opts|
#       opts.banner = "Usage: example.rb [options]"

#       opts.on("-nNAME", "--name=NAME", "Name to say hello to") do |n|
#         args.name = n
#       end

#       opts.on("-h", "--help", "Prints this help") do
#         puts opts
#         exit
#       end
#     end

#     opt_parser.parse!(options)
#     return args
#   end
# end
# options = Parser.parse %w[--help]


require 'optparse'
require 'optparse/time'
OptionParser.new do |parser|
  parser.on("-t", "--time [TIME]", Time, "Begin execution at given time") do |time|
    p time
  end
end.parse!