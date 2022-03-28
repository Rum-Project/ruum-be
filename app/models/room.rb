class Room < ApplicationRecord
  belongs_to :host
  has_many :bookings

  validates :host_id, presence: true
  validates :name, presence: true
  validates :details, presence: true
  validates :photo, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :state, presence: true
  validates :price, numericality: { only_float: true }
  validates :price, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates :capacity, presence: true
  validates :amenities, presence: true
  validates :instruments, presence: true
end
