class Board
	def initialize
		#Spots    0,0 0,1 0,2   1,0 1,1 1,2   2,0 2,1 2,2
		@board = [["", "", ""], ["", "", ""], ["", "", ""]]
	end

	def show_board
		board_container = ""
		@board.each do | row |
			row.each do |cell|
				if cell.empty?
					board_container += " __ "
				else
					board_container += "_#{cell}_"
				end
			end
			board_container += "\n"
		end
		puts board_container
	end

	def add_character(character, location)
		@character = character
		x = location [1]
		y = location [0]
		if (@board[y][x]).empty?
			@board[y][x] = "#{@character}"
		else
			puts "No taking over the other player's spaces, fucker"
		end
	end	

	def check
		if @board[2][0].empty?
			puts "I am empty and dead inside"
		else
			puts "I am filled to capacity"
		end
	end

	def winner
		 if (@board[0][0] == @board[0][1] && @board[0][0] == @board[0][2]) || 
		 	(@board[1][0] == @board[1][1] && @board[1][0] == @board[1][2]) || 
		 	(@board[2][0] == @board[2][1] && @board[2][0] == @board[2][2]) ||
		 	(@board[0][0] == @board[1][0] && @board[0][0] == @board[2][0]) ||
		 	(@board[0][1] == @board[1][1] && @board[0][1] == @board[2][1]) ||
		 	(@board[0][2] == @board[1][2] && @board[0][2] == @board[2][2]) ||
		 	(@board[0][0] == @board[1][1] && @board[0][0] == @board[2][2]) ||
		 	(@board[2][0] == @board[1][1] && @board[2][0] == @board[0][2]) 
				puts "You are winnar"
		else
			puts "No winnar :("
	end
end
