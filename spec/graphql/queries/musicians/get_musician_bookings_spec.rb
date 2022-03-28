# spec/graphql/queries/musicians/get_musician_bookings_spec.rb
require 'rails_helper'

RSpec.describe 'Booking query' do
  describe 'display musician bookings' do
    it 'can query a musician bookings' do
      room1 = create(:room)

      musician1 = Musician.create(id: 100, name: 'Gladys Knight', email: 'gladys@mail.com', phone: '5582832837', photo: 'www.gladys.com')

      # two bookings for the same room on different dates
      musician1.bookings.create!(musician_id: musician1.id, date: 'April 29, 2022', room_id: room1.id)

      musician1.bookings.create!(musician_id: musician1.id, date: 'April 30, 2022', room_id: room1.id)

      expect(Booking.count).to eq(2)
      result = RuumBeSchema.execute(query).as_json
      expect(result['data']['getMusicianBookings'].count).to eq(2)
    end
  end

  def query
    <<~GQL
    { getMusicianBookings(id: "100")
      {
        date
        room {
          id
          name
          host {
            name
          }
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
    }
    GQL
  end
end
