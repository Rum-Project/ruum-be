require 'rails_helper'

RSpec.describe Host, type: :model do
  describe "relationships" do
    it {should have_many :rooms}
  end
end
