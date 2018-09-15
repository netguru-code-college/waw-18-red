# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create({name: 'John Smith', email: 'john@smith.com', encrypted_password: '1234'})
User.create({name: 'Jan Kowalski', email: 'jan@kowalski.com', encrypted_password: 'zaq1'})
Place.create({name: 'Netguru', adress: 'al. Jana Pawła 29', description: 'Very cozy place', lat: 52.2389498, long: 20.9924182, publisher_id: 1, rate: 5})
Place.create({name: 'Palac kultury', adress: '---', description: 'Monumental', lat: 52.231838, long: 21.003801, publisher_id: 2, rate: 3})
Place.create({name: "Chopin's airport", adress: 'ul. Żwirki i Wigury 1', description: 'Very crowdy', lat: 52.2057139, long: 20.9227713, publisher_id: 1, rate: 4})
