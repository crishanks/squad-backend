class Api::V1::PotentialMatchSerializer < ActiveModel::Serializer
  attributes :id, :player_id, :player_match_id

  belongs_to :player
end
