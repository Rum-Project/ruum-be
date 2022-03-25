# frozen_string_literal: true

module Types
  class RoomType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :details, String, null: false
    field :photo, String, null: false
    field :address, String, null: false
    field :city, String, null: false
    field :state, String, null: false
    field :zip, String, null: false
    field :price, Float, null: false
    field :amenities, String, null: false
    field :instruments, String, null: false
    field :capacity, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
