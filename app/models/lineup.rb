class Lineup < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :players
  accepts_nested_attributes_for :players

end
