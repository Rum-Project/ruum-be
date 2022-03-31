require 'rails_helper'

RSpec.describe 'CreateMusician', type: :request do
  describe '.resolve' do
    it "creates a user with given information" do
      post '/graphql', params: { query: query }
      parsed = JSON.parse(response.body)
      expect(parsed["data"]["createMusician"]).to have_key("id")
      expect(parsed["data"]["createMusician"]["name"]).to eq("John Coltrane")
      expect(parsed["data"]["createMusician"]["email"]).to eq("john@space.com")
      expect(parsed["data"]["createMusician"]["phone"]).to eq("5597995639")
      expect(parsed["data"]["createMusician"]["photo"]).to eq("www.photo.com")
      expect(Musician.count).to eq(1)
    end

    it "returns error for duplicate email" do
      Musician.create!(
      name: "Johnny Coltrane",
      email: "john@space.com",
      password: "password",
      phone: "5597995639",
      photo: "www.photo.com")
      post '/graphql', params: { query: query }
      parsed = JSON.parse(response.body)
      expect(parsed["data"]["createMusician"]).to eq(nil)
      expect(parsed["errors"].first["message"]).to eq("Invalid input: Email has already been taken")
    end
  end

  def query
      <<~GQL
      mutation {
      createMusician(input: {
        name: "John Coltrane",
        email: "john@space.com",
        password: "password",
        phone: "5597995639",
        photo: "www.photo.com"})
        { id
          name
          email
          phone
          photo
          }
         }
      GQL
  end
end
