=begin
Create an array of questions (Strings)
Iterate over the array using each, asking each question to the user
Bonus: Save all the answers with the questions, and print a summary at the end

What I'm looking for here is one array with multiple questions. Then as the 2nd bullet indicates, you would use the each command to iterate over them and ask them all. C
=end
question_user = ["What is your name?", "Where do you live?", "What is your favorite food?"]
question_user.each
  puts question_user
user_input1 = gets.chomp
user_input2 = gets.chomp
user_input3 = gets.chomp
print "Your name is #{user_input1}.  You live at #{user_input2}.  Your favorite food is #{user_input3}"
