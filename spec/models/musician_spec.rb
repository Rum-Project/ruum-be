require 'rails_helper'

RSpec.describe Musician do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_presence_of :phone }
  end

  describe 'relationships' do
    it { should have_many(:bookings) }
  end
end
