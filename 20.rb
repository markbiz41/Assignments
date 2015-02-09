
#1) Show the date of the beginning of the current week
beginning_of-week

#2) Show what the date will be in 30 days
1.month.to_i.from_now

#3) Show what day of the week today's date will fall on next year
start_date = 1years_since(1)

#4) Show what day of the week the user's birthday will be on this year
def future
  self.birthday
end

#5) Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
gets.chomp.singularize.pluralize

#6) Using the String class, truncate a phrase the user enters to 20 letters
gets.chomp.truncate(20)

#7) Using the Array class, convert an array of three words to a sentence with one command
['one', 'two', 'three'].to_sentence
