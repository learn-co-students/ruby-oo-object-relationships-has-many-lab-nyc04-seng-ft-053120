require_relative 'author.rb'

class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self #new posts should be added to @@all
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name if self.author
  end
end