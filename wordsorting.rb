print "Enter your sentence:" #Presents this statement to the user
test = gets.chomp #Creates a variable named test, the value is the user input
array = test.gsub(/\W/, ' ') #Creates an array based on the 'test' variable, uses gsub to replace punctuation with a space

input = array.split(" ") #Creates a variable named input based on array, splits it at every space
input = input.sort {|a,b| a.upcase <=> b.upcase} #Sorts the input variable in alphabetical order, puts everything uppercase for the sake of ignoring capitalization when sorting

print input #Prints the sorted result of the user input without punctuation