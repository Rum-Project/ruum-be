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

      len = ActiveSupport::MessageEncryptor.key_len
      salt = SecureRandom.random_bytes(len)
      key = ActiveSupport::KeyGenerator.new('password').generate_key(salt, len)
      crypt = ActiveSupport::MessageEncryptor.new(key)

      # ensures we have the correct user
      if musician && musician.authenticate(credentials[:password])
        token = crypt.encrypt_and_sign("musician-id:#{musician.id}")
        { musician: musician, token: token }
      else
        GraphQL::ExecutionError.new('Invalid login credentials', extensions: { 'code' => 'UNAUTHORIZED' })
        
      end
    end
  end
end
