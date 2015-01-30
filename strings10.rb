=begin
Take a string from the user, reverse it, remove the last character and reverse it again (no shortcuts)
Be sure if the user enters whitespace on either side of the input, that you remove it first
For the original text input by the user, count how many words (as separated by spaces) and print this count.
=end
print "Enter one word: "
user_input = gets.chomp.strip
count = user_input.split.count
print user_input.reverse.chop.reverse
print count
