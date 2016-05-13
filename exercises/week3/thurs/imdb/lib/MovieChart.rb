class MovieChart

	def initialize(chart)
		@chart = chart
	end

	def print_chart
		
		10.downto(1) do |n| 
			mart = " "
			@chart.each do | movie |
				if movie.rating >= n
					mart += "|#"
					
				else
					mart += "| "
				end
		
			    if movie.title == @chart.last.title
			    	mart += "|"
			    end  
			end
			puts mart
		end
		print " "
	end
	
	def print_numbers	
		
		(0..(@chart.length-1)).each do | number |
			print "|#{number + 1}"
			
		end 
		puts "|\n"
	end
	
	def print_list
		@chart.each_with_index do | movie, index |
			puts "#{index + 1}: #{movie.title}"	
		end
	end
end
# movies.each do | movie|
# 	puts "#{movie.title}: #{movie.rating}"
# end