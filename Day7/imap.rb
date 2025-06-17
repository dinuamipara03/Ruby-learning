require 'net/imap'

imap = Net::IMAP.new('imap.gmail.com', 993, true) # Connect securely to Gmail
imap.login('amiparadinu@gmail.com', 'oywi rmmk hpqq ummx') # Use an app-specific password if needed
imap.select('INBOX') # Select mailbox

# Search for all unseen messages
uids = imap.search(["UNSEEN"])

puts "Found #{uids.size} unseen messages."

uids.each do |uid|
  envelope = imap.fetch(uid, "ENVELOPE")[0].attr["ENVELOPE"]
  puts "From: #{envelope.from[0].name}, Subject: #{envelope.subject}"
end

imap.logout
imap.disconnect
