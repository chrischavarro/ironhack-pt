class Unicycle
	attr_accessor :wheels
	
	def initialize(noise)
		@wheels = 1
		@noise = noise
	end

	def make_noise
		puts "#{@noise}"
	end
end