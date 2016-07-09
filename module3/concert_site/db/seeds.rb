# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

concert1 = Concert.create(artist: "Kanye West", venue: "AA Arena", city: "Miami", date: DateTime.current - 2.days, price: 34, description: "This gonna be the shit")
concert2 = Concert.create(artist: "Travis Scott", venue: "Ford Auto Shop", city: "Detroit", date: DateTime.current + 5.days, price: 65, description: "It's lit")
concert3 = Concert.create(artist: "ScHoolboy Q", venue: "Madison Square Garden", city: "create York City", date: DateTime.current + 9.days, price: 98, description: "Yaw yaw yaw yaw")
concert4 = Concert.create(artist: "Kendrick Lamar", venue: "America's Got Talent", city: "Los Angeles", date: DateTime.current, price: 53, description: "Get your swimming pools of liquor ready")

