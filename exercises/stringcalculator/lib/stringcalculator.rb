class StringCalculator
	def add(numbers)
			numbers.split(",").reduce(0) { |sum, n| sum + n.to_i}
	end
end


# class StringCalculator

# 	def add(numbers)
# 		attr_accessor :bob
# 		if numbers.empty?
# 			"Fuck you. Also 0"
# 		else
# 			bob = numbers.split(",")
# 				if bob.length > 2
# 					"nah brah"
# 				else
# 					bob.reduce(0) do |start, sum|
# 						 start + sum.to_i
# 				end
# 			end
# 		end
# 	end
# end


# # Better alternative
