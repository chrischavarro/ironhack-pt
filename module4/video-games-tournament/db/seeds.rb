# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

player1 = Player.create(name: "Bob")
player2 = Player.create(name: "Tim")
player3 = Player.create(name: "Sam")
player4 = Player.create(name: "Baltharok the Destroyer")

tournament1 = Tournament.create(name: "Fight To The Death")
tournament2 = Tournament.create(name: "Call of Duty X-treme 3000")
tournament3 = Tournament.create(name: "Let's Play Rainbow Unicorn")
tournament4 = Tournament.create(name: "Mom's Basement Simulator")