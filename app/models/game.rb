class Game < ApplicationRecord
  has_many :deals, dependent: :destroy
  has_many :player_games, dependent: :destroy
  has_many :players, through: :player_games
end
