# app/graphql/mutations/create_musician.rb

module Mutations
  class CreateMusician < BaseMutation
    argument :name, String, required: true
    argument :password, String, required: true
    argument :email, String, required: true
    argument :phone, String, required: true
    argument :photo, String, required: true


    type Types::MusicianType

    def resolve(name: nil, email: nil, password: nil, phone: nil, photo: nil)
      Musician.create!(
        name: name,
        email: email,
        password: password,
        phone: phone,
        photo: photo
      )
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
