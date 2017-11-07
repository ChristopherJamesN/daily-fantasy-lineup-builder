class PlayerSerializer < ActiveModel::Serializer
   attributes :id, :name, :position, :projectedPoints, :actualPoints, :lineups
   has_many :lineups
   has_many :lineups_players
 end
