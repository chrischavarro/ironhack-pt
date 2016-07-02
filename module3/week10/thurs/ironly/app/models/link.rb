class Link < ActiveRecord::Base
	ALPHABET = [('a'..'z').to_a,('A'..'Z').to_a].flatten

	def self.generate_shortlink(link_length)
		# shortlink = ""
		# link_length.times do 
		# 	shortlink += ALPHABET[rand(ALPHABET.length)]
		# end
		# shortlink
		ALPHABET.sample(link_length).join
	end


end
