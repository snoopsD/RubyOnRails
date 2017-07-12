class DeleteColumnWagon < ActiveRecord::Migration[5.1]
  def change
    remove_column :wagons, :type_class
  end
end
