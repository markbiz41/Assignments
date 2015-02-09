class Post
  attr_accessor :name, :summary, :body, :published_date, :word_count
end

def initialized(name)
  @name = name
end
