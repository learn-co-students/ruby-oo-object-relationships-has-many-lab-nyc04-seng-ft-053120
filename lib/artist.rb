
class Artist

  attr_accessor :name , :song

  def initialize (name)
    @name = name
  end

  def songs
    Song.all.map { |i| i if i.artist == self }
  end


  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    i = Song.new(song)
    add_song(i)
  end

  def self.song_count
    Song.all.count
    # binding.pry
  end

end
