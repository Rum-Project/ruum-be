module Types
  class BookingType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: false
    field :musician, Types::MusicianType, null: false
    field :rooms, [Types::RoomType], null: false
  end
  #create a custom resolver for rooms (go through join table to get rooms) for musician dashboard view

  def rooms
    return if object.class == Array || object.room_id.nil?
    Room.find(object.booking_id)
  end
end
