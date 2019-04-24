class TeamPlayer < ApplicationRecord
  # Relationships
  belongs_to :team
  belongs_to :player
end
