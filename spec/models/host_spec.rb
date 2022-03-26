require 'rails_helper'

RSpec.describe Host, type: :model do
  describe "relationships" do
    it {should have_many :rooms}
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
    it {should validate_uniqueness_of :email}
    it {should validate_presence_of :phone}

    it "does not invalid phone num" do
    host_1 = Host.new(name: 'host_1', email: "host_1@email.com", phone: "5555")
    expect(host_1.save).to eq(false)
    expect(host_1.errors.details[:phone].first[:error]).to eq(:invalid)
    end

    it "does not allow invalid email" do
      host_1 = Host.new(name: 'host_1', email: "host_1email.com", phone: "5595925617")
      expect(host_1.save).to eq(false)
      expect(host_1.errors.details[:email].first[:error]).to eq(:invalid)
    end

    it "does not allow for duplicate emails" do
      host_1 = Host.create!(name: 'host_1', email: "host_1@email.com", phone: "5595925618")
      host_2 = Host.new(name: 'host_2', email: "host_1@email.com", phone: "5593333333")
      expect(host_2.save).to eq(false)
      expect(host_2.errors.details[:email].first[:error]).to eq(:taken)
    end

  end
end
