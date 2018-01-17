# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

onix = Pokemon.create({name: 'Rocky',breed: 'Onix', bio: 'My very best friend',lvl: 33, element: 'Rock'})

bulbasaur = Pokemon.create({name: 'Bulby',breed: 'Bulb', bio: 'Annoying',lvl: 2, element: 'Grass'})
bulbasaur = Pokemon.create({name: 'Zappy',breed: 'Alakazam', bio: 'scary',lvl: 99, element: 'Psychic'})