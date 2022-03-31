module Types
  class MutationType < Types::BaseObject
    field :destroy_booking, mutation: Mutations::DestroyBooking
    field :create_musician, mutation: Mutations::CreateMusician
    field :destroy_musician, mutation: Mutations::DestroyMusician
    field :update_musician, mutation: Mutations::UpdateMusician
    field :create_booking, mutation: Mutations::CreateBooking
  end
end
