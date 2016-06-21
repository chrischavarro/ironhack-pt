require_relative ('Salaryable')
require_relative ('employee')


class SalariedEmployee < Employee
	include Salaryable
	attr_reader :salary, :calculate_salary
	
	def initialize(name, email, annual_salary)
		super(name, email) 
		@annual_salary = annual_salary
	end

	def calculate_salary
		pay_salary
	end
end
