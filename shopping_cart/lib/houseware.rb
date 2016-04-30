class HouseWare < Item
	def price
		if @price > 100
			@price * 0.95
		else
			@price
		end
	end
end
