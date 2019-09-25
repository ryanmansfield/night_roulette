class AddPickupLatToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :latitude, :float
  end
end
