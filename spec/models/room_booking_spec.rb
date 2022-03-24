require 'rails_helper'

RSpec.describe RoomBooking, type: :model do
  describe "relationships" do
    it {should belong_to :room}
    it {should belong_to :booking}
  end
end
