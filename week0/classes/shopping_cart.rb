class ShoppingCart
	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		total = 0
		@items.each do |item|
			if item == 5
			total += item.price
			else
			total += item.price * 0.90
			end
		end
		print "Your total today is $#{total}. Have a nice day!" # Don't use a print or puts function within a method in the case that you only want to return a result
	end
end

class Item
	attr_reader :price

	def initialize(name,price)
		@name = name
		@price = price
	end

end

class Houseware < Item
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

	end
end

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)
vacuum = Houseware.new("Vacuum Cleaner", 150)

joshs_cart.add_item(orange_juice)
joshs_cart.add_item(rice)
joshs_cart.add_item(vacuum)

joshs_cart.checkout

