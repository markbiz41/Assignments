require 'date'
require 'active_support/all'

#1) Show the date of the beginning of the current week
puts Date.today.beginning_of_week
#2) Show what the date will be in 30 days
puts 30.days.from_now.to_date
#3) Show what day of the week today's date will fall on next year
puts 1.year.from_now.strftime("%A")
#4) Show what day of the week the user's birthday will be on this year
print "What is your Birthdate? (example: Jan 12) "
birthday = gets.chomp
puts Date.parse(birthday).strftime("%A")


#5) Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
puts "Enter a word: "
word = gets.chomp.singularize.pluralize
puts word

#6) Using the String class, truncate a phrase the user enters to 20 letters
puts "Enter a phrase: "
phrase = gets.chomp.truncate(20)
puts phrase

#7) Using the Array class, convert an array of three words to a sentence with one command
s = ['one', 'two', 'three'].to_sentence
puts s
