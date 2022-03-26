# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

musician_1 = Musician.create(name:"Bruce Springsteen", email:"bruce@mail.com", phone: "8885739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_2 = Musician.create(name:"Bruce Rundman", email:"bruce2@mail.com", phone: "8885739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")

host_1 = Host.create!(name: 'Chris H', email: 'chris@fake.com', phone: '5595555617')
room_1 = Room.create!(id: 1,
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

musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 29, 2022')
booking_1 = musician_1.bookings.first
booking_1.room_bookings.create!(room: room_1, booking: booking_1)

musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 30, 2022')
booking_2 = musician_1.bookings.first
booking_2.room_bookings.create!(room: room_1, booking: booking_2)



