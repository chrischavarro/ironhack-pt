require_relative "../lib/MovieSearch"
require "spec_helper"


describe "MovieSearch" do
	before :each do
		@movie = MovieSearch.new
	end
	it "Gives an error if there are less than 2 results" do
		expect((@movie.search("Rise of the Corn Huskers")).length).to eq(0)
	end
end
