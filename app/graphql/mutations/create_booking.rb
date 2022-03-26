# app/graphql/mutations/create_booking.rb

module Mutations
  class CreateBooking < BaseMutation
    argument :date, String, required: true
    argument :musician_id, ID, required: true
    argument :room_id, ID, required: true

    type Types::BookingType

    def resolve(attributes)
      musician_id = attributes[:musician_id]
      date = attributes[:date]
      room_id = attributes[:room_id]

      b = Booking.create(date: date, musician_id: musician_id)
      b.room_bookings.create(room_id: room_id)
      
      b
    end
  end
end
