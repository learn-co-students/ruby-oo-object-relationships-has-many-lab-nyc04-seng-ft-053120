class Post

    attr_accessor :title, :author
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(author)
        @author = author
    end

    def author_name
        if (!@author)
            return nil
        end
        @author.name
    end

    def self.all
        @@all
    end
end
