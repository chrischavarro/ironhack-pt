class Car 
	def initialize(sound, engine)
		@sound = sound
		@engine = engine
	end

	def start
		puts "The car goes #{@sound} and also #{@engine.move_pistons}"
	end
end