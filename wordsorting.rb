print "Enter your sentence:"
test = gets.chomp
array = test.gsub(/\W/, ' ')

input = array.split(" ")

puts input

input = input.sort {|a,b| a <=> b}

puts input
