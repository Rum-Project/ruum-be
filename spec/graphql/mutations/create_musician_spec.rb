require 'rails_helper'

RSpec.describe 'CreateMusician' do
  describe 'display musicians' do
    it 'can query a single musician' do
      musician = create(:musician, id: '5')
      result = RuumBeSchema.execute(query).as_json

      expect(result["data"]["getMusician"]["name"]).to be_a(String)
      expect(result["data"]["getMusician"]["email"]).to be_a(String)
      expect(result["data"]["getMusician"]["phone"]).to be_a(String)
    end
  end

  def query
    <<~GQL
    {
      getMusician(id: "5") {
        name
        email
        phone
        photo
        }
    }
    GQL
  end
end
