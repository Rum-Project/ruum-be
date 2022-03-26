module Types
  class MutationType < Types::BaseObject
    field :create_musician, mutation: Mutations::CreateMusician
    Mutations::CreateBooking
  end
end
