class AddPriceToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :price, :string
    add_column :bookings, :string, :string
  end
end
