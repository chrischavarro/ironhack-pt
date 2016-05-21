require_relative("lib/authenticator.rb")
require_relative("lib/word_counter")
require_relative('lib/counter_picker')


auth = Authenticator.new("Josh", "swordfish")

puts "Ey yo hand over that username dawg"
name_input = gets.chomp

puts "Now how 'bout that password fam"
password_input = gets.chomp

if auth.authenticate?(name_input, password_input)
	puts "What's poppin, #{name_input}"
	puts "nothing in life really matters. come join my sorrows with your text"
	crazy_shit = gets.chomp
	my_counter = WordCounter.new(crazy_shit)


 	puts "Whatchu wanna do, Broseph Gordon Levitt?
 	1. Count words
 	2. Count letters
 	3. Reverse text
 	4. Convert text to uppercase
 	5. Convert text to lowercase"
 	option_chosen = gets.chomp

 	counter_picker = CounterPicker.new(option_chosen, my_counter)
 	counter_picker.perform_operation
else
	puts "Suck eggs"
end