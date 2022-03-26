# spec/factories/room.rb

FactoryBot.define do
  factory :room do
    name { Faker::FunnyName.name }
    host { create :host }
    details { Faker::Hacker.say_something_smart }
    photo { Faker::Internet.url }
    address { Faker::Address.street_address }
    city { 'Denver' }
    state { 'CO' }
    zip { '80014' }
    price { Faker::Commerce.price(range: 0..250.0, as_string: false) }
    amenities { ['restroom', 'water fountain', 'chair', 'music_stand'].sample }
    instruments { %w[piano drumset beatbox recording_equipment].sample }
    capacity { [1, 2, 3, 4, 5].sample }
  end
end
