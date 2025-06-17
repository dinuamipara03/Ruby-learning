require 'uri'

uri = URI("http://foo.com/posts?id=30&limit=5#time=1305298413")
#=> #<URI::HTTP http://foo.com/posts?id=30&limit=5#time=1305298413>

p uri.scheme    #=> "http"
p uri.host      #=> "foo.com"
p uri.path      #=> "/posts"
p uri.query     #=> "id=30&limit=5"
p uri.fragment  #=> "time=1305298413"

p uri.to_s  



module URI
    class RSYNC < Generic
      DEFAULT_PORT = 873
    end
    @@schemes['RSYNC'] = RSYNC
  end
  #=> URI::RSYNC
  
  p URI.scheme_list
  #=> {"FILE"=>URI::File, "FTP"=>URI::FTP, "HTTP"=>URI::HTTP,
  #    "HTTPS"=>URI::HTTPS, "LDAP"=>URI::LDAP, "LDAPS"=>URI::LDAPS,
  #    "MAILTO"=>URI::MailTo, "RSYNC"=>URI::RSYNC}
  
  p uri = URI("rsync://rsync.foo.com")
  #=> #<URI::RSYNC rsync://rsync.foo.com>
  