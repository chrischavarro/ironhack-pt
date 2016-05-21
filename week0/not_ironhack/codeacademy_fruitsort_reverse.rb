fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |fruit1, fruit2| # Calls for a sort of the fruits array and defines two placeholder values 
	fruit2 <=> fruit1 # Sorts the array with fruit2 preceeding fruit1
end