class Knight < Piece

	def can_move?(ending_y, ending_x)
		difference_y = (@starting_y - ending_y).abs
		difference_x = (@starting_x - ending_x).abs

		(difference_x == 1 && difference_y == 2) ||
		(difference_x == 2 && difference_y == 1)
	end
end