=begin
Create an array of questions (Strings)
Iterate over the array using each, asking each question to the user
Bonus: Save all the answers with the questions, and print a summary at the end
=end
question1_user = ["What is your name?"]
question1_user.each do |x|
  puts x
question1_user = gets.chomp

question2_user = ["Where do you live?"]
question2_user.each do |y|
  puts y
question2_user = gets.chomp

question3_user = ["What is your favorite food?"]
question3_user.each do |z|
  puts z
question3_user = gets.chomp

print "Your name is #{question1_user}.  You live at #{question2_user}.  Your favorite food is #{question3_user}"
end
end
end
