class Api::V1::PlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_player_id, :name, :height, :position, :experience_level, :description, :username, :show_teams

  # Relationships
  has_many :team_players
  has_many :teams, through: :team_player
end
