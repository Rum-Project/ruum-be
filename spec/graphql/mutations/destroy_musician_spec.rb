require 'rails_helper'

RSpec.describe 'DestroyMusician', type: :request do

  it 'destroys an existing musician' do
    musician = create(:musician, id: '22')
    expect(Musician.all.length).to eq(1)

    post '/graphql', params: { query: query }

    expect(Musician.all.length).to eq(0)

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(response_body.keys).to eq([:data])
    expect(response_body[:data].keys).to eq([:destroyMusician])
    expect(response_body[:data][:destroyMusician].keys).to eq([:id, :name])
    expect(response_body[:data][:destroyMusician][:id]).to be_a(String)
    expect(response_body[:data][:destroyMusician][:name]).to be_a(String)
  end

  it 'returns error if the musician you are trying to destroy doesnt exist' do
    post '/graphql', params: { query: query }

    response_body = JSON.parse(response.body, symbolize_names: true)

    expect(response_body.keys).to eq([:data, :errors])
    expect(response_body[:data].keys).to eq([:destroyMusician])
    expect(response_body[:data][:destroyMusician]).to eq(nil)
    expect(response_body[:errors]).to eq([{:message=>"Invalid input: Couldn't find Musician with 'id'=22",:locations=>[{:line=>2, :column=>3}],:path=>["destroyMusician"]}])
  end

  def query
    <<~GQL
      mutation {
        destroyMusician(input: {id: 22}) {
          id
          name
        }
      }
    GQL
  end

end
