=begin
Create a guessing game
The user must guess the number chosen by the app
Provide feedback to the user as to if their guess is lower or higher than the number
Count the number of guesses and output at the end
=end
computer_num = rand(1..10)
user_input = 0
loop_counter = 0

until user_input == computer_num do
  print "Guess the number between 1 through 10: "
  user_input = gets.chomp.to_i

if user_input == computer_num
  puts "You guessed correctly"
elsif user_input < computer_num
  puts "You guessed a low number"
elsif user_input > computer_num
  puts "You guessed a high number"
end

loop_counter += 1
puts "The number of times you guessed is: #{loop_counter}"
end
