require_relative('lib/home')
require_relative('lib/home_sorter')
	
joshs_home = Home.new("Josh's Home", "Miami", 1, 45)
farazs_home = Home.new("Faraz's Home", "Miami", 2, 37)
bobs_home = Home.new("Bob's Home", "Cancun", 4, 35)
petes_home = Home.new("Pete's Home", "Detroit", 4, 56)
nizars_home = Home.new("Nizar's Home", "Puerto Rico", 3, 40)

list_of_homes = [
				joshs_home, 
				farazs_home, 
				bobs_home,
				petes_home, 
				nizars_home 
				]
home_sorter = HomeSorter.new(list_of_homes)
home_sorter.home_printer