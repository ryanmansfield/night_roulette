class AddLicensePlateToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :license_plate, :string
  end
end
