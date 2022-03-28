# app/graphql/mutations/create_musician.rb

module Mutations
  class UpdateMusician < BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :email, String, required: false
    argument :phone, String, required: false
    argument :photo, String, required: false

    type Types::MusicianType

    def resolve(id: nil, name: nil, email: nil, phone: nil, photo: nil)
      musician = Musician.find(id)

      musician_data = Hash.new
      musician_data[:name] = name if name
      musician_data[:email] = email if email
      musician_data[:phone] = phone if phone
      musician_data[:photo] = photo if photo

      musician.update!(musician_data)
    end
  end
end
