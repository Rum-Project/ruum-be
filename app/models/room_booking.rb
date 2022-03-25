class RoomBooking < ApplicationRecord
  belongs_to :room
  belongs_to :booking

  validates_presence_of :room_id
  validates_presence_of :booking_id

end
