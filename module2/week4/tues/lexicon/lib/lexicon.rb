class Lexiconomitron 

	def eat_t(input)
		input.gsub!(/t/, "")
	end

	def shazam(input)
		bob = [input.first.downcase, input.last]
		bob.each do | word |
			word.reverse!.gsub!(/t/, "")
		end
	end

	def oompa_loompa(input)
		input.select do | word |
			word.length <= 3
		end	
	end
end


# first and last
# reverse letters
# remove t
#, input.length-1