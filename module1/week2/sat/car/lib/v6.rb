class V6 < Engine
	
	def initialize(engine_noise)
	@engine_noise = engine_noise
	end

	def move_pistons
		"#{@engine_noise}"
	end

end