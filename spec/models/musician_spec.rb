require 'rails_helper'

RSpec.describe Musician, type: :model do

  describe "relationships" do
    it {should have_many :bookings}
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
    it {should validate_uniqueness_of :email}
    it {should validate_presence_of :photo}
    it {should validate_presence_of :phone}


    it "does not invalid phone num" do
    musician_1 = Musician.new(name: 'musician_1', email: "musician_1@email.com", photo: "www.photo.com", phone: "5555")
    expect(musician_1.save).to eq(false)
    expect(musician_1.errors.details[:phone].first[:error]).to eq(:invalid)
    end

    it "does not allow invalid email" do
      musician_1 = Musician.new(name: 'musician_1', email: "musician_1email", photo: "www.photo.com", phone: "5595925617")
      expect(musician_1.save).to eq(false)
      expect(musician_1.errors.details[:email].first[:error]).to eq(:invalid)
    end

    it "does not allow for duplicate emails" do
      musician_1 = Musician.create!(name: 'musician_1', email: "musician_1@email.com", photo: "www.photo.com", phone: "5595925618")
      musician_2 = Musician.new(name: 'musician_2', email: "musician_1@email.com", photo: "www.photo.com", phone: "5593333333")
      expect(musician_2.save).to eq(false)
      expect(musician_2.errors.details[:email].first[:error]).to eq(:taken)
    end
  end
end
