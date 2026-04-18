class User < ApplicationRecord
  validates :name, :DOB, :email, :phone_number, presence: true

  # email format validation
  validates :email, format: {
    with: URI::MailTo::EMAIL_REGEXP,
    message: "must be a valid email format"
  }

  # uniqueness validation
  validates :email, uniqueness: true
end