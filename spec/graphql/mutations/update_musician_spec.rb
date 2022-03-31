require 'rails_helper'

RSpec.describe 'UpdateMusician', type: :request do

  it 'updates an existing musician' do
    musician = create(:musician, id: '50')
    name_original = musician.name
    expect(Musician.find(50).name).to eq(name_original)

    post '/graphql', params: { query: query }

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(Musician.find(50).name).to eq("A NEW NAMEeeee")

    expect(response_body.keys).to eq([:data])
    expect(response_body[:data].keys).to eq([:updateMusician])
    expect(response_body[:data][:updateMusician].keys).to eq([:name, :id])
    expect(response_body[:data][:updateMusician][:id]).to eq("50")
    expect(response_body[:data][:updateMusician][:name]).to eq("A NEW NAMEeeee")
  end

  it 'returns error if the musician you are trying to update doesnt exist' do
    post '/graphql', params: { query: query }

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(response_body.keys).to eq([:data, :errors])
    expect(response_body[:data].keys).to eq([:updateMusician])
    expect(response_body[:data][:destroyMusician]).to eq(nil)
    expect(response_body[:errors]).to eq([{:message=>"Invalid input: Couldn't find Musician with 'id'=50",:locations=>[{:line=>2, :column=>3}],:path=>["updateMusician"]}])
  end

  def query
    <<~GQL
      mutation {
        updateMusician(input: {id: 50, name: "A NEW NAMEeeee"}) {
          name
          id
        }
      }
    GQL
  end

end
