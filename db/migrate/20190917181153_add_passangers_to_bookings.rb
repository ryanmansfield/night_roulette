class AddPassangersToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :passengers, :integer
  end
end
