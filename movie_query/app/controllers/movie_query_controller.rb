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
    # @title = movies['title'][0]
    # @posters = posters['Poster'][0]
    # @runtime = runtime['Runtime'][0]
    # @ratings = ratings['Ratings'][0]
    # @synopsis = synopsis['Synopsis'][0]
    # @abridged_cast = abridged_cast['Cast Members'][0]

    
  end
end
