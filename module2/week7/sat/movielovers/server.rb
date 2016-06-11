require 'sinatra'
require "sinatra/reloader" if development?
require("imdb")
# require("lib/MovieSearch")


get "/" do
	erb :search
end

post "/search" do
	@search = params[:search]
	i = Imdb::Search.new("#{@search}")
	@bob = i.movies

	erb :display
end