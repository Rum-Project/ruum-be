module Mutations
  class DestroyBooking < BaseMutation
    argument :booking_id, String, required: true

    type Types::BookingType


    def resolve(booking_id:)
      Booking.find(booking_id).destroy
    end
  end
end
