class Engine
	def initialize(engine_noise,horsepower)
		@engine_noise = engine_noise
		@horsepower = horsepower
	end

	def move_pistons
		@engine_noise
	end
end