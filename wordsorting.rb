print "Enter your sentence:"
test = gets.chomp
array = test.gsub(/\W/, ' ')

input = array.split(" ")
input = input.sort {|a,b| a.upcase <=> b.upcase}

print input