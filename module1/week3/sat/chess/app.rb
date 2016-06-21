require_relative('lib/piece')
require_relative('lib/rook')
require_relative('lib/bishop')
require_relative('lib/queen')
require_relative('lib/king')
require_relative('lib/knight')
require_relative('lib/pawn')
require_relative('lib/board')

# # Rook Tests
# puts "Rook Tests"
# white_rook = Rook.new(1, 1)
# puts white_rook.can_move?(1,5) # True
# puts white_rook.can_move?(5,1) # True
# puts white_rook.can_move?(5,3) # Fale

# # Bishop Tests
# puts "Bishop Tests"
# black_bishop = Bishop.new(4,4)
# puts black_bishop.can_move?(8,8) # True
# puts black_bishop.can_move?(4,5) # False
# puts black_bishop.can_move?(4,4) # False

# # Queen Tests
# white_queen = Queen.new(4,4)
# puts "Queen Tests"
# puts white_queen.can_move?(8,8) # True
# puts white_queen.can_move?(4,5) # True
# puts white_queen.can_move?(2,4) # True
# puts white_queen.can_move?(4,4) # True

# # King Tests
# black_king = King.new(4,4)
# puts "King Tests"
# puts black_king.can_move?(3,3) # True
# puts black_king.can_move?(4,3) # True
# puts black_king.can_move?(2,4) # False
# puts black_king.can_move?(8,8) # False

# # Knight Tests
# white_knight = Knight.new(4,4)
# puts "Knight Tests"
# puts white_knight.can_move?(5,6) # True
# puts white_knight.can_move?(3,2) # True
# puts white_knight.can_move?(7,5) # False
# puts white_knight.can_move?(3,1) # False

# # Pawn Tests
# white_pawn = WhitePawn.new(4,4)
# puts "Pawn Tests"
# puts white_pawn.can_move?(4,5) # True
# puts white_pawn.can_move?(4,3) # False


chess_board = Board.new

black_rook1 = Rook.new(1,1, "black")
black_rook2 = Rook.new(1,8, "blue")
white_rook1 = Rook.new(8,1, "white")
white_rook2 = Rook.new(8,8, "green")
black_knight1 = Knight.new(2,1, "black")
black_knight2 = Knight.new(2,7, "black")

chess_board.add_piece(1,1,black_rook1)
chess_board.add_piece(1,8,black_rook2)
chess_board.add_piece(8,1,white_rook1)
chess_board.add_piece(8,8,white_rook2)
chess_board.add_piece(2,1,black_knight1)
chess_board.add_piece(7,1,black_knight2)

# p chess_board

puts chess_board.can_move?(1,1,8,1) # BLACK_ROOK Existing enemy piece
puts chess_board.can_move?(8,1,8,8) # ROOK False Existing friend piece
puts chess_board.can_move?(1,1,1,2) # BLACK_ROOK True 
# puts chess_board.can_move?(2,1,3,3) # KNIGHT True 
# puts chess_board.can_move?(2,1,1,3) # KNIGHT True 
# puts chess_board.can_move?(2,1,2,4) # KNIGHT False