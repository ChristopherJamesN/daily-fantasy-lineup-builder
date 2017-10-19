class Lineup < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :lineups_players
  has_many :players, through: :lineups_players
  accepts_nested_attributes_for :players

  def players_attributes=(player_attributes)
    player_attributes.values.each do |player_attribute|
      if Player.find_by(name: player_attribute[:name])
        player = Player.find_by(name: player_attribute[:name])
        self.players << player
      else
        player = Player.create(player_attribute)
        self.players << player
      end
    end
  end

end
