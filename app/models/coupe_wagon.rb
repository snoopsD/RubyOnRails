class CoupeWagon < Wagon
  validates :place_up, :place_down, presence: true
end
