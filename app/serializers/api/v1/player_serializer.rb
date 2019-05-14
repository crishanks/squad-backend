class Api::V1::PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :username, :height, :position, :experience_level, :description, :image

  # Relationships
  has_many :matches
  has_many :potential_matches
end
