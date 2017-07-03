class CreateWagons < ActiveRecord::Migration[5.1]
  def change
    create_table :wagons do |t|
      t.string :type_class
      t.integer :place_up
      t.integer :place_down
      t.belongs_to :train, index: true

      t.timestamps
    end
  end
end
