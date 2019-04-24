class Team < ApplicationRecord
  # Relationships
  has_many :team_players
  has_many :players through: :team_players
end
