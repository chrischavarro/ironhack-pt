require_relative('lib/stringcalculator')

calc = StringCalculator.new

# Test for 0 result
if calc.add("") == 0
	puts "din't gimme shit"
else
	puts "it ain't crackalackin. we're lackin' in crackin and numbers'"
end

# Tests for single integer result
if calc.add("1") == 1
	puts "We numba 1"
else
	puts "Single numba test no good"
end

# Tests for sum result
if calc.add("5,5") == 10
	puts "SUMMIN GOOD'S GOIN' ON"
else
	puts "Sumthin went wrong with the summin'"
end