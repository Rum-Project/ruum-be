require 'rails_helper'

RSpec.describe RoomBooking, type: :model do
  describe "relationships" do
    it {should belong_to :room}
    it {should belong_to :booking}
  end

  describe "validations" do
    it {should validate_presence_of :room_id}
    it {should validate_presence_of :booking_id}
  end
end
