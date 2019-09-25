class AddEtaToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :eta, :string
  end
end
