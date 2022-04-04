require 'rails_helper'
RSpec.describe "sign in mutation", type: :request do
  it "signs in musician after authentication" do
    musician_1 = Musician.create!(email: "bruce@mail.com", password: "password", name: "Phil Brazil", photo: "www.photo.com", phone: '5597995111')
    post '/graphql', params: { query: query }
    response_body = JSON.parse(response.body, symbolize_names: true)
    expect(response_body[:data][:signInMusician][:token]).to be_a(String)
    expect(response_body[:data][:signInMusician][:token].length).to eq(76)
    expect(response_body[:data][:signInMusician][:musician][:id]).to eq(musician_1.id.to_s)
  end

  def query
    <<~GQL
    mutation {
      signInMusician(
    input: {credentials: {email: "bruce@mail.com", password: "password"}}
    ) {
    token
    musician {
      id
      }
    }
  }
  GQL
  end
end