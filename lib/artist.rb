class Artist
    attr_accessor :name
    def initialize(name)
    @name=name
    end
    def songs
        Song.all.select{|songs|songs.artist==self}
    end
    def add_song(song)
        song.artist=self
    end
    def add_song_by_name(song)
        
        add_song(Song.new(song))
    end
    def self.song_count
        Song.all.count
    end

end