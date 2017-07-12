class DeleteColumnWagons < ActiveRecord::Migration[5.1]
  def change
    remove_column :wagons, :side_place_up
    remove_column :wagons, :type
    add_column :wagons, :type, :string
  end
end
