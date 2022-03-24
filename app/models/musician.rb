class Musician < ApplicationRecord
  validates_presence_of :name, :email, :phone

  # has_many :bookings
end
