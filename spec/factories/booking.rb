# spec/factories/booking.rb

FactoryBot.define do
  factory :booking do
    date { Faker::Date.between(from: '2022-03-01T00:00:00.000Z', to: '2023-03-01T00:00:00.000Z') }
    musician { create :musician }
    room { create :room }
  end
end
