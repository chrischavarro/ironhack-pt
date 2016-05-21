puts "Hello, world!"
puts "I"
puts "Like"
puts "Pie"

#this is a great comment 

#operation_result = 12 * 34
#puts "Operation result is"
#puts operation_result
#puts "Your age is #{operation_result}, damn you're old."


'awesome'.include? 'you'
'awesome'.include? 'me'
phrase = 'just kidding, you\'re awesome too'
phrase.include? 'aw'

age = 28
age.odd?
age.even?

animals = ['Lions', 'Tigers', 'Bears']
puts animals

my_array = []

my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array

my_array.delete_at 2

puts my_array

'what is this'.class
3.class
[1,2,3].class


=begin(1..100).each do |num|
	if num % 15 == 0
		puts "FizzBuzz"
	elsif num % 3 == 0
		puts "Fizz"
	elsif num % 5 == 0 && num != 100 && num != 10
		puts "Buzz"
	elsif num == 1 
		puts "Bang"
	elsif num == 10 || num == 100
		puts "BuzzBang"
	else
		puts num
	end
end 
=end