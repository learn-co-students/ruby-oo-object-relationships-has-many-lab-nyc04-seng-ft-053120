class Author
    attr_accessor :name, :post

    @@post_count = 1
    def initialize(name)
        @name = name
        @post = []
    end

    def posts
        @post = Post.all
    end

    def add_post(post)
       post = post
       post.author = self
       @@post_count += 1
    end

    def add_post_by_title(title)
       post = Post.new(title)
       @post << post
       post.author = self
       @@post_count += 1
    end

    def self.post_count
        @@post_count 
    end
end