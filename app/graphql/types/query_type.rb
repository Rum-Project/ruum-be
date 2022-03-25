module Types
  class QueryType < Types::BaseObject
    field :get_musician, Types::MusicianType, null: false, description: 'Returns a single musician by id' do
      argument :id, ID, required: true
    end

    field :get_booking, Types::BookingType, null: false, description: 'Returns a single booking by id' do
      argument :id, ID, required: true
    end

    field :get_musician_bookings, [Types::BookingType], null: false, description: 'Returns the bookings for a single musician' do
      argument :id, ID, required: true
    end

    def get_musician(id:)
      Musician.find(id)
    end

    def get_booking(id:)
      Booking.find(id)
    end

    def get_musician_bookings(id:)
      Booking.where('musician_id = ?', id)
    end
  end
end
