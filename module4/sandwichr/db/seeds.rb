# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredient1 = Ingredient.create(name: "Mayo", calories: 100)
ingredient2 = Ingredient.create(name: "Mustard", calories: 5)

sandwich1 = Sandwich.create(name: "Yumtime", bread_type: "Pumpernickel")