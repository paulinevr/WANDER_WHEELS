class AddDatesToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :from, :date
    add_column :reservations, :until, :date
  end
end
