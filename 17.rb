question_user = ["What is your name?", "Where do you live?", "What is your favorite food?"]
question_user.each do |question|
  puts question
  answer = gets.chomp
end

require 'json'
file = File.read('question.json')
data_hash = JSON.parse(file)
