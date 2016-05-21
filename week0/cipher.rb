def solve_cipher(input, n) 
	code = input.split("") #Split automatically turns a string or field into an array
	container = ""
	code.each do |letter| 
		if letter == " "
			container += " "
		else 
			container += (letter.ord + n).chr
		end
	end
	container 
end

puts solve_cipher("if mmp", -2)
puts solve_cipher("ifmmp", 3)


#if/then a space is detected, don't add/subtract anything to the value

#try if 3

		# if n != 3
		# 	container += translate + " "
		# else