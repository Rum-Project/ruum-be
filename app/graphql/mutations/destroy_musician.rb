# app/graphql/mutations/destroy_musician.rb

module Mutations
  class DestroyMusician < BaseMutation
    argument :id, ID, required: true

    type Types::MusicianType

    def resolve(id: nil)
      Booking.where(musician_id: id).destroy_all
      Musician.destroy(id)

    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("Invalid input: #{e.message}")
    end
  end
end
