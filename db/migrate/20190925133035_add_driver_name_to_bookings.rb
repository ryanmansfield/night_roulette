class AddDriverNameToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :driver_name, :string
  end
end
