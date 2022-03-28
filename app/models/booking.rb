class Booking < ApplicationRecord
  belongs_to :musician
  belongs_to :room
  validates :date, presence: true
  validates :musician_id, presence: true
end
