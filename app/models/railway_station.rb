class RailwayStation < ApplicationRecord

  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains

  validates :title, presence: true

  #scope :ordered, -> { joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }
  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.position').joins(:railway_stations_routes).order("railway_stations_routes.position").uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def update_time(route, state, time)
    station_route = station_route(route)
    station_route.update(state => time)
  end

  def time_in(route, state_time)
    station_route(route).try(state_time).try(:strftime, "%H:%M")
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
