require_relative('lib/car')
require_relative('lib/engine')
# require_relative('lib/V6')


v8 = Engine.new("DURRR", 400)
v6 = Engine.new("durrr", 200)
electric_engine = Engine.new("woosh", 350)

my_car = Car.new("Burr", electric_engine)
my_car.start

other_car = Car.new("Burr", v8)
other_car.start
