# Create a String variable named 'name'
name = "betty"
# Create a Date variable named "a_date"
a_date = Date.new
# Create an integer variable named "age"
age = 17
# Create an array of names named 'names'
names = ["tom", "jerry"]
# Create another array, using %w, named 'more_names'
more_names = %w(ab\ c def)
# Create a Hash of names with ages named 'names_and_ages'
names_and_ages = { "Joseph" => 26, "Dorothy" => 35 }
# Keep this part as a way to test your code
puts name.class
puts a_date.class
puts age.class
puts names.class
puts more_names.class
puts names_and_ages.class

puts name.is_a? String
puts a_date.is_a? Date
puts age.is_a? Fixnum
puts names.is_a? Array
puts more_names.is_a? Array
puts names_and_ages.is_a? Hash

# Create a String literal and output it's class (one line)
puts "random text".class
# Create a Fixnum literal and output it's class (one line)
puts 4.class
# Create an Array literal and output it's class (one line)
names = ["tom", "jerry"].class
# Create a Hash literal and output it's class (one line). Note to keep from confusing Ruby you'll have to wrap what you are outputting in parenthesis
names_and_ages = { "Joseph" => 26, "Dorothy" => 35 }.class
# Create a symbol and output it's class
:new_symbol.class
# Create a String constant with any name you choose
NAME = "sara"
# Change the value of that constant
puts NAME = 26
# Output the constant's value to the screen
puts SARA
