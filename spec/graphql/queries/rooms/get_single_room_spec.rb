require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display room' do
    it 'can query a single room' do
      host_1 = Host.create!(name: 'Chris H', email: 'chris@fake.com', phone: '5595555617')
      host_1.rooms.create!(id: 1,
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
                   capacity: 4
                   )

      result = RuumBeSchema.execute(query).as_json
      expect(result["data"]["getRoom"]["name"]).to be_a(String)
      expect(result["data"]["getRoom"]["details"]).to be_a(String)
      expect(result["data"]["getRoom"]["photo"]).to be_a(String)
      expect(result["data"]["getRoom"]["address"]).to be_a(String)
      expect(result["data"]["getRoom"]["city"]).to be_a(String)
      expect(result["data"]["getRoom"]["state"]).to be_a(String)
      expect(result["data"]["getRoom"]["zip"]).to be_a(String)
      expect(result["data"]["getRoom"]["price"]).to be_a(Float)
      expect(result["data"]["getRoom"]["amenities"]).to be_a(String)
      expect(result["data"]["getRoom"]["instruments"]).to be_a(String)
      expect(result["data"]["getRoom"]["capacity"]).to be_an(Integer)
    end
  end

  def query
    <<~GQL
    {
      getRoom(id: "1") {
        name
        details
        photo
        address
        city
        state
        zip
        price
        amenities
        instruments
        capacity
        }
    }
    GQL
  end
end
