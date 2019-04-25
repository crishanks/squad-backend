class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_player_id, :name, :height, :position, :experience_level, :description, :image

  # Relationships
  has_many :team_players
  has_many :teams, through: :team_player
end
