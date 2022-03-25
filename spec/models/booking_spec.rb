require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe "relationships" do
    it {should belong_to :musician}
    it {should have_many :room_bookings}
  end

  describe "validations" do
    it {should validate_presence_of :date}
    it {should validate_presence_of :musician_id}
  end
end
