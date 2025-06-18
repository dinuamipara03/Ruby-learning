require 'digest'

# Compute a complete digest
p Digest::SHA256.digest 'message'       #=> "\xABS\n\x13\xE4Y..."

sha256 = Digest::SHA256.new
p sha256.digest 'message'               #=> "\xABS\n\x13\xE4Y..."

# Other encoding formats
p Digest::SHA256.hexdigest 'message'    #=> "ab530a13e459..."
p Digest::SHA256.base64digest 'message' #=> "q1MKE+RZFJgr..."

# Compute digest by chunks
md5 = Digest::MD5.new
md5.update 'message1'
p md5 << 'message2'                     # << is an alias for update

p md5.hexdigest                         #=> "94af09c09bb9..."

require 'digest/bubblebabble'

p Digest::SHA256.bubblebabble 'message1'