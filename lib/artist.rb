require "pry"

class Artist
    
   attr_accessor :name
    @@count = 0
   def initialize(name)
       @name = name
    
   end
  def songs
      Song.all
    #   binding.pry
  end
  def add_song(song)
    # take song name reffer to may songs.meth look for it in here if 
      song.artist = self  
     @@count +=1
  end

  def add_song_by_name(song)
   new_song =  Song.new(song)
   add_song(new_song)
   @@count += 1 
  end
  def self.song_count
      @@count
  end
   
end