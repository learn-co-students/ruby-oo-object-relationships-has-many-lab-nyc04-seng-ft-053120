require "pry"
class Song
    attr_accessor :name, :artist  
    @@all = []
    def initialize(name)
        @name = name
        @artist = artist
        # self.class = Song 
        # .all can only be used on a class and not a instance
        self.class.all << self
        
    end

    def self.all
        @@all
    end
    def artist_name
        if self.artist 
           return self.artist.name   
            # binding.pry
        end
        self.artist
        
    end
end