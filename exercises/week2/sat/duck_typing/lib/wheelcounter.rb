class WheelCounter
	def initialize(vehicles)
		@vehicles = vehicles
	end

	def count_wheels
		 @vehicles.reduce(0) do | count, vehicle |
			count + vehicle.wheels
		end
	end
end