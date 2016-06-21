require("imdb")
require_relative("lib/Moviechart")

trek_search = Imdb::Search.new("Star Trek")
diehard_search = Imdb::Search.new("Die Hard")
themask_search = Imdb::Search.new("The Mask")
godfather_search = Imdb::Search.new("The Godfather")
homealone_search = Imdb::Search.new("Home Alone")
startrek_search = Imdb::Search.new("Star Trek")
titanic_search = Imdb::Search.new("Titanic")

movies = []
movies.push(trek_search.movies[0])
movies.push(diehard_search.movies[0])
movies.push(themask_search.movies[0])
movies.push(godfather_search.movies[0])
movies.push(homealone_search.movies[0])
movies.push(startrek_search.movies[0])
movies.push(titanic_search.movies[0])


my_chart = MovieChart.new(movies)
my_chart.print_chart
my_chart.print_numbers
my_chart.print_list


