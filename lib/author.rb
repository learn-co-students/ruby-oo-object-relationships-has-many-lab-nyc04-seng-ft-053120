require "pry"
class Author
    attr_accessor :author, :name
    @@count = 0
    def initialize (name)
        @name = name
        
    end
    def posts
        # binding.pry
       Post.all
    end
    def add_post(new_post)
        
        new_post.author = self
        @@count +=1
    end
    def add_post_by_title(new_post_title)
        new_post = Post.new(new_post_title)
        add_post(new_post)  
        @@count +=1
    end
    def self.post_count
        @@count 
    end

end