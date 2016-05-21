require_relative('lib/space_ship')
require_relative('lib/space_ship_battle')
# Add require for spaceship battle when I use it 
# Before creating any spaceships
# SpaceShip.number_of_spaceships 

millennium_falcon = SpaceShip.new("Millennium Falcon", 100, "Mega Blaster Ray", 9001, 7)
falcon_nine = SpaceShip.new("Falcon Nine", 100, "Elon Musk Blaster Cannon", 11000, 9)

# After we've created a couple of spaceships
# SpaceShip.number_of_spaceships 

# => "Flying at #{speed}"
# falcon_nine.attack(millennium_falcon)
# millennium_falcon.attack(falcon_nine)

my_battle = SpaceShipBattle.new(falcon_nine, millennium_falcon)
my_battle.battle

# AY YO THESE THE NOTES FOR TIC TAC TOE BRUH

# Classes 
# Game
 # Taking turns
 # Having a winner
# Board 
 # 9 spaces(array)
 # Method to place character