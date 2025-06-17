require 'open-uri'
URI.open("http://www.ruby-lang.org/en") {|f|
#   f.each_line {|line| p line}
  p f.base_uri         # <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>
  p f.content_type     # "text/html"
  p f.charset          # "iso-8859-1"
  p f.content_encoding # []
  p f.last_modified    # Thu Dec 05 02:45:02 UTC 2002
}

uri = URI.parse("http://www.ruby-lang.org/en/")
uri.open {|f|
  # ...
}

str = uri.read
p str.base_uri