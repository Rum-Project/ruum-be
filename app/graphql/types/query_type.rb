module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField


    field :get_room, Types::RoomType, null: false, description: 'Returns a single room by id' do
      argument :id, ID, required: true
    end

    def get_room(id:)
      Room.find(id)
    end


    # Add root-level fields here.
    # They will be entry points for queries on your schema.


  end
end
