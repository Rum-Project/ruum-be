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

    field :get_room, Types::RoomType, null: false, description: 'Returns a single room by id' do
      argument :id, ID, required: true
    end

    field :get_available_rooms, [Types::RoomType], null: false, description: 'Returns rooms available on a date' do
      argument :date, String, required: true
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

    def get_room(id:)
      Room.find(id)
    end

    def get_available_rooms(date:)
      existing_bookings = Booking.where('date = ?', date)

      if existing_bookings.empty?
        return Room.all
      else
        rooms_booked = existing_bookings.map { |b| b.room.id }
        rooms = Room.where.not('id = ?', rooms_booked)
      end

      rooms
    end
  end
end
