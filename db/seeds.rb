# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)
require 'ffaker'

User.create!({email: FFaker::Internet.email, password: 'Qwert123'})
User.create!({email: FFaker::Internet.email, password: 'Qwert123'})
User.create!({email: FFaker::Internet.email, password: 'Qwert123'})
User.create!({email: FFaker::Internet.email, password: 'Qwert123'})
User.create!({email: FFaker::Internet.email, password: 'Qwert123'})
User.create!({email: FFaker::Internet.email, password: 'Qwert123'})
User.create!({email: FFaker::Internet.email, password: 'Qwert123'})

Place.create!({name: 'Netguru', adress: 'al. Jana Pawła 29', description: 'Very cozy place', lat: 52.2389498, long: 20.9924182, publisher_id: 1, rate: 5})
Place.create!({name: 'Palac kultury', adress: '---', description: 'Monumental', lat: 52.231838, long: 21.003801, publisher_id: 2, rate: 3})
Place.create!({name: "Chopin's airport", adress: 'ul. Żwirki i Wigury 1', description: 'Very crowdy', lat: 52.2057139, long: 20.9227713, publisher_id: 1, rate: 4})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
Place.create!({name:  FFaker::AddressPL.square, adress: FFaker::AddressPL.street_address, description: FFaker::LoremAR.paragraph, lat: FFaker::Geolocation.lat, long:FFaker::Geolocation.lng, publisher_id: rand(7), rate: rand(5)})
