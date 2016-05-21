puts "Entery your sentence:"
text = gets.chomp

words = text.split
frequencies = Hash.new(0) #Creates a new hash named frequencies for the sake of counting instances
words.each do |word| #Makes it so that every word entered adds to the frequency by 1
	frequencies[word] += 1
end

frequencies = frequencies.sort_by do |words, frequencies| #Makes it so that frequencies is equal to the sorted result of the combination of a word and its frequency
	frequencies #States which variable will be sorted
end

frequencies.reverse!
frequencies.each do |words, frequencies|
	puts words + " " + frequencies.to_s
end