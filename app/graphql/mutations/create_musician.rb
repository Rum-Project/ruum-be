# app/graphql/mutations/create_musician.rb

module Mutations
  class CreateMusician < BaseMutation
    class AuthProviderSignupData < Types::BaseInputObject
      argument :credentials, Types::AuthProviderCredentialsInput, required: false
    end
    argument :name, String, required: true
    argument :phone, String, required: true
    argument :photo, String, required: true
    argument :auth_provider, AuthProviderSignupData, required: false


    type Types::MusicianType

    def resolve(name: nil, auth_provider: nil, phone: nil, photo: nil)
      Musician.create!(
        name: name,
        email: auth_provider&.[](:credentials)&.[](:email),
        password: auth_provider&.[](:credentials)&.[](:password),
        phone: phone,
        photo: photo
      )
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
