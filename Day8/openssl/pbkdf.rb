require 'openssl'
require 'securerandom'
pass = "password"
salt = SecureRandom.random_bytes(16)
dk = OpenSSL::KDF.scrypt(pass, salt: salt, N: 2**14, r: 8, p: 1, length: 32)
p dk