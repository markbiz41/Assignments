=begin
Request input of a number from the user
Iterate the number of times indicated by the input user
Within the loop, print the number of the iteration
Do this for each of these methods of looping: while, for i in range, loop, until, .times with counter, until, range
All should print from 1 to the number input by the user
=end
print "Please enter a number: "
user_number = gets.chomp
num_com = user_number.to_i
counter = num_com * 2
puts "The number of the iteration is #{counter}"
while counter < 8
  puts "Your number is #{counter} and it is less than 8"
  break if counter < 8
end
for counter in (1..8)
  puts "I like this range of numbers!"
end
loop do
  counter += 1
  puts counter
  break if counter == 10
end
until counter == 1
  counter -= 1
  print "The new count is #{counter}"
end
for counter in (1...8)
  puts "This number does get printed"
end
8.times do
  puts "Today is Wednesday"
end
