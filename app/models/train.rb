class Train < ApplicationRecord

  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id, optional: true
  belongs_to :route, optional: true
  has_many :tickets, false
  has_many :wagons

  validates :name, presence: true

  def wagon_type(type_w)
     self.wagons.where(type_class: type_w)
     self.wagons.where(type_class: type_w).count
  end

  def wagon_down_seats(type_w, place_down)
    self.wagons.where(type_class: type_w).sum(place_down)
  end

  def wagon_up_seats(type_w, place_up)
    self.wagons.where(type_class: type_w).sum(place_up)
  end
end
