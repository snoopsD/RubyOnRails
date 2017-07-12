class CreatePremiumWagons < ActiveRecord::Migration[5.1]
  def change
    create_table :premium_wagons do |t|
      t.integer :number

      t.timestamps
    end
  end
end
