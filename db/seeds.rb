# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Musician.create(name:"Bruce Springsteen", email:"bruce@mail.com", phone: "8885739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
Musician.create(name:"Bruce Rundman", email:"bruce2@mail.com", phone: "8885739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")
host_1 = Host.create!(name: 'Chris H', email: 'chris@fake.com', phone: '5595555617')
Room.create!(id: 1,
             name: 'Crungalow Studios',
             details: 'Not spacious or inviting',
             photo: 'www.photo.com',
             address: '123 Fake Street',
             city: 'Denver',
             state: 'CO',
             zip: '80211',
             price: 100.5,
             amenities: 'coffee maker, wifi',
             instruments: 'drums, keys, gangsa',
             capacity: 4,
             host_id: "#{host_1.id}")
