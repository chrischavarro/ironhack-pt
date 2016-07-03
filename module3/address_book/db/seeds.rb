# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contact_list = [
["Name1", "Address1", "Phone1", "Email1"],
["Name2", "Address2", "Phone2", "Email2"],
["Name3", "Address3", "Phone3", "Email3"],
["Name4", "Address4", "Phone4", "Email4"],
["Name5", "Address5", "Phone5", "Email5"]
]

contact_list.each do | name, address, phone, email |
	Contact.create( name: name, address: address, phone: phone, email: email)
end