class WordCounter
	def initialize(sentence)
		@sentence = sentence
	end

	def count_words
		words = @sentence.split
		words.length
	end

	def count_letters
		@sentence.length
	end

	def reverse_sentence
		@sentence.reverse
	end

	def uppercase_sentence
		@sentence.upcase
	end
end