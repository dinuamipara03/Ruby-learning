require "base64"

enc   = Base64.encode64('Send reinforcements')
                    # -> "U2VuZCByZWluZm9yY2VtZW50cw==\n"
plain = Base64.decode64(enc)

p enc
p plain


require "base64"

base64_image = File.open("rail.png", "rb") do |file|
Base64.strict_encode64(file.read)
end

puts "\nBase64 encoded image:"
p base64_image


decoded_file = File.open("rail_decoded.png", "wb") do |file|
  file.write(Base64.decode64(base64_image))
end
 puts "\nDecoded file written to rail_decoded.png"
p decoded_file