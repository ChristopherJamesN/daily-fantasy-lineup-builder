class LineupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :players
end
