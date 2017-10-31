class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :projectedPoints, :actualPoints
  belongs_to :lineup
end
