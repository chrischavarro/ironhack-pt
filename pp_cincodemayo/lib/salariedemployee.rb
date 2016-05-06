require_relative ('employee')


class SalariedEmployee < Employee
	attr_reader :salary, :calculate_salary
	
	def initialize(name, email, annual_salary)
		super(name, email) 
		@annual_salary = annual_salary
	end

	def calculate_salary
		salary = @annual_salary/52
		salary
	end
end
