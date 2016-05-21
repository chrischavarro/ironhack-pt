print "Enter your Blackboard student list"
student_list = gets.chomp

student_list2 = student_list.split("; ")

puts student_list2.sort
puts student_list2.count