class Route < ApplicationRecord
  validates :title , presence: true

  has_many :railway_station_route
  has_many :railway_stations, through: :railway_station_routes
  has_many :trains
end
