class AddColumnToTickets < ActiveRecord::Migration[5.1]
  def change
      add_column :tickets, :name, :string
      add_column :tickets, :surname, :string
      add_column :tickets, :patronymic, :string
      add_column :tickets, :passport_serial, :integer
      add_column :tickets, :passport_number, :integer
  end
end
