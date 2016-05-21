(1..100).each do |num| #For every number from 1-100, executes the following commands, the numbers are assigned to variable num
result = "" #result is basically a placeholder text, value is determined by tests being run in program
	if num % 3 == 0 
		result += "Fizz"
	end
	if num % 5 == 0
		result += "Buzz"
	end
	if num % 3 != 0 && num % 5 != 0 #If the number isn't a Fizz or Buzz, the integer from 1-100 is converted to a string for printing
		result += num.to_s
	end
puts result
end
