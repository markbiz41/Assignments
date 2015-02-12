require 'json'
file = File.read('questions.json')
data_hash = JSON.parse(file)
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
