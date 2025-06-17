# require 'net/smtp'
# require 'openssl'

# smtp = Net::SMTP.new('smtp.gmail.com', 587)
# smtp.enable_starttls

# smtp.start('gmail.com', 'amiparadinu@gmail.com', 'oywi rmmk hpqq ummx', :login) do
#   smtp.send_message <<~MESSAGE, 'amiparadinu@gmail.com', 'dinaxi.amipara@creolestudios.com'
#     Subject: Hello with Ruby SMTP
#     From: amiparadinu@gmail.com
#     To: dinaxi.amipara@creolestudios.com

#     This message was sent using TLS.
#   MESSAGE
# end



require 'net/smtp'

from = "amiparadinu@gmail.com"
to = "dinaxi.amipara@creolestudios.com"
subject = "Hello from Ruby!"
body = "This is a test email sent via SMTP using Ruby."

message = <<~MESSAGE_END
  From: <#{from}>
  To: <#{to}>
  Subject: #{subject}

  #{body}
MESSAGE_END

smtp_server = 'smtp.gmail.com'
port = 587
username = 'amiparadinu@gmail.com'
password = 'oywi rmmk hpqq ummx'

Net::SMTP.start(smtp_server, port, 'localhost', username, password, :plain) do |smtp|
  smtp.send_message message, from, to
end
