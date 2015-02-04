=begin
Request input of a number from the user
Iterate the number of times indicated by the input user
Within the loop, print the number of the iteration
Do this for each of these methods of looping: while, for i in range, loop, until, .times with counter, until, range
All should print from 1 to the number input by the user
=end
print "Please enter a number: "
user_number = gets.chomp.to_i
puts "The number you entered is: #{user_number}"

counter = 1
while counter <= user_number
  puts counter
  counter += 1
end

#This counter has nothing to do with counter above
for counter in (1..user_number)
  puts counter
end

#incrementing counter before it is even compared
counter = 1
loop do
  puts counter
  counter += 1
  break if counter > user_number
end

counter = 1
until counter > user_number
  puts counter
  counter += 1
end

#Ruby code on this one always starts at zero
counter += 1
user_number.times do |counter|
  puts counter
end

(1..user_number).each do |counter|
  puts counter
end
