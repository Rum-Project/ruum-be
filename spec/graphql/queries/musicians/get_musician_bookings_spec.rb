# spec/graphql/queries/musicians/get_musician_bookings_spec.rb
require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display musician bookings' do 
    it 'can query a musician bookings' do
      musician1 = Musician.create(id: 100, name: 'Gladys Knight', email: 'gladys@mail.com', phone: '5582832837', photo: 'www.gladys.com')

      # room1 = Room.create()
      musician1.bookings.create!(musician_id: musician1.id, date: 'April 30, 2022')
      musician1.bookings.create!(musician_id: musician1.id, date: 'April 29, 2022')

      expect(Booking.count).to eq(2)

      result = RuumBeSchema.execute(query).as_json
      # binding.pry
      expect(result['data']['getMusicianBookings'].count).to eq(2)
    end
  end

  def query
    <<~GQL
    { getMusicianBookings(id: "100")
      {
        date
        rooms {
          id
        }
      }
    }
    GQL
  end
end
