require 'json'
file = File.read('questions.json')
data_hash = JSON.parse(file)

file = File.new("question.txt")
question = file.readlines
question.each
  puts question
