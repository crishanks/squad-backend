class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :team_player_id, :name, :height, :position, :experience_level, :description
end
