class WordLowercase
	def initialize(sentence)
		@sentence = sentence
	end

	def lowercase_words
		words = @sentence.downcase
	end
end
