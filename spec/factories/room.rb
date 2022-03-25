# spec/factories/room.rb

FactoryBot.define do
  factory :room do
    name { Faker::FunnyName.name }
    host { Faker::FunnyName.name }
    details { Faker::Hacker.say_something_smart }
    address { Faker::Address.street_address }
    city { 'Denver' }
    state { 'CO' }
    zip { '80014' }
    price { Faker::Commerce.price(range: 0..250.0, as_string: false) }
    let(:amenities) { ['restroom', 'water fountain', 'chair', 'music_stand'].sample }
    let(:instruments) { %w[piano drumset beatbox recording_equipment].sample }
    capacity { Faker::Integer(range: 1..5) }
  end
end
