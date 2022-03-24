require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "relationships" do
  it {should belong_to :host}
  it {should have_many :room_bookings}
  end

  describe "validations" do
    it {should validate_presence_of(:host_id)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:details)}
    it {should validate_presence_of(:photo)}
    it {should validate_presence_of(:address)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:zip)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:price)}
    it {should validate_numericality_of(:price)}
    it {should validate_presence_of(:capacity)}
    it {should validate_numericality_of(:capacity)}
    it {should validate_presence_of(:amenities)}
    it {should validate_presence_of(:instruments)}
  end
end
