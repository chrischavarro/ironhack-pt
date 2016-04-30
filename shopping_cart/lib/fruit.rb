class Fruit < Item
	def price
		today = Time.now

		if today.saturday? || today.sunday?
			@price * 0.90 # If you want to get rid of .0, put this in parenthesis and insert .round
		else
			@price
	end
end
end