# Attributes
 # Shields
 # Blasters
 # Speed
 # Damage
 # Name

 # Backburner(We'll do this later)
 # Power Level 
 # Pilots

# Action
 # Fly
 # Warp Speed
 # Shoot
 # Attack another spaceship

class SpaceShip

	attr_accessor :shield, :name

	@@space_ship_counter = 0

	def initialize(name, shield, blasters, speed, damage)
		# Instance variables, related to one SpaceShip
		@name = name
		@shield = shield
		@blaster = blasters
		@speed = speed
		@damage = damage
		# Class Variable, related to all SpaceShips
		@@space_ship_counter += 1
	end

	def dead?
		if @shield <= 0
			true
		else
			false
		end
	end

	def fly
		puts "Flying at #{@speed} parsecs, nyoom nyoom"
	end

	def attack(another_spaceship)
		another_spaceship.shield -= @damage
		puts "#{@name} hit for #{@damage} shield"
		puts "#{another_spaceship.name} has #{another_spaceship.shield} shield left "
	end

	# Class Method, related to all instances of class
	def self.number_of_spaceships
		puts "The number of spaceships created is: #{@@space_ship_counter}"
	end

end