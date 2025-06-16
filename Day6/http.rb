# # # nethttp.rb
# # require 'uri'
# # require 'net/http'

# # uri = URI('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')
# # res = Net::HTTP.get_response(uri)
# # puts res.body if res.is_a?(Net::HTTPSuccess)

# # # nethttp2.rb
# # require 'uri'
# # require 'net/http'

# # uri = URI('https://api.nasa.gov/planetary/apod')
# # params = { :api_key => 'your_api_key' }
# # uri.query = URI.encode_www_form(params)

# # res = Net::HTTP.get_response(uri)
# # puts res.body if res.is_a?(Net::HTTPSuccess)

# # # nethttp3.rb
# # require 'uri'
# # require 'net/http'

# # uri = URI('https://jsonplaceholder.typicode.com/posts')
# # res = Net::HTTP.post_form(uri, 'title' => 'foo', 'body' => 'bar', 'userID' => 1)
# # puts res.body  if res.is_a?(Net::HTTPSuccess)

# require 'uri'
# require 'net/http'
# uri = URI('http://www.example.com/search.cgi')
# res = Net::HTTP.post_form(uri, 'q' => ['ruby', 'perl'], 'max' => '50')
# puts res.body


# uri = URI('http://example.com/index.html')
# res = Net::HTTP.get_response(uri)

# # Headers
# res['Set-Cookie']            # => String
# res.get_fields('set-cookie') # => Array
# res.to_hash['set-cookie']    # => Array
# puts "Headers: #{res.to_hash.inspect}"

# # Status
# puts res.code       # => '200'
# puts res.message    # => 'OK'
# puts res.class.name # => 'HTTPOK'

# # Body
# puts res.body if res.response_body_permitted?


require 'uri'
require 'net/http'
# def fetch(uri_str, limit = 10)
#     # You should choose a better exception.
#     raise ArgumentError, 'too many HTTP redirects' if limit == 0
  
#     response = Net::HTTP.get_response(URI(uri_str))
  
#     case response
#     when Net::HTTPSuccess then
#       response
#     when Net::HTTPRedirection then
#       location = response['location']
#       warn "redirected to #{location}"
#       fetch(location, limit - 1)
#     else
#       response.value
#     end
#   end
  
#   print fetch('http://www.ruby-lang.org')


  uri = URI('http://example.com/index.html?key=value')

req = Net::HTTP::Get.new(uri)
req.basic_auth 'user', 'pass'

res = Net::HTTP.start(uri.hostname, uri.port) {|http|
  http.request(req)
}
puts res.body