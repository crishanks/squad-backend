class TeamPlayerSerializer < ActiveModel::Serializer
  attributes :id, :player_id, :team_id, :organizer
end
