# app/spec/factories/room.rb

FactoryBot.define do
  factory :musician do
    name { Faker::FunnyName.name }
    email { Faker::Internet.email }
    phone { Faker::Base.numerify('##########') }
    photo { Faker::Internet.url }
  end
end
