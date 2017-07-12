class AddColumnsToWagons < ActiveRecord::Migration[5.1]
  def change
    add_column :wagons, :number, :integer
    add_column :wagons, :side_top_place_down, :integer
    add_column :wagons, :side_bot_place_up, :integer
    add_column :wagons, :side_place_up, :integer
    add_column :wagons, :place_seat, :integer
    add_column :wagons, :type, :integer
  end
end
