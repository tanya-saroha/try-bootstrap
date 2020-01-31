class User < ApplicationRecord
  ROLES = { admin: 'Admin', customer_executive: "Customer Executive" }
  STATUS = { active: 'Active', pending: "Pending", inactive: "Inactive" }
  validates :full_name, :email, :role, presence: true
  validates :email, uniqueness: true
  validates :role, inclusion: ROLES.as_json.keys
  validates :status, inclusion: STATUS.as_json.keys
  validates :email, format: { with: EMAIL_REGEXP, message: "Email must be in format tanya@example.com"}
end
