require "net/ftp"
# ftp = Net::FTP.new('example.com')
# ftp.login
# files = ftp.chdir('pub/lang/ruby/contrib')
# files = ftp.list('n*')
# ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)
# ftp.close


Net::FTP.open('example.com') do |ftp|
    ftp.login
    files = ftp.chdir('pub/lang/ruby/contrib')
    files = ftp.list('n*')
    ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)
  end