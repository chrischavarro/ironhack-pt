require_relative('horizontal')

class Rook < Piece
	include Horizontal

	def can_move?(ending_y, ending_x)

		horizontal_move?(ending_y, ending_x)

	end
end