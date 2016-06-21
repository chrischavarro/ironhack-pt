class CounterPicker
	def initialize(operation, word_counter)
		@operation = operation
		@word_counter = word_counter
	end

	def perform_operation
		if @operation == "1"
			puts "The number of words in your sentence was #{@word_counter.count_words}"
		elsif @operation == "2"
			puts "The number of letters in the sentence is #{@word_counter.count_letters}"		
		elsif @operation == "3"
			puts "The sentence reversed is #{@word_counter.reverse_sentence}"
		elsif @operation == "4"
			puts "The sentence uppercased is #{@word_counter.uppercase_sentence}"
		elsif @operation == "5"
		end
	end
end
