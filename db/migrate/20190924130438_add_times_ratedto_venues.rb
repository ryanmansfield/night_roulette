class AddTimesRatedtoVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :times_rated, :integer, default: 5
  end
end
