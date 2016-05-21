class ShakeShop
	def initialize
		@shakes = []
	end

	def add_shake(milkshake)
		@shakes.push(milkshake)
	end

	def checkout
		total = 0
		@shakes.each do |single_shake|
			total += single_shake.total_price
		end
		puts "Your price for today was $#{total}, have a nice day!"
	end
end

class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(my_ingredient)
		@ingredients.push(my_ingredient)
	end

	def total_price
		sum = @base_price

		@ingredients.each do |single_ingredient|
			sum += single_ingredient.price
		end
		sum
	end

	def ingredient_list
		print "The ingredients in my milkshake are "
		 @ingredients.each do |filler| 
		 	print filler.name + ", "
		 end
	end

end

class Ingredient
	attr_accessor :name, :price 

	def initialize(name,price)
		@name = name
		@price = price
	end

end

banana = Ingredient.new("Banana", 2)
nuts = Ingredient.new("Nuts", 5)
berries = Ingredient.new("Berries", 3)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
lean = Ingredient.new("Lean", 15)

my_shake = MilkShake.new
my_shake.add_ingredient(banana)
my_shake.add_ingredient(lean)

your_shake = MilkShake.new
my_shake.add_ingredient(nuts)
my_shake.add_ingredient(berries)

puts my_shake.total_price
my_shake.ingredient_list

my_shack = ShakeShop.new
my_shack.add_shake(my_shake)
my_shack.add_shake(your_shake)
my_shack.checkout