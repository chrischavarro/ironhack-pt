class WhitePawn < Piece

	def can_move?(ending_y, ending_x)
		difference_y = (@starting_y - ending_y)
		difference_x = (@starting_x - ending_x)

		if @starting_y == 2
			(difference_x == 0 && difference_y == -1)||
			(difference_x == 0 && difference_y == -2)
		else
			(difference_x == 0 && difference_y == -1)
		end
	end
end

class Blackpawn < Piece

	def can_move?(ending_y, ending_x)
		difference_y = (@starting_y - ending_y)
		difference_x = (@starting_x - ending_x)


		if @starting_y == 7
			(difference_x == 0 && difference_y == 1)||
			(difference_x == 0 && difference_y == 2)
		else
			(difference_x == 0 && difference_y == 1)
		end

	end
end