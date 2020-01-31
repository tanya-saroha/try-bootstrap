class User < ApplicationRecord
  validates :full_name, :email, :role, presence: true
  validates :email, format: { with: EMAIL_REGEXP, message: "Email must be in format tanya@example.com"} 
end
