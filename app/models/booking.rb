class Booking < ApplicationRecord
  belongs_to :musician
  has_many :room_bookings
end
