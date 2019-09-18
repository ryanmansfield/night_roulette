class AddVenueTypeToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :venue_type, :string
  end
end
