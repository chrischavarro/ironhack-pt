require_relative ('employee')

class HourlyEmployee < Employee
	attr_reader :salary, :calculate_salary
	def initialize(name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		#returns the hours worked * hourly_rate
		salary = @hourly_rate * @hours_worked
		salary
	end
end
