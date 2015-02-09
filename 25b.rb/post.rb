class Post
  attr_accessor :name, :summary, :body, :published_date, :word_count

  def initialize(post_name)
    @name = post_name
  end

end
