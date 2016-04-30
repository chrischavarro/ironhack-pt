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
