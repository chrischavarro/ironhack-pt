# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


project1 = Project.create(name: "Ironhack Teaching", description: "I teach at Ironhack")
project2 = Project.create(name: "Guitar Lessons", description: "Duh!")
project3 = Project.create(name: "Hello World", description: "Another project")

projects = [project1, project2, project3]

projects.each do |project| 
	(rand(5) + 1).times do |i|
		project.time_entries.create(hours: rand(24), minutes: rand(60))
	end
end