class Player < ApplicationRecord
  # Auth
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}

  # Relationships
  has_many :team_players
  has_many :teams, through: :team_players
  has_many :images
end
