# app/graphql/types/booking_type.rb
module Types
  class BookingType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: false
    field :musician, Types::MusicianType, null: false
    field :room, Types::RoomType, null: false
  end
end
