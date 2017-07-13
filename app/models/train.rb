class Train < ApplicationRecord

  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id, optional: true
  belongs_to :route, optional: true
  has_many :tickets, false
  has_many :wagons

  validates :name, presence: true

 def seats_amount(type_wagon, type_place)
   self.wagons.where(type: type_wagon).sum(type_place)
 end

end
