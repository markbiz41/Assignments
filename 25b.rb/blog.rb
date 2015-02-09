class Blog
  attr_accessor :name, :user_name, :collection_of_posts

  def initialize(blog_name)
    @name = blog_name
    @collection_of_posts = []
  end

end
