require 'net/http'
require 'json'
puts "What movie title do you want? "
user_input = gets.chomp
uri = URI('http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=gtygr6ewkmmygvcqngsj6cpt&q=')
response = Net::HTTP.get(uri)
puts response
parsed_data = JSON.parse(response)
