# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

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
host_7 = Host.create!(name: 'Mark H', email: 'Mark@fake.com', phone: '5295555617')

room_1 = Room.create!(id: 1,
                name: 'Living Room 1',
                details: 'This spacious room will provide you with great reverb. Perfect for vocalists, string players, or even pianists. ',
                photo: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7',
                address: '1 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 152.94513408358924,
                amenities: 'wifi, bathrooms',
                instruments: 'marimba',
                capacity: 2,
                host_id: "#{host_1.id}")

room_2 = Room.create!(id: 2,
                name: 'Amphitheater 2',
                details: 'This room has plenty of available instruments and amenities. Youll never want to book another room again!',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '2 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 37.28512723432239,
                amenities: 'wifi, bathrooms, drinking water',
                instruments: 'trumpet',
                capacity: 2,
                host_id: "#{host_2.id}")

room_3 = Room.create!(id: 3,
                name: 'Warehouse 3',
                details: 'Interesting space with a beautiful acoustic sound. Comfortable seating, music stands available. There is a cat at the residence, so beware if allergic.',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '3 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 53.08025543960865,
                amenities: 'bathrooms',
                instruments: 'gong',
                capacity: 5,
                host_id: "#{host_7.id}")

room_4 = Room.create!(id: 4,
                name: 'Amphitheater 4',
                details: 'Check out this room, complete with wonderful amenities! Located centrally in downtown Denver, youll be able to access this room easily from public transportation. Street parking available too.',
                photo: 'https://images.unsplash.com/photo-1623771859039-e435068f39d7',
                address: '4 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 196.2707477711356,
                amenities: 'coffee maker',
                instruments: 'piano',
                capacity: 5,
                host_id: "#{host_3.id}")

room_5 = Room.create!(id: 5,
                name: 'Stage 5',
                details: 'Check out this room, complete with wonderful amenities! Located centrally in downtown Denver, youll be able to access this room easily from public transportation. Street parking available too.',
                photo: 'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af',
                address: '5 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 60.927725219398575,
                amenities: 'drinking water',
                instruments: 'bagpipes',
                capacity: 4,
                host_id: "#{host_4.id}")

room_6 = Room.create!(id: 6,
                name: 'Living Room 6',
                details: 'This room will be perfect for your next recording project! Plenty of space, bring your own recording equipment. Soundproofed walls, chairs and stands to support up to 4 musicians.',
                photo: 'https://images.unsplash.com/photo-1473893604213-3df9c15611c0',
                address: '6 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 161.03894445040038,
                amenities: 'coffee maker',
                instruments: 'piano',
                capacity: 5,
                host_id: "#{host_1.id}")

room_7 = Room.create!(id: 7,
                name: 'Living Room 7',
                details: 'This room has plenty of available instruments and amenities. Youll never want to book another room again!',
                photo: 'https://images.unsplash.com/photo-1513694203232-719a280e022f',
                address: '7 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 131.57314255921779,
                amenities: 'drinking water',
                instruments: 'keys, trumpet',
                capacity: 4,
                host_id: "#{host_7.id}")

room_8 = Room.create!(id: 8,
                name: 'Warehouse 8',
                details: 'Check out this room, complete with wonderful amenities! Located centrally in downtown Denver, youll be able to access this room easily from public transportation. Street parking available too.',
                photo: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7',
                address: '8 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 110.42634467202856,
                amenities: 'bathrooms, wifi',
                instruments: 'gangsa',
                capacity: 5,
                host_id: "#{host_5.id}")

room_9 = Room.create!(id: 9,
                name: 'Auditorium 9',
                details: 'Check out this room, complete with wonderful amenities! Located centrally in downtown Denver, youll be able to access this room easily from public transportation. Street parking available too.',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '9 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 38.34506839468918,
                amenities: 'coffee maker, bathrooms',
                instruments: 'drums, guitar, keys',
                capacity: 2,
                host_id: "#{host_4.id}")

room_10 = Room.create!(id: 10,
                name: 'Amphitheater 10',
                details: 'This room will be perfect for your next recording project! Plenty of space, bring your own recording equipment. Soundproofed walls, chairs and stands to support up to 4 musicians.',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '10 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 150.6037621693038,
                amenities: 'wifi, drinking water, bathrooms',
                instruments: 'harp',
                capacity: 6,
                host_id: "#{host_1.id}")

room_11 = Room.create!(id: 11,
                name: 'Stage 11',
                details: 'This room will be perfect for your next recording project! Plenty of space, bring your own recording equipment. Soundproofed walls, chairs and stands to support up to 4 musicians.',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '11 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 40.85648133901943,
                amenities: 'drinking water, coffee maker',
                instruments: 'piano',
                capacity: 6,
                host_id: "#{host_5.id}")

room_12 = Room.create!(id: 12,
                name: 'Study 12',
                details: 'This room has plenty of available instruments and amenities. Youll never want to book another room again!',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '12 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 116.48297872316247,
                amenities: 'bathrooms, wifi, coffee maker',
                instruments: 'drums, keys',
                capacity: 5,
                host_id: "#{host_1.id}")

room_13 = Room.create!(id: 13,
                name: 'Warehouse 13',
                details: 'This room will be perfect for your next recording project! Plenty of space, bring your own recording equipment. Soundproofed walls, chairs and stands to support up to 4 musicians.',
                photo: 'https://images.unsplash.com/photo-1623771859039-e435068f39d7',
                address: '13 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 122.82712657326759,
                amenities: 'bar',
                instruments: 'keys, bagpipes',
                capacity: 2,
                host_id: "#{host_7.id}")

room_14 = Room.create!(id: 14,
                name: 'Stage 14',
                details: 'Check out this room, complete with wonderful amenities! Located centrally in downtown Denver, youll be able to access this room easily from public transportation. Street parking available too.',
                photo: 'https://images.unsplash.com/photo-1589834390005-5d4fb9bf3d32',
                address: '14 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 48.44425073165181,
                amenities: 'coffee maker, wifi, bathrooms',
                instruments: 'drums, keys',
                capacity: 2,
                host_id: "#{host_2.id}")

room_15 = Room.create!(id: 15,
                name: 'Stage 15',
                details: 'This spacious room will provide you with great reverb. Perfect for vocalists, string players, or even pianists. ',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '15 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 64.87477259667648,
                amenities: 'wifi, bathrooms',
                instruments: 'drums',
                capacity: 4,
                host_id: "#{host_5.id}")

room_16 = Room.create!(id: 16,
                name: 'Warehouse 16',
                details: 'This room will be perfect for your next recording project! Plenty of space, bring your own recording equipment. Soundproofed walls, chairs and stands to support up to 4 musicians.',
                photo: 'https://images.unsplash.com/photo-1623771859039-e435068f39d7',
                address: '16 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 150.4446644607169,
                amenities: 'bathrooms, coffee maker',
                instruments: 'trumpet, gangsa',
                capacity: 1,
                host_id: "#{host_3.id}")

room_17 = Room.create!(id: 17,
                name: 'Warehouse 17',
                details: 'Check out this room, complete with wonderful amenities! Located centrally in downtown Denver, youll be able to access this room easily from public transportation. Street parking available too.',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '17 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 169.01062833585658,
                amenities: 'wifi',
                instruments: 'gangsa',
                capacity: 5,
                host_id: "#{host_3.id}")

room_18 = Room.create!(id: 18,
                name: 'Amphitheater 18',
                details: 'Check out this room, complete with wonderful amenities! Located centrally in downtown Denver, youll be able to access this room easily from public transportation. Street parking available too.',
                photo: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7',
                address: '18 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 65.58958820775261,
                amenities: 'drinking water, bathrooms, wifi',
                instruments: 'xylophone',
                capacity: 3,
                host_id: "#{host_2.id}")

room_19 = Room.create!(id: 19,
                name: 'Living Room 19',
                details: 'This room will be perfect for your next recording project! Plenty of space, bring your own recording equipment. Soundproofed walls, chairs and stands to support up to 4 musicians.',
                photo: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7',
                address: '19 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 29.657480242996854,
                amenities: 'pressure cooker',
                instruments: 'gangsa, keys, bagpipes',
                capacity: 1,
                host_id: "#{host_7.id}")

room_20 = Room.create!(id: 20,
                name: 'Stage 20',
                details: 'This spacious room will provide you with great reverb. Perfect for vocalists, string players, or even pianists. ',
                photo: 'https://images.unsplash.com/photo-1589834390005-5d4fb9bf3d32',
                address: '20 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 188.21826670581484,
                amenities: 'bathrooms, coffee maker',
                instruments: 'guitar, keys, drums',
                capacity: 4,
                host_id: "#{host_5.id}")

musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 29, 2022', room_id: room_1.id)
musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 30, 2022', room_id: room_1.id)
musician_2.bookings.create!(musician_id: musician_2.id, date: 'April 15, 2022', room_id: room_3.id)
musician_3.bookings.create!(musician_id: musician_3.id, date: 'April 14, 2022', room_id: room_4.id)
