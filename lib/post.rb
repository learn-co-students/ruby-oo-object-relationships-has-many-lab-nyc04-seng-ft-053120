require "pry"
class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
      @title = title
      self.class.all << self
    #    binding.pry
  end
  def self.all
      @@all
  end
  def author_name
    # binding.pry
      if self.author
        return self.author.name
      end
      self.author
  end
end