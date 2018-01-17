# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
onix = Pokemon.create({
	name: 'Rocky', 
	breed: 'Onix', 
	bio: 'My very best friend. Always there for me. Event when I have no friends except those that exist in databases.', 
	lvl: 33, 
	element: 'Rock'
})

bulbasaur = Pokemon.create({
	name: 'Bulby', 
	breed: 'Bulbasaur', 
	bio: 'Bit annoying.', 
	lvl: 2, 
	element: 'Grass'
})

alakazam = Pokemon.create({
	name: 'Zappy', 
	breed: 'Alakazam', 
	bio: 'Scary.', 
	lvl: 99, 
	element: 'Psychic'
})