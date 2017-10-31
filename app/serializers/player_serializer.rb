class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :projectedPoints, :actualPoints
end
