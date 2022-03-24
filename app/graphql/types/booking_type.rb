module Types
  class BookingType < Types::BaseObject
    field :id, ID, null: false
    field :date, String, null: false
    field :musician, Types::MusicianType, null: false
  end
end
