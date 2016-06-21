class Hoverboard
	attr_accessor :wheels

	def initialize(noise)
		@wheels = 0
		@noise = noise
	end

	def make_noise
		puts "#{@noise}"
	end
end