=begin
x Design and code a Blog and Post class.
These classes should model a system where a user can create a blog, which will have posts.
x A Blog can have a name, a user_name, and the collection of posts
x A Post can have a name, a summary, the body of the post, the published date, and a word count.
Since both a blog and a post MUST have a name, override the initializer so that when an object of either class is created, a name must be supplied.

=end
require 'active_support'
require 'active_support/all'

class Blog
  attr_accessor :name, :user_name, :collection_of_posts
end

def initialized(name)
  @collection_of_posts = []
end


class Post
  attr_accessor :name, :summary, :body, :published_date, :word_count
end

def initialized(name)
  @name = name
end

=begin
Main File
load "blog.rb"
load "post.rb"
=end
blog = Blog.new

post = Post.new

puts "Please name your blog: "
blog.name = gets.chomp
puts "What is your user_name? "
blog.user_name = gets.chomp
puts "What would you like to name this post?"
post.name = gets.chomp
puts "Type in an Article Title?"
post.summary = gets.chomp
puts "Type the rest of your article:"
post.body = gets.chomp
puts "Please type in today's date?"
post.published_date =gets.chomp

post.word_count = post.body.split.length
puts "Your word count in this post is: #{post.word_count}"
