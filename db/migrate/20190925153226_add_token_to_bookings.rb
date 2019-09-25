class AddTokenToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :token, :string
  end
end
