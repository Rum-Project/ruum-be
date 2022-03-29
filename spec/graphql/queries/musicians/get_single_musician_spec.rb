# spec/graphql/queries/musicians/get_single_musician_spec.rb

require 'rails_helper'

RSpec.describe Types::QueryType do
  describe 'display musicians' do
    it 'can query a single musician' do
      Musician.create!(id: 50, name: 'Bruce Easley', email: 'bruce.e@mail.com', phone: '7573830582', photo: 'www.photo.com')
      Musician.create!(id: 60, name: 'Bruce Isley', email: 'bruce.i@mail.com', phone: '9573830582', photo: 'www.photo.com')

      result = RuumBeSchema.execute(query).as_json
      expect(result['data']['getMusician']['name']).to eq('Bruce Easley')
      expect(result['data']['getMusician']['email']).to eq('bruce.e@mail.com')
      expect(result['data']['getMusician']['phone']).to eq('7573830582')
    end
  end

  it 'can query a single musician sad path no match' do
    Musician.create!(id: 60, name: 'Bruce Isley', email: 'bruce.i@mail.com', phone: '9573830582', photo: 'www.photo.com')

    result = RuumBeSchema.execute(query).as_json
    expect(result["data"]).to eq(nil)
    expect(result["errors"].first["message"]).to eq("Couldn't find Musician with 'id'=50")
  end

  def query
    <<~GQL
    {
      getMusician(id: "50") {
        name
        email
        phone
        photo
        }
    }
    GQL
  end
end
