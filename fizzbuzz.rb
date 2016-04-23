(1..100).each do |num|
result = ""
	if num % 3 == 0
		result += "fizz"
	end
	if num % 5 == 0
		result += "buzz"
	end
	if num % 3 != 0 && num % 5 != 0
		result += num.to_s
	end
puts result
end
