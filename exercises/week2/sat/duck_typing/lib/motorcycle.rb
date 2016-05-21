class Motorcycle
	attr_accessor :wheels

	def initialize(noise)
		@wheels = 2
		@noise = noise
	end

	def make_noise
		puts "#{@noise}"
	end
end