# app/graphql/mutations/create_booking.rb

module Mutations
  class CreateBooking < BaseMutation
    argument :date, ISO8601DateTime, required: true
    argument :musician_id, Types::MusicianType, null: false
    argument :room_id, Types::RoomType, null: false

    type Types::BookingType

    def resolve(attributes)
      musician_id = attributes[:musician_id]
      date = attributes[:date]
      room_id = attributes[:room_id]

      b = Booking.create(date: date, musician: musician_id)
      b.room_bookings.create(room_id: room_id)
      
      b
    end
  end
end
