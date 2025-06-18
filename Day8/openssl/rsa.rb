require "openssl"
digest = OpenSSL::Digest::SHA256.new
key = OpenSSL::PKey::RSA.new 2048
digest = OpenSSL::Digest::SHA256.new
signature = key.sign digest, document

if key.verify digest, signature, document
  puts 'Valid'
else
  puts 'Invalid'
end