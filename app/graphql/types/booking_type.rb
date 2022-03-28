# app/graphql/types/booking_type.rb
module Types
  class BookingType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: false
    field :musician, Types::MusicianType, null: false
    field :room, Types::RoomType, null: false
  end

  def room
    return if (object.instance_of? Room) || object.room_id.nil?

    Room.find(object.booking_id)
  end
end
