class Player < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
  has_many :lineups_players
  has_many :lineups, through: :lineups_players
end
