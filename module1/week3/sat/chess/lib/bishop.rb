require_relative('diagonal')

class Bishop < Piece
	include Diagonal

	def can_move?(ending_y, ending_x)

		diagonal_move?(ending_y, ending_x)

	end

end