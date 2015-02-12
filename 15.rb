=begin
Copy and then modify assignment 12 to read the questions from a file instead of the hard coded array
Load them into an array so the rest of the program can remain the same
If your assignment 12 is coded correctly, you won't have to change the part that asks questions
Can be done with two lines of code
Remember to have the text file of questions in the same directory where your Ruby code is
=end

file = File.new("question.txt")
question = file.readlines
  ary = Array.new
question.each do |q|
  puts q
  answer = gets.chomp
  ary << answer
end
  ary.each do |answer|
  puts answer
end
