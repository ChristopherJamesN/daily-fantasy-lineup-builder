class Player < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true

  has_many :lineups_players
  has_many :lineups, through: :lineups_players

  accepts_nested_attributes_for :lineups

  def lineups_players_attributes=(lineups_player_attributes)
    lineups_player_attributes.values.each do |lineups_player_attribute|
      if LineupsPlayer.find_by(lineup_id: lineups_player_attribute[:lineup_id], player_id: self.id)
        LineupsPlayer.find_by(lineup_id: lineups_player_attribute[:lineup_id], player_id: self.id).update(player_starting: lineups_player_attribute[:player_starting])
      end
    end
  end

  def point_differential
    if self.actualPoints != nil && self.projectedPoints != nil
      return self.projectedPoints - self.actualPoints
    else
      return ''
    end
  end

end
