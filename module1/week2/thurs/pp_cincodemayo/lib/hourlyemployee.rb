require_relative ('hourlyable')
require_relative ('employee')


class HourlyEmployee < Employee
	include Hourlyable
	attr_reader :salary, :calculate_salary
	def initialize(name, email, hourly_rate, hours_worked)
		super(name, email)
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		pay_hourly
		#returns the hours worked * hourly_rate
	
	end
end
