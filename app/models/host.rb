class Host < ApplicationRecord
  has_many :rooms

  validates :name, presence: true

  validates :email,
            presence: true,
            uniqueness: true,
            format: { with: URI::MailTo::EMAIL_REGEXP }

  VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  validates :phone,
            presence: true,
            length: {maximum: 15},
            format: { with: VALID_PHONE_NUMBER_REGEX }
end
