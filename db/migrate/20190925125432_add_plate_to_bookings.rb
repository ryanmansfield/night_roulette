class AddPlateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :plate, :string
    add_column :bookings, :string, :string
  end
end
