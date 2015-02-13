require 'json'
file = File.read('questions.json')
data_hash = JSON.parse(file)
  ary = Array.new
data_hash['questions'].each do |q|
  puts q
  answer = gets.chomp
  ary << answer
end
  ary.each do |answer|
  puts answer
end


=begin

puts "What movie would you like to search for?"
search_results = gets.chomp

s = QUERY_URL + "?apiKey=#{API_KEY}&q=#{search_results}"
raw_json = Net::HTTP.get(URI(s))

search_results = JSON.parse(raw_json)
puts "\n"
search_results['movies'].each do |movie|
  puts movie["title"] + " - " + movie["synopsis"]
end

=end
