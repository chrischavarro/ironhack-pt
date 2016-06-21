module Diagonal
	def diagonal_move?(ending_y, ending_x)
		difference_y = @starting_y - ending_y
		difference_x = @starting_x - ending_x

		(difference_x.abs == difference_y.abs && difference_x != 0)
	end
end
