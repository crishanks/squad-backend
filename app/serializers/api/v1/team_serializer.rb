class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :league

  # Relationships
  has_many :team_players
  has_many :players through: :team_players
end
