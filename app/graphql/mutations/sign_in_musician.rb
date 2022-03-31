module Mutations
  class SignInMusician < BaseMutation
    null true

    argument :credentials, Types::AuthProviderCredentialsInput, required: false

    field :token, String, null: true
    field :musician, Types::MusicianType, null: true

    def resolve(credentials: nil)
      # basic validation
      return unless credentials

      musician = Musician.find_by email: credentials[:email]

      # ensures we have the correct user
      return unless musician
      return unless musician.authenticate(credentials[:password])

      # use Ruby on Rails - ActiveSupport::MessageEncryptor, to build a token
      binding.pry
      crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
      token = crypt.encrypt_and_sign("musician-id:#{ musician.id }")

      { musician: musician, token: token }
    end
  end
end
