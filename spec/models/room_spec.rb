require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "relationships" do
  it {should belong_to :host}
  it {should have_many :room_bookings}
  end
end
