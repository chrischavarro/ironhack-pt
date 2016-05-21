class Sedan
	attr_accessor :wheels

	def initialize(noise)
		@wheels = 4
		@noise = noise
	end

	def make_noise
		puts "#{@noise}"
	end
end