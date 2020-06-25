require "pry"
require_relative "song.rb"

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        # puts "self.all #{@@all.length}"
        # binding.pry
    end

    def self.all
        @@all
    end

    def add_song(song)
        # @songs << song
        puts "self.all #{@@all.length}"
        song.artist = self
    end

    def songs
        Song.all
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def self.song_count
        # binding.pry
        self.all.reduce(0) do |count, artist|
            # binding.pry
            puts artist.name
            count + artist.songs.length
        end
    end

end