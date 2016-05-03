class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end 

def sorter(array)
	array.each do |hm|
		puts "#{hm.name} in #{hm.city}"
		puts "Price: $#{hm.price} a night"
		puts
	end
end

# Might be used at some point
# def sort_request
# 	puts "Would you like to sort by highest price first?"
# 	input = (gets.chomp).capitalize

# 	if input == "Yes"
# 		#have it sort by highest
# 	end

# 	# if input == "No"
# 	# 	puts "Alright, cool. Later!"
# 	# end

# 	if input != "Yes" && if input != "No"
# 		puts "Didn't catch that, homie"
# 	end
# end
# end

homes = [
	Home.new("Nizar's place", "San Juan", 2, 42), 
	Home.new("Fernando's place", "Seville", 5, 47), 
	Home.new("Josh's place", "Pittsburgh", 3, 41), 
	Home.new("Gonzalo's place", "Malaga", 2, 45), 
	Home.new("Ariel's place", "San Juan", 4, 49),
	Home.new("Melanie's place", "Miami", 7, 52),
	Home.new("Yamani's place", "Miami", 4, 60),
	Home.new("Faraz's place", "Mumbai", 3, 37),
	Home.new("Dieter's place", "Seville", 4, 46),
	Home.new("Ryan's place", "San Juan", 6, 47),
	] 


# Default sort, by lowest prices first
low_cost = homes.sort_by do |cost|
	cost.price
	end

# Sort by highest prices first
high_cost = low_cost.reverse

# Sort by lowest capacity first
low_cap = homes.sort_by do |capacity|
	capacity.capacity
	end

# Sort by highest capacity first
high_cap = low_cap.reverse

# First output the user receives
sorter(low_cost)

# User is asked if they want to filter by highest first
puts "Hey, big baller. Wanna see the priciest gigs first?"
	cost_input = (gets.chomp).capitalize

	if cost_input == "Yes"
		sorter(high_cost)
	end

# Now inquires if they want to sort by capacity
puts "Do you want to sort by highest or lowest capacity first?"
	capacity_input = (gets.chomp).capitalize

	if capacity_input == "Lowest"
		sorter(low_cap)
	end

	if capacity_input == "Highest"
		sorter(high_cap)
# Selects the prices of rooms in the specified cities	
		prices = high_cap.map do |price|
			price.price
		end

# Creates and prints the average price per city
		city_average = prices.reduce do |sum, price|
			sum + price
		end
		puts "The average price of rooms in this city is $#{city_average/high_cap.length}"

	end

# Asks user for cities they're looking for rooms in
puts "What cities do you want to see rooms for?"
	city_input = gets.chomp

	city_sort = homes.select do |destination|
		destination.city.downcase == city_input.downcase
	end
# Prints out the sorted result
	sorter(city_sort)

# Selects the prices of rooms in the specified cities	
prices = city_sort.map do |price|
	price.price
end

# Creates and prints the average price per city
	city_average = prices.reduce do |sum, price|
		sum + price
	end
puts "The average price of rooms in this city is $#{city_average/city_sort.length}"

# Retrieves rooms based on provided budget
puts "Name your price and we'll find you a box to sleep in"
named_price = (gets.chomp).to_i 

priced_rooms = homes.select do |budget|
	budget.price == named_price
end
	sorter(priced_rooms)






# TO BE USED FOR ITERATION 4
# total = prices.reduce do |sum, price| # Reducing always requires two variables, the current contents and what you want to reduce to
# 	sum + price
# end

# puts total/homes.length # .length measures the number of items in that array




# Not used, for learning purposes
# total = 0 Using each method to calculate, less efficient than reduce
# homes.each do |adding|
# 	total = total + adding.price
# end


# Prints the name of the cities the homes are in
# cities = homes.map do |hm|
# 	hm.city
# end
# puts cities
 
