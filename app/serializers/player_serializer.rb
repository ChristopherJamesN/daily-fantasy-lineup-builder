class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :projectedPoints, :actualPoints
  has_many :lineups
end
