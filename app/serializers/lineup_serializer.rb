class LineupSerializer < ActiveModel::Serializer
   attributes :id, :name, :description, :players, :user
   has_many :players
   belongs_to :user
 end
