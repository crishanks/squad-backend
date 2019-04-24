class TeamPlayerSerializer < ActiveModel::Serializer
  attributes :id, :player_id, :team_id, :organizer

  # Relationships
  belongs_to :team
  belongs_to :player
end
