require "pry"
class Song
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist=(artist)
        @artist = artist
    end

    def artist
        @artist
    end
    def artist_name
        if (!@artist)
            return nil
        end
        @artist.name
    end

    def self.all
        @@all
    end

end