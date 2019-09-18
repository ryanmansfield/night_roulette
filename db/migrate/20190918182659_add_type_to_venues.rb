class AddTypeToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :type, :string
  end
end
