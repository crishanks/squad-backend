class Player < ApplicationRecord
  # Relationships
  has_many :team_players
  has_many :teams, through: :team_players
  has_many :images
end
