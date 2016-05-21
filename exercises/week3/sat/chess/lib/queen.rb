require_relative('diagonal')
require_relative('horizontal')

class Queen < Piece
	include Diagonal
	include Horizontal

	def can_move?(ending_y, ending_x)
		difference_x = @starting_x - ending_x
		difference_y = @starting_y - ending_y

		diagonal_move?(ending_x, ending_y) ||
		horizontal_move?(ending_x,ending_y)
	end
end
