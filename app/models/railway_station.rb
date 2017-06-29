class RailwayStation < ApplicationRecord

  has_many :trains
  has_many :railway_station_route
  has_many :routes, through: :railway_stations_routes

  validates :title, presence: true

end
