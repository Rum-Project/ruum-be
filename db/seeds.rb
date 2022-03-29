# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
musician_1 = Musician.create(name:"Bruce Springsteen", email:"bruce@mail.com", phone: "8885739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_2 = Musician.create(name:"Bruce Rundman", email:"bruce2@mail.com", phone: "8885739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")
musician_3 = Musician.create(name:"Musician 3", email:"3m@mail.com", phone: "1885739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_4 = Musician.create(name:"Musician 4", email:"4m@mail.com", phone: "2885739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")
musician_5 = Musician.create(name:"Musician 5", email:"5m@mail.com", phone: "8285739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_6 = Musician.create(name:"Musician 6", email:"6m@mail.com", phone: "8835739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")
musician_7 = Musician.create(name:"Musician 7", email:"7m@mail.com", phone: "1585739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_8 = Musician.create(name:"Musician 8", email:"8m@mail.com", phone: "2875739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")

host_1 = Host.create!(name: 'Chris H', email: 'chris@fake.com', phone: '5595555617')
host_2 = Host.create!(name: 'Jon H', email: 'john@fake.com', phone: '5495555617')
host_3 = Host.create!(name: 'James H', email: 'James@fake.com', phone: '5535555617')
host_4 = Host.create!(name: 'Jim H', email: 'Jim@fake.com', phone: '5595575617')
host_5 = Host.create!(name: 'Adam H', email: 'Adam@fake.com', phone: '5595555317')
host_6 = Host.create!(name: 'Ryan H', email: 'Ryan@fake.com', phone: '5591555617')
host_6 = Host.create!(name: 'Mark H', email: 'Mark@fake.com', phone: '5295555617')

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

room_2 = Room.create!(id: 2,
              name: 'Crungaloid Studios',
              details: 'Spacious, inviting is a stretch',
              photo: 'www.photo.com',
              address: '678 Not a Street',
              city: 'Denver',
              state: 'CO',
              zip: '80211',
              price: 85.00,
              amenities: 'wifi, bathrooms',
              instruments: 'drums, bagpipes',
              capacity: 3,
              host_id: "#{host_1.id}")

room_3 = Room.create!(id: 3,
              name: 'Room3 Studios',
              details: 'Spacious, inviting is a stretch',
              photo: 'www.photo.com',
              address: '674 Not a Street',
              city: 'Denver',
              state: 'CO',
              zip: '80216',
              price: 25.00,
              amenities: 'wifi, bathrooms',
              instruments: 'trumpet, bagpipes',
              capacity: 3,
              host_id: "#{host_4.id}")

room_4 = Room.create!(id: 4,
              name: 'Room4 Studios',
              details: 'not Spacious, inviting is a stretch',
              photo: 'www.photo.com',
              address: '671 Not a Street',
              city: 'Denver',
              state: 'CO',
              zip: '80212',
              price: 65.00,
              amenities: ' bathrooms',
              instruments: 'guitar',
              capacity: 1,
              host_id: "#{host_2.id}")

musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 29, 2022', room_id: room_1.id)
musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 30, 2022', room_id: room_1.id)
musician_2.bookings.create!(musician_id: musician_2.id, date: 'April 15, 2022', room_id: room_3.id)
musician_3.bookings.create!(musician_id: musician_3.id, date: 'April 14, 2022', room_id: room_4.id)
