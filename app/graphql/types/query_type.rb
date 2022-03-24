module Types
  class QueryType < Types::BaseObject
    field :get_musician, Types::MusicianType, null: false, description: 'Returns a single musician by id' do
      argument :id, ID, required: true
    end
    
    def get_musician(id:)
      Musician.find(id)
    end
  end
end
