class Player < ApplicationRecord
  # Auth
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}

  # Relationships
  has_many :potential_matches
  has_many :matches
end
