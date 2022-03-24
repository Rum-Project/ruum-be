class Room < ApplicationRecord
  belongs_to :host
  has_many :room_bookings
end
