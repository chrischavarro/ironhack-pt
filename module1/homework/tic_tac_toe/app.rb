require_relative('lib/board')

my_board = Board.new

my_board.add_character("0", [1,0])
my_board.add_character("X", [1,1])
my_board.add_character("0", [1,2])
my_board.add_character("X", [0,0])
my_board.add_character("0", [0,2])
my_board.add_character("X", [2,2])
my_board.add_character("0", [2,2])
# my_board.add_character([0,1])

my_board.show_board

# my_board.add_character([2,0])

# my_board.add_character([2,1])

# my_board.add_character([2,2])

# my_board.check
my_board.winner


# Todo list

# Detect a win across rows, columns, or horizontal DONE 
# Detect a loss if board is filled or no win is in sight 
# Stop a player from placing over a spot already filled