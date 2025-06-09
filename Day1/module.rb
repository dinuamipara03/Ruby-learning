module Gfg
 
    # module method 
    def portal
        puts "Welcome to GFG Portal!" 
    end
     
    # module method
    def tutorial  
        puts "Ruby Tutorial!" 
    end
     
    # module method
    def topic  
        puts "Topic - Module" 
    end
    
end 

include Gfg

portal 
tutorial
topic

