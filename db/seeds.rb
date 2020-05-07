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
Stat.destroy_all
Image.destroy_all

Image.create([{url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/dwarf-male.jpg' },
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/barbarian.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/bard.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/cleric.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/dragonborn-male.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/dwarf-female.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/elf.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/gnome.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/half-elf.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/half-orc.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/halfling.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/human.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/monk.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/ranger.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/tiefling.png'},
              {url: 'https://storage.cloud.google.com/dnd_api_bucket/avatars/wizard.png'}])

maddie = User.create(first_name: "Maddie", last_name: "Ward", email: "whatstheward@gmail.com", password: "password")

fighter = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Dwarf',
    character_class: 'Fighter',
    image_id: Image.all.sample.id,
    bio: Faker::Movies::PrincessBride.quote
)
cleric = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Human',
    character_class: 'Cleric',
    image_id: Image.all.sample.id,
    bio: Faker::Movies::PrincessBride.quote
)
wizard = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Elf',
    character_class: 'Wizard',
    image_id: Image.all.sample.id,
    bio: Faker::Movies::PrincessBride.quote
)
bard = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Half-Elf',
    character_class: 'Bard',
    image_id: Image.all.sample.id,
    bio: Faker::Movies::PrincessBride.quote
)
barbarian = Character.create(
    name: Faker::Games::ElderScrolls.unique.name,
    race: 'Half-Orc',
    character_class: 'Barbarian',
    image_id: Image.all.sample.id,
    bio: Faker::Movies::PrincessBride.quote
)

Character.all.each do |char|
    char.create_stat(strength: Faker::Number.between(from: 1, to: 20),
                    dexterity: Faker::Number.between(from: 1, to: 20),
                    constitution: Faker::Number.between(from: 1, to: 20),
                    intelligence: Faker::Number.between(from: 1, to: 20),
                    wisdom: Faker::Number.between(from: 1, to: 20),
                    charisma:  Faker::Number.between(from: 1, to: 20)).save
end
