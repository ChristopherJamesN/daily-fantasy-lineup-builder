class Lineup < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :lineups_players
  has_many :players, through: :lineups_players
  accepts_nested_attributes_for :players
  scope :this_weeks_lineups, -> { where("DATE(created_at) > ?", (Date.today).to_time - 7.days) }

  def players_attributes=(player_attributes)
    player_attributes.values.each do |player_attribute|
      if Player.find_by(name: player_attribute[:name])
        player = Player.find_by(name: player_attribute[:name])
        if !self.players.include?(player)
          self.players << player
        end
      else
        player = Player.create(player_attribute)
        self.players << player
      end
    end
  end

  def self.most_used_player
    max = 0
    most_used = ''
    Player.all.each do |player|
      if player.lineups.length > max
        max = player.lineups.length
        most_used = player.name
      elsif player.lineups.length == max
        most_used = most_used + ' ' + player.name
      end
    end
    return most_used
  end

end
