require 'sinatra'
require "sinatra/reloader" if development?
require("imdb")
require_relative("lib/MovieSearch.rb")
enable(:sessions)

get "/" do
	erb :search
end

post "/search" do
	
	@search = params[:search]
	
	wilfred = MovieSearch.new
	@bob = wilfred.search(@search)
	@jim = @bob.sample

	if @bob.length < 2
		erb :none
	else
		erb :display
	end
end

# post "/answer" do
# 	@year = params[:year]
# 	answer = session[:saved_value]
	# session[:saved_value] = jim.year

# 	if @year == answer


# end