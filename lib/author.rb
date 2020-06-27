class Author
attr_reader :name

def initialize(name)
    @name = name
 
end

def posts 
    Post.all
end

def add_post(post)
    post.author = self
end

def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.add_post(new_post)

end

def add_post_by_title(title)
    result = Post.new(title)
    self.add_post(result)
    # binding.pry
end

def self.post_count
    Post.all.length
end


end