class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        #associates song(class == Song) with artist
        song.artist = self #(artist instance, assigning istelf to song object artist variable)
    end
    
    def add_song_by_name(song)
        song_object = Song.new(song)
        song_object.artist = self
    end

    def self.song_count
        Song.all.count
    end

    def songs
        Song.all
    end
end