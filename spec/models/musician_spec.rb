require 'rails_helper'

RSpec.describe Musician, type: :model do
  describe 'relationships' do
    it { should have_many :bookings }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :photo }
    it { should validate_presence_of :phone }
    it {should have_secure_password}

    it "should abstract password" do
      musician_1 = Musician.create!(name: 'musician1', email: 'musician1@email.com', photo: 'www.photo.com', phone: '5597995639', password: 'password')
      expect(musician_1).to_not have_attribute(:password)
      expect(musician_1.password_digest).to_not eq('password')
    end


    it 'does not allow invalid phone num' do
      musician1 = Musician.new(name: 'musician1', email: 'musician1@email.com', photo: 'www.photo.com', phone: '5555', password: 'password')
      expect(musician1.save).to eq(false)
      expect(musician1.errors.details[:phone].first[:error]).to eq(:invalid)
    end

    it 'does not allow invalid email' do
      musician1 = Musician.new(name: 'musician_1', email: 'musician_1email', photo: 'www.photo.com', phone: '5595925617', password: 'password')
      expect(musician1.save).to eq(false)
      expect(musician1.errors.details[:email].first[:error]).to eq(:invalid)
    end

    it 'does not allow for duplicate emails' do
      musician1 = Musician.create!(name: 'musician_1', email: 'musician_1@email.com', photo: 'www.photo.com', phone: '5595925618', password: 'password')
      musician2 = Musician.new(name: 'musician_2', email: 'musician_1@email.com', photo: 'www.photo.com', phone: '5593333333', password: 'password')
      expect(musician1.save).to eq(true)
      expect(musician2.save).to eq(false)
      expect(musician2.errors.details[:email].first[:error]).to eq(:taken)
    end
  end
end
