require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'relationships' do
    it { should belong_to :musician }
    it { should belong_to :room }
  end

  describe 'validations' do
    it { should validate_presence_of :date }
    it { should validate_presence_of :musician_id }
  end

  describe 'create a booking' do
    it 'creates a booking for a room' do
      booking1 = create(:booking)
      
      expect(booking1.musician).to be_a(Musician)
      expect(booking1.room).to be_a(Room)
    end
  end
end
