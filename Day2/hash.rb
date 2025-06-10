a = {a:100, b:200}

b = {a:100, c:300, b:200}

c = {a:100}

puts "Hash a key form : #{a.key(200)}"

puts "Hash b key form : #{b.key(100)}"

puts "Hash c key form : #{c.key(200)}"





class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def ==(other)
    self.class === other and
      other.author == @author and
      other.title == @title
  end

  alias eql? ==

  def hash
    @author.hash ^ @title.hash # XOR
  end
end

book1 = Book.new 'matz', 'Ruby in a Nutshell'
book2 = Book.new 'matz', 'Ruby in a Nutshell'

puts reviews = {}

puts reviews[book1] = 'Great reference!'
puts reviews[book2] = 'Nice and compact!'

puts reviews.length #=> 1