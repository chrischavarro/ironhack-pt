require_relative('lib/hoverboard')
require_relative('lib/motorcycle')
require_relative('lib/sedan')
require_relative('lib/truck')
require_relative('lib/unicycle')
require_relative('lib/wheelcounter')


ninja = Motorcycle.new("Brr") #2
mazda = Sedan.new("Whoosh") #4
hoverboard = Hoverboard.new("Hmmmm") #0
my_cycle = Unicycle.new("God I'm lonely") #1
truck = Truck.new("DURKADURKA") #18

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)
puts wheel_counter.count_wheels 

truck.make_noise
my_cycle.make_noise