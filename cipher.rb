def solve_cipher(input, num)
	array = input
	code = array.split("")
	code.each do |translate|
		char_to_num = translate.ord
		char_to_num -= 1
		num_to_char = char_to_num.chr
		print num_to_char
	end
end

solve_cipher("ifmmp", -3)