class Gossip
  attr_reader :content, :author

  def initialize(content, author)
    @content = content
    @author  = author
  end

  def save 
    CSV.open("db/gossip.csv", "a+") {|csv| csv << [self.content,self.author]}
  end

  def self.all 
    all_gossips =[]
    CSV.read('db/gossip.csv').each {|row| all_gossips << Gossip.new(row,row)}
  end 

  def self.destroy_gossip(author)
    CSV.read('db/gossip.csv').each {|row| row.include?(author) ?   : nil }
  end

end

