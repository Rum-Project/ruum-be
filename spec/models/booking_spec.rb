require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe "relationships" do
    it {should belong_to :musician}
    it {should have_many :room_bookings}
  end
end
