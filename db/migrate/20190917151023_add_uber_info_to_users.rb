class AddUberInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uber_info, :string
  end
end
