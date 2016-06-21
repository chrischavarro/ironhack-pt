require("imdb")

class MovieSearch

	def search(term)
		i = Imdb::Search.new("#{term}")
		ed = []

		i.movies[0..20].each do | fuck | 
			if fuck.poster
				ed.push(fuck)
			end
		end
		ed[1..9] || []
	end
end

