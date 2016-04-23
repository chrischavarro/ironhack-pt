def solve_cipher(input)
	array = input	#.split("")
	code = array.split("")
	code.each do |translate|
		result = translate.ord
		result -= 1
		puts result
	end
#	puts translate
	print code
#print code
end

solve_cipher("ifmmp")