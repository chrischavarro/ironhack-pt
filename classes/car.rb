# What does a car do?
 # Honks
 # Stars
 # Plays Radio

# What defines my car? What are its attributes
 # Color
 # Make
 # Year
 # Engine
 # Price

class Car # Capital letters msut only be used for constants or classes
	
	attr_accessor :color

	def initialize(my_color, make_noise)
		@color = my_color
		@sound = make_noise
	end
	def honk # Instance method
		puts "My car goes #{@sound}"
	end

	def play_radio
		puts "Waka Flocka is going hard in the paint (on the radio)"
	end
end

class Racecar < Car
	def honk
		puts "My #{@color} car goes #{@sound.upcase}"
	end
end

volvo = Car.new("Red", "Beep beep yo") # Everything within a bracket is parameter
mazda = Car.new("Yellow", "Vrroom I'm a bitchin' Mazda")
honda = Car.new("Orange", "I'm your grandma's favorite car")
tesla = Car.new("Black", "Oh shit this guy's got money")
escalade = Car.new("Silver", "I'M A BIG TIME BALLER, SHOT CALLER")

ferrari = Racecar.new("Red", "i'm an accident waiting to happen")

puts ferrari.honk

# volvo.honk
# mazda.honk
# honda.honk
# tesla.honk
# escalade.honk
# tesla.play_radio
# puts tesla.color