class RailwayStationsRoute < ApplicationRecord
  validates :railway_station_id, uniqueness: { scope: :route_id }

  belongs_to :railway_station
  belongs_to :route
end
