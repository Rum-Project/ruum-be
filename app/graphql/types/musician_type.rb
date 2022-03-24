module Types
  class MusicianType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :phone, String, null: false
    field :photo, String, null: true
  end
end
