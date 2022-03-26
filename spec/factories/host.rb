# spec/factories/room.rb

FactoryBot.define do
  factory :host do
    name { Faker::FunnyName.name }
    email { Faker::Internet.email }
    phone { Faker::Base.numerify('##########') }
  end
end
