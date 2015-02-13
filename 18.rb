require 'net/http'
require 'json'
require 'pp'

QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json'
API_KEY = 'gtygr6ewkmmygvcqngsj6cpt'
FORMAT = 'json'

puts "What movie would you like to search for?"
search_results = gets.chomp

s = QUERY_URL + "?apiKey=#{API_KEY}&q=#{search_results}"
raw_json = Net::HTTP.get(URI(s))

search_results = JSON.parse(raw_json)
puts "\n"
search_results['movies'].each do |movie|
  puts movie["title"] + " - " + movie["synopsis"]
end
