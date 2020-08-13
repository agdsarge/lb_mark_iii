class Deal < ApplicationRecord
  belongs_to :game
  has_many :tricks
end
