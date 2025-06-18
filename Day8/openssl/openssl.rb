require 'openssl'
key = OpenSSL::PKey::RSA.new 2048

open 'private_key.pem', 'w' do |io| io.write key.to_pem end
open 'public_key.pem', 'w' do |io| io.write key.public_key.to_pem end

# p "Private key saved to private_key.pem"
# p "Public key saved to public_key.pem"  


cipher = OpenSSL::Cipher.new 'AES-128-CBC'
pass_phrase = 'my secure pass phrase goes here'

key_secure = key.export cipher, pass_phrase

open 'private.secure.pem', 'w' do |io|
  io.write key_secure
end

key2 = OpenSSL::PKey::RSA.new File.read 'private_key.pem'
p key2.public? # => true
p key2.private? 

key4_pem = File.read 'private.secure.pem'
pass_phrase = 'my secure pass phrase goes here'
key4 = OpenSSL::PKey::RSA.new key4_pem, pass_phrase
p key4.public? # => true
p key4.private? # => true