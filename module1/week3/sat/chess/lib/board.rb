class Board
	def initialize
		#Spots    8  
		@board = [
				  [], # Nil
				  [], # Row 1
				  [], # Row 2
				  [], # Row 3
				  [], # Row 4
				  [], # Row 5
				  [], # Row 6
				  [], # Row 7
				  []
				  ] # Row 8
	end

	def add_piece(y_position, x_position, piece)
		@board[y_position][x_position] = piece
	end

	def can_move?(start_y, start_x, end_y, end_x)
		if 	piece_able?(start_y, start_x, end_y, end_x) &&
			on_board?(start_y, start_x, end_y, end_x) &&
			legal_move?(start_y, start_x, end_y, end_x) &&
			!opposite_team?(start_y, start_x, end_y, end_x)

			"u did it way 2 go"
			

		elsif opposite_team?(start_y, start_x, end_y, end_x)
			"u cant kill ur friend dipshit"
		

		# 	"fuck that guy he dead now"
		else 
			# puts opposite_team?(start_y, start_x, end_y, end_x) 
			"u r josh the failure"
		end
	end


	def piece_able?(start_y, start_x, end_y, end_x)
		@board[start_y][start_x].can_move?(end_y,end_x)
	end

	def opposite_team?(start_y, start_x, end_y, end_x)
		if @board[end_y][end_x].nil?
			true
		else
			if @board[start_y][start_x].color == @board[end_y][end_x].color
				 false
			else
				 true
			end
		end
	end

	def on_board?(start_y, start_x, end_y, end_x)
		start_y <= 8 && start_x <= 8 
	end

	def legal_move?(start_y, start_x, end_y, end_x)
		end_y <= 8 && end_x <= 8 
	end

end