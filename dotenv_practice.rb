# dotenv_practice.rb
require 'dotenv'
require 'httparty'

# Tell dotenv to look for the .env file
Dotenv.load

url = "https://api.themoviedb.org/3/search/movie"

params = {
	query: "기생충",
	api_key: ENV['MOVIE_DB_KEY']
}

response = HTTParty.get(url, query: params)

title = response["results"][0]["title"]
overview = response["results"][0]["overview"]

p response 
p title
p overview

# puts ENV['LUNCH']
# # => from .env