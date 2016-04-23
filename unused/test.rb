# (1..100).each do |num|
# 	if num % 15 == 0
# 		puts "FizzBuzz"
# 	elsif num % 3 == 0
# 		puts "Fizz"
# 	elsif num % 5 == 0 
# 		puts "Buzz"
# 	elsif num.start_with?(1)
# 		puts Bang
# 	else
# 		puts num
# 	end
# end


(1..100).each do |num|
	result = ""
	if num % 3 == 0
		result << "Fizz"
	end

	if num % 5 == 0
		result << "Buzz"
	end

	if num % 3 != 0 || num % 5 != 0
		result << num
	end
	puts result
end


#def say_hello(name)
#	puts "Hello, #{name}!"
#end

#say_hello("Rafa")
#say_hello("Xavi")
#say_hello("Isra")

#def taste(food)
#	if food == "bacon"
#		puts "Yummy!! BACON!!"
#	elsif food =="spinach"
#		puts "Urgh..."
#	else 
#		puts "Can I have some bacon on the side?"
#	end
#end

#taste "spinach"
#taste "bacon"
#taste "corn"

#print "Enter your sentence here!"
#text_input = gets.chomp

#result = text_input.split(",")

#print result

#class Car
#	def honk
#		puts "Beeeeep!"
#	end
#end

#my_car = Car.new

#puts my_car.class
#puts "cosa".class
#puts 4.class
