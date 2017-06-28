class Route < ApplicationRecord

  has_many :railway_station_route
  has_many :railway_stations, through: :railway_station_routes
  has_many :trains

  validates :title , presence: true

end
