require 'net/http'
require 'json'

QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json'
API_KEY = 'gtygr6ewkmmygvcqngsj6cpt'
NUM_OF_MOVIES = 1
FORMAT = 'json'

puts "What movie would you like to search for?"
search_results = gets.chomp

s = QUERY_URL + "?apiKey=#{API_KEY}&q=#{search_results}"
puts s
raw_json = Net::HTTP.get(URI(s))
puts raw_json

search_results = JSON.parse(raw_json)
parsed_data = JSON.parse(raw_json)
parsed_data.each do
end

# http://api.rottentomatoes.com/api/public/v1.0/movies.json?apiKey=gtygr6ewkmmygvcqngsj6cpt&q=grease
