class AddPictureToVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :venues, :picture, :string
  end
end
