# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
require 'ffaker'

User.create!({email: 'qwe@qwe.qwe', password: 'Qwerty6', first_name: 'Robert', last_name: 'Kusmirek' })
User.create!({email: 'qwe1@qwe.qwe', password: 'Qwerty6'})
User.create!({email: FFaker::Internet.email, password: 'Qwerty6'})
User.create!({email: FFaker::Internet.email, password: 'Qwerty6'})
User.create!({email: FFaker::Internet.email, password: 'Qwerty6'})
User.create!({email: FFaker::Internet.email, password: 'Qwerty6'})
User.create!({email: FFaker::Internet.email, password: 'Qwerty6'})

Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Warszawska", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Gdańska", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Słowackiego", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Kochanowskiego", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Piłsudskiego", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Sikorskiego", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Dworcowa", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Partyzantów", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Niepodległości", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Jagiellońska", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Opolska", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name:  FFaker::Company.name, description: FFaker::LoremPL.paragraph, publisher_id: User.all.sample.id, rate: rand(5), street: "Mickiewicza", house_number: FFaker::AddressPL.building_number, local_number: FFaker::AddressPL.secondary_number, city: FFaker::AddressPL.city})
Place.create!({name: 'Na Rogu Czasu', description: 'Very good place', publisher_id: 1, rate: 5, street: "Wilczyńskiego", house_number: "2", local_number: "9", city: "Olsztyn"})
Place.create!({name: 'Telepizza', description: 'Very nice place to work', publisher_id: 1, rate: 4, street: "Kanta", house_number: "12", local_number: "2", city: "Olsztyn"})