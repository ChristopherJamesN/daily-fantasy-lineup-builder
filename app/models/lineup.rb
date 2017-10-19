class Lineup < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :players
  accepts_nested_attributes_for :players

  def players_attributes=(player_attributes)
    player_attributes.values.each do |player_attribute|
      player = Player.find_or_create_by(player_attribute)
      self.players << player
    end
  end

end
