class AddDriverNameToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :driver_name, :string
    add_column :bookings, :string, :string
  end
end
