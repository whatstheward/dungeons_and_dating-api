# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Character.destroy_all
User.destroy_all

maddie = User.create(first_name: "Maddie", last_name: "Ward", email: "whatstheward@gmail.com", password: "password")

fighter = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Dwarf',
    character_class: 'Fighter',
    img: Faker::LoremFlickr.image,
    bio: Faker::Movies::PrincessBride.quote
)
cleric = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Human',
    character_class: 'Cleric',
    img: Faker::LoremFlickr.image,
    bio: Faker::Movies::PrincessBride.quote
)
wizard = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Elf',
    character_class: 'Wizard',
    img: Faker::LoremFlickr.image,
    bio: Faker::Movies::PrincessBride.quote
)
bard = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Halfling',
    character_class: 'Bard',
    img: Faker::LoremFlickr.image,
    bio: Faker::Movies::PrincessBride.quote
)
barbarian = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Half-Orc',
    character_class: 'Barbarian',
    img: Faker::LoremFlickr.image,
    bio: Faker::Movies::PrincessBride.quote
)
