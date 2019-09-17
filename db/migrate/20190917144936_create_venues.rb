class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :characteristics, array: true, default: []
      t.string :location
      t.float :price
      t.float :rating
      t.string :hours

      t.timestamps
    end
  end
end
