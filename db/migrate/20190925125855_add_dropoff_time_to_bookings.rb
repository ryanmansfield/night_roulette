class AddDropoffTimeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :dropoff_time, :string
    add_column :bookings, :string, :string
  end
end
