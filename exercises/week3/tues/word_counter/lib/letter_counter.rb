class LetterCounter
	def initialize(sentence)
		@sentence = sentence
	end

	def count_letters
		words = @sentence
		words.length
	end
end