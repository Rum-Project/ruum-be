# app/graphql/mutations/create_musician.rb

module Mutations
  class DeleteMusician < BaseMutation
    argument :id, ID, required: true
    # argument :musician_id, ID, required: true

    type Types::MusicianType

    def resolve(id: nil)
      Booking.where(musician_id: id).destroy_all
      Musician.destroy(id)
    end
  end
end
