class AddPickupLocationToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :pickup_location, :string
  end
end
