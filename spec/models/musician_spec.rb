require 'rails_helper'

RSpec.describe Musician, type: :model do
  describe "relationships" do
    it {should have_many :bookings}
  end
end
