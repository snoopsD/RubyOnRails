class Ticket < ApplicationRecord
  validates :name, :surname, :patronymic, :passport_serial, :passport_number, presence: true

  belongs_to :user
  belongs_to :start_station, class_name: 'RailwayStation', foreign_key: :start_station_id
  belongs_to :end_station, class_name: 'RailwayStation', foreign_key: :end_station_id
  belongs_to :train

end
