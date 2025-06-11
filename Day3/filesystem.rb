require 'pathname'
pn = Pathname.new("/usr/bin/ruby")
puts size = pn.size   
puts isdir = pn.directory?      
puts dir  = pn.dirname           
puts base = pn.basename         
puts dir, base = pn.split    



# # File Handling Program

# # Creating a file
# fileobject = File.new("sample.txt", "w+"); 

# # Writing to the file
# fileobject.syswrite("File Handling");    

#  # Closing a file
# fileobject.close();



# File Handling Program

# # Opening a file
# fileobject = File.open("sample.txt", "r"); 

# # Reading the first n characters from a file
# puts(fileobject.sysread(21));

# # Closing a file
# fileobject.close();                         

# # Opening a file
# fileobject = File.open("sample.txt", "r");     

# # Read the values as an array of lines
# print(fileobject.readlines);             
# puts

# # Closing a file
# fileobject.close();                        

# # Opening a file
# fileobject = File.open("sample.txt", "r"); 

# # Read the entire content from a file
# print(fileobject.read());    

# # Closing a file
# fileobject.close();

# Rename the file name
puts File.rename("newSample.txt", "newSample1.txt") 
  

# # Checking the old filename is existing or not 
# puts File.file?("sample.txt")

# Checking the renamed file is exiting or not
puts File.file?("newSample1.txt")

# Checking the file have read permission
puts File.readable?("newSample1.txt")

 # Checking the file have write permission
puts File.writable?("newSample1.txt")