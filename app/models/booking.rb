class Booking < ApplicationRecord
  belongs_to :musician
  has_many :room_bookings
  has_many :rooms, through: :room_bookings
  validates :date, presence: true
  validates :musician_id, presence: true
end
