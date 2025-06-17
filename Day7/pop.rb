require 'net/pop'

pop = Net::POP3.new('pop.gmail.com', 995)
pop.enable_ssl  # Enable SSL since Gmail requires it

pop.start('amiparadinu@gmail.com', 'oywi rmmk hpqq ummx')  # App password, not regular password
if pop.mails.empty?
  puts 'No mail.'
else
  i = 0
  pop.each_mail do |m|
    File.open("inbox/#{i}", 'w') do |f|
      f.write m.pop
    end
    m.delete
    i += 1
  end
  puts "#{i} mails popped."
end
pop.finish
