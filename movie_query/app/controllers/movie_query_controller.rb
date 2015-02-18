class MovieQueryController < ApplicationController
  QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json'
  API_KEY = 'gtygr6ewkmmygvcqngsj6cpt'
  FORMAT = 'json'
  def search

    query = params[:q]

    s = QUERY_URL + "?apiKey=#{API_KEY}&q=#{query}"
    raw_json = Net::HTTP.get(URI(s))
    movies = JSON.parse(raw_json)

    @movie = movies['movies'][0]
  end
end
