# app/graphql/mutations/create_booking.rb

module Mutations
  class CreateBooking < BaseMutation
    argument :date, String, required: true
    argument :musician_id, ID, required: true
    argument :room_id, ID, required: true

    type Types::BookingType

    def resolve(date: nil, musician_id: nil, room_id: nil)
      search = Booking.where('date = ? AND room_id = ?', date, room_id)
      if search.present?
        GraphQL::ExecutionError.new("This room is unavailble on #{date}")
      else
      booking = Booking.create!(date: date,
                          musician: Musician.find(musician_id), room_id: room_id)
      end
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
