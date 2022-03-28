module Types
  class MutationType < Types::BaseObject
    field :create_musician, mutation: Mutations::CreateMusician
    field :delete_musician, mutation: Mutations::DeleteMusician
    field :update_musician, mutation: Mutations::UpdateMusician
    field :create_booking, mutation: Mutations::CreateBooking
  end
end
