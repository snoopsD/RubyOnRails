class CreateSeatWagons < ActiveRecord::Migration[5.1]
  def change
    create_table :seat_wagons do |t|
      t.integer :number

      t.timestamps
    end
  end
end
