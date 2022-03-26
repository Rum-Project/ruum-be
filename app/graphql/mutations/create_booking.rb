# app/graphql/mutations/create_booking.rb

module Mutations
  class CreateBooking < BaseMutation
    argument :date, String, required: true
    argument :musician_id, ID, required: true
    argument :room_id, ID, required: true

    type Types::BookingType

    def resolve(date: nil, musician_id: nil, room_id: nil)
      # binding.pry
      b = Booking.create!(date: date,
                          musician: Musician.find(musician_id))
      b.room_bookings.create(room: Room.find(room_id), booking_id: b.id)
    end
  end
end