require_relative 'artist.rb'

class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self #pushes song into @@all
  end

  def self.all
    @@all #access all songs
  end

  def artist_name
    self.artist.name if self.artist
  end
end