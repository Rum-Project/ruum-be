# app/graphql/mutations/create_booking.rb

module Mutations
  class CreateBooking < BaseMutation
    argument :date, ISO8601DateTime, required: true
    argument :musician_id, Type::MusicianType

    type Types::MusicianType

    def resolve(name: nil, email: nil, phone: nil, photo: nil)
      Musician.create!(
        name: name,
        email: email,
        phone: phone,
        photo: photo
      )
    end
  end
end
