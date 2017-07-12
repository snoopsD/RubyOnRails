class EconomyWagon < Wagon
  validates :side_top_place_down, :side_bot_place_up, :place_up, :place_down, presence: true
end
