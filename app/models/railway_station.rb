class RailwayStation < ApplicationRecord
  validates :title, presence: true

  has_many :trains
  has_many :railway_station_route
  has_many :routes, through: railway_station_routes
end
