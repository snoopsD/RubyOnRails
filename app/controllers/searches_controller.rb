class SearchesController < ApplicationController

  def create
    @start_station = RailwayStation.find(params["start_station"])
    @end_station = RailwayStation.find(params["end_station"])
    @result = Search.find_routes(@start_station, @end_station)
    @result_trains = Search.find_trains(@result)
      if @result_trains.present?
        render :show
      else
        render :new
      end
  end

  def show
  end



end
