module Types
  class MutationType < Types::BaseObject
    field :create_musician, mutation: Mutations::CreateMusician
  end
end
