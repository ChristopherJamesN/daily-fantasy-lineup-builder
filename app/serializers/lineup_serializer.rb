class LineupSerializer < ActiveModel::Serializer
   attributes :id, :name, :description, :players, :user, :lineups_players
   has_many :players
   belongs_to :user
 end
