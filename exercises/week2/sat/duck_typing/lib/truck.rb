class Truck
	attr_accessor :wheels

	def initialize(noise)
		@wheels = 18
		@noise = noise
	end

	def make_noise
		puts "#{@noise}"
	end
end