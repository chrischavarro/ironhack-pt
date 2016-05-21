class ShoppingCart
	def initialize
		@items = []
	end

	def add_to_cart(item)
		@items.push(item)
	end

	def checkout
		total = 0

		@items.each do |single_item|
			total += single_item.price
		end
		total
	end
end

class Items
	def initialize(name,price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end

class HouseWare < Item
	def price
		if @price > 100
			@price * 0.95
		else
			@price
		end
	end
end

class Fruit < Item
	def price
		today = Time.now

		if today.saturday? || today.sunday?
			@price * 0.90 # If you want to get rid of .0, put this in parenthesis and insert .round
		else
			@price
	end
end

banana = Fruit.new("Banana", 10)
vacuum = HouseWare.new("Vacuum Cleaner", 150)


orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

my_cart = ShoppingCart.new
my_cart.add_to_cart(banana)
my_cart.add_to_cart(banana)
my_cart.add_to_cart(vacuum)
my_cart.add_to_cart(rice)

puts "Your total today is $#{my_cart.checkout}"
