# Artist
#   #new
#     is initialized with a name
#   #name
#     has an attr_accessor for name
#   #songs
#     has many songs (FAILED - 1)
#   #add_song
#     takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist 
#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it and associates the song and artist 
#   .song_count
#     is a class method that returns the total number of songs associated to all existing artists 

class Artist
    attr_accessor :name
    
     @@all = []
    def initialize(name)
        @name = name
         @@all << self
    end

     def self.all
        @@all
     end

    def songs
        Song.all.select {|song| song.artist == self}
        #for every song in Song class, select the ones where the artist is == to the current Artist class
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self #associates the song with the artist by telling the song it belongs to that artist
    end

    def self.song_count
        Song.all.count
    end
end

    
