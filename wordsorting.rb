print "Enter your sentence:"
test = gets.chomp
array = [test]

#user_input = gets.chomp

input = test.split(",")
input.sort {|a,b| a <=> b}

# input.each do |word|
# print word
# end
