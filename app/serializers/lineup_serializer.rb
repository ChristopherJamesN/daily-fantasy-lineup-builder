class LineupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :players, :user
end
