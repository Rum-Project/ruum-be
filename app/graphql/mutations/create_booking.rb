# app/graphql/mutations/create_booking.rb

module Mutations
  class CreateBooking < BaseMutation
    argument :date, String, required: true
    argument :musician_id, ID, required: true
    argument :room_id, ID, required: true

    type Types::BookingType

    def resolve(date: nil, musician_id: nil, room_id: nil)
      booking = Booking.create(date: date,
                          musician: Musician.find(musician_id), room_id: room_id)

      rescue ActiveRecord::RecordNotFound => e
        GraphQL::ExecutionError.new("Invalid input: #{e.message}")
    end
  end
end
