require_relative('lib/stringcalculator')

billybob = StringCalculator.new

puts billybob.add("1,2,3")
puts billybob.add("1")
puts billybob.add("1,2")
puts billybob.add("")