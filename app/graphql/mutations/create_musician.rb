# app/graphql/mutations/create_musician.rb

module Mutations
  class CreateMusician < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :phone, String, required: true
    argument :photo, String, required: false

    type Types::MusicianType

    def resolve(name: nil, email: nil, phone: nil, photo: nil)
      Musician.create!(
        name: name,
        email: email,
        phone: phone,
        photo: photo
      )
    end
  end
end
