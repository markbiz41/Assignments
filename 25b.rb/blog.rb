class Blog
  attr_accessor :name, :user_name, :collection_of_posts
end

def initialized(name)
  @collection_of_posts = []
end
