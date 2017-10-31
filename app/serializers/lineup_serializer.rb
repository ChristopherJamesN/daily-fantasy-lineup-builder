class LineupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :players
  has_many :players
end
