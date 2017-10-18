class Player < ApplicationRecord
  validates :name, presence: true
  belongs_to :lineup
end
