class Add < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :train_id, :integer
  end
end
