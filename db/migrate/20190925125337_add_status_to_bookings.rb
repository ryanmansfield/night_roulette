class AddStatusToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :status, :string
    add_column :bookings, :string, :string
  end
end
