class Api::V1::PlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_player_id, :name, :username, :height, :position, :experience_level, :description

  # Relationships
  has_many :team_players
  has_many :teams, through: :team_player
end
