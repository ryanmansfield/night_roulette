class AddPickupTimeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :pickup_time, :string
  end
end
