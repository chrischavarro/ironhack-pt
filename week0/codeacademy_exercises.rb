# puts "Entery your sentence:"
# text = gets.chomp

# words = text.split
# frequencies = Hash.new(0) #Creates a new hash named frequencies for the sake of counting instances
# words.each do |word| #Makes it so that every word entered adds to the frequency by 1
# 	frequencies[word] += 1
# end

# frequencies = frequencies.sort_by do |words, frequencies| #Makes it so that frequencies is equal to the sorted result of the combination of a word and its frequency
# 	frequencies #States which variable will be sorted
# end

# frequencies.reverse!
# frequencies.each do |words, frequencies|
# 	puts words + " " + frequencies.to_s
# end

# def alphabetize(arr, rev=false) #Defines the value arr and the value rev as false
# 	arr.sort! #Modifies the array so that it is sorted
# 	if rev #If ref is set to true, in other words, placed in the code, the order will be reversed
# 		arr.reverse!
# 	else
# 		arr #Otherwise, it will sort arr regularly
# 	end
# end

# numbers = [4, 6, 112, 5] #Defines the array numbers

# puts alphabetize(numbers) #Prints the ordered result with no reverse set in place

# matz = { "First name" => "Yukihiro", # Defines a hash with the following keys and values
#   "Last name" => "Matsumoto",
#   "Age" => 47,
#   "Nationality" => "Japanese",
#   "Nickname" => "Matz"
# }

# matz.each do |key, value| # Iterates over the each element in the matz array, assigning the two fields to 'key' and 'value'
#     puts value, matz[value] # Prints the value of the array only
# end

# strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# # Add your code below!

# symbols = []

# strings.each do |merp|
#     s=merp.to_sym # Defines s as the converted value of merp to a symbol
#     symbols.push(s)
# end

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select{|name,rating| rating >3} #Sets variable good_movies to the selected keys in movie_ratings with ratings greater than 3