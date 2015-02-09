=begin
x Design and code a Blog and Post class.
x These classes should model a system where a user can create a blog, which will have posts.
x A Blog can have a name, a user_name, and the collection of posts
x A Post can have a name, a summary, the body of the post, the published date, and a word count.
x Since both a blog and a post MUST have a name, override the initializer so that when an object of either class is created, a name must be supplied.

=end
require 'active_support'
require 'active_support/all'

load "blog.rb"
load "post.rb"

# Asks user for blog name FIRST; it's required to create blog object.
puts "Please name your blog."
blog_name = gets.chomp

# Passes in blog name, creates blog object.
blog = Blog.new(blog_name)

puts "What is your user name?"
blog.user_name = gets.chomp

# Asks user for post name FIRST; it's required to create post object.
puts "What would you like to name this post?"
post_name = gets.chomp

# Passes in post name, creates post object.
post = Post.new(post_name)

puts "Type in a summary, please."
post.summary = gets.chomp

puts "Type the rest of your blog post."
post.body = gets.chomp

puts "Please type in today's date."
post.published_date = gets.chomp

puts "Nice to see you blogging again, #{blog.user_name}."
puts "Your #{blog.name} blog is gaining readers."
puts "A topic like #{post.summary} is interesting."
puts "Thanks for your #{post.name} post."

# Calculates word count by splitting body into words, counting length.
post.word_count = post.body.split.length
puts "Your word count in #{post.name} is: #{post.word_count}"
